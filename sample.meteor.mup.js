module.exports = {
  servers: {
    one: {
      host: '1.2.3.4',
      port: '22',
      username: 'ubuntu',
      // password: 'password123'
      pem: '/Users/onin/amazon-keys/ec2.pem'
    }
  },

  meteor: {
    name: 'app-test-1',
    path: '/Users/onin/sandbox/app-test-1',
    servers: {
      one: {}
    },
    buildOptions: {
      serverOnly: true,
    },
    setupMongo: false,
    setupNode: true,
    nodeVersion: '4.5.0',
    setupPhantom: true,
    enableUploadProgressBar: true,
    env: {
      PORT: '80',
      ROOT_URL: 'http://1.2.3.4',
      MONGO_URL: 'mongodb://user:password@123456.mlab.com:12345/app-test-1'
    },

    //dockerImage: 'kadirahq/meteord', <- not yet compatible on 1.4
    dockerImage: 'abernix/meteord:base', // use this instead
    deployCheckWaitTime: 60
  }
};
