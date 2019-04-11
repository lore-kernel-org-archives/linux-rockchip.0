From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] soc: rockchip: Set the proper PWM for rk3288
Date: Thu, 11 Apr 2019 13:42:45 +0200
Message-ID: <2577047.PMfDAGTXrs@phil>
References: <20190409204905.152432-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190409204905.152432-1-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, mka-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, ryandcase-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Caesar Wang <caesar.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Dienstag, 9. April 2019, 22:49:05 CEST schrieb Douglas Anderson:
> The rk3288 SoC has two PWM implementations available, the "old"
> implementation and the "new" one.  You can switch between the two of
> them by flipping a bit in the grf.
> 
> The "old" implementation is the default at chip power up but isn't the
> one that's officially supposed to be used.  ...and, in fact, the
> driver that gets selected in Linux using the rk3288 device tree only
> supports the "new" implementation.
> 
> Long ago I tried to get a switch to the right IP block landed in the
> PWM driver (search for "rk3288: Switch to use the proper PWM IP") but
> that got rejected.  In the mean time the grf has grown a full-fledged
> driver that already sets other random bits like this.  That means we
> can now get the fix landed.
> 
> For those wondering how things could have possibly worked for the last
> 4.5 years, folks have mostly been relying on the bootloader to set
> this bit.  ...but occasionally folks have pointed back to my old patch
> series [1] in downstream kernels.
> 
> [1] https://www.mail-archive.com/linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org/msg1391597.html
> 
> Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>

applied for 5.2

Thanks
Heiko
