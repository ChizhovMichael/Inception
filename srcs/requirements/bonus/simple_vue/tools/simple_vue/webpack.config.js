const path = require('path');

module.exports = {
    mode: 'production',
    devServer: {
        static: {
            directory: path.join(__dirname, 'dst'),
        },
        compress: true,
        host: '0.0.0.0',
        port: 4000
    },
};

