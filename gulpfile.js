/**
 * Gulp file to automate the various tasks
 */

const autoprefixer = require('gulp-autoprefixer');
const php = require('gulp-connect-php');
const browserSync = require('browser-sync').create();
const cleanCss = require('gulp-clean-css');
const del = require('del');
const htmlmin = require('gulp-htmlmin');
const cssbeautify = require('gulp-cssbeautify');
const npmDist = require('gulp-npm-dist');
const gulp = require('gulp');
const sass = require('gulp-sass')(require('sass'));
const wait = require('gulp-wait');
const sourcemaps = require('gulp-sourcemaps');
const fileinclude = require('gulp-file-include');
const { sync } = require('del');

// Define paths
const paths = {
    admidio: {
        base: '../'
        },
    dist: {
        base: './dist/',
        common: {
            assets: './dist/common/assets',
            scss:'./src/common/scss'
        },
        front: {
            base: './dist/front/',
            css: './dist/front/css',
            html: './dist/front/pages',
            assets: './dist/front/assets',
            partials: './dist/front/partials/',
            scss: './dist/front/scss',
        },
        dashboard: {
            base: './dist/dashboard/',
            css: './dist/dashboard/css',
            html: './dist/dashboard/pages',
            assets: './dist/dashboard/assets',
            partials: './dist/dashboard/partials/',
            scss: './dist/dashboard/scss',
        },
        vendor: './dist/vendor'
    },
    dev: {
        base: './html&css/',
        common: {
            assets: './html&css/common/assets',
            scss:'./src/common/scss'
        },
        front: {
            base: './html&css/front/',
            css: './html&css/front/css',
            html: './html&css/front/pages',
            assets: './html&css/front/assets',
            partials: './html&css/front/partials/',
            scss: './html&css/front/scss',
        },
        dashboard: {
            base: './html&css/dashboard/',
            css: './html&css/dashboard/css',
            html: './html&css/dashboard/pages',
            assets: './html&css/dashboard/assets',
            partials: './html&css/dashboard/partials/',
            scss: './html&css/dashboard/scss',
        },
        ecards: {
            base: './html&css/ecards_templates',
            html: './html&css/ecards_templates/html/*.tpl',
            partials: './html&css/ecards_templates/partials'
        },
        vendor: './html&css/vendor'
    },
    base: {
        base: './',
        node: './node_modules'
    },
    src: {
        base: './src/',
        html: './src/*.tpl',
        common: {
            assets: './src/common/assets/**/*.*',
            scss:'./src/common/scss'
        },
        front: {
            base: './src/front/',
            css: './src/front/css',
            html: './src/front/pages/**/*.tpl',
            assets: './src/front/assets/**/*.*',
            partials: './src/front/partials',
            scss: './src/front/scss',
        },
        dashboard: {
            base: './src/dashboard/',
            css: './src/dashboard/css',
            html: './src/dashboard/pages/**/*.tpl',
            assets: './src/dashboard/assets/**/*.*',
            partials: './src/dashboard/partials',
            scss: './src/dashboard/scss',
        },
        ecards: {
            base: './src/ecard_templates',
            html: './src/ecard_templates/*.tpl',
            partials: './src/ecard_templates/partials',
        },
        node_modules: './node_modules/',
        vendor: './vendor'
    },
    temp: {
        base: './.temp/',
        common: {
            assets: './.temp/common/assets'
        },
        front: {
            base: './.temp/front',
            css: './.temp/front/css',
            html: './.temp/front/pages',
            assets: './.temp/front/assets',
        },
        dashboard: {
            base: './.temp/dashboard',
            css: './.temp/dashboard/css',
            html: './.temp/dashboard/pages',
            assets: './.temp/dashboard/assets',
        },
        vendor: './.temp/common/vendor'
    },
    admtemp: {
        base: '../adm_themes/ivelo_dev/',
        html: '../adm_themes/ivelo_dev/templates',
        common: {
            assets: '../adm_themes/ivelo_dev/templates/common/assets'
        },
        front: {
            base: '../adm_themes/ivelo_dev/templates/front',
            css: '../adm_themes/ivelo_dev/templates/front/css',
            html: '../adm_themes/ivelo_dev/templates',
            assets: '../adm_themes/ivelo_dev/templates/front/assets',
        },
        dashboard: {
            base: '../adm_themes/ivelo_dev/templates/dashboard',
            css: '../adm_themes/ivelo_dev/templates/dashboard/css',
            html: '../adm_themes/ivelo_dev/templates',
            assets: '../adm_themes/ivelo_dev/templates/dashboard/assets',
        },
        ecards: {
            base: '../adm_my_files/ecard_templates'
        },
        vendor: '../adm_themes/ivelo_dev/templates/common/vendor'
    }
};

