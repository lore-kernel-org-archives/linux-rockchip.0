From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] soc: rockchip: disable jtag switching for RK3128 SoCs
Date: Mon, 05 Mar 2018 15:42:11 +0100
Message-ID: <1633972.b4bkohDpDd@phil>
References: <20180302122031.17426-1-heiko@sntech.de>
 <7020f92d-cc0e-745e-713b-3aa847b7e939@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <7020f92d-cc0e-745e-713b-3aa847b7e939-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Xiao Yao <xiaoyao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Shawn,

Am Montag, 5. M=E4rz 2018, 15:39:04 CET schrieb Shawn Lin:
> On 2018/3/2 20:20, Heiko Stuebner wrote:
> > From: Xiao Yao <xiaoyao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> > =

> > Disable IO function switching between sdmmc and jtag
> > for RK3128 SoCs.
> > =

> =

> I acked this on the vendor kernel tree, so FWIW:
> =

> Reviewed-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> =

> Hope this is one of the final patches for that, as I would
> revive IO function switching between sdmmc and jtag for newer
> SoCs after addressing the problem from HW level.

the main problem we had with that was that the  mmc-subsystem
somehow definitly didn't like it when the controller pins where pulled
out from under it on card eject.

But of course, if you can get this solved by hw somehow, that
would be pretty cool :-)


Heiko
