From: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH 1/5] phy: rockchip: add inno-usb3 phy driver
Date: Wed, 30 Oct 2019 13:46:31 -0400
Message-ID: <CAMdYzYqex=xoXR+Xhg=LNwEa0hobbSghRzj8AkmVOSNhp7x1-A@mail.gmail.com>
References: <20191028182254.30739-1-pgwipeout@gmail.com>
 <20191028182254.30739-2-pgwipeout@gmail.com>
 <10419898.gYlDFaIxON@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <10419898.gYlDFaIxON@phil>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Wed, Oct 30, 2019 at 4:15 AM Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org> wrote:
>
> Am Montag, 28. Oktober 2019, 19:22:50 CET schrieb Peter Geis:
> > Add the rockchip innosilicon usb3 phy driver, supporting devices such as the rk3328.
> > Pulled from:
> > https://github.com/FireflyTeam/kernel/blob/roc-rk3328-cc/drivers/phy/rockchip/phy-rockchip-inno-usb3.c
> >
> > Signed-off-by: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>
> What happens on plug - unplug - plug?
>
> I remember what kept me from pushing the usb3 stuff for rk3328
> was the usbphy breaking hotplug after the first unplug.
>
> Did this get fixed?
>
> Thanks
> Heiko
>
>
It seems to have been corrected, at least partially.
The hotplug issue may have been resolved by [0].

On my rk3328-roc-cc board, both USB2 and USB3 work correctly for
hotplugging with this driver.
I did encounter some odd behavior with the USB2HOST port, where it
stopped reading FS devices when this was loaded.
I'm wondering if we have a common clock problem or some other
undocumented shared dependancy.

Robin encountered some odd behavior when unplugging a USB3 device, the
controller didn't recognize it for a while.
I don't have that problem, but I don't know what board she's using.

[0] commit fb903392131a324a243c7731389277db1cd9f8df
clk: rockchip: fix wrong clock definitions for rk3328
