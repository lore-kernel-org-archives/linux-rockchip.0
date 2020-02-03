From: Tom Rini <trini@konsulko.com>
Subject: Re: [PATCH 4/4] rockchip: Enable HDMI output on rk3399 board w/ HDMI
Date: Mon, 3 Feb 2020 09:47:08 -0500
Message-ID: <20200203144708.GK13379@bill-the-cat>
References: <20200123162845.10651-1-jagan@amarulasolutions.com>
 <20200123162845.10651-5-jagan@amarulasolutions.com>
 <20200124152735.GR26536@bill-the-cat>
 <CAMty3ZBQ_mRY4ojo_4iHUzup2tD-FO6ZmskwJyXskg4O4iHz+Q@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="OaJtNTxAPudgaAxc"
Return-path: <u-boot-bounces@lists.denx.de>
Content-Disposition: inline
In-Reply-To: <CAMty3ZBQ_mRY4ojo_4iHUzup2tD-FO6ZmskwJyXskg4O4iHz+Q@mail.gmail.com>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Jagan Teki <jagan@amarulasolutions.com>, Anatolij Gustschin <agust@denx.de>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, U-Boot-Denx <u-boot@lists.denx.de>, linux-amarula <linux-amarula@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org


--OaJtNTxAPudgaAxc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 03, 2020 at 04:55:27PM +0530, Jagan Teki wrote:
> On Fri, Jan 24, 2020 at 8:57 PM Tom Rini <trini@konsulko.com> wrote:
> >
> > On Thu, Jan 23, 2020 at 09:58:45PM +0530, Jagan Teki wrote:
> >
> > > Enable config options and console setting to respective
> > > rk3399 board for HDMI output.
> > >
> > > Boards supported and tested on this patch are:
> > > - NanoPc T4
> > > - NanoPi M4
> > > - NanoPi Neo4
> > > - ROC-RK3399-PC
> > >
> > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > ---
> > >  configs/nanopc-t4-rk3399_defconfig   | 6 ++++++
> > >  configs/nanopi-m4-rk3399_defconfig   | 6 ++++++
> > >  configs/nanopi-neo4-rk3399_defconfig | 6 ++++++
> > >  configs/roc-pc-rk3399_defconfig      | 6 ++++++
> > >  include/configs/evb_rk3399.h         | 5 +++++
> > >  5 files changed, 29 insertions(+)
> > >
> > > diff --git a/configs/nanopc-t4-rk3399_defconfig b/configs/nanopc-t4-r=
k3399_defconfig
> > > index bd6d60ff6c..17e8a18d31 100644
> > > --- a/configs/nanopc-t4-rk3399_defconfig
> > > +++ b/configs/nanopc-t4-rk3399_defconfig
> > > @@ -53,3 +53,9 @@ CONFIG_USB_ETHER_RTL8152=3Dy
> > >  CONFIG_USB_ETHER_SMSC95XX=3Dy
> > >  CONFIG_SPL_TINY_MEMSET=3Dy
> > >  CONFIG_ERRNO_STR=3Dy
> > > +CONFIG_DM_VIDEO=3Dy
> > > +CONFIG_VIDEO_BPP16=3Dy
> > > +CONFIG_VIDEO_BPP32=3Dy
> > > +CONFIG_DISPLAY=3Dy
> > > +CONFIG_VIDEO_ROCKCHIP=3Dy
> > > +CONFIG_DISPLAY_ROCKCHIP_HDMI=3Dy
> > > diff --git a/configs/nanopi-m4-rk3399_defconfig b/configs/nanopi-m4-r=
k3399_defconfig
> > > index 74ede13c23..b73b2fdc27 100644
> > > --- a/configs/nanopi-m4-rk3399_defconfig
> > > +++ b/configs/nanopi-m4-rk3399_defconfig
> > > @@ -53,3 +53,9 @@ CONFIG_USB_ETHER_RTL8152=3Dy
> > >  CONFIG_USB_ETHER_SMSC95XX=3Dy
> > >  CONFIG_SPL_TINY_MEMSET=3Dy
> > >  CONFIG_ERRNO_STR=3Dy
> > > +CONFIG_DM_VIDEO=3Dy
> > > +CONFIG_VIDEO_BPP16=3Dy
> > > +CONFIG_VIDEO_BPP32=3Dy
> > > +CONFIG_DISPLAY=3Dy
> > > +CONFIG_VIDEO_ROCKCHIP=3Dy
> > > +CONFIG_DISPLAY_ROCKCHIP_HDMI=3Dy
> > > diff --git a/configs/nanopi-neo4-rk3399_defconfig b/configs/nanopi-ne=
o4-rk3399_defconfig
> > > index a44124aac0..2ecb50967b 100644
> > > --- a/configs/nanopi-neo4-rk3399_defconfig
> > > +++ b/configs/nanopi-neo4-rk3399_defconfig
> > > @@ -53,3 +53,9 @@ CONFIG_USB_ETHER_RTL8152=3Dy
> > >  CONFIG_USB_ETHER_SMSC95XX=3Dy
> > >  CONFIG_SPL_TINY_MEMSET=3Dy
> > >  CONFIG_ERRNO_STR=3Dy
> > > +CONFIG_DM_VIDEO=3Dy
> > > +CONFIG_VIDEO_BPP16=3Dy
> > > +CONFIG_VIDEO_BPP32=3Dy
> > > +CONFIG_DISPLAY=3Dy
> > > +CONFIG_VIDEO_ROCKCHIP=3Dy
> > > +CONFIG_DISPLAY_ROCKCHIP_HDMI=3Dy
> > > diff --git a/configs/roc-pc-rk3399_defconfig b/configs/roc-pc-rk3399_=
defconfig
> > > index 3a051d9b0c..a9f99f992d 100644
> > > --- a/configs/roc-pc-rk3399_defconfig
> > > +++ b/configs/roc-pc-rk3399_defconfig
> > > @@ -56,3 +56,9 @@ CONFIG_USB_ETHER_RTL8152=3Dy
> > >  CONFIG_USB_ETHER_SMSC95XX=3Dy
> > >  CONFIG_SPL_TINY_MEMSET=3Dy
> > >  CONFIG_ERRNO_STR=3Dy
> > > +CONFIG_DM_VIDEO=3Dy
> > > +CONFIG_VIDEO_BPP16=3Dy
> > > +CONFIG_VIDEO_BPP32=3Dy
> > > +CONFIG_DISPLAY=3Dy
> > > +CONFIG_VIDEO_ROCKCHIP=3Dy
> > > +CONFIG_DISPLAY_ROCKCHIP_HDMI=3Dy
> > > diff --git a/include/configs/evb_rk3399.h b/include/configs/evb_rk339=
9.h
> > > index c0b0358893..09eb361655 100644
> > > --- a/include/configs/evb_rk3399.h
> > > +++ b/include/configs/evb_rk3399.h
> > > @@ -6,6 +6,11 @@
> > >  #ifndef __EVB_RK3399_H
> > >  #define __EVB_RK3399_H
> > >
> > > +#define ROCKCHIP_DEVICE_SETTINGS \
> > > +             "stdin=3Dserial,cros-ec-keyb\0" \
> > > +             "stdout=3Dserial,vidconsole\0" \
> > > +             "stderr=3Dserial,vidconsole\0"
> > > +
> > >  #include <configs/rk3399_common.h>
> > >
> > >  #if defined(CONFIG_ENV_IS_IN_MMC)
> >
> > This seems like another commit (along with the question I saw about
> > i.MX FB not showing the right colors) 2cc393f32fd9 needs to be reworked
> > so that we default to enabling everything still but let boards opt out
> > rather than forcing everyone to opt-in as it seems like there's a lot of
> > cases where people need to opt-in and didn't know.
>=20
> yes, this evb board config is common across most of the rk3399
> defconfig boards. this patch enable hdmi on few rk3399 boards all use
> same config file, evb_rk3399.h

