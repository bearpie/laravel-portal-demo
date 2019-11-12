<?php
/*
*   08.11.2019
*   RenderFromDatabaseData
*/

namespace App\MenuBuilder;
use App\MenuBuilder\MenuBuilder;

class RenderFromDatabaseData{

    private $mb; // MenuBuilder
    private $data;

    public function __construct(){
        $this->mb = new MenuBuilder();
    }

    private function addTitle($data){
        $this->mb->addTitle($data['name']);
    }

    private function addLink($data){
        if($data['parent_id'] === NULL){
            $this->mb->addLink($data['name'], $data['href'], $data['icon']);
        }
    }


    
    private function dropdownLoop($id){
        for($i = 0; $i<count($this->data); $i++){
            if($this->data[$i]['parent_id'] == $id){
                if($this->data[$i]['slug'] === 'dropdown'){
                    $this->addDropdown($this->data[$i]);
                }elseif($this->data[$i]['slug'] === 'link'){
                    $this->mb->addLink($this->data[$i]['name'], $this->data[$i]['href']);
                }else{
                    $this->addTitle($this->data[$i]);
                }
            }
        }
    }
    
    private function addDropdown($data){
        $this->mb->beginDropdown($data['name'], $data['icon']);
        $this->dropdownLoop($data['id']);
        $this->mb->endDropdown();
    }

    private function mainLoop(){
        for($i = 0; $i<count($this->data); $i++){
            switch($this->data[$i]['slug']){
                case 'title':
                    $this->addTitle($this->data[$i]);
                break;
                case 'link':
                    $this->addLink($this->data[$i]);
                break;
                case 'dropdown':
                    if($this->data[$i]['parent_id'] == null){
                        $this->addDropdown($this->data[$i]);
                    }
                break;
            }
        }
    }

    /***
     * $data - array
     * return - array
     */
    public function render($data){
        if(!empty($data)){
            $this->data = $data;
            $this->mainLoop();
        }
        return $this->mb->getResult();
    }

}