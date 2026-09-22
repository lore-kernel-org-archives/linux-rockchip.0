Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F640C98302
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2026 20:04:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lueJppVxy52ZEFEQ+3ID+cWS4uCV1Jkr1/oFm+5M5dw=; b=l1ZuPSsQytbfAn
	LYStEIpAI6Mi6jAz/Wz+wEq0A42dQJqj0aqtO6a0IkGHPZ90GtHYVWmOf+0l67cWsfc7myqe6yk87
	jqbaVWq2lL6GPXKYWyGdJEAIJcHPcfIvla6xdtr2sD7XtcWR5GabUqBFPH49Dj+mTGwiT1cEZ58Iw
	4VyDXbTXLoLrT+OAyHNyj/x989qM5xGLVktJ5aYP397hAB15Ktpy7pNKqOH6SR/hEX8PEE9lfxi6R
	o+VLs662/DAqXgBprZ6nyJG0XakTlIZvI+K9gdq5QuVkt1dgpMqTBMUkSkHV1JY6jyk+weVwNV9BB
	p4Ap8+RoHMy4IkrRNCUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x96im-00000006Tq7-1jDR;
	Tue, 22 Sep 2026 20:04:08 +0000
Received: from mail-pj2-x05.google.com ([2607:f8b0:4864:39::5])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x96ii-00000006TmS-0JTn
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Sep 2026 20:04:05 +0000
Received: by mail-pj2-x05.google.com with SMTP id d9443c01a7336-2d952ac253dso1213125ad.0
        for <linux-rockchip@lists.infradead.org>; Tue, 22 Sep 2026 13:04:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790107443; x=1790712243; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=v2tJApUzC1LEzp8M/eTL2SHChylQhCDDbwAQQxkGsv0=;
        b=jNJp3jVlce8ea2G5GzlTtotwzkdiaTsg7eHrS5JfGjtUJv4TtsO/Bpru4yoDAQRy5b
         EDambP9SH6FXRGOozzKhsK+1/0YaFZTebEcBqIxPvsvIu815P/O4ghDX/k9oGsYkhXFw
         Tz0NBc7imlqXvTg5Pc9CqwrR17yguALxKPeCX/H7l1dLwAnwno+Ha6qBq/q3+QiFv8z2
         pe4IibOcvqFten99ojQbSdo8lINRcDYEEVXsS/77bqBkKnxr1+h86LLqxnilSCeCpIK4
         P96H/wcnyH9VM6Xhq5x5uJi5hLL7KqoYN8B3FrGoXQ/e4cHRts8cVPdsBMHPBy8mO5jc
         BlFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790107443; x=1790712243;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=v2tJApUzC1LEzp8M/eTL2SHChylQhCDDbwAQQxkGsv0=;
        b=wAslYCkorvtS5nR5hZJh5Nibrsu7mpyaEZjq770+avkTq/l7sOQhx4XTYdVnu+rt6l
         j14KXpOWQunvNYpv0PSUV7FCXojsaBvdryy9ALb4hLnEIDxNkVbk2SXi/lcEYdgedHkO
         09qvkS1gMQaH49ay+8+jcACI8OINKLoh73+QbW69dcZ1aG2dwr05nh4Aa9JfV/kq7rOl
         zv2Ddeo3HVqzBEqyBwXLSXEV90KFsD7XhvYBLarLcn7skZ2Enhy7HHydD/6eM7odL8JZ
         GHrXGKhj4N54RjeZ4egMBOxBCEuV96PvN1WHyzVJNBX6pYItMyv5vsBIgMFyGYTEpLKA
         2Vuw==
X-Forwarded-Encrypted: i=1; AKwUvBzZHx1aXeIaFxx+Vzgx17SKZoSWGA1jqF0QvqTbL6zmhswCGHUrk0wyY6rPZdkz0HK/nBdvdPo9yZ/F+khFRw==@lists.infradead.org
X-Gm-Message-State: AFuF++npgL+s24vaRyfPXF0xiWURUOwz92CvPXSx1wXE8PVb9oAgOVLN
	lsgZ52E7MNKQNFHpdyhajfNc8v5jByko5fLWYxEUR5sGbwTjOoSyAntX
