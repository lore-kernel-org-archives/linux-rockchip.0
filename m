From: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v2 0/5] ARM: multi_v7_defconfig: Improve rockchip support
Date: Tue, 06 Oct 2015 16:14:14 +0200
Message-ID: <5148310.s4EONgC5KW@wuerfel>
References: <1443094759-28531-1-git-send-email-sjoerd.simons@collabora.co.uk> <3696254.URXbzz0NG2@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <3696254.URXbzz0NG2@diego>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-arm-kernel@lists.infradead.org
Cc: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>, Sjoerd Simons <sjoerd.simons@collabora.co.uk>, Krzysztof Kozlowski <k.kozlowski@samsung.com>, Russell King <linux@arm.linux.org.uk>, Geert Uytterhoeven <geert+renesas@glider.be>, Javier Martinez Canillas <javier@osg.samsung.com>, Ray Jui <rjui@broadcom.com>, Kevin Hilman <khilman@kernel.org>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, arm@kernel.org, Alexandre Belloni <alexandre.belloni@free-electrons.com>, Kukjin Kim <kgene@kernel.org>, Olof Johansson <olof@lixom.net>, Stephen Warren <swarren@nvidia.com>, Thierry Reding <treding@nvidia.com>, Lee Jones <lee.jones@linaro.org>
List-Id: linux-rockchip.vger.kernel.org

On Friday 25 September 2015 00:13:29 Heiko St=FCbner wrote:
> Am Donnerstag, 24. September 2015, 13:39:14 schrieb Sjoerd Simons:
> > Enable options to provide more complete support for Rockchip boards
> > including: support for the common PMICs, common RTC chips, I2C, SPI=
,
> > PMW, Thermal driver, HDMI video output and USB 2.
>=20
> As these patches are supposed to go through arm-soc directly and opti=
ons=20
> getting enabled + the whole what gets set as built-in vs. module look=
s sane to=20
> me, I'll just provide for the whole series a:
>=20
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>

Applied them all to next/defconfig

Thanks,

	Arnd
