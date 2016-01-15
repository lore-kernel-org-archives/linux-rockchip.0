From: Tom Rini <trini@konsulko.com>
Subject: Re: [PATCH v4 5/6] rockchip: kylin: Enable boot with
 android boot image
Date: Thu, 14 Jan 2016 19:59:50 -0500
Message-ID: <20160115005950.GC3359@bill-the-cat>
References: <1452675200-15941-1-git-send-email-jeffy.chen@rock-chips.com>
 <1452675200-15941-6-git-send-email-jeffy.chen@rock-chips.com>
 <20160113152811.GC3359@bill-the-cat>
 <56970886.2040009@rock-chips.com>
 <20160114162227.GY3359@bill-the-cat>
 <569842F2.4080808@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============1706112907=="
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <569842F2.4080808@rock-chips.com>
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


--===============1706112907==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="7z4ATUzyFeC/3/aw"
Content-Disposition: inline


--7z4ATUzyFeC/3/aw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 15, 2016 at 08:53:06AM +0800, Jeffy Chen wrote:
> Hi Tom,
>=20
> On 2016-1-15 0:22, Tom Rini wrote:
> >On Thu, Jan 14, 2016 at 10:31:34AM +0800, Jeffy Chen wrote:
> >>Hi Tom,
> >>
> >>On 2016-1-13 23:28, Tom Rini wrote:
> >>>On Wed, Jan 13, 2016 at 04:53:19PM +0800, Jeffy Chen wrote:
> >>>
> >>>>The android kernel is using appended dtb by default, and store
> >>>>ramdisk right after kernel & dtb.
> >>>>So we needs to relocate ramdisk, and use atags to pass params.
> >>>>
> >>>>Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
> >>>>Acked-by: Simon Glass <sjg@chromium.org>
> >>>>---
> >>>>
> >>>>Changes in v4: None
> >>>>Changes in v3: None
> >>>>Changes in v2: None
> >>>>
> >>>>  include/configs/kylin_rk3036.h | 23 +++++++++++++++++++++++
> >>>>  1 file changed, 23 insertions(+)
> >>>>
> >>>>diff --git a/include/configs/kylin_rk3036.h b/include/configs/kylin_r=
k3036.h
> >>>>index b750b26..49997ec 100644
> >>>>--- a/include/configs/kylin_rk3036.h
> >>>>+++ b/include/configs/kylin_rk3036.h
> >>>>@@ -35,6 +35,29 @@
> >>>>  #undef CONFIG_EXTRA_ENV_SETTINGS
> >>>>  #define CONFIG_EXTRA_ENV_SETTINGS \
> >>>>  	"partitions=3D" PARTS_DEFAULT \
> >>>>+	"mmcdev=3D0\0" \
> >>>>+	"mmcpart=3D5\0" \
> >>>>+	"loadaddr=3D" __stringify(CONFIG_SYS_LOAD_ADDR) "\0" \
> >>>>+
> >>>>+#define CONFIG_ANDROID_BOOT_IMAGE
> >>>>+#define CONFIG_SYS_BOOT_RAMDISK_HIGH
> >>>This should already be set.
> >>Right, i'll remove it...
> >>>>+#define CONFIG_SYS_HUSH_PARSER
> >>>>+
> >>>>+#undef CONFIG_BOOTCOMMAND
> >>>>+#define CONFIG_BOOTCOMMAND \
> >>>>+	"mmc dev ${mmcdev}; if mmc rescan; then " \
> >>>>+		"part start mmc ${mmcdev} ${mmcpart} boot_start;" \
> >>>>+		"part size mmc ${mmcdev} ${mmcpart} boot_size;" \
> >>>>+		"mmc read ${loadaddr} ${boot_start} ${boot_size};" \
> >>>>+		"bootm start ${loadaddr}; bootm ramdisk;" \
> >>>>+		"bootm prep; bootm go;" \
> >>>>+	"fi;" \
> >>>>+
> >>>>+/* Enable atags */
> >>>>+#define CONFIG_SYS_BOOTPARAMS_LEN	(64*1024)
> >>>>+#define CONFIG_INITRD_TAG
> >>>>+#define CONFIG_SETUP_MEMORY_TAGS
> >>>>+#define CONFIG_CMDLINE_TAG
> >>>But I'm confused as to what exactly is going on here.  Appended dtb is
> >>>not the same as ATAGS.  And you shouldn't need to split up bootm like
> >>>that.  Can you please explain a bit more?  Thanks!
> >>The u-boot will pass atags to kernel, and kernel will merge those
> >>atags into the appended dtb(fdt).
> >>
> >>The default bootm flow would not pass ramdisk state, but we need it,
> >>so we should add this state into default flow, or just use split
> >>bootm cmds :)
> >That seems very strange.  Is the ramdisk concatenated with the kernel
> >and dtb as well (and that's why bootm ramdisk somehow finds it but
> >normal bootm doesn't as you aren't passing in a ramdisk address) ?
> Yes, the ramdisk concatenated with the kernel and dtb as
> well(u-boot/include/android_image.h: struct andr_img_hdr).
>=20
> And the normal bootm cmd would find it by parsing andr_img_hdr struct.
> But we still need bootm ramdisk state, because it will call
> boot_ramdisk_high to relocate ramdisk area :)
>=20
> I found if not relocate it to somewhere else, it would be corrupted
> after kernel's decompressing(during update fdt area).

So 'bootm $loadaddr' of an Android image sees, but does not relocate the
ramdisk that is included in the image, but bootm ramdisk does?  That
sounds like a bug in the regular bootm handling.

--=20
Tom

--7z4ATUzyFeC/3/aw
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iQIcBAEBAgAGBQJWmESGAAoJEIRElH1W1v7N8OsQALCJJL5NDVF7z+U6PrHGQKK6
VIkC8yMLwYxdygbo/k3Gvwwy9XJ2Z0SUu1orFYraUtxDaUoXOLx/bVCQlvzIxyNd
o/VduyvsKecZ+pLLGBN6iqKlP8Y+Py+/nJSDUhzTKy1mJOJI68IV/LB/0+uG0KZy
gnBZoKvNhifP61oX8wWolrYrKDmTqEyGBTYLCh2eGh3OzWNz/KRqDYG2dZbx89aB
bRq2BxunIrRZcu4ZNifc1kQDdUc72hBwwSaXHP2Zlc37oRXlP6GSRFeoMgYobGzp
+Y901zFzIzJndx1hJ6jelqsGZQB0djbuTmSOsm0zNDJOAnscmHROP7P+RiRgwkDp
vc0mZxbPm41EvMH/4fFqV1zwzxeQ5iAHf9oACAtpYcNOFZuwugb/uS5RZEyGLe84
EB2fm8Cx4oJrQQIAouVMqK+GbIoMgWVzBSfgs8Rwn8+Okzx9+Lb3/O+ri2Re8KbD
8quk2hO4Wl2oMIOWUlJwx/b7nZGtWPj4jZFus1tCR4Ct4DtJA1UVKuzOlCGpeKCy
pTWxnhBeorX+f1dIzH9Z/IpXnw4bb2syidkozRtuDCe4W7DVQWFSWCrJ4eGkgsNg
oyTGGrdWkmQD7iHqjiHLeS2v8hQxsf+qofBb8qqVO79wmW548BGNPs8KonKuBw0X
5kYbPQ4YOqa6iLcFlJj+
=4T1f
-----END PGP SIGNATURE-----

--7z4ATUzyFeC/3/aw--

--===============1706112907==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
U-Boot mailing list
U-Boot@lists.denx.de
http://lists.denx.de/mailman/listinfo/u-boot

--===============1706112907==--
