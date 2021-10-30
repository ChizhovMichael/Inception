const path = require('path');

module.exports = {
    mode: 'production',
    devServer: {
        static: {
            directory: path.join(__dirname, 'dst'),
        },
        compress: true,
        port: 4000,
    },
};

