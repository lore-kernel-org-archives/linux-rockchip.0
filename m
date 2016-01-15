From: Tom Rini <trini@konsulko.com>
Subject: Re: [PATCH v4 5/6] rockchip: kylin: Enable boot with
 android boot image
Date: Fri, 15 Jan 2016 09:42:24 -0500
Message-ID: <20160115144224.GR3359@bill-the-cat>
References: <1452675200-15941-1-git-send-email-jeffy.chen@rock-chips.com>
 <1452675200-15941-6-git-send-email-jeffy.chen@rock-chips.com>
 <20160113152811.GC3359@bill-the-cat>
 <56970886.2040009@rock-chips.com>
 <20160114162227.GY3359@bill-the-cat>
 <569842F2.4080808@rock-chips.com>
 <20160115005950.GC3359@bill-the-cat>
 <5698577B.8040209@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============0571514400=="
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <5698577B.8040209@rock-chips.com>
List-Unsubscribe: <http://lists.denx.de/mailman/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <http://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <http://lists.denx.de/mailman/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Jeffy Chen <jeffy.chen@rock-chips.com>, Simon Glass <sjg@chromium.org>, Masahiro Yamada <yamada.masahiro@socionext.com>, Daniel Schwierzeck <daniel.schwierzeck@gmail.com>
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org


--===============0571514400==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="INq8CJyMGcUn+Xkn"
Content-Disposition: inline


--INq8CJyMGcUn+Xkn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 15, 2016 at 10:20:43AM +0800, Jeffy Chen wrote:
> Hi Tom,
>=20
> On 2016-1-15 8:59, Tom Rini wrote:
> >On Fri, Jan 15, 2016 at 08:53:06AM +0800, Jeffy Chen wrote:
> >>Hi Tom,
> >>
> >>On 2016-1-15 0:22, Tom Rini wrote:
> >>>On Thu, Jan 14, 2016 at 10:31:34AM +0800, Jeffy Chen wrote:
> >>>>Hi Tom,
> >>>>
> >>>>On 2016-1-13 23:28, Tom Rini wrote:
> >>>>>On Wed, Jan 13, 2016 at 04:53:19PM +0800, Jeffy Chen wrote:
> >>>>>
> >>>>>>The android kernel is using appended dtb by default, and store
> >>>>>>ramdisk right after kernel & dtb.
> >>>>>>So we needs to relocate ramdisk, and use atags to pass params.
> >>>>>>
> >>>>>>Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
> >>>>>>Acked-by: Simon Glass <sjg@chromium.org>
> >>>>>>---
> >>>>>>
> >>>>>>Changes in v4: None
> >>>>>>Changes in v3: None
> >>>>>>Changes in v2: None
> >>>>>>
> >>>>>>  include/configs/kylin_rk3036.h | 23 +++++++++++++++++++++++
> >>>>>>  1 file changed, 23 insertions(+)
> >>>>>>
> >>>>>>diff --git a/include/configs/kylin_rk3036.h b/include/configs/kylin=
_rk3036.h
> >>>>>>index b750b26..49997ec 100644
> >>>>>>--- a/include/configs/kylin_rk3036.h
> >>>>>>+++ b/include/configs/kylin_rk3036.h
> >>>>>>@@ -35,6 +35,29 @@
> >>>>>>  #undef CONFIG_EXTRA_ENV_SETTINGS
> >>>>>>  #define CONFIG_EXTRA_ENV_SETTINGS \
> >>>>>>  	"partitions=3D" PARTS_DEFAULT \
> >>>>>>+	"mmcdev=3D0\0" \
> >>>>>>+	"mmcpart=3D5\0" \
> >>>>>>+	"loadaddr=3D" __stringify(CONFIG_SYS_LOAD_ADDR) "\0" \
> >>>>>>+
> >>>>>>+#define CONFIG_ANDROID_BOOT_IMAGE
> >>>>>>+#define CONFIG_SYS_BOOT_RAMDISK_HIGH
> >>>>>This should already be set.
> >>>>Right, i'll remove it...
> >>>>>>+#define CONFIG_SYS_HUSH_PARSER
> >>>>>>+
> >>>>>>+#undef CONFIG_BOOTCOMMAND
> >>>>>>+#define CONFIG_BOOTCOMMAND \
> >>>>>>+	"mmc dev ${mmcdev}; if mmc rescan; then " \
> >>>>>>+		"part start mmc ${mmcdev} ${mmcpart} boot_start;" \
> >>>>>>+		"part size mmc ${mmcdev} ${mmcpart} boot_size;" \
> >>>>>>+		"mmc read ${loadaddr} ${boot_start} ${boot_size};" \
> >>>>>>+		"bootm start ${loadaddr}; bootm ramdisk;" \
> >>>>>>+		"bootm prep; bootm go;" \
> >>>>>>+	"fi;" \
> >>>>>>+
> >>>>>>+/* Enable atags */
> >>>>>>+#define CONFIG_SYS_BOOTPARAMS_LEN	(64*1024)
> >>>>>>+#define CONFIG_INITRD_TAG
> >>>>>>+#define CONFIG_SETUP_MEMORY_TAGS
> >>>>>>+#define CONFIG_CMDLINE_TAG
> >>>>>But I'm confused as to what exactly is going on here.  Appended dtb =
is
> >>>>>not the same as ATAGS.  And you shouldn't need to split up bootm like
> >>>>>that.  Can you please explain a bit more?  Thanks!
> >>>>The u-boot will pass atags to kernel, and kernel will merge those
> >>>>atags into the appended dtb(fdt).
> >>>>
> >>>>The default bootm flow would not pass ramdisk state, but we need it,
> >>>>so we should add this state into default flow, or just use split
> >>>>bootm cmds :)
> >>>That seems very strange.  Is the ramdisk concatenated with the kernel
> >>>and dtb as well (and that's why bootm ramdisk somehow finds it but
> >>>normal bootm doesn't as you aren't passing in a ramdisk address) ?
> >>Yes, the ramdisk concatenated with the kernel and dtb as
> >>well(u-boot/include/android_image.h: struct andr_img_hdr).
> >>
> >>And the normal bootm cmd would find it by parsing andr_img_hdr struct.
> >>But we still need bootm ramdisk state, because it will call
> >>boot_ramdisk_high to relocate ramdisk area :)
> >>
> >>I found if not relocate it to somewhere else, it would be corrupted
> >>after kernel's decompressing(during update fdt area).
> >So 'bootm $loadaddr' of an Android image sees, but does not relocate the
> >ramdisk that is included in the image, but bootm ramdisk does?  That
> >sounds like a bug in the regular bootm handling.
> Yep, the default bootm flow would not contain ramdisk relocate state:
>=20
> vi common/cmd_bootm.c
>         return do_bootm_states(cmdtp, flag, argc, argv, BOOTM_STATE_START=
 |
>                 BOOTM_STATE_FINDOS | BOOTM_STATE_FINDOTHER |
>                 BOOTM_STATE_LOADOS |
> #if defined(CONFIG_PPC) || defined(CONFIG_MIPS)
>                 BOOTM_STATE_OS_CMDLINE |
> #endif
>                 BOOTM_STATE_OS_PREP | BOOTM_STATE_OS_FAKE_GO |
>                 BOOTM_STATE_OS_GO, &images, 1);
>=20
> But i'm not sure if it's ok to add it here...

