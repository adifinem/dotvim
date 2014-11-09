module.exports = function (grunt) {
    grunt.initConfig({
        curl: {
            tetris: {
                src: "http://www.vim.org/scripts/download_script.php?src_id=650",
                dest: "vim/plugin/tetris.vim"
            },
            matrix: {
                src: "http://www.vim.org/scripts/download_script.php?src_id=18650",
                dest: "vim/plugin/matrix.vim"
            },
            hjkl: {
                src: "http://www.vim.org/scripts/download_script.php?src_id=19242",
                dest: "vim/plugin/hjkl.vim"
            },
            gol: {
                src: "http://www.vim.org/scripts/download_script.php?src_id=1119",
                dest: "vim/plugin/gol.vim"
            },
            lisp: {
                src: "http://www.vim.org/scripts/download_script.php?src_id=7526",
                dest: "vim/plugin/mosalisp.vim"
            },
//            nibble: {
//                src: "http://www.vim.org/scripts/download_script.php?src_id=6711",
//                dest: "vim/plugin/nibble.zip"
//            },
            sodoku: {
                src: "http://www.vim.org/scripts/download_script.php?src_id=15641",
                dest: "vim/plugin/sodoku.vim"
            }
        }
    });

    grunt.loadNpmTasks('grunt-curl');

    grunt.registerTask('install:games', ['curl']);
};

// youcompleteme ./install --clang-completer
// git submodule update --init --recursive
// ln .vimrc and .vim to src tree
