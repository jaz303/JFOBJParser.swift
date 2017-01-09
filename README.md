# JFOBJParser

Quick and dirty OBJ format file format parser for Swift.

Usage example:

```swift
import JFLineReader

let reader = JFLineReader(path: "teapot.obj")!
let parser = JFOBJParser(source: reader)

// w defaults to 1.0
// r, g, b default to -1.0
parser.onVertex = { (x, y, z, w, r, g, b) in
		
}

// w defaults to 0.0
parser.onTextureCoord = { (u, v, w) in

}

parser.onVertexNormal = { (x, y, z) in
	
}

// v, w default to 0.0
parser.onParameterSpaceVertex = { (u, v, w) in

}

// count = number of vertices in face
// arrays contain indexes into vertex, tex coord or vertex normal arrays
parser.onFace = { (count, vertices, vertexTextureCoords, vertexNormals) in
	
}

// unknown line
parser.onUnknown = { (line) in
	
}

// first pass - count entities in OBJ file
let stats = parser.count()

// now, allocate arrays or other data structures to hold model data

// second pass - parse file into data structures
reader.rewind()
parser.parse()
```