exports.config = {
  framework: 'mocha',
  seleniumAddress: 'http://localhost:4444/wd/hub',
  suites:{
    specs: '../specs/**/*.[sS]pec.coffee',
    helpers: ['../specs/helpers/**/*.[hH]elper.coffee',
    		  '../features/helpers/**/*.[hH]elper.coffee'],
    features: '../features/**/*.[fF]eature.coffee',
  },
  capabilities: {
    browserName: 'chrome'
  },
  mochaOpts: {
        ui: 'mocha-cucumber',
        compiler: 'coffee:coffee-script/register'
    }
}