// Compile SCSS
gulp.task('scss-front', function () {
    return gulp.src([paths.src.front.scss + '/front/**/*.scss', paths.src.front.scss + '/front.scss'])
        .pipe(wait(500))
        .pipe(sourcemaps.init())
        .pipe(sass().on('error', sass.logError))
        .pipe(autoprefixer({
            overrideBrowserslist: ['> 1%']
        }))
        .pipe(sourcemaps.write('.'))
        .pipe(gulp.dest(paths.admtemp.front.css))
        .pipe(browserSync.stream());
});

gulp.task('scss-dashboard', function () {
    return gulp.src([paths.src.dashboard.scss + '/**/*.scss', paths.src.dashboard.scss + '/dashboard.scss'])
        .pipe(wait(500))
        .pipe(sourcemaps.init())
        .pipe(sass().on('error', sass.logError))
        .pipe(autoprefixer({
            overrideBrowserslist: ['> 1%']
        }))
        .pipe(sourcemaps.write('.'))
        .pipe(gulp.dest(paths.admtemp.dashboard.css))
        .pipe(browserSync.stream());
});

gulp.task('scss', gulp.series('scss-front', 'scss-dashboard'));

gulp.task('html-front', function () {
    return gulp.src([paths.src.front.html])
        .pipe(fileinclude({
            prefix: '@@',
            basepath: paths.src.front.partials
        }))
        .pipe(gulp.dest(paths.admtemp.front.html))
        .pipe(browserSync.stream());
});

gulp.task('html-dashboard', function () {
    return gulp.src([paths.src.dashboard.html])
        .pipe(fileinclude({
            prefix: '@@',
            basepath: paths.src.dashboard.partials
        }))
        .pipe(gulp.dest(paths.admtemp.dashboard.html))
        .pipe(browserSync.stream());
});

gulp.task('html-ecards', function () {
    return gulp.src([paths.src.ecards.html])
        .pipe(fileinclude({
            prefix: '@@',
            basepath: paths.src.ecards.partials
        }))
        .pipe(gulp.dest(paths.admtemp.ecards.base))
        .pipe(browserSync.stream());
});

gulp.task('tpl-base', function () {
    return gulp.src([paths.src.html])
        .pipe(fileinclude({
            prefix: '@@',
            basepath: paths.src.front.partials
        }))
        .pipe(gulp.dest(paths.admtemp.html))
        .pipe(browserSync.stream());
});

gulp.task('html-base', function () {
    return gulp.src([paths.src.base + 'index.html'])
        .pipe(gulp.dest(paths.admtemp.base))
        .pipe(browserSync.stream());
});

gulp.task('clean:templates-compile', function() {
    return del('../adm_my_files/templates/compile/*.*', {force: true});
});

gulp.task('html', gulp.series('clean:templates-compile', 'html-front', 'html-dashboard', 'html-ecards', 'tpl-base', 'html-base'));

gulp.task('assets-common', function () {
    return gulp.src([paths.src.common.assets])
        .pipe(gulp.dest(paths.admtemp.common.assets))
        .pipe(browserSync.stream());
});

gulp.task('assets-front', function () {
    return gulp.src([paths.src.front.assets])
        .pipe(gulp.dest(paths.admtemp.front.assets))
        .pipe(browserSync.stream());
});

gulp.task('assets-dashboard', function () {
    return gulp.src([paths.src.dashboard.assets])
        .pipe(gulp.dest(paths.admtemp.dashboard.assets))
        .pipe(browserSync.stream());
});

gulp.task('assets', gulp.series('assets-common', 'assets-front', 'assets-dashboard'));

gulp.task('vendor', function() {
    return gulp.src(npmDist(), { base: paths.src.node_modules })
      .pipe(gulp.dest(paths.admtemp.vendor));
});

gulp.task('serve', gulp.series('scss', 'html', 'assets', 'vendor', function() {
    php.server({
        // a standalone PHP server that browsersync connects to via proxy
        base: paths.admidio.base,
        port: 8000,
        keepalive: true
    }, function (){    
        browserSync.init({
            proxy: "127.0.0.1:8000"
        });
    });
    gulp.watch([paths.src.front.scss + '/front/**/*.scss', '/**/*.scss', paths.src.front.scss + '/front.scss'], gulp.series('scss-front'));
    gulp.watch([paths.src.dashboard.scss + '/**/*.scss', '/**/*.scss', paths.src.dashboard.scss + '/dashboard.scss'], gulp.series('scss-dashboard'));

    gulp.watch([paths.src.html], gulp.series('tpl-base'));
    gulp.watch([paths.src.ecards.html], gulp.series('html-ecards'));
    gulp.watch([paths.src.front.html, paths.src.front.base + '*.tpl', paths.src.front.partials + '/**/*.html'], gulp.series('html-front', 'html'));
    gulp.watch([paths.src.dashboard.html, paths.src.dashboard.base + '*.tpl', paths.src.dashboard.partials + '/**/*.html'], gulp.series('html-dashboard', 'html'));

    gulp.watch([paths.src.common.assets], gulp.series('assets-common'));
    gulp.watch([paths.src.front.assets], gulp.series('assets-front'));
    gulp.watch([paths.src.dashboard.assets], gulp.series('assets-dashboard'));

    gulp.watch([paths.src.vendor], gulp.series('vendor'));
}));

