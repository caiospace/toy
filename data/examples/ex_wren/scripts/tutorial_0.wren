import "mud"

foreign class MyGame {
    static new(module) { __constructor.call(MyGame, module) }
    static bind() { __constructor = VirtualConstructor.ref("GameModuleBind") }
    
    init(app, game) { start(app, game) }
    
    start(app, game) { System.print("MyGame - start !") }
    
    pump(app, game, ui) { System.print("MyGame - pump !") }
    
    scene(app, scene) {}
    
    paint(app, scene, graph) {}
}

MyGame.bind()

var game = MyGame.new(module)
