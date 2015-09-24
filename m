From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v2 0/5] ARM: multi_v7_defconfig: Improve rockchip support
Date: Fri, 25 Sep 2015 00:13:29 +0200
Message-ID: <3696254.URXbzz0NG2@diego>
References: <1443094759-28531-1-git-send-email-sjoerd.simons@collabora.co.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1443094759-28531-1-git-send-email-sjoerd.simons@collabora.co.uk>
Sender: linux-kernel-owner@vger.kernel.org
To: Sjoerd Simons <sjoerd.simons@collabora.co.uk>
Cc: linux-rockchip@lists.infradead.org, arm@kernel.org, Thierry Reding <treding@nvidia.com>, Kevin Hilman <khilman@kernel.org>, linux-arm-kernel@lists.infradead.org, Javier Martinez Canillas <javier@osg.samsung.com>, Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <k.kozlowski@samsung.com>, Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org, Russell King <linux@arm.linux.org.uk>, Alexandre Belloni <alexandre.belloni@free-electrons.com>, Arnd Bergmann <arnd@arndb.de>, Lee Jones <lee.jones@linaro.org>, Olof Johansson <olof@lixom.net>, Ray Jui <rjui@broadcom.com>, Stephen Warren <swarren@nvidia.com>
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 24. September 2015, 13:39:14 schrieb Sjoerd Simons:
> Enable options to provide more complete support for Rockchip boards
> including: support for the common PMICs, common RTC chips, I2C, SPI,
> PMW, Thermal driver, HDMI video output and USB 2.

As these patches are supposed to go through arm-soc directly and options 
getting enabled + the whole what gets set as built-in vs. module looks sane to 
me, I'll just provide for the whole series a:

Reviewed-by: Heiko Stuebner <heiko@sntech.de>


Heiko
