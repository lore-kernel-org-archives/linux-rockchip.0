From: Sjoerd Simons <sjoerd.simons@collabora.co.uk>
Subject: Re: [PATCH 4/4] ARM: multi_v7_defconfig: Enable DW USB2 support and
 rockchip phy
Date: Mon, 07 Sep 2015 10:49:00 +0200
Message-ID: <1441615740.8778.15.camel@collabora.co.uk>
References: <1441570566-14001-1-git-send-email-sjoerd.simons@collabora.co.uk>
	 <1441609832.8778.4.camel@collabora.co.uk> <55ED3BC5.8050603@samsung.com>
	 <1447076.WCyUA0P2ql@diego> <55ED433A.5000907@samsung.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <55ED433A.5000907@samsung.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Krzysztof Kozlowski <k.kozlowski@samsung.com>, Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>, Kevin Hilman <khilman@linaro.org>, linux-arm-kernel@lists.infradead.org, Javier Martinez Canillas <javier@osg.samsung.com>, Kukjin Kim <kgene@kernel.org>, Thierry Reding <treding@nvidia.com>, Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org, Russell King <linux@arm.linux.org.uk>, Alexandre Belloni <alexandre.belloni@free-electrons.com>, Lee Jones <lee.jones@linaro.org>, Ray Jui <rjui@broadcom.com>, Stephen Warren <swarren@nvidia.com>, Marek Szyprowski <m.szyprowski@samsung.com>
List-Id: linux-rockchip.vger.kernel.org

On Mon, 2015-09-07 at 16:56 +0900, Krzysztof Kozlowski wrote:
> On 07.09.2015 16:53, Heiko St=C3=BCbner wrote:
> > Am Montag, 7. September 2015, 16:24:53 schrieb Krzysztof Kozlowski:
> > I guess the easiest option would be to just drop the dwc2 from
> > here, only=20
> > keeping the phy enablement and let everything (Marek's and Sjoerd's
> > patch)=20
> > come together in the armsoc defconfig branch? As the rest of both
> > patches don't=20
> > seem to touch common areas, they should be easily mergable from
> > different trees=20
> > as well.
>=20
> Yes, I agree. The config PHY_ROCKCHIP_USB does not depend on it
> directly
> so this should work fine.

Sounds good, I'll wait a bit longer for more feedback and then send a
V2 with patch 4 adjusted to just enable the rockchip PHY.

Thanks for the feedback!

--=20
Sjoerd Simons
Collabora Ltd.
