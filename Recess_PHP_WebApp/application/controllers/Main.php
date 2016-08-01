
<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Main extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->helper("url");
        $this->load->helper("form");
    }

    function index() {
        $data["appname"] = "RecessY2";
        $data["main"] = "<code>You must login to proceed</code>";
        $class_name = array(
            'home' => 'active',
            'login' => 'current',
            'visualization' => '',
            'blog' => '',
            'analysis' => '',
            'help' => '',
            'title' => 'Home');
        $this->load->view('templates/header', $class_name);
        if (isset($_SESSION["username"])) {
            $this->load->view("templates/navbar");
            $this->load->view("pages/home");
            $this->load->view('templates/footer');
        } else {
            $this->load->view('pages/login', $data);
        }
    }

    function analysis() {
        if (!isset($_SESSION["username"])) {
            $this->index();
        } else {
            $class_name = array(
                'home' => '',
                'login' => '',
                'visualization' => '',
                'blog' => '',
                'analysis' => 'active',
                'help' => '',
                'title' => 'analysis');
            $this->load->view('templates/header', $class_name);
            $this->load->view("templates/navbar");
            $this->load->view('pages/analysis');
            $this->load->view("templates/footer");
        }
    }

    function help() {
        if (!isset($_SESSION["username"])) {
            $this->index();
        } else {
            $class_name = array(
                'home' => '',
                'login' => '',
                'visualization' => '',
                'blog' => '',
                'analysis' => '',
                'help' => 'active',
                'title' => 'help');
            $this->load->view('templates/header', $class_name);
            $this->load->view("templates/navbar");
            $this->load->view('pages/help');
            $this->load->view("templates/footer");
        }
    }

    function visualization() {
        if (!isset($_SESSION["username"])) {
            $this->index();
        } else {
            $class_name = array(
                'home' => '',
                'login' => '',
                'visualization' => 'active',
                'blog' => '',
                'analysis' => '',
                'help' => '',
                'title' => 'visualization');
            $this->load->view('templates/header', $class_name);
            $this->load->view("templates/navbar");
            $this->load->view('pages/visualization');
            $this->load->view("templates/footer");
        }
    }

    public function logout() {
        $this->profiler();
        if (isset($_SESSION["username"])) {
            $this->session->sess_destroy();
            redirect(base_url() . '/');
        }
    }

    public function profiler() {
        $this->output->enable_profiler();
    }
    
}
