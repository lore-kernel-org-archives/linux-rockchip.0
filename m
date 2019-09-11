From: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: Re: [PATCH 0/4] Enable Hantro G1 post-processor
Date: Wed, 11 Sep 2019 09:27:16 +0100
Message-ID: <6e493142690d48ee7e65c1cb2a4d6aec1e3b671b.camel@collabora.com>
References: <20190903181711.7559-1-ezequiel@collabora.com>
 <CAAFQd5AdikoN+7TG=0ZGFkSzaK2UFHM4VG7SYtfUtmjQgD61zA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAAFQd5AdikoN+7TG=0ZGFkSzaK2UFHM4VG7SYtfUtmjQgD61zA-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Philipp Zabel <p.zabel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Chris Healy <cphealy-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Linux Media Mailing List <linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Mon, 2019-09-09 at 16:07 +0900, Tomasz Figa wrote:
> Hi Ezequiel,
> 
> On Wed, Sep 4, 2019 at 3:17 AM Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> wrote:
> > Hi all,
> > 
> > This series enables the post-processor support available
> > on the Hantro G1 VPU. The post-processor block can be
> > pipelined with the decoder hardware, allowing to perform
> > operations such as color conversion, scaling, rotation,
> > cropping, among others.
> > 
> > The decoder hardware needs its own set of NV12 buffers
> > (the native decoder format), and the post-processor is the
> > owner of the CAPTURE buffers. This allows the application
> > get processed (scaled, converted, etc) buffers, completely
> > transparently.
> > 
> > This feature is implemented by exposing other CAPTURE pixel
> > formats to the application (ENUM_FMT). When the application
> > sets a pixel format other than NV12, the driver will enable
> > and use the post-processor transparently.
> 
> I'll try to review the series a bit later, but a general comment here
> is that the userspace wouldn't have a way to distinguish between the
> native and post-processed formats. I'm pretty much sure that
> post-processing at least imposes some power penalty, so it would be
> good if the userspace could avoid it if unnecessary.
> 

Hm, that's true, good catch.

So, it would be desirable to retain the current behavior of allowing
the application to just set a different pixel format and get
a post-processed frame, transparently.

But at the same time, it would be nice if the application is somehow
aware of the post-processing happening. Maybe we can expose a more
accurate media controller topology, have applications enable
the post-processing pipeline explicitly.

Thanks for the feedback,
Ezequiel
