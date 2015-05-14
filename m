From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 0/8] ARM: dts: rockchip: the big relicensing
Date: Thu, 14 May 2015 20:44:49 +0200
Message-ID: <1881847.GTHrUCPx3W@phil>
References: <1425665046-22927-1-git-send-email-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1425665046-22927-1-git-send-email-heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Eddie Cai <cf-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Addy Ke <addy.ke-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Andy Yan <andy.yan-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Jianqun Xu <jay.xu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Roger Chen <roger.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, huang lin <hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Eddie and Rockchip people,

Am Freitag, 6. M=E4rz 2015, 19:03:58 schrieb Heiko Stuebner:
> GPL2/X11 seems to be the consensus to go for devicetree files, as shown f=
or
> examply by armada, meson and sunxi.

just to explain a bit more, this is helpful if other operating systems like =

the BSDs want to share the devicetree files which are in any case supposed =
to =

be operating-system-agnostic.


It looks like I got all needed external ACKs but am missing ACKs from some =

Rockchip engineers who contributed to these files.

Ideally the listed people could respond individually to the patches in thei=
r =

mailboxes (from beginning of march) with an Acked-by tag.

But as all of them are employed by Rockchip it should also be possible for =

Eddie to Ack the change summarily on behalf of Rockchip if this is acceptab=
le.


>   ARM: dts: rockchip: relicense rk3288.dtsi under GPLv2/X11
 Addy Ke <addy.ke-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
 Andy Yan <andy.yan-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
 Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
 Jianqun Xu<jay.xu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
 Roger Chen <roger.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
 Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
 huang lin <hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

>   ARM: dts: rockchip: relicense rk3288-evb* under GPLv2/X11
 Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
 Roger Chen <roger.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
 Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>


Thanks
Heiko
