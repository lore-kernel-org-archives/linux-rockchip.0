Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD7E2C55162
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Aug 2026 05:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YZW0IFKlpJK1FTRLp7nR19nVwvO1zqCu76HVCUrffBw=; b=3sM9pwXb+TLTWF
	AnEDdFB3HcvROIkLDS23lZDHPPFFIa8dR2db+2ZlMQrZVId5mX7Gkf9/UQrijCclbdNqvYcvtny6K
	XjDtbqFZrP/B6ppO5J7B0YYn8mC9vbM0UPuqiT2itFQlgPIps6fOVWmgRUFzNmxgVPJBqAwe9irej
	bGNZhJzANtC4m76DagfCezxxzOj72pXBHul2oz0IXwHqgp73iAaDvRFPkbt5EO9KaOA+4AKhxm5sJ
	BGILGo1ibylihXdI6v9xc4POkwDrie+ZT5WlfVRQNs7CK+WX+90P+yA06E9p2a6BaxuLUfLOJx8Z8
	Y+QS1ec13fpfL4sH8KuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wql1m-0000000GLLO-2DkZ;
	Mon, 03 Aug 2026 05:15:54 +0000
Received: from mail-ot1-f43.google.com ([209.85.210.43])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wql1f-0000000GL3z-1eDI
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Aug 2026 05:15:53 +0000
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-7eb68bdf53aso1091833a34.3
        for <linux-rockchip@lists.infradead.org>; Sun, 02 Aug 2026 22:15:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785734145; x=1786338945; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=GBn8+Hx956XQS2N8rfelEGrUn9IDXjKs/rR491vlUQk=;
        b=hSVQFf15pQHGLsStXBW5aIOsCxHabUlfKCalLEP0QqeFK9lBErllzqpdgA8ZJrXiCW
         +2bXlVaPW3kzjdly58cwGLw2ZdAADws8bamHrHGBz8iTNjKyQuqsbxIgnwGnSvPQwoNU
         YvqZqSxLCRHRiK2z8edYNGByKThUUeTqm8JgoiyqoYLyp8mPBmeXjxOWWBa/FQcr8JUU
         mjeUc3IjVx4Z3yeqMhrqbCt5k69pH4at2ShjpeyCFxWKGt+88X/KZ/N3NlSUEKzR/294
         p1reuuB/3rcl2KrMXD+zohUvqsz67lWcbQR1xjOcax5tRleCIhxAifBbg7R78u5VjxZv
         0nWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785734145; x=1786338945;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=GBn8+Hx956XQS2N8rfelEGrUn9IDXjKs/rR491vlUQk=;
        b=kGXxJXyBmma1LMeZfW8uqzx7eLYXEOvJiXrHhu3CYViduiTRcIwFwd7+T3T2DN8vMC
         5IM8TD69vT664ZwDDYQxTX1wWzXBwlmpzAHlO9spBqNESdKcDn6uI9TPxXw7sYyWbn1o
         gDwehZ604cCWTYft/PUGQFqzp6TOx7YujwJQl04jRiaYMGDahK6WqO0dVyTirJae17k2
         Lp5aU9iMlGZKlM73qtysIB9EuQYs914PqivaOlHvDpcqMXA0UVjblSi+PHr+rNNrphS5
         DuHNAqsMeWLD//Y1zbEcpWM2LRO0uAUGujbyXEN2JEn7W+Jeje46R7mwEuPo+AiBdSPm
         hUew==
X-Forwarded-Encrypted: i=1; AHgh+RrGKP/KO6YOgba5gHI9HoKVxKMJxH03f2iIMkLd2JbOMndwtFxUWjJjTG+ORlPX3Qo+9fgDWjlAHIIj0YpHnw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxZ4mjxFw6svIdCLNE8DJUw0zrjaPKe/Bv4IzQ4XX/z3CRjjFOu
	LOElqVVMM5t6t13++tZRfRsXmQGO+uJplECruwx0JtsKfQ4Y4GsCav+a