X-Gm-Gg: AYBFou0YNARWRqoN1plFPVdDA+s0OUcWJ7nXzMbqpVglgrpfrYHRlmZRmJ0O6NIRpnk
	FBhI2xmJYUOqi7+A5dRnbXnv74UYAVazJt+DZrUDSG5S1a2JVQKZzaxnhLEOEt2yJOhgkaUiQOk
	vPksE5M1MZFsAKXjzCaL8pCuVwBelNdXRspGqzEKzkKIk9Q5tiz449GEjM8g8sWGTFnCvlVzI6y
	blvp6KMWIpyaCk+46ow9qpa20ETYjXyIt/xqpbvp8gA471a9rdT9chVxtk4Uk9xUklfdNaSpP+Q
	vD9RCNwDmOk0gZjgldzzbut1cueg+fLNqUK5UYrzDSSvlFBcLAejdJeyYZXKfyHHt7PDLaVowuz
	fpgSCjpRxAh+29I3ASGSPlF/vH30ljDLcJmKKkiD5aBUh9BabaojpTZqLJAEgWbVwBm5GSCmlb4
	a93LDP/Z4EzJwg7OYhFmDGmDc37HB0ps1ysRgwmHqUd4zYFp1Q6pQG+IqapLHA+VML1x+FpA==
X-Received: by 2002:a17:902:d4c5:b0:2d9:68b7:c324 with SMTP id d9443c01a7336-2df69d368e1mr4567765ad.3.1790107443277;
        Tue, 22 Sep 2026 13:04:03 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2df6a5eea15sm654515ad.64.2026.09.22.13.03.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2026 13:04:02 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Coia Prant <coiaprant@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	David Heidelberg <david@ixit.cz>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH net-next v10 02/11] dt-bindings: phy: rockchip: naneng-combphy: add rockchip,sgmii-mac-sel property
Date: Wed, 23 Sep 2026 04:03:26 +0800
Message-ID: <20260922200336.2201212-3-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260922200336.2201212-1-coiaprant@gmail.com>
References: <20260922200336.2201212-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_130404_123351_B53B1D10 
X-CRM114-Status: GOOD (  13.32  )
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

On RK3568, the SGMII interface can be routed to either GMAC0 or
GMAC1 via the pipe_sgmii_mac_sel bit in the pipe GRF registers.

Add the optional "rockchip,sgmii-mac-sel" property to allow the
device tree to select which GMAC controller is used for SGMII.

The property takes a value of 0 (GMAC0) or 1 (GMAC1). The hardware
reset value is 1 (GMAC1), but this can be overridden by setting the
property to 0 for boards where SGMII is connected to GMAC0.

This is necessary for boards such as the Ariaboard Photonicat, where
the SGMII interface is connected to GMAC0 and needs to be explicitly
configured.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../bindings/phy/phy-rockchip-naneng-combphy.yaml   | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
index 379b08bd9e97a..8e898bce9af73 100644
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
@@ -80,6 +80,15 @@ properties:
     description:
       Some additional pipe settings are accessed through GRF regs.
 
+  rockchip,sgmii-mac-sel:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1]
+    default: 1
+    description:
+      Select gmac0 or gmac1 to be used as SGMII controller.
+      The hardware reset value is GMAC1 (1). Set this to 0 to route
+      SGMII to GMAC0.
+
   "#phy-cells":
     const: 1
 
@@ -105,6 +114,10 @@ allOf:
           maxItems: 1
         reset-names:
           maxItems: 1
+        rockchip,sgmii-mac-sel: true
+    else:
+      properties:
+        rockchip,sgmii-mac-sel: false
   - if:
       properties:
         compatible:
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
