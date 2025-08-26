Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1650FCA0EFA
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Aug 2025 08:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gEIQcZP4JKIJYKcdrZxw65FIRF9Gz6tSXhOxt8C+k1Q=; b=oLN6JjWDb6bqam
	HQ2qUFshQjz9AQyaVj/Dw5BTIMpXFZH/471g1Sz7zlZ9icxiw/VACMAQkaOZE1Wbg/3dqhJ5eakmj
	Dg6zzdYtz0+TxnN4T3zyGpqlxhrli6MrUzMDICQJJsycPk/t60Jvq9DY16Oe+AA0vwx87shQa9z1v
	lDMnFs+5TKPOLasWubh5wybS8BYKesU56JikmoQMPJ4We7VC54dBueADxxwescILCoXituFFkPQZL
	5csmY5wGGUPjclJU39kgJVmyLQ2S6PxEd8hTvb7147aeCQIM2M1IE7WueWR8Qn2ofde8CLUhdgTbI
	dodYeHbPz151aLiuG63Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqpB5-0000000B2qh-0EAp;
	Tue, 26 Aug 2025 08:37:15 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqp5Q-0000000B1VQ-32HY
	for linux-rockchip@lists.infradead.org;
	Tue, 26 Aug 2025 08:31:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1756197082;
 bh=jA8sOFGvh2/p8iE2G4NAwGkJrUNoYidwOKdr2bvzY+s=;
 b=MJCPM6y5U3KzIbkXhXI44C4jJVSFJlgEmwe02IUgwNyvb2a0gDGd1p7xP+5N4bInxXps6KJiE
 q2cjDHFAJy7NJWbz6FO/YWi5+Hl3wAYElka5f5Eg0KLxlLkTkpZ8eK83CiUZjX539Wv88MmrtkI
 /1Oxv/AvCymSRvGIerkIBDstWjobQwnuVem22EpqiUGcewSi1ub3Xo2BgP+i56Ofcxd1cVErZ3c
 tFdR5KYOIri3GhpwEBqtNk19Ijk+XpenNgXc7tyhDpewJhGh+ikkZ2H80KO5ZPY6TdiAbSl4Uen
 6mrG/ebNdElyVqOrBaSJ0wKE+lJzzwtddcvVvC9usx7g==
X-Forward-Email-ID: 68ad70d0b1fda674b9411dcb
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.2.9
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <6cf1cf2d-50cb-413d-93c6-79ecd6b0788e@kwiboo.se>
Date: Tue, 26 Aug 2025 10:31:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/6] arm64: dts: rockchip: Add ROCK 2A/2F, Sige1 and
 NanoPi Zero2
To: Heiko Stuebner <heiko@sntech.de>
References: <20250717103720.2853031-1-jonas@kwiboo.se>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250717103720.2853031-1-jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250826_013124_949445_0F671116 
X-CRM114-Status: GOOD (  16.43  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Yao Zi <ziyao@disroot.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Chukun Pan <amadeus@jmu.edu.cn>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Heiko,

On 7/17/2025 12:37 PM, Jonas Karlman wrote:
> This series adds dt-bindings and initial device tree for the following
> Rockchip RK3528A boards:
> - Radxa ROCK 2A/2F
> - ArmSoM Sige1
> - FriendlyElec NanoPi Zero2
> 
> The bt/wifi_reg_on pins are described in the device tree using
> rfkill-gpio nodes.
> 
> Changes in v4:
> - Remove disable-wp prop from sdio0
> - Collect r-b and t-b tags
> 
> Changes in v3:
> - Rename led nodes to led-0/led-1
> - Remove pinctrl* props from sdio0
> - Collect a-b tags
> 
> Changes in v2:
> - Limit sdmmc max-frequency to 100 MHz on ROCK 2A/2F
> - Drop clock-output-names prop from rtc node on Sige1 and NanoPi Zero2
> - Drop regulator-boot-on from usb 2.0 host regulators on Sige1
> - Add bluetooth and wifi nodes on Sige1
> - Collect t-b tag for NanoPi Zero2
> 
> These boards can be booted from emmc or sd-card using the U-Boot 2025.07
> generic-rk3528 target or work-in-progress patches for these boards [1].
> 
> For working bluetooth on ArmSoM Sige1 the patch "arm64: dts: rockchip:
> Fix UART DMA support for RK3528" [2] is required.
> 
> [1] https://source.denx.de/u-boot/contributors/kwiboo/u-boot/-/commits/rk3528
> [2] https://lore.kernel.org/r/20250709210831.3170458-1-jonas@kwiboo.se
> 
> Jonas Karlman (6):
>   dt-bindings: arm: rockchip: Add Radxa ROCK 2A/2F
>   arm64: dts: rockchip: Add Radxa ROCK 2A/2F
>   dt-bindings: arm: rockchip: Add ArmSoM Sige1
>   arm64: dts: rockchip: Add ArmSoM Sige1
>   dt-bindings: arm: rockchip: Add FriendlyElec NanoPi Zero2
>   arm64: dts: rockchip: Add FriendlyElec NanoPi Zero2
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |  17 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   4 +
>  .../boot/dts/rockchip/rk3528-armsom-sige1.dts | 464 ++++++++++++++++++
>  .../boot/dts/rockchip/rk3528-nanopi-zero2.dts | 340 +++++++++++++
>  .../boot/dts/rockchip/rk3528-rock-2.dtsi      | 293 +++++++++++
>  .../boot/dts/rockchip/rk3528-rock-2a.dts      |  82 ++++
>  .../boot/dts/rockchip/rk3528-rock-2f.dts      |  10 +
>  7 files changed, 1210 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3528-armsom-sige1.dts
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3528-nanopi-zero2.dts
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3528-rock-2.dtsi
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3528-rock-2a.dts
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3528-rock-2f.dts

Any thoughts on this series? Rebased patches for a possible re-send v5
contained no changes compared to this v4.

I would like to send a v2 on the follow up "rockchip: Add USB 2.0
support for RK3528" [3] series and was unsure about the state of this
series before sending that.

[3] https://lore.kernel.org/r/20250723122323.2344916-1-jonas@kwiboo.se

Regards,
Jonas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