X-Gm-Gg: AR+sD13uiiQIlWNck9b6GtnATc0qm2kTMXM2a81I5M2zdHR0z9S0GPWXb4o375emyKG
	T/k8Y6uRKbg/KU6hnILM00i2pvx5ki1tk6sWgYGG41OHXgGYN22i1L70TvLvvYZR4fUkjrKMURj
	ip3Ktrsg8YcS1w4cXmxu/JeQLQMjhUsh5zbxODdXtJOa5wmheH5T88txdlDvt+Vsnbqm952TTn8
	0rph2ZDBS0yedCLRkwzJofAzJ+be4XxzRrKJeaK59yuHgOm+y0cMBKJy2+R/49ZVPWyAgXPnF4v
	DKXGYNgfIJcOhmlVfQjry2MuJdwCjDPgcH3EpY3XXf1R99YOK49sya42hFuN8ykUdGLKKv0xAEA
	NFZrUQkLxTkp2lk9ew+idRT3UWaGn3pzIlpswZEpbgdkAHj+gpyNJ7TEE5JM4UhcZmUmCnQaeeq
	fXiWtBjKmwR4OsKR2XYvbEqgc+qWFJhG0YLNWlqzmdVNvje4s+QiBSz7/5VTjgpqvB8YviateJM
	lXAFe2FDg4PT7aiarP8+kSh6uDaXsbZ4VfUy/oVOlelwYaXiV6bY/sbYVGYx5ZHs6IEeF9dmZOe
	tY3Vsk1VyZpjnZdZIu41Zh65+P83VCTzovUL3xWAg7N9f5qIXhtoNavPeW7+c6MmGjEGe7XT7Sh
	2h4WbIGB8a3rPEg1xjw==
X-Received: by 2002:a05:6830:f95:b0:7dc:4947:36a1 with SMTP id 46e09a7af769-7f19714f993mr12573380a34.12.1785734145466;
        Sun, 02 Aug 2026 22:15:45 -0700 (PDT)
Received: from [127.0.1.1] (184-96-154-59.hlrn.qwest.net. [184.96.154.59])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7f18f07a5e3sm6787108a34.15.2026.08.02.22.15.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Aug 2026 22:15:44 -0700 (PDT)
From: James Hilliard <james.hilliard1@gmail.com>
Date: Sun, 02 Aug 2026 23:14:25 -0600
Subject: [PATCH 15/21] net: phylink: allow PHY-autonomous EEE without MAC
 LPI
MIME-Version: 1.0
Message-Id: <20260802-submit-acx00-of-dynamic-v1-v1-15-0a53cd9e21cc@gmail.com>
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
X-CRM114-CacheID: sfid-20260802_221547_501341_A985D979 
X-CRM114-Status: GOOD (  18.54  )
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

Phylink treats a MAC which implements its LPI operations but advertises no
LPI capability as incapable of EEE. It disables PHY EEE during attach and
rejects ethtool EEE requests. The same problem occurs when the MAC supports
LPI on another interface but not on the interface currently connected to
the PHY. Both cases are incorrect when the attached PHY can generate LPI
autonomously without help from the MAC.

Recognize the PHY autonomous-EEE capability, preserve its EEE
advertisement, and allow ethtool EEE requests in that configuration.
Evaluate MAC LPI support for the active interface, and restrict EEE modes
to the MAC capability mask only when the MAC actually manages LPI.

Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
---
 drivers/net/phy/phylink.c | 35 ++++++++++++++++++++++++++++-------
 1 file changed, 28 insertions(+), 7 deletions(-)

diff --git a/drivers/net/phy/phylink.c b/drivers/net/phy/phylink.c
index 18d2ead97aa5..e64f72793aa0 100644
--- a/drivers/net/phy/phylink.c
+++ b/drivers/net/phy/phylink.c
@@ -1512,6 +1512,19 @@ static void phylink_deactivate_lpi(struct phylink *pl)
 	}
 }
 