Yes, the ROCKCHIP_DEVICE_SETTINGS part makes sense, but the rest looks
very much like part of we need to rework the commit I mentioned.  I
don't object to this going in as-is.  Anatolij, how goes the rework of
things however?  I do want to see that get in sooner rather than later
so we can sort out other regressions from just a lack of CONFIG options
being enabled.  Thanks!

--=20
Tom

--OaJtNTxAPudgaAxc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6HLbQJwaaH776GM2h/n2NdMddlIFAl44MmgACgkQh/n2NdMd
dlKFpBAAw+P/LOk3G7OEc+n8jERjDEiuDojQgTz6ttbwPuWFfCkje6tNsk4pLK0N
TQPS/dXd4NN+N0BK2RBCFxmdgToG/jQWMQg1YpjluJrIPcvsSjq3b9FsQffr/3Vb
Pak55/JgIKWaufHVNmdV8/SetWdFCorsztik+Hz5AptJLobQ64Ay7J/CtZQ5vd8o
o0ymUGirKnlBhB3LW6uLxrHc30OnbycozyRWUmOr0tC5d83szGVYEPOQgRAU7iQ6
EfvsP3dDZpxrY+LbMs/eSy0QvHb2dUi+6zenGo5DotspGtNj7YpQjCVhoNBHuNJS
Z3ad/MF8LW3xZw02hPs68g6UWwcCVq4mxjJQ1qnvmdAFjDEbZzP3xlVS83/96vCM
Y1uBE1z//D6g7KWr58opuW2auYrLA+ZzXbRbn0fejBIY49heXGftEptBYD3vqMnr
/HnOsu8SASdQGgZEty4VTkjO6Z1B60aFL6vcFOWzZeXAAKbqggKTfy2rTZghWXME
SxvEaF6kK6oFqf6YECgZC2gI9ikK1myy3nCo1nTWCtyK2TFd15TV9gT1930uVelJ
LJY1g+PyE9cDhU7DyS5ss1BbBKxYdhhsMtNDyKf6EHSFKnAXjXwdF4HaMAgrFhMx
tZSh4I8DV66fF0o+L2f4YpnURi2FH6fLWEBH+WbOn6VwJ7KklnM=
=0vZQ
-----END PGP SIGNATURE-----

--OaJtNTxAPudgaAxc--
