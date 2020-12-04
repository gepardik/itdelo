<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'itdelo_db' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'wSGwc6,F^}26)n$S~-Y>/f-2|JAp-$`v!/C/<@EF;hecu^s[-3tp|-L5=#}V,;I9' );
define( 'SECURE_AUTH_KEY',  '<LUjIW:K%#&CVtWH_DeU6H260=X$%jlFyGXfp=47nFFr$x)jdyyk3k:GNXm{3{q9' );
define( 'LOGGED_IN_KEY',    './4<6y^5M7_3gW=r>-G*drMS*8@A.g&)bjmq.YyeS*P-ip(#LY{cZiW.{8]WyUO!' );
define( 'NONCE_KEY',        '[Gbj@4&uZWstD,:H.pv:B=Y|YH@ohxywLkwL-$0(+b--uQL$L))N)r`7,:9q~b6L' );
define( 'AUTH_SALT',        'Bv{5Vm83i<z6*nk/yOB7WAfStMT,T?TA@I9Z?$5>]](Ml`x|cB)5?DA$zWdc&rb|' );
define( 'SECURE_AUTH_SALT', '*8WEzV_i_-n_WVn@$#@pi7`cY$^Fy%;_FX}p23-R8Yx:`$yxWmu*A,qT[w3-|jT&' );
define( 'LOGGED_IN_SALT',   'd6.D(;o`~RZ~UTw%W@InXq+.6Sse|vi!W%(vws&e%;R7Bq&YWeMYVDf{xMQ`:_!V' );
define( 'NONCE_SALT',       'lH/*lu6Z/%:6ghL+G>zCPpngLmzU8eh9>SL:?e2%*uaCH6/J2c*W?X9z0wJ%_JaL' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
