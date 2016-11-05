From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] clk: rockchip: Ignore frac divisor for PLL equivalence
 when it's unused
Date: Sat, 05 Nov 2016 23:25:56 +0100
Message-ID: <2456323.GVNA1yFAA5@phil>
References: <1478130204-3167-1-git-send-email-jwerner@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1478130204-3167-1-git-send-email-jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Xing Zheng <zhengxing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Am Mittwoch, 2. November 2016, 16:43:24 CET schrieb Julius Werner:
> Rockchip RK3399 PLLs can be used in two separate modes: integral and
> fractional. We can select between these two modes with the unambiguously
> named DSMPD bit.
> 
> During boot, we check all PLL settings to confirm that they match our
> PLL table for that frequency, and reinitialize the PLLs where they
> don't. The settings checked for this include the fractional divider
> field that is only used in fractional mode, even if we're in integral
> mode (DSMPD = 1) and that field has no effect.
> 
> This patch changes the check to only compare the fractional divider if
> we're actually in fractional mode. This way, we won't reinitialize the
> PLL in cases where there's absolutely no reason for that, which may
> avoid glitching child clocks that should better not be glitched (e.g.
> PWM regulators).
> 
> Signed-off-by: Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>

I took the liberty to clone the fix to the rk3036 pll type as well, which is
quite similar and only differs in the actual register layout.

As sugested by the above, I've applied this to my clk branch for 4.10 [0]


Thanks for fixing this
Heiko


[0] https://git.kernel.org/cgit/linux/kernel/git/mmind/linux-rockchip.git/commit/?id=bf92384b6d729b22916ba832b4a225ca196e98ba
