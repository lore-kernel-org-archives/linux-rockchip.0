From: Olof Johansson <olof-nZhT3qVonbNeoWH0uzbU5w@public.gmane.org>
Subject: Re: [PATCH 3/3] arm64: dts: add Rockchip rk3368 core dtsi and board
 dts for the r88 board
Date: Fri, 17 Jul 2015 10:35:57 -0700
Message-ID: <20150717173557.GD28326@localhost>
References: <2820374.NgluYWXZkW@diego>
 <1689279.HMMcieeDok@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1689279.HMMcieeDok@diego>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko St?bner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, arm-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Fri, Jul 17, 2015 at 12:34:53AM +0200, Heiko St?bner wrote:
> In terms of peripherals the rk3368 is quite similar to the rk3288, which
> makes it possible to have a lot basic components working in the first go.
> More to follow once I tracked down all the tiny differences that still
> exist in some parts.
> 
> With these dts files, the R88 board is able to boot from an attached
> usb device and most likely from its emmc too, if the emmc uses a standard
> partition table instead of Rockchip's own one - the emmc itself is
> detected correctly.
> 
> Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
> ---
> as mentioned in the cover letter, needed dependency (stable branch)
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/clk/linux.git clk-rk3368
> 

Merged in the branch and applied the patch. Thanks.


-Olof
