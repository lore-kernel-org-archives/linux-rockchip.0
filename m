Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F16C9C55182
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Aug 2026 05:16:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MQkCYe58Dmk4cGg7UtGQL1hTQWqOk8gTvY7KcgB71+A=; b=dDVqNKP1fToHT0
	7QfzjNvdRFDucChm4gwqxOxVpnGP67CZl/V7wxSPxjqbGDW9bduRJAiedkUOel8B61NEmgZtA6sfk
	1O3rj85YqcVHsxx+PErFTuz9vcBUPoeAL32GF/jVr8Ku/+Vobhi9PTo8SxU6XaqYtiVAl4IZ2b4dH
	jbUNrpcl5bslm2Ach5k/mzgo7DriYy/dhz4isVVDkSXC5xGgwbVvFil4fjYS1889K2Lxca4O62tDh
	yYbXt3JnYVT96vekpUkTAdwEYqQ3VXYPp3gRzE9dZt4Rongi4eiSozdTUBjMrinRQ1yWWMWBRtf8Z
	ME/Y/NtIWJVJoaCeraqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wql2Z-0000000GMmv-3PL5;
	Mon, 03 Aug 2026 05:16:43 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wql2V-0000000GMiv-3oBa
	for linux-rockchip@bombadil.infradead.org;
	Mon, 03 Aug 2026 05:16:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=S/5/uq1wl03WMsz5ualIqMKCury9OUeuYtebMNsXO2w=; b=NDD/bK4IYgKUTrxR1KJMk1JJs8
	B6bDG7egvkME7zn9Zw1K46swpySOi98SK9x/49YK/f2L6V86kMoWeQrW38f4jwlblL/zhfC/LKhtq
	TDhbbnzs/3P3XhzCD4fR7l2CRwL5OuiEVPYsW2YBTlTs4rGIJ4fcSbvoAPta+QfgwvhS8iqd/fD/D
	oS131cmdwhaBCIzOjsnyI+VocK6TXIiNpp8Xkvo5oGLqvkDjlQ/WI1TDrlsXSqIEJrA685ikVOJ4L
	8X+2btEmtbg6MXUfl1MlXeF86mX4WWWIFt4CtsJk/9T3Z4pskqdSKpSkivAMQuyOrZ3R0FHDI9rPh
	PiYArVqg==;
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wql1p-00000008hs0-2a9n
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Aug 2026 05:16:38 +0000
Received: by mail-ot1-x32e.google.com with SMTP id 46e09a7af769-7eb61bbeb25so2152044a34.1
        for <linux-rockchip@lists.infradead.org>; Sun, 02 Aug 2026 22:15:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785734148; x=1786338948; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=S/5/uq1wl03WMsz5ualIqMKCury9OUeuYtebMNsXO2w=;
        b=CvkpkpZO8NA+EStAQfZr124x3/nwax+DqSz1kJUslawXTe8nQmuZzldCgVMXIvNNeG
         Ya+/EKTbCBdn25JR1cRinyawaQfkOefjZEZeCU6srLDjoSa97Zmnw/W2znv+4Gb2iErR
         7RtsarClo8qQVJ3KkQJ8+Qrwc2GD7ROmPZHkjSyzo4YJVyujX8Tt0QRv9ylQa8VESXTR
         c2kqemWLVosNZ0VXn5vDrUnncBVjtSMcMh+5JJIuV8IJYyjR6lO9h16fHH5v845uSdCy
         rZ5adCvQoFmquyCMjKccKR1xWglX5+wKVMky4oIYTf5dd5uqKdUpWjiy4MncGqEZapLx
         6Q4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785734148; x=1786338948;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=S/5/uq1wl03WMsz5ualIqMKCury9OUeuYtebMNsXO2w=;
        b=S2WZsAAZMZ/q8MWyaF+oc/uYOC1JESkm8TdvyuCJJ7/xHPNLYVEESQCg3RvnD1aAJi
         qbL5BseHPtPP0KXh4IC/4ItwRH3sgbUTUKwlW1YoHbRimJ2aqg/QQh6u6nswDHuL91x/
         ul3gPpJbXyuPuc7jDZ8hOfmWZy3y66LD9+gpOZPU76RWz9ZQ+0ROKLLWLeXCBQXAsnQx
         aZbKX66aGllScVuID4PM8ZxC7XkIsH0kvQ3QEYQL/qfd7fx+rrR57tsK3udFz41rbMy+
         NNrtRn5WukvOE0yeXR8ocYhnNNPRTD6fbunQnLrxAddIPjO1dQSRInN88hIcZSfq6axf
         XvZg==
X-Forwarded-Encrypted: i=1; AHgh+RoSBRSdiYyQyJXBzaWgzsP4LRAstHYks5XHLJaq1K9FB/9RTKQYswIxNrPcRYv0bCZk/f+UdwO13yAoiLXlFw==@lists.infradead.org
X-Gm-Message-State: AOJu0YylRg8/zKWNHszoRzztkE1jMbcokwX7YDwZIL4V8EdEHLaZBOEn
	4lzTy3KH4yMrjC0AVpQtjBrOuFZtV8UKHoTtVa2ZOr4qdD6TY9zuFpyU
