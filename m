Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12A3DC5516F
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Aug 2026 05:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dJ2xA/gixiO+opwg8Dc6moUk/DbafUzWdcva1ijcnGQ=; b=OBiYorLTJZ7qFc
	YgSudKaD70IpZv72zIa5qgwyvYP0SZf0j7SG3aND6MwTLEp2Pxo/DN1+MztXYXvPCLbaGTucqWGYs
	tQnjZsr1YIAJwy2eXUKjnkDu3FpGgGBoC1se+fL2jGS5rku2T7sBc6SwdonphPBNYWRMvWVZnO5w4
	C87gyBhPKxcXP8FUtHLesiLZ/kAV6EzSUtnR5g7Ox2v7RdEntsppNmrqLZJtd6/9BG8iWjS7NzdwW
	wL2AkPtihincvJrM2jAUf5ExbTVgPnWxBNMDjKcN4hKZKVHHBBuNgVJv7/EZN4nOimAyz4BkMPsaF
	VsljowvqSGBC7OUeTz9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wql1L-0000000GKUK-2Tbk;
	Mon, 03 Aug 2026 05:15:27 +0000
Received: from mail-ot1-x329.google.com ([2607:f8b0:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wql1I-0000000GKRU-1Gju
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Aug 2026 05:15:25 +0000
Received: by mail-ot1-x329.google.com with SMTP id 46e09a7af769-7eb1dc6bd53so1828488a34.2
        for <linux-rockchip@lists.infradead.org>; Sun, 02 Aug 2026 22:15:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785734123; x=1786338923; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=SlcJviNfe1A7bPODjwx5akEOsNAeWr5kscTUhAqnE8U=;
        b=kDCvawIdsiFv2aWIwjFCvAkCE3forVwKBX11OTTmzCEK6nhXJ2nK/ftBKC1dtqC836
         6fwxn4WluoqgnC9Srmb1R7ErnGg7AaC+Lh3pH/3opkIS9cgKh7rxvz+vyEGiRbj5Wbkh
         WtsuQlPwgFknQvmOVjFbLSSJUUz2IibCbuXHUVEyDavx2X3DHx+kCObMfXiQnpSDKdMw
         SRYxmUmKZi8zMIMAKzK3Z8sdWZ53xJYNBAuiUjY3dVNeDe+2aFTT2ZZqR1SfrKVGrqSs
         NpQsvvXesVzsTLKIlQhngomZeaxhki/JWIMm03apVkD2gv9utK9njQie0dvxxj9V2v/f
         eAZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785734123; x=1786338923;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=SlcJviNfe1A7bPODjwx5akEOsNAeWr5kscTUhAqnE8U=;
        b=Til4bf6E3/0s9Zja3nG+FCSzxqarGOv3aRFrmbASoIFgzUZA2pXrAS6BN7xS5/5OAV
         Vkxap69StcLxn1uB0hs8u7AZ4A2cbn0yZGDAULQCBWpbnFKGi72t8HKj9Tu5lmX0juy0
         KbW4DAXJ6jZecepbwo8aAGqMELND9B9DsMAlMKZOVivKZOrnlfErzpmAkNxbmQ+DOGhp
         Kh1lsSHIpy+xIO0kCqmq5d/eCxP/uRhB6y9PwakAMhqTo6GKG+6lF2CiQERGe0kdS5c2
         ZYCUixaYe5fZIH90IIy3JW6MiN4BSIhpABrStn1Noy+1nGd+syYxHwIw/UJEPLqRd7gb
         g/NA==
X-Forwarded-Encrypted: i=1; AHgh+RryMTEuq8Gqon9Cxin3YtBtYoUQ0FRr5axsNpO2Vgr0DXfsGutsARJK6x5mDfk/RJ+u+9FppQMXw9Fq2gLQ7Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YxuuIRUr9E3IMYt464bcAjNIX5mnbQfzBOXTW1/thY9T1+1VhTz
	X8Qx2IYpTf+UKagThxijOgAFJ5dmUjFFaLLtkV/5Prfy81Avvrz5OwfM
X-Gm-Gg: AR+sD10Y9ewWBurwZc0aAfP+hYqjYRqOdbWsmUgozviRoWw6lZoqIlGOumkWPycfiox
	1BzwUr1uE7/Of61uF1/f02s8vf6DrYMBQAr2n+j9e+uHaukeAAsi0d+0r6loz1soUhEMwN5wkyk
	D/3cWDrkjXGvCz9K5em7JFGTjggKaGHXPsHgrzwD48FwHE+VT89bpDyciNS0PLg8vAvW1g2hPTk
	ilncxCXmxKqNA6HX/9QIZOS9n78Zz5+psqSs5u9N6kgCdud0+CoOBUiK/Uim7FNzZHHF5gCLXZo
	y46HGZC1rthJU0VORVNHooJg0/nhrgjGDJDqRMaF5MfBY6ejsYkCuimiGrxInNRGKe+rTuSWAZu
	A452HTniAgDvR7Q19YYldT/vPO9YGISfsGvIG8Env/Jmdug9JIF0rdigcCnzlDKXHC9WI+U3/+s
	QhDOfnL3hZUr3dLAX43oBpkd0LaqkxHhmvW/T7jaZh6IPYbKwl1B09sqt0H7jhRndSRGYDMs026
	8Cetei7oY7ZOxYpDY5Kgumfmn2PnJ092HDBOmSVQ12cPtamzhkesRVu5imMVqnf00ZnmNcZ3zUq
	vl7XZHXZ5RtJBBHTblTQNXXe9VIzrXbzBGLd43Mdxhp1m5Hy6ppiBSchsGdLDexQX5ij+S+Ug92
	wjZisNVXsKo65ByhI
X-Received: by 2002:a05:6830:211b:b0:7e9:c102:333d with SMTP id 46e09a7af769-7f196f8ad8cmr14493591a34.9.1785734122667;
        Sun, 02 Aug 2026 22:15:22 -0700 (PDT)
Received: from [127.0.1.1] (184-96-154-59.hlrn.qwest.net. [184.96.154.59])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7f18f07a5e3sm6787108a34.15.2026.08.02.22.15.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Aug 2026 22:15:22 -0700 (PDT)
From: James Hilliard <james.hilliard1@gmail.com>
Date: Sun, 02 Aug 2026 23:14:12 -0600
Subject: [PATCH 02/21] net: stmmac: sun8i: add support for Allwinner H616
 EMAC1
MIME-Version: 1.0
Message-Id: <20260802-submit-acx00-of-dynamic-v1-v1-2-0a53cd9e21cc@gmail.com>
References: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com>
In-Reply-To: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Andre Przywara <andre.przywara@arm.com>, 
 Richard Genoud <richard.genoud@bootlin.com>, 
 Maxime Ripard <mripard@kernel.org>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
 Jose Abreu <joabreu@synopsys.com>, 
 Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Andrew Lunn <andrew@lunn.ch>, 
 Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, 
 Saravana Kannan <saravanak@kernel.org>, Lee Jones <lee@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
 mfd@lists.linux.dev, linux-rockchip@lists.infradead.org, 
 James Hilliard <james.hilliard1@gmail.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260802_221524_424792_C41E46A5 
X-CRM114-Status: GOOD (  13.66  )
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

From: Richard Genoud <richard.genoud@bootlin.com>

The H616 secondary EMAC uses a separate system-control clock register
and supports only RMII at 10/100 Mbps. Its EPHY is provided by a
companion AC200 or AC300 package rather than an internal PHY block.

Add an EMAC1 variant using the dedicated register and mark the PHY as
external. The register retains the standard five-bit RX and three-bit TX
clock delay chains, so expose their supported ranges to the shared
syscon setup.

Signed-off-by: Richard Genoud <richard.genoud@bootlin.com>
Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
index 48c52eb96233..fdc0c3384af8 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c
@@ -81,6 +81,13 @@ static const struct reg_field sun8i_syscon_reg_field = {
 	.msb = 31,
 };
 
+/* EMAC1 clock register @ 0x34 in the "system control" address range */
+static const struct reg_field sun8i_syscon_reg_field_emac1 = {
+	.reg = 0x34,
+	.lsb = 0,
+	.msb = 31,
+};
+
 /* EMAC clock register @ 0x164 in the CCU address range */
 static const struct reg_field sun8i_ccu_reg_field = {
 	.reg = 0x164,
@@ -143,6 +150,18 @@ static const struct emac_variant emac_variant_h6 = {
 	.tx_delay_max = 7,
 };
 
+static const struct emac_variant emac_variant_h616_emac1 = {
+	.syscon_field = &sun8i_syscon_reg_field_emac1,
+	/*
+	 * The "internal PHY" is in a companion AC200 or AC300 package,
+	 * rather than on the H616 die.
+	 */
+	.soc_has_internal_phy = false,
+	.support_rmii = true,
+	.rx_delay_max = 31,
+	.tx_delay_max = 7,
+};
+
 #define EMAC_BASIC_CTL0 0x00
 #define EMAC_BASIC_CTL1 0x04
 #define EMAC_INT_STA    0x08
@@ -1278,6 +1297,8 @@ static const struct of_device_id sun8i_dwmac_match[] = {
 		.data = &emac_variant_a64 },
 	{ .compatible = "allwinner,sun50i-h6-emac",
 		.data = &emac_variant_h6 },
+	{ .compatible = "allwinner,sun50i-h616-emac1",
+		.data = &emac_variant_h616_emac1 },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, sun8i_dwmac_match);

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
