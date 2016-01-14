From: Tom Rini <trini@konsulko.com>
Subject: Re: [PATCH v4 5/6] rockchip: kylin: Enable boot with
 android boot image
Date: Thu, 14 Jan 2016 11:22:27 -0500
Message-ID: <20160114162227.GY3359@bill-the-cat>
References: <1452675200-15941-1-git-send-email-jeffy.chen@rock-chips.com>
 <1452675200-15941-6-git-send-email-jeffy.chen@rock-chips.com>
 <20160113152811.GC3359@bill-the-cat>
 <56970886.2040009@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============1891490082=="
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <56970886.2040009@rock-chips.com>
List-Unsubscribe: <http://lists.denx.de/mailman/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <http://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <http://lists.denx.de/mailman/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Jeffy Chen <jeffy.chen@rock-chips.com>
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org


--===============1891490082==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="euFSwY3dVV7YUssO"
Content-Disposition: inline


--euFSwY3dVV7YUssO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 14, 2016 at 10:31:34AM +0800, Jeffy Chen wrote:
> Hi Tom,
>=20
> On 2016-1-13 23:28, Tom Rini wrote:
> >On Wed, Jan 13, 2016 at 04:53:19PM +0800, Jeffy Chen wrote:
> >
> >>The android kernel is using appended dtb by default, and store
> >>ramdisk right after kernel & dtb.
> >>So we needs to relocate ramdisk, and use atags to pass params.
> >>
> >>Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
> >>Acked-by: Simon Glass <sjg@chromium.org>
> >>---
> >>
> >>Changes in v4: None
> >>Changes in v3: None
> >>Changes in v2: None
> >>
> >>  include/configs/kylin_rk3036.h | 23 +++++++++++++++++++++++
> >>  1 file changed, 23 insertions(+)
> >>
> >>diff --git a/include/configs/kylin_rk3036.h b/include/configs/kylin_rk3=
036.h
> >>index b750b26..49997ec 100644
> >>--- a/include/configs/kylin_rk3036.h
> >>+++ b/include/configs/kylin_rk3036.h
> >>@@ -35,6 +35,29 @@
> >>  #undef CONFIG_EXTRA_ENV_SETTINGS
> >>  #define CONFIG_EXTRA_ENV_SETTINGS \
> >>  	"partitions=3D" PARTS_DEFAULT \
> >>+	"mmcdev=3D0\0" \
> >>+	"mmcpart=3D5\0" \
> >>+	"loadaddr=3D" __stringify(CONFIG_SYS_LOAD_ADDR) "\0" \
> >>+
> >>+#define CONFIG_ANDROID_BOOT_IMAGE
> >>+#define CONFIG_SYS_BOOT_RAMDISK_HIGH
> >This should already be set.
> Right, i'll remove it...
> >>+#define CONFIG_SYS_HUSH_PARSER
> >>+
> >>+#undef CONFIG_BOOTCOMMAND
> >>+#define CONFIG_BOOTCOMMAND \
> >>+	"mmc dev ${mmcdev}; if mmc rescan; then " \
> >>+		"part start mmc ${mmcdev} ${mmcpart} boot_start;" \
> >>+		"part size mmc ${mmcdev} ${mmcpart} boot_size;" \
> >>+		"mmc read ${loadaddr} ${boot_start} ${boot_size};" \
> >>+		"bootm start ${loadaddr}; bootm ramdisk;" \
> >>+		"bootm prep; bootm go;" \
> >>+	"fi;" \
> >>+
> >>+/* Enable atags */
> >>+#define CONFIG_SYS_BOOTPARAMS_LEN	(64*1024)
> >>+#define CONFIG_INITRD_TAG
> >>+#define CONFIG_SETUP_MEMORY_TAGS
> >>+#define CONFIG_CMDLINE_TAG
> >But I'm confused as to what exactly is going on here.  Appended dtb is
> >not the same as ATAGS.  And you shouldn't need to split up bootm like
> >that.  Can you please explain a bit more?  Thanks!
> The u-boot will pass atags to kernel, and kernel will merge those
> atags into the appended dtb(fdt).
>=20
> The default bootm flow would not pass ramdisk state, but we need it,
> so we should add this state into default flow, or just use split
> bootm cmds :)

That seems very strange.  Is the ramdisk concatenated with the kernel
and dtb as well (and that's why bootm ramdisk somehow finds it but
normal bootm doesn't as you aren't passing in a ramdisk address) ?

--=20
Tom

--euFSwY3dVV7YUssO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iQIcBAEBAgAGBQJWl8tDAAoJEIRElH1W1v7NJCEQAJiwvgPo+qVeygrvd5DClwvB
9PBA00eXX4NArSE18BsTGxH3ujfKvA/GmqWcKBneq54npK6Rp5RD86jrJ9v0jzfl
mKdq+JNsiB1YhYeZy49gSsdXJGBK9W4AMe2YXiZM5loE99kTj1WN0S59R87oGDCl
/PymqXXEzv7WSBEQTNa3SqZlyuVMn2r7hwvW7IC0YOvtV1E+Msswb+LUCKKYNYTz
gsDFIO+eqYXmJrcKdALdFfyJPXfAuB1daiBCJEzCixV7ER1jYR+B5GqdK87qCp/x
L272c2gf8g2MpyNQpesdBehTTHm7KZ/xF1i78LSbtZ6KZX8pHu528+l3+z/93/7E
tRiI54S/+M1a9p5mmICDqqUG71eFmrBg98PrzM4vBnX/MYk8h7Os7KyDtrwD+rve
YM59PGs0isnohLFKnb9ZQeqIrzj2pXavhbtETSIsD4cKA5tfQzh5b05j2nIXhCw9
KtXhJgx2G/qiq69e/vH7pWEu7uPaAOyxHdttURWCJ6G441sfl8q7T7fwNXgqEEvO
ZMpk57EuRINRWVaIz4b61Ql9HgAt/n/VEUEzGLcdx/Sh3/NY9oYIzjcy/P5vU9QJ
DCsf6FqKj4PRAW5QBtBMfZDGpIoi4cqxjLFMWCwPXXjCJKkK8KsloSZzodlk0TFU
C4+XWBrK9Qb/veqYmA6g
=Zlu4
-----END PGP SIGNATURE-----

--euFSwY3dVV7YUssO--

--===============1891490082==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
U-Boot mailing list
U-Boot@lists.denx.de
http://lists.denx.de/mailman/listinfo/u-boot

--===============1891490082==--
