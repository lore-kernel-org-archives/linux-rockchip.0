From: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH 4/4] rockchip: Enable HDMI output on rk3399 board w/ HDMI
Date: Mon, 3 Feb 2020 16:55:27 +0530
Message-ID: <CAMty3ZBQ_mRY4ojo_4iHUzup2tD-FO6ZmskwJyXskg4O4iHz+Q@mail.gmail.com>
References: <20200123162845.10651-1-jagan@amarulasolutions.com>
 <20200123162845.10651-5-jagan@amarulasolutions.com>
 <20200124152735.GR26536@bill-the-cat>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200124152735.GR26536@bill-the-cat>
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Tom Rini <trini@konsulko.com>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, U-Boot-Denx <u-boot@lists.denx.de>, linux-amarula <linux-amarula@amarulasolutions.com>
List-Id: linux-rockchip.vger.kernel.org

On Fri, Jan 24, 2020 at 8:57 PM Tom Rini <trini@konsulko.com> wrote:
>
> On Thu, Jan 23, 2020 at 09:58:45PM +0530, Jagan Teki wrote:
>
> > Enable config options and console setting to respective
> > rk3399 board for HDMI output.
> >
> > Boards supported and tested on this patch are:
> > - NanoPc T4
> > - NanoPi M4
> > - NanoPi Neo4
> > - ROC-RK3399-PC
> >
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> >  configs/nanopc-t4-rk3399_defconfig   | 6 ++++++
> >  configs/nanopi-m4-rk3399_defconfig   | 6 ++++++
> >  configs/nanopi-neo4-rk3399_defconfig | 6 ++++++
> >  configs/roc-pc-rk3399_defconfig      | 6 ++++++
> >  include/configs/evb_rk3399.h         | 5 +++++
> >  5 files changed, 29 insertions(+)
> >
> > diff --git a/configs/nanopc-t4-rk3399_defconfig b/configs/nanopc-t4-rk3399_defconfig
> > index bd6d60ff6c..17e8a18d31 100644
> > --- a/configs/nanopc-t4-rk3399_defconfig
> > +++ b/configs/nanopc-t4-rk3399_defconfig
> > @@ -53,3 +53,9 @@ CONFIG_USB_ETHER_RTL8152=y
> >  CONFIG_USB_ETHER_SMSC95XX=y
> >  CONFIG_SPL_TINY_MEMSET=y
> >  CONFIG_ERRNO_STR=y
> > +CONFIG_DM_VIDEO=y
> > +CONFIG_VIDEO_BPP16=y
> > +CONFIG_VIDEO_BPP32=y
> > +CONFIG_DISPLAY=y
> > +CONFIG_VIDEO_ROCKCHIP=y
> > +CONFIG_DISPLAY_ROCKCHIP_HDMI=y
> > diff --git a/configs/nanopi-m4-rk3399_defconfig b/configs/nanopi-m4-rk3399_defconfig
> > index 74ede13c23..b73b2fdc27 100644
> > --- a/configs/nanopi-m4-rk3399_defconfig
> > +++ b/configs/nanopi-m4-rk3399_defconfig
> > @@ -53,3 +53,9 @@ CONFIG_USB_ETHER_RTL8152=y
> >  CONFIG_USB_ETHER_SMSC95XX=y
> >  CONFIG_SPL_TINY_MEMSET=y
> >  CONFIG_ERRNO_STR=y
> > +CONFIG_DM_VIDEO=y
> > +CONFIG_VIDEO_BPP16=y
> > +CONFIG_VIDEO_BPP32=y
> > +CONFIG_DISPLAY=y
> > +CONFIG_VIDEO_ROCKCHIP=y
> > +CONFIG_DISPLAY_ROCKCHIP_HDMI=y
> > diff --git a/configs/nanopi-neo4-rk3399_defconfig b/configs/nanopi-neo4-rk3399_defconfig
> > index a44124aac0..2ecb50967b 100644
> > --- a/configs/nanopi-neo4-rk3399_defconfig
> > +++ b/configs/nanopi-neo4-rk3399_defconfig
> > @@ -53,3 +53,9 @@ CONFIG_USB_ETHER_RTL8152=y
> >  CONFIG_USB_ETHER_SMSC95XX=y
> >  CONFIG_SPL_TINY_MEMSET=y
> >  CONFIG_ERRNO_STR=y
> > +CONFIG_DM_VIDEO=y
> > +CONFIG_VIDEO_BPP16=y
> > +CONFIG_VIDEO_BPP32=y
> > +CONFIG_DISPLAY=y
> > +CONFIG_VIDEO_ROCKCHIP=y
> > +CONFIG_DISPLAY_ROCKCHIP_HDMI=y
> > diff --git a/configs/roc-pc-rk3399_defconfig b/configs/roc-pc-rk3399_defconfig
> > index 3a051d9b0c..a9f99f992d 100644
> > --- a/configs/roc-pc-rk3399_defconfig
> > +++ b/configs/roc-pc-rk3399_defconfig
> > @@ -56,3 +56,9 @@ CONFIG_USB_ETHER_RTL8152=y
> >  CONFIG_USB_ETHER_SMSC95XX=y
> >  CONFIG_SPL_TINY_MEMSET=y
> >  CONFIG_ERRNO_STR=y
> > +CONFIG_DM_VIDEO=y
> > +CONFIG_VIDEO_BPP16=y
> > +CONFIG_VIDEO_BPP32=y
> > +CONFIG_DISPLAY=y
> > +CONFIG_VIDEO_ROCKCHIP=y
> > +CONFIG_DISPLAY_ROCKCHIP_HDMI=y
> > diff --git a/include/configs/evb_rk3399.h b/include/configs/evb_rk3399.h
> > index c0b0358893..09eb361655 100644
> > --- a/include/configs/evb_rk3399.h
> > +++ b/include/configs/evb_rk3399.h
> > @@ -6,6 +6,11 @@
> >  #ifndef __EVB_RK3399_H
> >  #define __EVB_RK3399_H
> >
> > +#define ROCKCHIP_DEVICE_SETTINGS \
> > +             "stdin=serial,cros-ec-keyb\0" \
> > +             "stdout=serial,vidconsole\0" \
> > +             "stderr=serial,vidconsole\0"
> > +
> >  #include <configs/rk3399_common.h>
> >
> >  #if defined(CONFIG_ENV_IS_IN_MMC)
>
> This seems like another commit (along with the question I saw about
> i.MX FB not showing the right colors) 2cc393f32fd9 needs to be reworked
> so that we default to enabling everything still but let boards opt out
> rather than forcing everyone to opt-in as it seems like there's a lot of
> cases where people need to opt-in and didn't know.

yes, this evb board config is common across most of the rk3399
defconfig boards. this patch enable hdmi on few rk3399 boards all use
same config file, evb_rk3399.h
