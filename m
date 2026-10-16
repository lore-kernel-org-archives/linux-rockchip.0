Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 270D4CCA48B
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2026 08:57:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GlVdcpgs2YrPe6lmIOBW2H17tZLrcybHpNB7+O16TB4=; b=sPJ+5sSis1M/ke
	gTrNHJ/tHMI7tH3YGIuNLExeENwKrFGG1RHDw6jQuZvwLwX/6dDKzQJSTeM5I6jzehaUBYzQqqj7g
	v6BTXAsjA0mwhMQg1Hk3a5BjpjarM4mqvEk9ilH5MpP+mSb3FyAia3lV695WN/TlTqj7p1BVTfKnB
	JlSb60eRjDfwDn1gYYRIv7YuPtTdwSxrhjju3Xoj0SFBA0xp92n2OuoM7JkWIOvmGPK0pe/8JvHwx
	jCMtf+vf5T27+4dOG2zTunr7elYJPDstps3uQ3Llnozenyo9SbSHnt1YiZEukBSrRQnAn+KqQ/BFJ
	svdgnspYHMqmraSUUWBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHdki-00000002OfM-100i;
	Fri, 16 Oct 2026 08:57:24 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHdkb-00000002OWo-3soY
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Oct 2026 08:57:19 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-2d01548ac96so4296315ad.3
        for <linux-rockchip@lists.infradead.org>; Fri, 16 Oct 2026 01:57:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792141037; x=1792745837; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=soC3oS7a5a03KgF4DpWOLsJcd+T0181emvr4pS+/rCo=;
        b=XdqPAZ6vs1/RAufnD78UUZgGTAEgYM0x7n3cuFsso8bQe6YRJedy/pimXe8O5mK+7z
         Lac66ShfgJ+ww7xkQJqnZMZKwagajCFVDCCuF7fI13x2PiUUo8hOga/0qRqXhzjd4b4G
         rLLON/CeX68PdDwnGEkuOahYg3ELl3B9gKyBL1YAtUN//pHCrfZQmDTGyMBOG0r7tzdT
         U8EVLbU/ufK9YpXvco8yBe7Aasc1qSXIBOU93OarZ0I5kxCILzGlM5l2MKrwoTBUGrcJ
         Fe0N1gKDOlU0D0VLA3sJjtaSFyH0rPxWKS3rj0/S34m/SeDwfCcljso8fj0YY5DA/AIT
         Lt2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792141037; x=1792745837;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=soC3oS7a5a03KgF4DpWOLsJcd+T0181emvr4pS+/rCo=;
        b=1prsmEzalmUWRy/Izn0YP3ATUmeT0HF5LjMgB9bKi9jtDrVXndUmooqySkup/HoywM
         ZGXODTOVkWkrDUlKuRVGx0QKlUbeS82tdpupfV4MxXyRAeiU87ZiWw97PZc+2RZrtt0Z
         g43yZ1ZQthyJObvJ5s8g5W1eI3WPyf90pQAeDj+pA5T/WYSu8Asxn8muZ+F15phtRfo5
         OBbtjdQTFod4rk9svArHKq3FaTGpOJhfd0mJYlcoeAh7wxgDDkRyUK51o/njls/bz9WZ
         V9vY+sN1ziubxneJlM+KJ08KgH1u9fFY7MX4hU45sKp5VpEy2xuLc48rw+QLqpAbCjiY
         7xfA==
X-Forwarded-Encrypted: i=1; AKwUvBw68svPTw0HER1Pl3stzzF5V1q8wRS3T36UBDofUnGdGNvTmcEJCM2dreRVMOZPglxiyKZjbBUlEamFf0l/8Q==@lists.infradead.org
X-Gm-Message-State: AFq9FYJGlF94CE7bhU4JpDSIWAHD+tIQSgpltD1fVnsPTsh0xgoatrD8
	5sE8u162R1qVSNC4SCYFzwgtyNoLKlJ0v+2BeBJwPgoAQOLU91CX9X2Y
X-Gm-Gg: AYBFou2VaJ6tI0fFJ7K74OCKVPVmsrYSveBcyp7EGsnJB5P/MwGWS1lBo4l4zjZo4Xx
	g89CdOSAZwkkHBaMhZIlYRULZZOHzN5mX/0HXw0RiW/z6wwRhiaMw1fJ1/oLBkNNbawGVGl+DvN
	ZhUH3zTcJsqic21l6Cki0yHmXjXTJgxRZUI3YwWS8kIXQGAOwazt2XpLbabg2pbcXIRhUY0fo/v
	3oQUBGydRUIhu9UEc+kgaMyXpjTLvkL2PYupkLqxZTynn2ACfsqY5+ZYzW8MyYtp5FGD1GZms29
	0MGgCE8hrsckg/ANEZMcwslmhz+GXUofbRd7Pb/V/5rzqnRcf5d4enniQg3kIibXgYGKRaWxVhe
	U4UIpezNVUNqCpJVCsu322t0bu3J2holeXVFtBBCRb1NzN6VF2Nt9aFyUTvCWlw4SYaoljEUjB0
	uCllQ3UmnrTwBKppxkD91CFKk3kAmszOWCSpS5EJC+70FnCe7cf6AtO+7bAYGpWT6oCc63rohl5
	NEwGrEugZ+T7GUPXgcnDStJ8FinLA==
