From: Javier Martinez Canillas <javier@osg.samsung.com>
Subject: Re: [PATCH 1/4] ARM: multi_v7_defconfig: Enable common Rockchip
 devices/busses
Date: Mon, 7 Sep 2015 13:06:10 +0200
Message-ID: <55ED6FA2.4090903@osg.samsung.com>
References: <1441570566-14001-1-git-send-email-sjoerd.simons@collabora.co.uk>
 <1441570566-14001-2-git-send-email-sjoerd.simons@collabora.co.uk>
 <55ED585B.9030009@osg.samsung.com> <1441621467.8778.26.camel@collabora.co.uk>
 <55ED6D35.6060704@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <55ED6D35.6060704@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Andy Yan <andy.yan@rock-chips.com>, Sjoerd Simons <sjoerd.simons@collabora.co.uk>, linux-rockchip@lists.infradead.org
Cc: Krzysztof Kozlowski <k.kozlowski@samsung.com>, Russell King <linux@arm.linux.org.uk>, Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>, Ray Jui <rjui@broadcom.com>, linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>, Kukjin Kim <kgene@kernel.org>, Alexandre Belloni <alexandre.belloni@free-electrons.com>, Olof Johansson <olof@lixom.net>, Stephen Warren <swarren@nvidia.com>, Thierry Reding <treding@nvidia.com>, Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hello Andy,

On 09/07/2015 12:55 PM, Andy Yan wrote:
> Hi
>     There are also many other devices like display and mmc and even
> the cpu(if the cpu want run a high frequency when boot up)need to
> get power supply from PMIC, so it is better to load PMIC as early as
> possible.Built-in is a better choice.
>

Please don't top post, it makes following the conversation much harder.

Yes, I know that many devices needs the regulators provided by the PMIC
but that it's also true for all the regulators in all the PMICs for all
the boards supported by multi_v7_defconfig.

So to keep the kernel binary on a reasonable size, the current multi_v7
policy is to enable as much as possible as a module so just saying that
many other devices are using regulators from this PMIC is not enough.

Saying that it will allow mounting a NFS rootfs without an initramfs as
Sjoerd said is a much better justification IMHO.

Best regards,
-- 
Javier Martinez Canillas
Open Source Group
Samsung Research America
