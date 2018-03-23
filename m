From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v3 1/2] clk: rockchip: assign correct id for pclk_ddr and
 hclk_sd in rk3399
Date: Fri, 23 Mar 2018 09:26:00 +0100
Message-ID: <5398945.fsProPGqoW@phil>
References: <1521511589-17844-1-git-send-email-hl@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1521511589-17844-1-git-send-email-hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Lin Huang <hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: dbasehore-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org, briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Dienstag, 20. M=E4rz 2018, 03:06:28 CET schrieb Lin Huang:
> Since hclk_sd and pclk_ddr source clock from CPLL or GPLL,
> and these two PLL may change their frequency. If we do not
> assign right id to pclk_ddr and hclk_sd, they will alway use
> default cur register value, and may get the frequency
> exceed their signed off frequency. So assign correct Id
> for them, then we can assign frequency for them in dts.
> =

> Change-Id: I6c4d15d37ddabe4ed34e2351cf26e660672ae9ee
> Signed-off-by: Lin Huang <hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> Reviewed-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> Reviewed-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

applied for 4.17 after dropping the Change-Id

Thanks
Heiko
