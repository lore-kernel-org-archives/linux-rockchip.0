Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB999C54E4A
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Mar 2024 12:52:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2j6HBMR1XTsOBG5iiqOfaRaAwUXxWzfx7OLajmJ3ZJA=; b=FWtZunhEL7Dzwb
	svZePPErXkacA1fVmOs8Abf6jKeTLd8DiFP6WryaX2Y783UH0WGlv/tJaUpByzP5Tmd6rXk2o+svC
	ESL1BbcsLB+u8xWRalC/Hr81DnIoo6ZLgi91vtYr7Rm5p0SNnc66G1JZ3/7R7Hu1r7MNwCoQj0FWW
	4pJoQrvzVRR/smo3pIn2AmTM0R9oSBG5x49yYaqz5GEfZKiJ1huRGwpKtZEQb26MaB4aBfLj+kk1P
	EQTgmxR16CsZRoFf3V/v+/u/GnokpV58Ri1FksxMUmP+25vuzwFaZCCCvv7xE8OhcHXkcsPaDpUQS
	MkJUNycJMgJT4F9ILk1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riZiB-00000009Bbh-0xaV;
	Fri, 08 Mar 2024 12:52:31 +0000
Received: from smtp-bc08.mail.infomaniak.ch ([45.157.188.8])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riZi1-00000009BWr-0igj
	for linux-rockchip@lists.infradead.org;
	Fri, 08 Mar 2024 12:52:24 +0000
Received: from smtp-3-0001.mail.infomaniak.ch (unknown [10.4.36.108])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4TrmKD1xrYzMq51F;
	Fri,  8 Mar 2024 13:52:16 +0100 (CET)
Received: from unknown by smtp-3-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4TrmKC4mKDzMppDX;
	Fri,  8 Mar 2024 13:52:15 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Fri, 08 Mar 2024 13:52:08 +0100
Subject: [PATCH 1/3] arm64: dts: rockchip: enable internal pull-up on
 Q7_USB_ID for RK3399 Puma
MIME-Version: 1.0
Message-Id: <20240308-puma-diode-pu-v1-1-2b38457bcdc0@theobroma-systems.com>
References: <20240308-puma-diode-pu-v1-0-2b38457bcdc0@theobroma-systems.com>
In-Reply-To: <20240308-puma-diode-pu-v1-0-2b38457bcdc0@theobroma-systems.com>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Klaus Goger <klaus.goger@theobroma-systems.com>, 
 Quentin Schulz <foss+kernel@0leil.net>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@theobroma-systems.com>
X-Mailer: b4 0.13.0
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240308_045221_444063_D68F6C96 
X-CRM114-Status: UNSURE (   9.20  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Quentin Schulz <quentin.schulz@theobroma-systems.com>

The Q7_USB_ID has a diode used as a level-shifter, and is used as an
input pin. The SoC default for this pin is a pull-up, which is correct
but the pinconf in the introducing commit missed that, so let's fix this
oversight.

Fixes: ed2c66a95c0c ("arm64: dts: rockchip: fix rk3399-puma-haikou USB OTG mode")
Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
index 214ea62b24a5b..a51ebb8f8b80f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
@@ -459,7 +459,7 @@ vcc5v0_host_en: vcc5v0-host-en {
 	usb3 {
 		usb3_id: usb3-id {
 			rockchip,pins =
-			  <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
+			  <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 	};
 };

-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