X-Received: by 2002:a17:903:2407:b0:2e9:53b1:a3c8 with SMTP id d9443c01a7336-2e953b1a559mr91141175ad.0.1792141036442;
        Fri, 16 Oct 2026 01:57:16 -0700 (PDT)
Received: from [127.0.1.1] (211-23-39-77.hinet-ip.hinet.net. [211.23.39.77])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e97e882a20sm6971025ad.62.2026.10.16.01.57.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2026 01:57:15 -0700 (PDT)
From: Jason Yang <jason98166@gmail.com>
Date: Fri, 16 Oct 2026 16:56:41 +0800
Subject: [PATCH v5 7/8] arm64: dts: rockchip: use two phy cells for the
 rk3588 mipi dcphys
MIME-Version: 1.0
Message-Id: <20261016-dcphy-rx-v1-v5-7-e63b49eabe2d@gmail.com>
References: <20261016-dcphy-rx-v1-v5-0-e63b49eabe2d@gmail.com>
In-Reply-To: <20261016-dcphy-rx-v1-v5-0-e63b49eabe2d@gmail.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Guochun Huang <hero.huang@rock-chips.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Michael Riesch <michael.riesch@collabora.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Jason Yang <jason98166@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792141002; l=1777;
 i=jason98166@gmail.com; s=20260721; h=from:subject:message-id;
 bh=4OavUBeyGqaDIQHOgA/IhtahRkKYw5WBMKHlgGZGkLg=;
 b=v4sInDUQ/7XkIMzK26fj1mNhWedwz2y1jAeJhVW/owd/Y+g6H8l/hQlvpgno7POd/zFYYL10J
 lVky0MG/7a6BXkIlwekLASsH7MOoF5G3njxjIvRURKOz+XEH0L9NH+L
X-Developer-Key: i=jason98166@gmail.com; a=ed25519;
 pk=xQmD001Q/ooHl39PxyQtusbUQmgbOsSfpFryRVWZ/k4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_015717_993245_00C8C33B 
X-CRM114-Status: UNSURE (   9.44  )
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

The MIPI DC-PHY binding takes a second cell that selects the transmitter
or the receiver. Switch mipidcphy0 and mipidcphy1 to two cells and let
dsi0 and dsi1 select the transmitter.

Signed-off-by: Jason Yang <jason98166@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index 376ad04e0786..94d68fd89753 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -1788,7 +1788,7 @@ dsi0: dsi@fde20000 {
 		resets = <&cru SRST_P_DSIHOST0>;
 		reset-names = "apb";
 		power-domains = <&power RK3588_PD_VOP>;
-		phys = <&mipidcphy0 PHY_TYPE_DPHY>;
+		phys = <&mipidcphy0 PHY_TYPE_DPHY PHY_DIRECTION_TX>;
 		phy-names = "dcphy";
 		rockchip,grf = <&vop_grf>;
 		status = "disabled";
@@ -1816,7 +1816,7 @@ dsi1: dsi@fde30000 {
 		resets = <&cru SRST_P_DSIHOST1>;
 		reset-names = "apb";
 		power-domains = <&power RK3588_PD_VOP>;
-		phys = <&mipidcphy1 PHY_TYPE_DPHY>;
+		phys = <&mipidcphy1 PHY_TYPE_DPHY PHY_DIRECTION_TX>;
 		phy-names = "dcphy";
 		rockchip,grf = <&vop_grf>;
 		status = "disabled";
@@ -3429,7 +3429,7 @@ mipidcphy0: phy@feda0000 {
 			 <&cru SRST_P_MIPI_DCPHY0_GRF>,
 			 <&cru SRST_S_MIPI_DCPHY0>;
 		reset-names = "m_phy", "apb", "grf", "s_phy";
-		#phy-cells = <1>;
+		#phy-cells = <2>;
 		status = "disabled";
 	};
 
@@ -3445,7 +3445,7 @@ mipidcphy1: phy@fedb0000 {
 			 <&cru SRST_P_MIPI_DCPHY1_GRF>,
 			 <&cru SRST_S_MIPI_DCPHY1>;
 		reset-names = "m_phy", "apb", "grf", "s_phy";
-		#phy-cells = <1>;
+		#phy-cells = <2>;
 		status = "disabled";
 	};
 

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
