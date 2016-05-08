
import luxe.Input;
import luxe.Sprite;
import luxe.Color;
import luxe.Vector;
import luxe.States;
import phoenix.Batcher;
import phoenix.Camera;
import phoenix.Vector;
import phoenix.Shader;
import phoenix.geometry.*;



class Main extends luxe.Game {

    public var shader:Shader;
    public var batcher:Batcher;
    public var camera:Camera;
    public var geo:Geometry;


	override function config( config:luxe.GameConfig ) {
	    config.preload.shaders.push({ id:'test_shader', frag_id:'assets/test.glsl', vert_id:'default' });


	    return config;

	} //config


    override function ready() {

    	//Luxe.renderer.clear_color.rgb(0xb1a4ff);

        //load the shader
        shader = Luxe.resources.shader('test_shader');

        //load a camera
        camera = new Camera({
            camera_name: 'test_camera',
        });

        //create a batcher
        batcher = Luxe.renderer.create_batcher({
            name : 'test_batcher',
            layer : 1,
            no_add : false,
            camera: camera,
        });

        batcher.shader = shader;


        geo = Luxe.draw.poly({
            solid : true,
            color: new Color().rgb(0xffffff),
            points : [
                new Vector(0, 0),
                new Vector(Luxe.screen.width, 0),
                new Vector(Luxe.screen.width, Luxe.screen.height),
                new Vector(0, Luxe.screen.height)
            ],
            batcher: batcher
            //shader: shader
        });





    } //ready

    override function onkeyup( e:KeyEvent ) {

        if(e.keycode == Key.escape) {
            Luxe.shutdown();
        }

    } //onkeyup

    override function update(dt:Float) {

    } //update


    function connect_input() {

    } //connect_input


} //Main