+static bool phylink_phy_supports_autonomous_eee(struct phy_device *phy)
+{
+	return phy && phy->drv && phy->drv->set_tx_lpi;
+}
+
+static bool
+phylink_mac_supports_eee_interface(struct phylink *pl,
+				   phy_interface_t interface)
+{
+	return pl->mac_supports_eee &&
+	       test_bit(interface, pl->config->lpi_interfaces);
+}
+
 static void phylink_activate_lpi(struct phylink *pl)
 {
 	int err;
@@ -2090,6 +2103,7 @@ static int phylink_bringup_phy(struct phylink *pl, struct phy_device *phy,
 {
 	struct phylink_link_state config;
 	__ETHTOOL_DECLARE_LINK_MODE_MASK(supported);
+	bool mac_eee;
 	char *irq_str;
 	int ret;
 
@@ -2106,6 +2120,7 @@ static int phylink_bringup_phy(struct phylink *pl, struct phy_device *phy,
 	linkmode_copy(supported, phy->supported);
 	linkmode_copy(config.advertising, phy->advertising);
 	config.interface = interface;
+	mac_eee = phylink_mac_supports_eee_interface(pl, interface);
 
 	ret = phylink_validate_phy(pl, phy, supported, &config);
 	if (ret) {
@@ -2144,7 +2159,7 @@ static int phylink_bringup_phy(struct phylink *pl, struct phy_device *phy,
 	/* If the MAC supports phylink managed EEE, restrict the EEE
 	 * advertisement according to the MAC's LPI capabilities.
 	 */
-	if (pl->mac_supports_eee) {
+	if (mac_eee) {
 		/* If EEE is enabled, then we need to call phy_support_eee()
 		 * to ensure that the advertising mask is appropriately set.
 		 * This also enables EEE at the PHY.
@@ -2165,7 +2180,8 @@ static int phylink_bringup_phy(struct phylink *pl, struct phy_device *phy,
 		 */
 		linkmode_and(phy->advertising_eee, phy->advertising_eee,
 			     pl->supported_lpi);
-	} else if (pl->mac_supports_eee_ops) {
+	} else if (pl->mac_supports_eee_ops &&
+		   !phylink_phy_supports_autonomous_eee(phy)) {
 		/* MAC supports phylink EEE, but wants EEE always disabled. */
 		phy_disable_eee(phy);
 	}
@@ -3300,17 +3316,20 @@ EXPORT_SYMBOL_GPL(phylink_get_eee_err);
  */
 int phylink_ethtool_get_eee(struct phylink *pl, struct ethtool_keee *eee)
 {
+	bool mac_eee;
 	int ret = -EOPNOTSUPP;
 
 	ASSERT_RTNL();
+	mac_eee = phylink_mac_supports_eee_interface(pl, pl->cur_interface);
 
-	if (pl->mac_supports_eee_ops && !pl->mac_supports_eee)
+	if (pl->mac_supports_eee_ops && !mac_eee &&
+	    !phylink_phy_supports_autonomous_eee(pl->phydev))
 		return ret;
 
 	if (pl->phydev) {
 		ret = phy_ethtool_get_eee(pl->phydev, eee);
 		/* Restrict supported linkmode mask */
-		if (ret == 0 && pl->mac_supports_eee_ops)
+		if (ret == 0 && mac_eee)
 			linkmode_and(eee->supported, eee->supported,
 				     pl->supported_lpi);
 	}
@@ -3326,10 +3345,11 @@ EXPORT_SYMBOL_GPL(phylink_ethtool_get_eee);
  */
 int phylink_ethtool_set_eee(struct phylink *pl, struct ethtool_keee *eee)
 {
-	bool mac_eee = pl->mac_supports_eee;
+	bool mac_eee;
 	int ret = -EOPNOTSUPP;
 
 	ASSERT_RTNL();
+	mac_eee = phylink_mac_supports_eee_interface(pl, pl->cur_interface);
 
 	phylink_dbg(pl, "mac %s phylink EEE%s, adv %*pbl, LPI%s timer %uus\n",
 		    mac_eee ? "supports" : "does not support",
@@ -3337,12 +3357,13 @@ int phylink_ethtool_set_eee(struct phylink *pl, struct ethtool_keee *eee)
 		    __ETHTOOL_LINK_MODE_MASK_NBITS, eee->advertised,
 		    eee->tx_lpi_enabled ? " enabled" : "", eee->tx_lpi_timer);
 
-	if (pl->mac_supports_eee_ops && !mac_eee)
+	if (pl->mac_supports_eee_ops && !mac_eee &&
+	    !phylink_phy_supports_autonomous_eee(pl->phydev))
 		return ret;
 
 	if (pl->phydev) {
 		/* Restrict advertisement mask */
-		if (pl->mac_supports_eee_ops)
+		if (mac_eee)
 			linkmode_and(eee->advertised, eee->advertised,
 				     pl->supported_lpi);
 		ret = phy_ethtool_set_eee(pl->phydev, eee);

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
