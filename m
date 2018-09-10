From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Fix Type-C port supply in
 Sapphire board
Date: Mon, 10 Sep 2018 19:19:20 +0200
Message-ID: <4199457.qejmJXf6nG@phil>
References: <3744467.8gaGBgj8zp@phil> <20180910161029.1948-1-vicencb@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20180910161029.1948-1-vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Enric Balletbo i Serra <enric.balletbo-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: William wu <wulf-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Montag, 10. September 2018, 18:10:29 CEST schrieb Vicente Bergas:
> The reference is the schematic, page 11:
> https://dl.vamrs.com/products/sapphire_excavator/RK_SAPPHIRE_SOCBOARD_RK3399_LPDDR3D178P232SD8_V12_20161109HXS.pdf
> (alternate link)
> http://opensource.rock-chips.com/images/f/f0/RK_Sapphire_RK3399.rar
> 
> Changes in v2:
>  The power supply is applied to the OTG port.
> 
> Signed-off-by: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

applied for 4.20


> Hi Heiko,
> your approach makes sense, i just tried it and the Type-C port is
> still powered-on, like with the previous patch.
> But sadly still no data flow.
> 
> I have got a gru/kevin and also bought a USB-C to SATA bridge
> for it. The bridge works fine on kevin with kernel 4.4, still not
> tested with mainline.
> 
> But when plugged into the Sapphire there is an LED that shows it
> is powered-on and nothing else. On the linux side, dmesg shows no
> messages.
> 
> Comparing the USB portion of the DTS wrt Firefly i see no
> significant differences.
> 
> Are there other Sapphire board users that can confirm if the
> Type-C port works or not? That would help to discard a HW issue.

Enric was working on a similar board, maybe he remember some
peculiarities.
