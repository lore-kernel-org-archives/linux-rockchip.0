From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v3 2/2] arm64: dts: rockchip: assign clock rate for some
 cpll child clock
Date: Fri, 23 Mar 2018 09:45:22 +0100
Message-ID: <2857663.tlolacRkt7@phil>
References: <1521511589-17844-1-git-send-email-hl@rock-chips.com>
 <1521511589-17844-2-git-send-email-hl@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1521511589-17844-2-git-send-email-hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
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

Am Dienstag, 20. M=E4rz 2018, 03:06:29 CET schrieb Lin Huang:
> These clocks do not assign default clock frequency, and use the
> default cru register value to get frequency, so if cpll increase
> frequency, these clocks also increase their frequency, that may
> exceed their signed off frequency. So assign default clock for
> them to avoid it.
> =

> NOTE: on none of the boards currently in mainline do we expect
> CPLL to be anything other than 800 MHz, but some future boards
> might have it. It's still good to be explicit about the clock
> rates to make diffing against future boards easier and also to
> rely less on BIOS muxing.
> =

> Change-Id: If79368aeda5c51dbf2a3b6659f17052a2ae4a401
> Signed-off-by: Lin Huang <hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> Reviewed-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>

applied for 4.17 (but will most likely move to 4.18) with some changes:
- dropped Change-Id
- fixed duplicate assigned clocks for dp node
- grouped aclk_vio and aclk_hdcp into one line in cru nodes
- moved assigned clocks


Heiko
