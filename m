Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24CCDCCD19F
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 21:20:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KLC+KS0btLhBZdEQT9opjPAdU2vuDzG3I3o0/3YFAHw=; b=YUn382kop4ZOgH
	jDZN0SjVisroHb/OQ0OuhMniYvurXxnIRsf1qbL8RZ1Ot9FYK6upTlAMCGF3WN8kXdiutJnx3fxFP
	bnFk86z0RPcQtP3KeNF0QZjVZWTt60qgM4QWPZBQ1tjfIxdnYk6+YYlwuJ4sSd0LYtxHBdoqsXfwq
	Oa9boFKP6QXas4/LDbZ3gHa8AjM6jJ7QFU4Kc9rAe8Ebni5OF47FCucKd7T2PO6nag6t2xdd0DIS0
	5WXKf65/cAU9J/TC+sl2Nl8ej5MGhxubmKLzChocToM4IGnUbD4rnRbQlruoRTaspSqtCUk9r0uii
	/001Rg7ohmucDUKXu7wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAxIt-0000000F56C-2bl0;
	Mon, 20 Oct 2025 21:20:31 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAxIq-0000000F54i-2Xxt;
	Mon, 20 Oct 2025 21:20:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1760995223;
	bh=M3lIp+cKelh2O4BMlSXcu2sgi0P54b6jr5d4gpqzweg=;
	h=From:To:Cc:Subject:Date:From;
	b=ShB6Swg7D9NzKVB3AJxHIEZbUFqjlvfvdmQih1OxuV8JY4am4EZfpnjKLkbTO1mUI
	 7L4Ne4Q16+t1S/hBCovhPzVa1Vnq5kQtTKc7imAQFJpTp/SVdgAq9LEDHdE/8abCZH
	 LCj8FMkxt8Hn2L0iP8Jk48Zvdt7JXXafs6azc/GkGLSq3CUiCdGDxN/sbQXRUMh65G
	 lBSIJvmgK+x1FDDxsTzd2wKPorbHBzbxg8U0CC9hIpMPdYRTtvauHujCG9DwwL48lT
	 WMluUNAfkviXBF/c7E2okPaFqfhqBbFG/thp2/pghwta7ZPhhL0JOlp/Y5r/LRFHx0
	 a4i7XUKQW/qGw==
Received: from trenzalore (unknown [23.233.251.139])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3BC1117E02B0;
	Mon, 20 Oct 2025 23:20:20 +0200 (CEST)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/2] arm64: dts: rockchip: Add vdpu 381 and 383 nodes
Date: Mon, 20 Oct 2025 17:20:07 -0400
Message-ID: <20251020212009.8852-1-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.51.1.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_142028_797453_6AA6CE6F 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
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
Cc: Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>, Kever Yang <kever.yang@rock-chips.com>, Chukun Pan <amadeus@jmu.edu.cn>, Alexander Shiyan <eagle.alexander923@gmail.com>, kernel@collabora.com, Dragan Simic <dsimic@manjaro.org>, Rob Herring <robh@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Detlev Casanova <detlev.casanova@collabora.com>, Damon Ding <damon.ding@rock-chips.com>, Chris Morgan <macromorgan@hotmail.com>, linux-arm-kernel@lists.infradead.org, Patrick Wildt <patrick@blueri.se>, Alexey Charkov <alchark@gmail.com>, Diederik de Haas <didi.debian@cknow.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Tomeu Vizoso <tomeu@tomeuvizoso.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add the nodes for vdpu 381 and 383, respectively RK3588 and RK3576.
To keep compatibility with older variants, the reg ranges order is not
in register order so that the function reg range is kept first.

Also adds the corresponding iommu nodes.

Note that on RK3588, both cores are added as it represents the hardware,
but the driver, later will only register the first one.

Regards,
Detlev.

Changes since v2:
 - Set the correct IRQ number for the second rk3588 core

Changes since v1:
 - Set node name to match first reg range

Detlev Casanova (2):
  arm64: dts: rockchip: Add the vdpu381 Video Decoders on RK3588
  arm64: dts: rockchip: Add the vdpu383 Video Decoder on rk3576

 arch/arm64/boot/dts/rockchip/rk3576.dtsi      | 36 +++++++++
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 74 +++++++++++++++++++
 2 files changed, 110 insertions(+)

-- 
2.51.1.dirty


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
