Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65BFBCAC5B8
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Oct 2025 03:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JWR+RKpfFT2OC6nv7/DyY0qkQ1FeL/9dwpZ1W/UApfw=; b=RKTXWa8t5yqiaJ
	kHdQMVmCxtxkFrlqXX28bF+ZBpc1iuYn6fCG7jIpIe0dti9/Ldm9x35q0tEP0KlRe9gdedZ0dWby9
	Hi87SE8HBN6rEZsU6HxwEEFHESI6JL53R/pHes1hWAFqtK9UkqAVqkNAcvIyv3ybtiuMaAnKZMm7O
	P0n/uwh/xBkH0M8aQtAVZ9warvhaN6XlniRTeJ50NpX5D7BnOsop+SWhyDGWuEixHGiCAYhIwbNkG
	bYNqEwd9N5WWZ1+uEK9t7YlxU1N/Pt+Zu0zaSBaN7Iw+TDe0VnJa/098lVdltpWKEFwiqyi2bTXN4
	MbYquZo5w5w2XnYAkrlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4AHp-00000009YQe-3oXB;
	Thu, 02 Oct 2025 03:47:21 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4AHn-00000009YNy-0eIR;
	Thu, 02 Oct 2025 03:47:20 +0000
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 117D01E3D;
	Thu,  2 Oct 2025 05:45:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1759376748;
	bh=lURSqJKTdJb7Xs4EQnW9jEapWTZbXLGSTm9CKQyFJDs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=aqM8H+5Q4PLA5z65QHJdo28c6P3/ZOvemycQo9JYxmGdm7q8s0JYkHcbDoMNbkk+u
	 3WGWwJOt5BmWp6doivm0/X1yypBrcDMfGaeTsqhioAWNi4tBGHDGoKVvB4t//rYsDm
	 9KFKFRl0H4kAKADnP63UoTD9oHX1HZ0Fc4jNvaLk=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 2/3] dt-bindings: display: rk3588-dw-hdmi-qp: Document enable-gpios property
Date: Thu,  2 Oct 2025 06:47:07 +0300
Message-ID: <20251002034708.19248-3-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251002034708.19248-1-laurent.pinchart@ideasonboard.com>
References: <20251002034708.19248-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251001_204719_337796_655BE7C2 
X-CRM114-Status: GOOD (  11.85  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Cenk Uluisik <cenk.uluisik@googlemail.com>, Heiko Stuebner <heiko@sntech.de>, Jimmy Hon <honyuenkwun@gmail.com>, Kever Yang <kever.yang@rock-chips.com>, Maxime Ripard <mripard@kernel.org>, Sandy Huang <hjc@rock-chips.com>, Muhammed Efe Cetin <efectn@6tel.net>, Algea Cao <algea.cao@rock-chips.com>, Ondrej Jirman <megi@xff.cz>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The RK3588 DW HDMI QP encoder only supports AC-coupled links as defined
by the HDMI 2.1 FRL mode. In order to be compliant with the DC common
mode requirements of HDMI 2.0 (and earlier) TMDS mode, the middle point
of the termination resistors needs to be connected to ground. Document a
property to toggle this connection using a GPIO.

The property could be better named, but it has been introduced in the
Linux kernel driver for this device a year ago in commit 128a9bf8ace2
("drm/rockchip: Add basic RK3588 HDMI output support"). While it is not
used by any in-tree device tree, it may be used in the wild.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
index 96b4b088eebe..7471c2f51c32 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
@@ -103,6 +103,10 @@ properties:
   "#sound-dai-cells":
     const: 0
 
+  enable-gpios:
+    description:
+      GPIO to switch between TMDS (when active) and FRS (when inactive) modes.
+
   rockchip,grf:
     $ref: /schemas/types.yaml#/definitions/phandle
     description:
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
