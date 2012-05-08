describe 'Models', ->
  describe 'Exercise', ->
    it "should create exercise model object", ->
      exercise = WZ.Exercise.createRecord()
      expect(exercise).toBeTruthy()

