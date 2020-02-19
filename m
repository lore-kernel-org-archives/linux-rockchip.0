From: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH v2 1/3] ASoC: dt-bindings: Make RK3328 codec GPIO explicit
Date: Wed, 19 Feb 2020 15:38:30 -0600
Message-ID: <20200219213830.GA15330@bogus>
References: <cover.1581376744.git.robin.murphy@arm.com>
 <5f7a399dea8a9dedef57f6f99f0f6ab1c1fdc56a.1581376744.git.robin.murphy@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <5f7a399dea8a9dedef57f6f99f0f6ab1c1fdc56a.1581376744.git.robin.murphy-5wv7dgnIgG8@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Cc: lgirdwood-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, alsa-devel-K7yf7f+aM1XWsZ/bQMPhNw@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Tue, 18 Feb 2020 21:31:58 +0000, Robin Murphy wrote:
> Existing RK3328 codec drivers have overloaded the GRF phandle to assume
> implicit control of the limited-function GPIO_MUTE pin, which is usually
> used to enable an external audio line driver IC. Since this pin has a
> proper binding of its own (see gpio/rockchip,rk3328-grf-gpio.txt), make
> a GPIO explicit in the codec binding too. This will help avoid ambiguity
> on boards that use that pin for some other purpose.
> 
> (and while touching the example, enforce the "don't include status" rule)
> 
> Signed-off-by: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
> ---
> 
> v2: no change
> 
>  .../devicetree/bindings/sound/rockchip,rk3328-codec.txt    | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
