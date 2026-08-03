Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7BDEC5518C
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Aug 2026 05:15:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8b49xQXIWix3++WPTtvrgmEjVGKmhdU2WXN2pkMRCZc=; b=P8iInbIFRBndg8
	uKrnN9v3+dff8JpWZ1pEEisd1PJnhNlyZ8GRFcWUru+hL0kK9NE8IDaoEdVrO9r0HkWT482nDpwkz
	CGaUIEWnxNa2m+cWcoOjD3rYgOO9/FWIOyKq9CTf3FeawoERxQrdnOb1JVHLJHukoSPeEoUxTjbcL
	gmflO0sxODXiE6WP5vX3pK/q0bSlCkq2XBK7h5Ztw69PyKIyboqo8OGvuXGCk51ZTOJ7v3NYagnJF
	JK7NBsBGJKqwbTDdlW+3/5pezJIKeDGJEBPT3Zbr36JviP2s6t9lEv8lGvF6gWktsc+wVcEM+j8nd
	z+1xjwy1Ls+1y58S83iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wql1O-0000000GKXF-0nZl;
	Mon, 03 Aug 2026 05:15:30 +0000
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wql1L-0000000GKTQ-0Cl7
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Aug 2026 05:15:28 +0000
Received: by mail-ot1-x336.google.com with SMTP id 46e09a7af769-7e9ef94c0e2so1586090a34.3
        for <linux-rockchip@lists.infradead.org>; Sun, 02 Aug 2026 22:15:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785734126; x=1786338926; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=fkDHET87UFExhpdvkNx3ant78q307rzdUT3zfbIoItk=;
        b=muO+F4GF/fAZau4ChDcaLAYgDpbuEU5MkPp+552CoN3KnSeeKWIUShpBY8ePOOdrUl
         FUzjN97aaH21c0bOmBGPpalsm0VTDODs4vdKpkQ5tTG+r8POVa6IeBN0o7e8rFUcwCNq
         a6VLj4jIgwi6FP0AYZyuYyYTcHn/D62PvpVYK5oSmHHxdtxVd+TWkMQ8Jgqlq1TXYGa9
         HqevJM+Z593/1gmsBpNwE+eaA67HU8+YViCQxKwjUPz9hNEwBmXck7F0MsgI7t9I+Gmq
         Z+UAH+e45VOTyOR8zUL+TXPK/dNQKWSVvL4jL100LWcdRiWmPBGdaJRdnXvbIJwSALDi
         j+zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785734126; x=1786338926;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=fkDHET87UFExhpdvkNx3ant78q307rzdUT3zfbIoItk=;
        b=n2pKBSKUr/vU2SYk3+Y9kjOUw+osjh6Q1kG8IINepR88TE0gaxCC80tJPyqmwN/dP2
         ITc3RBJE/FF12M3n2OGsOOccBZaYX7aj8tqfcY6yi+bohpwC7PcDXTmiGNmgBvUBWu6i
         H/UBcvWPaJFVl2VSE206O/KWdEnD12aui5hi6RvoBcXLhjRjmM9yNN9EbpqUcqUzHhtH
         uURuTskULja/eBhcrZJDj2nUZ6anD1utQWo1Yd4/GojkhmljP4Q5I9Mtw/0kbuLyq411
         CO9y2Tc3PbLftolX/Om9xr13S8nMq3HHiH7fmL4GZK6e94/K32abLs2madS0Xfp67KL7
         oscQ==
X-Forwarded-Encrypted: i=1; AHgh+Ro/Z0LJAMkQbS2GbJu0ShrhY/K+X+zv8vy79qru2G/sZsrDt93idqeThpKaOcJIzzHOxyxOSIPwouZY4WoIBQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzlf+TKyjmXtFE4NHnNAgAEP5PzBTgTOab4u2/IUzTYVCp3zP/C
	QOkY4R5q8s5KM+ecBnRSxIUXSUkeCtYzO91on7/9X08CIcpvae49tHuO
X-Gm-Gg: AR+sD11zciW7KLPI48vGRlowjsBPP2qwLsn5g6HAbSsh2ySRAzBu9EuOQUxkwtnNugU
	sbQorqZwn0NRpSOs0hEFhhUS3krmwORTIshCmL/dW5XkAmjI2i51hL3XJRzE7RNkLRTRQYiX7Dr
	6lSifaK1Rs6mSk+obxiYTuoz2JktEUHQn+t3q7r5OAupEwRnaWfUy55CWvX/KBJQzD+rOa/V7E9
	Z/Ud/oFplxurc9tm3Sn7f8QgD3z9jNwzFgSeP6ruXRYnWAC/FZfquxxuY656zV5Rvz+vV6PKc9S
	5csioCLSkBofYJ24iHYx8fSK8hJZx4f8uFqYCEGZtn+EWvxvKJab6atvKSwvgpK3q93gKcG80sx
	UHqgL5nEUhp5CGdL2wTT0oPtvYN8VBusZ4r6uAFFi5s6ip02hMEgonZZgNlQXeQYujRgT3ZrslC
	LinRzQupD1yH98zBeJwzCRvddmRR2CroCJE7pP8xQkUdKX9CkZYE9XbRHZY9nkmA6FXvHFPoeT4
	/Kp4RgL6JfmcbFiK9eNG7++d9EDBetGrSruhO6yHQAjlG8KZeGgemuBNq0wWMipknR2fIsB4O/o
	YUScWhPVkybNmCdYhT5GU3QMYCVD5GOCnW6uy+4AMKHYEFAgWG0iSDDN12nKcITOi+gbuEawvoC
	Xtxnl/pWeS513+h9DlUhhFQ9ycZRVg0ksPR7xMg==