Actually, maybe so.  This made me do some digging again back into
Simon's series that refactored the bootm code.  In the long long ago,
nearly every architecture would call bootm_ramdisk_high to relocate the
ramdisk and set the environment (and poke the DT).  But it wasn't always
clear when / why it would do this.  And it got consolidated.  And here's
where it's tricky.  It looks correct today, still, to make sure that we
relocate the ramdisk.  image_setup_linux() checks
IMAGE_ENABLE_RAMDISK_HIGH which is toggled by
CONFIG_SYS_BOOT_RAMDISK_HIGH.  But for example, MIPS whacked _back_ in a
local call to make sure the ramdisk was being relocated because it
wasn't back in 2014 into boot_prep_linux.  It may even be related to
some of the initrd rated things Masahiro has found recently.  So
something is wrong down in this core code.  Jeffy, can you try and debug
this a bit since you have a failing case in front of you?  Otherwise
I'll put it on my TODO list.  Thanks!

--=20
Tom

--INq8CJyMGcUn+Xkn
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iQIcBAEBAgAGBQJWmQVQAAoJEIRElH1W1v7NGNwQAJ6VrX63aLVgFlwJS2moT1lP
QxZBCEDZx1u5e9M1GHJoXRAtxjG276rGee/+Z5PLEBEZe4OYyz5CVsoFQk/Dc3Vg
3TKSXWabsSEqZ38mUlcY+wW8ruxZCUZZNz01Q1zbtF91bfzd+JHjZjJZj/3mp0A0
f6L2lPQ13IB7607p+psC8Y0DghTiumJmtWW/DDdL+qUAbh0tEf6sMpQvKCXsFbVo
6vGccaX+bGN/LZ63CZS/5k0uTFZpjlb69J8e2nJJ6CpflYoKU5Ae82fkwHvOW8IZ
3jRr9VsgDWn15onk32DqDdeaTTqtRSFHQ4w14fdaM8pMVSSANjzm/UKkUcsT8pn/
JImRMDsQVADkPOrYqtCIkPX+Epcc9mVhIgi2AxiHNDHrWFLo5HgfU07/LTIjxBEr
p4OPpawkck1r4rUyzfW1PXzidKxvpXVxdO4jCXqp2QnAcitycwdp4N1tcO/1AyWs
tvI7DZ/tUY05OGjGOwhpmPZ0OtytmuuWbco2C9hGPvkqNUIu+gQoVNzMyNXnq+P1
ZgGJtGGQ/XXBP5XwObWR2edvj/8ph4yoaI5zewxpDmdp8qOpOOkeogkKr1YCLb7j
Ng2dvf7ZcNr7USQowmgCelcvJ10+zPfbcjPNC3KdByFivF3flxAmM6RdGroht573
SJ3lOvaCLHFk9j1sfx4Q
=7lmN
-----END PGP SIGNATURE-----

--INq8CJyMGcUn+Xkn--

--===============0571514400==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
U-Boot mailing list
U-Boot@lists.denx.de
http://lists.denx.de/mailman/listinfo/u-boot

--===============0571514400==--
