

describe "StreamsSpl grammar", ->
  grammar = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage("language-ibmstreams-spl")

    runs ->
      grammar = atom.syntax.grammarForScopeName("source.spl")

  it "parses the grammar", ->
    expect(grammar).toBeTruthy()
    expect(grammar.scopeName).toBe "source.spl"
