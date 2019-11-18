From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: Re: [PATCH 7/9] gadget: rockchip: Add rk3399 USB_GADGET_PRODUCT_NUM
Date: Mon, 18 Nov 2019 19:14:26 +0530
Message-ID: <CAMty3ZDkW98E=BfimQM7XiUkxKOqcOnvEwe44iQ_KphUXZth1g@mail.gmail.com>
References: <20191022175458.22604-1-jagan@amarulasolutions.com>
 <20191022175458.22604-8-jagan@amarulasolutions.com>
 <87y2x3ga9q.fsf@archiso.i-did-not-set--mail-host-address--so-tickle-me>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <87y2x3ga9q.fsf-sOhrXWSnOqapXNIQCVAXCG0Lkn3mC4nZ0tOlhedn3YvkypF1WZHjJXhe7Zk3YmMvjmZSf7Nhrd8@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Levin Du <djw-Efosm3t9Qi2Pt1CcHtbs0g@public.gmane.org>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, U-Boot-Denx <u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, linux-amarula <linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Tue, Oct 29, 2019 at 3:10 PM <djw-Efosm3t9Qi2Pt1CcHtbs0g@public.gmane.org> wrote:
>
> Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org> writes:
>
> > Add 0x330a for rk3399 gadget product number.
> >
> > Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
> > ---
> >  drivers/usb/gadget/Kconfig | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
> > index 2da8b40e05..b0e61f3fcd 100644
> > --- a/drivers/usb/gadget/Kconfig
> > +++ b/drivers/usb/gadget/Kconfig
> > @@ -61,7 +61,7 @@ config USB_GADGET_PRODUCT_NUM
> >       default 0x310a if ROCKCHIP_RK3036
> >       default 0x310c if ROCKCHIP_RK3128
> >       default 0x320a if ROCKCHIP_RK3229 || ROCKCHIP_RK3288
> > -     default 0x330a if ROCKCHIP_RK3328
> > +     default 0x330a if ROCKCHIP_RK3328 || ROCKCHIP_RK3399
> >       default 0x0
> >       help
> >         Product ID of the USB device emulated, reported to the host device.
>
> With 0x330a, the device shown in `lsusb` is:
>
>     Bus 002 Device 024: ID 2207:330a Fuzhou Rockchip Electronics Company RK3368 in Mask ROM mode
> While using 0x330c, the device shown in `lsusb` is:
>
>     Bus 002 Device 025: ID 2207:330c Fuzhou Rockchip Electronics Company RK3399 in Mask ROM mode
>
> Therefore, this should be modified to use 0x330c:
>
> +       default 0x330c if ROCKCHIP_RK3399

Can you link the host driver for the rockchip gadget, I didn't see the
name using lsusb. My output on ubuntu host is
Bus 001 Device 009: ID 2207:330a