X-Received: by 2002:a05:6830:8389:b0:7e9:e709:44f6 with SMTP id 46e09a7af769-7f196ea3b40mr13694676a34.12.1785734125552;
        Sun, 02 Aug 2026 22:15:25 -0700 (PDT)
Received: from [127.0.1.1] (184-96-154-59.hlrn.qwest.net. [184.96.154.59])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7f18f07a5e3sm6787108a34.15.2026.08.02.22.15.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Aug 2026 22:15:25 -0700 (PDT)
From: James Hilliard <james.hilliard1@gmail.com>
Date: Sun, 02 Aug 2026 23:14:14 -0600
Subject: [PATCH 04/21] net: mdio: factor out OF child registration helpers
MIME-Version: 1.0
Message-Id: <20260802-submit-acx00-of-dynamic-v1-v1-4-0a53cd9e21cc@gmail.com>
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
X-CRM114-CacheID: sfid-20260802_221527_104721_9D043115 
X-CRM114-Status: GOOD (  18.38  )
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

Live OF reconfiguration needs to create the same PHY and generic MDIO
devices as initial bus population, including legacy PHY nodes that need
address scanning.

Factor fixed-address child registration and PHY address scanning into
helpers. The old scan loop also visited every free address for a child
without a reg property even when the child was not a PHY. Reject that case
before scanning while preserving enumeration of valid PHY and generic MDIO
children.

Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
---
 drivers/net/mdio/of_mdio.c | 66 ++++++++++++++++++++++++++++------------------
 1 file changed, 40 insertions(+), 26 deletions(-)

diff --git a/drivers/net/mdio/of_mdio.c b/drivers/net/mdio/of_mdio.c
index b8d298c04d3f..051e449bbe7c 100644
--- a/drivers/net/mdio/of_mdio.c
+++ b/drivers/net/mdio/of_mdio.c
@@ -77,6 +77,15 @@ static int of_mdiobus_register_device(struct mii_bus *mdio,
 	return 0;
 }
 
+static int of_mdiobus_register_child(struct mii_bus *mdio,
+				     struct device_node *child, u32 addr)
+{
+	if (of_mdiobus_child_is_phy(child))
+		return of_mdiobus_register_phy(mdio, child, addr);
+
+	return of_mdiobus_register_device(mdio, child, addr);
+}
+
 /* The following is a list of PHY compatible strings which appear in
  * some DTBs. The compatible string is never matched against a PHY
  * driver, so is pointless. We only expect devices which are not PHYs
@@ -136,6 +145,32 @@ bool of_mdiobus_child_is_phy(struct device_node *child)
 }
 EXPORT_SYMBOL(of_mdiobus_child_is_phy);
 
+static int of_mdiobus_scan_phy(struct mii_bus *mdio,
+			       struct device_node *child)
+{
+	int addr, rc;
+
+	if (!of_mdiobus_child_is_phy(child))
+		return -ENODEV;
+
+	for (addr = 0; addr < PHY_MAX_ADDR; addr++) {
+		if (mdiobus_is_registered_device(mdio, addr))
+			continue;
+
+		dev_info(&mdio->dev, "scan phy %pOFn at address %i\n",
+			 child, addr);
+
+		/* -ENODEV means that scanning should continue. */
+		rc = of_mdiobus_register_child(mdio, child, addr);
+		if (!rc)
+			return 0;
+		if (rc != -ENODEV)
+			return rc;
+	}
+
+	return -ENODEV;
+}
+
 static int __of_mdiobus_parse_phys(struct mii_bus *mdio, struct device_node *np,
 				   bool *scanphys)
 {
@@ -164,10 +199,7 @@ static int __of_mdiobus_parse_phys(struct mii_bus *mdio, struct device_node *np,
 			continue;
 		}
 
-		if (of_mdiobus_child_is_phy(child))
-			rc = of_mdiobus_register_phy(mdio, child, addr);
-		else
-			rc = of_mdiobus_register_device(mdio, child, addr);
+		rc = of_mdiobus_register_child(mdio, child, addr);
 
 		if (rc == -ENODEV)
 			dev_err(&mdio->dev,
@@ -197,7 +229,7 @@ int __of_mdiobus_register(struct mii_bus *mdio, struct device_node *np,
 {
 	struct device_node *child;
 	bool scanphys = false;
-	int addr, rc;
+	int rc;
 
 	if (!np)
 		return __mdiobus_register(mdio, owner);
@@ -238,27 +270,9 @@ int __of_mdiobus_register(struct mii_bus *mdio, struct device_node *np,
 		    of_node_name_eq(child, "ethernet-phy-package"))
 			continue;
 
-		for (addr = 0; addr < PHY_MAX_ADDR; addr++) {
-			/* skip already registered PHYs */
-			if (mdiobus_is_registered_device(mdio, addr))
-				continue;
-
-			/* be noisy to encourage people to set reg property */
-			dev_info(&mdio->dev, "scan phy %pOFn at address %i\n",
-				 child, addr);
-
-			if (of_mdiobus_child_is_phy(child)) {
-				/* -ENODEV is the return code that PHYLIB has
-				 * standardized on to indicate that bus
-				 * scanning should continue.
-				 */
-				rc = of_mdiobus_register_phy(mdio, child, addr);
-				if (!rc)
-					break;
-				if (rc != -ENODEV)
-					goto put_unregister;
-			}
-		}
+		rc = of_mdiobus_scan_phy(mdio, child);
+		if (rc && rc != -ENODEV)
+			goto put_unregister;
 	}
 
 	return 0;

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