// Beautify CSS
gulp.task('beautify-front:css', function () {
    return gulp.src([
        paths.dev.front.css + '/front.css'
    ])
        .pipe(cssbeautify())
        .pipe(gulp.dest(paths.dev.front.css))
});

gulp.task('beautify-dashboard:css', function () {
    return gulp.src([
        paths.dev.dashboard.css + '/dashboard.css'
    ])
        .pipe(cssbeautify())
        .pipe(gulp.dest(paths.dev.dashboard.css))
});

gulp.task('beautify:css', gulp.series('beautify-front:css', 'beautify-dashboard:css'));

// Minify CSS
gulp.task('minify-front:css', function () {
    return gulp.src([
        paths.dist.front.css + '/front.css'
    ])
    .pipe(cleanCss())
    .pipe(gulp.dest(paths.dist.front.css))
});

gulp.task('minify-dashboard:css', function () {
    return gulp.src([
        paths.dist.dashboard.css + '/dashboard.css'
    ])
    .pipe(cleanCss())
    .pipe(gulp.dest(paths.dist.dashboard.css))
});

gulp.task('minify:css', gulp.series('minify-front:css', 'minify-dashboard:css'));

// Minify Html
gulp.task('minify-front:html', function () {
    return gulp.src([paths.dist.front.html + '/**/*.html'])
        .pipe(htmlmin({
            collapseWhitespace: true
        }))
        .pipe(gulp.dest(paths.dist.front.html))
});

gulp.task('minify-dashboard:html', function () {
    return gulp.src([paths.dist.dashboard.html + '/**/*.html'])
        .pipe(htmlmin({
            collapseWhitespace: true
        }))
        .pipe(gulp.dest(paths.dist.dashboard.html))
});

gulp.task('minify:html', gulp.series('minify-front:html', 'minify-dashboard:html'));

// Clean
gulp.task('clean:dist', function () {
    return del([paths.dist.base]);
});

gulp.task('clean:dev', function () {
    return del([paths.dev.base]);
});

// Compile and copy scss/css
gulp.task('copy-front:dist:css', function () {
    return gulp.src([paths.src.front.scss + '/front/**/*.scss', paths.src.front.scss + '/front.scss'])
        .pipe(wait(500))
        .pipe(sourcemaps.init())
        .pipe(sass().on('error', sass.logError))
        .pipe(autoprefixer({
            overrideBrowserslist: ['> 1%']
        }))
        .pipe(sourcemaps.write('.'))
        .pipe(gulp.dest(paths.dist.front.css))
});

gulp.task('copy-dashboard:dist:css', function () {
    return gulp.src([paths.src.dashboard.scss + '/**/*.scss', paths.src.dashboard.scss + '/dashboard.scss'])
        .pipe(wait(500))
        .pipe(sourcemaps.init())
        .pipe(sass().on('error', sass.logError))
        .pipe(autoprefixer({
            overrideBrowserslist: ['> 1%']
        }))
        .pipe(sourcemaps.write('.'))
        .pipe(gulp.dest(paths.dist.dashboard.css))
});

gulp.task('copy:dist:css', gulp.series('copy-front:dist:css', 'copy-dashboard:dist:css'));

gulp.task('copy-front:dev:css', function () {
    return gulp.src([paths.src.front.scss + '/front/**/*.scss', paths.src.front.scss + '/front.scss'])
        .pipe(wait(500))
        .pipe(sourcemaps.init())
        .pipe(sass().on('error', sass.logError))
        .pipe(autoprefixer({
            overrideBrowserslist: ['> 1%']
        }))
        .pipe(sourcemaps.write('.'))
        .pipe(gulp.dest(paths.dev.front.css))
});

gulp.task('copy-dashboard:dev:css', function () {
    return gulp.src([paths.src.dashboard.scss + '/**/*.scss', paths.src.dashboard.scss + '/dashboard.scss'])
        .pipe(wait(500))
        .pipe(sourcemaps.init())
        .pipe(sass().on('error', sass.logError))
        .pipe(autoprefixer({
            overrideBrowserslist: ['> 1%']
        }))
        .pipe(sourcemaps.write('.'))
        .pipe(gulp.dest(paths.dev.dashboard.css))
});

