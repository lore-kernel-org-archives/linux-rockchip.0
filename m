From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: move backlight from sapphire to
 excavator
Date: Fri, 02 Nov 2018 13:22:48 +0100
Message-ID: <5526151.5HNT0NPKUH@phil>
References: <20181030150049.16064-1-vicencb@gmail.com>
 <5566033.xjZbm30eH9@phil>
 <CAAMcf8CuHWWEUF=C4B=ZdyjR=gv5M2N+GBRQ1DjXUs7L704yRg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAAMcf8CuHWWEUF=C4B=ZdyjR=gv5M2N+GBRQ1DjXUs7L704yRg-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Enric Balletbo Serra <eballetbo-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Am Freitag, 2. November 2018, 13:20:39 CET schrieb Vicente Bergas:
> On Fri, Nov 2, 2018 at 1:12 PM Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org> wrote:
> >
> > Am Dienstag, 30. Oktober 2018, 16:00:49 CET schrieb Vicente Bergas:
> > > The backlight is for the eDP panel and it has the connector on the excavator baseboard.
> > >
> > > Signed-off-by: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> >
> > applied for 4.21 (or whatever it will be called)
> >
> > The patch itself is good, as it as Vicene said only moved the elements
> > and the resulting dtb stays identical for excavator.
> 
> Just a note: the resulting excavator dtb is different, in the decompiled dts
> i saw a few phandles and other ids moved around, to the best of my knowledge
> it looked equivalent to me.

I think that is to be expected, as the ids generated from phandles of
course are just counting upwards depending on the ordering and as
things moved from one file to another one should expect the ordering
beeing changed :-)

Also the dts-side changes looks equivalent, so we should be good anyway.


Heiko
