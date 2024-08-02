Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E49B1C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Aug 2024 21:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HfXt/mo85lYvnb3VgcMweEQVoPmceYX9w8stY7UD8Hk=; b=tB40fV8VIb258u
	RkGLjc2xzrz0G7PVRiyD+xtjVmzCJkuiuXFU6rWDtSvZ5H3GnNVvo/RGXtvWkiL5HuzbNEGxdf3My
	UMyKg9Qf5Mw6cvUvsv/lDSmy8bkuivO3ggIRCKI0YECUPdsmygoa6fpw8IWBObk/pikad7nSmj5Qc
	db+3OwjDAXl4qR/nRKRaQsH6DN+WHlyBUNszRjCyzdp3NDF30RPNsN9hpEPgIJwOkTWT/9Ah2BE2o
	wFGpdo7p1+ymG+vQL3jRmwNzVr1BNH9fGpvxoi2wbAqqK23Cx8ogEov5dK5YZ7FaFYTWM5YJ/9yKb
	JhP64fWNDVq9ry4Cer1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sa05y-0000000AA2v-0yet;
	Fri, 02 Aug 2024 21:45:54 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sa05Q-0000000A9so-0Mf0;
	Fri, 02 Aug 2024 21:45:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1722635118;
	bh=OeKajZuaytCAh2Uk8TrK0/Fy7goIybMGcEEMGnPG4GM=;
	h=From:To:Cc:Subject:Date:From;
	b=y5v+B+McR6xRSVnDmeTREf0m1Ohyx7eabCJ+ZG+8T6EBNvhfvbRPYKRolq60bEvh8
	 Bd41fkZ+IfVZS7P4aj03qVxWVNTuXEdY3Thy6fczyO+AZPyiWPQSkd/cSsTBqpCtwm
	 IUMPgB56dyVzyE+OKNIfevXUzj6o25wZjYYo/0GIG3gaGzFqcaW24B4/R8i0GkZpVY
	 oBcQq4ds3nSMrPrahZxw1yBl99xoJ9faC5zPi6d4WXgzvH4+sSbM5zH2yFKttvPcvq
	 ke0hJBQ9njGMEhlUrf79RqYtbwGNVU6MHaefsNXyZGLxrv4LSJ3CSjDnxgELrCT1pe
	 Ve2sMyI5pl6vg==
Received: from trenzalore.hitronhub.home (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 62A273782215;
	Fri,  2 Aug 2024 21:45:13 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Andi Shyti <andi.shyti@kernel.org>,
	Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Lee Jones <lee@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Tim Lunn <tim@feathertop.org>,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	Andy Yan <andyshrk@163.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Dragan Simic <dsimic@manjaro.org>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Shresth Prasad <shresthprasad7@gmail.com>,
	Ondrej Jirman <megi@xff.cz>,
	Weizhao Ouyang <weizhao.ouyang@arm.com>,
	Alexey Charkov <alchark@gmail.com>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Liang Chen <cl@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-i2c@vger.kernel.org,
	linux-iio@vger.kernel.org,
	linux-serial@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH 00/10] Add device tree for ArmSoM Sige 5 board
Date: Fri,  2 Aug 2024 17:45:27 -0400
Message-ID: <20240802214612.434179-1-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240802_144520_300635_B4F33D25 
X-CRM114-Status: GOOD (  10.86  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add the rk3576-armsom-sige5 device tree as well as its rk3576.dtsi base
and pinctrl information in rk3576-pinctrl.dtsi.

The other commits add DT bindings documentation for the devices that
already work with the current corresponding drivers.

The other bindings and driver implementations are in other patch sets:
- PMIC: https://lore.kernel.org/lkml/20240802134736.283851-1-detlev.casanova@collabora.com/
- CRU: https://lore.kernel.org/lkml/20240802214053.433493-1-detlev.casanova@collabora.com/
- PINCTRL: https://lore.kernel.org/lkml/20240802145458.291890-1-detlev.casanova@collabora.com/
- PM DOMAIN: https://lore.kernel.org/lkml/20240802151647.294307-1-detlev.casanova@collabora.com/
- DW-MMC: https://lore.kernel.org/lkml/20240802153609.296197-1-detlev.casanova@collabora.com/
- GMAC: https://lore.kernel.org/lkml/20240802173918.301668-1-detlev.casanova@collabora.com/

Detlev Casanova (10):
  dt-bindings: arm: rockchip: Add ArmSoM Sige 5
  dt-bindings: arm: rockchip: Add rk576 compatible string to pmu.yaml
  dt-bindings: i2c: i2c-rk3x: Add rk3576 compatible
  dt-bindings: iio: adc: Add rockchip,rk3576-saradc string
  dt-bindings: mfd: syscon: Add rk3576 QoS register compatible
  dt-bindings: serial: snps-dw-apb-uart: Add Rockchip RK3576
  dt-bindings: soc: rockchip: Add rk3576 syscon compatibles
  dt-bindings: timer: rockchip: Add rk3576 compatible
  arm64: dts: rockchip: Add rk3576 SoC base DT
  arm64: dts: rockchip: Add rk3576-armsom-sige5 board

 .../devicetree/bindings/arm/rockchip.yaml     |    5 +
 .../devicetree/bindings/arm/rockchip/pmu.yaml |    2 +
 .../devicetree/bindings/i2c/i2c-rk3x.yaml     |    1 +
 .../bindings/iio/adc/rockchip-saradc.yaml     |    3 +
 .../devicetree/bindings/mfd/syscon.yaml       |    2 +
 .../bindings/serial/snps-dw-apb-uart.yaml     |    1 +
 .../devicetree/bindings/soc/rockchip/grf.yaml |   16 +
 .../bindings/timer/rockchip,rk-timer.yaml     |    1 +
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../boot/dts/rockchip/rk3576-armsom-sige5.dts |  613 ++
 .../boot/dts/rockchip/rk3576-pinctrl.dtsi     | 5775 +++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3576.dtsi      | 1635 +++++
 12 files changed, 8055 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-pinctrl.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576.dtsi

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