X-Gm-Gg: AR+sD10FMxhkmG1VOJVKZtixVCSY3DNFQuRM/f/7ZOfnREdZlDlKVNMSzHQSCob0FFV
	AbJxYsmcf8BXekHkpScFgu3HbFFGqvlJ3iSS+P0ENsHZ7S56eC17LozBdW17UHjd0UEihEI0F7l
	n3lpnA9O1Nb+36eSf0eJFjqjQzGxefMSFuFKaB453c9FIBv4eYImp4ViVmnQYIlOKJtJxJxvi8D
	YrBDZTe349cF+/3W6YWakLJO3JgFqGJ4+ShHr7KZzXrstGOUg080kFUC5JBB+9tNwSdI+flO3VR
	Yva0TbL3XexXj8ZyVQiW8qKCWGYS4pOPjTbxVIi3ucWgsxAn44GIb72pTW42qln5KnSq5Sb/5T6
	hmWFOpg9FUqwyW3VaaKrxpdyFySbvEE4xjwMRSLOUGwnz5V9TiIHkzaSzGIOfAcYkWcv8e/ZQ5f
	MzMa3huGvM1XE20X7w3PTLZxlFPHpif/rvIz79veLoY9BeRz/ob4hppRfzvn77FRaqoN9irlEp+
	ryNwpa4RrA+urSvcEAKeBhdcV4ODyVBJv2Xun4iqrrsFVP9+n3nsuB6Bq/b65ah8tnILIojnEvc
	Zj3PJeEPmBfQdXWy7zjdYu0pQpeCdBQkRgXUV27qElC7eKXClW8I9eYp/yAgGULJ5TWFVFoRkBg
	JsbdBWrnji1giKVmG
X-Received: by 2002:a05:6830:4114:b0:7e9:bd00:c6ad with SMTP id 46e09a7af769-7f196f29291mr14805744a34.16.1785734143562;
        Sun, 02 Aug 2026 22:15:43 -0700 (PDT)
Received: from [127.0.1.1] (184-96-154-59.hlrn.qwest.net. [184.96.154.59])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7f18f07a5e3sm6787108a34.15.2026.08.02.22.15.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Aug 2026 22:15:42 -0700 (PDT)
From: James Hilliard <james.hilliard1@gmail.com>
Date: Sun, 02 Aug 2026 23:14:24 -0600
Subject: [PATCH 14/21] net: phy: support configuring PHY-autonomous Tx LPI
MIME-Version: 1.0
Message-Id: <20260802-submit-acx00-of-dynamic-v1-v1-14-0a53cd9e21cc@gmail.com>
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
X-CRM114-CacheID: sfid-20260803_061627_856582_3E6995A0 
X-CRM114-Status: GOOD (  23.51  )
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

The ethtool Tx LPI fields currently update phylib software state and
notify an attached MAC, but they do not configure PHYs which generate LPI
autonomously. This can make a successful ethtool request leave the PHY
hardware unchanged.

Add a PHY driver callback for applying the Tx LPI enable state and timer.
Call it before updating EEE advertisement, and attempt to restore the old
hardware state if either the callback itself or the advertisement update
fails. Use the callback to disable autonomous LPI when phy_support_eee()
hands LPI control to the MAC, and reapply that state after PHY reset.

Drivers without the new callback retain the existing behavior in which
the Tx LPI fields configure phylib and the attached MAC. Existing drivers
which only implement disable_autonomous_eee() therefore need no changes.

Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
---
 drivers/net/phy/phy.c        | 35 +++++++++++++++++++++++++++++++++--
 drivers/net/phy/phy_device.c | 25 ++++++++++++++++++++-----
 include/linux/phy.h          | 18 ++++++++++++++++++
 3 files changed, 71 insertions(+), 7 deletions(-)

diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index fce9bc7be330..c76d5baa1f84 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -1996,6 +1996,8 @@ static void phy_ethtool_set_eee_noneg(struct phy_device *phydev,
 int phy_ethtool_set_eee(struct phy_device *phydev, struct ethtool_keee *data)
 {
 	struct eee_config old_cfg;
+	bool tx_lpi_cfg_attempted = false;
+	bool tx_lpi_cfg_changed;
 	int ret;
 
 	if (!phydev->drv)
@@ -2005,16 +2007,45 @@ int phy_ethtool_set_eee(struct phy_device *phydev, struct ethtool_keee *data)
 
 	old_cfg = phydev->eee_cfg;
 	eee_to_eeecfg(&phydev->eee_cfg, data);
+	tx_lpi_cfg_changed = phydev->eee_cfg.tx_lpi_enabled !=
+			     old_cfg.tx_lpi_enabled ||
+			     phydev->eee_cfg.tx_lpi_timer !=
+			     old_cfg.tx_lpi_timer;
+
+	if (tx_lpi_cfg_changed && !phydev->autonomous_eee_disabled &&
+	    phydev->drv->set_tx_lpi) {
+		ret = phydev->drv->set_tx_lpi(phydev, &phydev->eee_cfg);
+		tx_lpi_cfg_attempted = true;
+		if (ret)
+			goto restore_tx_lpi;
+	}
 
 	ret = genphy_c45_ethtool_set_eee(phydev, data);
 	if (ret == 0)
 		phy_ethtool_set_eee_noneg(phydev, &old_cfg);
 	else if (ret < 0)
-		phydev->eee_cfg = old_cfg;
+		goto restore_tx_lpi;
 
 	mutex_unlock(&phydev->lock);
 
-	return ret < 0 ? ret : 0;
+	return 0;
+
+restore_tx_lpi:
+	if (tx_lpi_cfg_attempted) {
+		int rollback_ret;
+
+		rollback_ret = phydev->drv->set_tx_lpi(phydev, &old_cfg);
+		if (rollback_ret)
+			phydev_warn(phydev,
+				    "Failed to restore autonomous Tx LPI: %pe\n",
+				    ERR_PTR(rollback_ret));
+	}
+
+	phydev->eee_cfg = old_cfg;
+
+	mutex_unlock(&phydev->lock);
+
+	return ret;
 }
 EXPORT_SYMBOL(phy_ethtool_set_eee);
 
diff --git a/drivers/net/phy/phy_device.c b/drivers/net/phy/phy_device.c
index f7472a743185..30929b0354b6 100644
--- a/drivers/net/phy/phy_device.c
+++ b/drivers/net/phy/phy_device.c
@@ -1357,6 +1357,21 @@ static int phy_poll_reset(struct phy_device *phydev)
 	return 0;
 }
 
+static int phy_disable_autonomous_tx_lpi(struct phy_device *phydev)
+{
+	struct eee_config config = phydev->eee_cfg;
+
+	if (phydev->drv->set_tx_lpi) {
+		config.tx_lpi_enabled = false;
+		return phydev->drv->set_tx_lpi(phydev, &config);
+	}
+
+	if (phydev->drv->disable_autonomous_eee)
+		return phydev->drv->disable_autonomous_eee(phydev);
+
+	return 0;
+}
+
 int phy_init_hw(struct phy_device *phydev)
 {
 	int ret = 0;
@@ -1395,9 +1410,8 @@ int phy_init_hw(struct phy_device *phydev)
 	}
 
 	/* Re-apply autonomous EEE disable after soft reset */
-	if (phydev->autonomous_eee_disabled &&
-	    phydev->drv->disable_autonomous_eee) {
-		ret = phydev->drv->disable_autonomous_eee(phydev);
+	if (phydev->autonomous_eee_disabled) {
+		ret = phy_disable_autonomous_tx_lpi(phydev);
 		if (ret)
 			return ret;
 	}
@@ -2973,8 +2987,9 @@ void phy_support_eee(struct phy_device *phydev)
 	 * manage LPI signaling instead. The flag is stored so it can be
 	 * re-applied after a PHY soft reset (e.g. suspend/resume).
 	 */
-	if (phydev->drv && phydev->drv->disable_autonomous_eee) {
-		int ret = phydev->drv->disable_autonomous_eee(phydev);
+	if (phydev->drv && (phydev->drv->set_tx_lpi ||
+			    phydev->drv->disable_autonomous_eee)) {
+		int ret = phy_disable_autonomous_tx_lpi(phydev);
 
 		if (ret)
 			phydev_warn(phydev, "Failed to disable autonomous EEE: %pe\n",
diff --git a/include/linux/phy.h b/include/linux/phy.h
index 2eba54e068f6..55053b914144 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -1391,6 +1391,24 @@ struct phy_driver {
 	 */
 	int (*disable_autonomous_eee)(struct phy_device *dev);
 
+	/**
+	 * @set_tx_lpi: Configure PHY-autonomous Tx LPI
+	 * @dev: PHY device to configure
+	 * @config: Requested Tx LPI enable state and idle timer
+	 *
+	 * The presence of this callback advertises that the driver supports
+	 * configuring PHY-autonomous LPI through the ethtool EEE Tx LPI fields.
+	 * It is not used for userspace configuration after phylib has handed LPI
+	 * control to the MAC. Drivers without this callback retain the legacy
+	 * behavior in which those fields only configure phylib and the attached
+	 * MAC. A request with Tx LPI disabled must be accepted regardless of the
+	 * timer, since the timer has no meaning while the transmitter is disabled.
+	 *
+	 * Return: 0 on success, negative errno on failure.
+	 */
+	int (*set_tx_lpi)(struct phy_device *dev,
+			  const struct eee_config *config);
+
 	/* Get and Set PHY tunables */
 	/** @get_tunable: Return the value of a tunable */
 	int (*get_tunable)(struct phy_device *dev,

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