gulp.task('copy:dev:css', gulp.series('copy-front:dev:css', 'copy-dashboard:dev:css'));

// Copy Html
gulp.task('copy-front:dist:html', function () {
    return gulp.src([paths.src.front.html])
        .pipe(fileinclude({
            prefix: '@@',
            basepath: paths.src.front.partials
        }))
        .pipe(gulp.dest(paths.dist.front.html))
        .pipe(browserSync.stream());
});

gulp.task('copy-dashboard:dist:html', function () {
    return gulp.src([paths.src.dashboard.html])
        .pipe(fileinclude({
            prefix: '@@',
            basepath: paths.src.dashboard.partials
        }))
        .pipe(gulp.dest(paths.dist.dashboard.html));
});

gulp.task('copy-base:dist:html', function () {
    return gulp.src([paths.src.html])
        .pipe(fileinclude({
            prefix: '@@',
            basepath: paths.src.front.partials
        }))
        .pipe(gulp.dest(paths.dist.base))
        .pipe(browserSync.stream());
});

gulp.task('copy:dist:html', gulp.series('copy-front:dist:html', 'copy-dashboard:dist:html', 'copy-base:dist:html'));

// Copy Html
gulp.task('copy-front:dev:html', function () {
    return gulp.src([paths.src.front.html])
        .pipe(fileinclude({
            prefix: '@@',
            basepath: paths.src.front.partials
        }))
        .pipe(gulp.dest(paths.dev.front.html))
        .pipe(browserSync.stream());
});

gulp.task('copy-dashboard:dev:html', function () {
    return gulp.src([paths.src.dashboard.html])
        .pipe(fileinclude({
            prefix: '@@',
            basepath: paths.src.dashboard.partials
        }))
        .pipe(gulp.dest(paths.dev.dashboard.html));
});

gulp.task('copy-base:dev:html', function () {
    return gulp.src([paths.src.html])
        .pipe(fileinclude({
            prefix: '@@',
            basepath: paths.src.front.partials
        }))
        .pipe(gulp.dest(paths.dev.base))
        .pipe(browserSync.stream());
});

gulp.task('copy:dev:html', gulp.series('copy-front:dev:html', 'copy-dashboard:dev:html', 'copy-base:dev:html'));

// Copy assets
gulp.task('copy-common:dist:assets', function () {
    return gulp.src(paths.src.common.assets)
        .pipe(gulp.dest(paths.dist.common.assets))
});

gulp.task('copy-front:dist:assets', function () {
    return gulp.src(paths.src.front.assets)
        .pipe(gulp.dest(paths.dist.front.assets))
});

gulp.task('copy-dashboard:dist:assets', function () {
    return gulp.src(paths.src.dashboard.assets)
        .pipe(gulp.dest(paths.dist.dashboard.assets))
});

gulp.task('copy:dist:assets', gulp.series('copy-common:dist:assets', 'copy-front:dist:assets', 'copy-dashboard:dist:assets'));

gulp.task('copy-common:dev:assets', function () {
    return gulp.src(paths.src.common.assets)
        .pipe(gulp.dest(paths.dev.common.assets))
});

gulp.task('copy-front:dev:assets', function () {
    return gulp.src(paths.src.front.assets)
        .pipe(gulp.dest(paths.dev.front.assets))
});

gulp.task('copy-dashboard:dev:assets', function () {
    return gulp.src(paths.src.dashboard.assets)
        .pipe(gulp.dest(paths.dev.dashboard.assets))
});

gulp.task('copy:dev:assets', gulp.series('copy-common:dev:assets', 'copy-front:dev:assets', 'copy-dashboard:dev:assets'));

// Copy node_modules

gulp.task('copy:dist:vendor', function() {
    return gulp.src(npmDist(), { base: paths.src.node_modules })
      .pipe(gulp.dest(paths.dist.vendor));
});

gulp.task('copy:dev:vendor', function() {
    return gulp.src(npmDist(), { base: paths.src.node_modules })
      .pipe(gulp.dest(paths.dev.vendor));
});

gulp.task('build:dev', gulp.series('clean:dev', 'copy:dev:css', 'copy:dev:html', 'copy:dev:assets', 'beautify:css', 'copy:dev:vendor'));
gulp.task('build:dist', gulp.series('clean:dist', 'copy:dist:css', 'copy:dist:html', 'copy:dist:assets', 'minify:css', 'minify:html', 'copy:dist:vendor'));

// Default
gulp.task('default', gulp.series('serve'));
