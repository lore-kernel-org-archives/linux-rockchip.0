From: Sjoerd Simons <sjoerd.simons@collabora.co.uk>
Subject: Re: [PATCH 1/4] ARM: multi_v7_defconfig: Enable common Rockchip
 devices/busses
Date: Mon, 07 Sep 2015 12:24:27 +0200
Message-ID: <1441621467.8778.26.camel@collabora.co.uk>
References: <1441570566-14001-1-git-send-email-sjoerd.simons@collabora.co.uk>
	 <1441570566-14001-2-git-send-email-sjoerd.simons@collabora.co.uk>
	 <55ED585B.9030009@osg.samsung.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <55ED585B.9030009@osg.samsung.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Javier Martinez Canillas <javier@osg.samsung.com>, linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <k.kozlowski@samsung.com>, Thierry Reding <treding@nvidia.com>, Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org, Russell King <linux@arm.linux.org.uk>, Alexandre Belloni <alexandre.belloni@free-electrons.com>, Arnd Bergmann <arnd@arndb.de>, Lee Jones <lee.jones@linaro.org>, Olof Johansson <olof@lixom.net>, Ray Jui <rjui@broadcom.com>, Stephen Warren <swarren@nvidia.com>
List-Id: linux-rockchip.vger.kernel.org

On Mon, 2015-09-07 at 11:26 +0200, Javier Martinez Canillas wrote:
> Hello Sjoerd,
> 
> On 09/06/2015 10:16 PM, Sjoerd Simons wrote:
> > Enable Rockchip I2C, SPI, PWM, thermal drivers.
> > 
> > Builtin are:
> >  * I2C as it often controls the pmic.
> 
> Having I2C as a module will cause more probe deferrals due missing
> regulators and slow down the boot but it should not cause issues.
> Or am I missing something?
> 
> In fact, I think even the PMIC could be built as a module.

It could in principle. However as a lot of other drivers do need the
regulators provided by the pmic, they'll be deferred until that driver
is loaded. So e.g. with the i2c/pmic drivers as a module you cannot
boot to an NFS rootfs without using an initramfs. 

> But I don't have a strong opinion on this so patch looks good:
> 
> Reviewed-by: Javier Martinez Canillas <javier@osg.samsung.com>
> 
> Best regards,

-- 
Sjoerd Simons <sjoerd.simons@collabora.co.uk>
Collabora Ltd.
