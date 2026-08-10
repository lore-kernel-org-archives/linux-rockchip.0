Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2881FC5B56A
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Aug 2026 12:16:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r7D11EH5Fp8SA37VquEXI8R/R4u/QE+b+g/6YpEIxtI=; b=SSqD90i4EZssoM
	blwokh/XIu28VM9Rc8B2fQXHFqFKgKbrIcB5KluCnky7DIcLgJMj/Q6aS4Ec2UvZ5ABtiSVZJVjeO
	klyRUVp61YLr0/dF+Mn5f0qoTRLJ/6f5FdfRL3DqeMnN3Ee7oSn1IYxUXj7B/d4OgrY+gPVvcfEYK
	gLp4lRwdue+pyATThGcEWYxn9JSNGkBLxcxZoWDfQGVu3FC/3AJSG40Jbkx5lZSADUzRp5ISfDfUI
	fayVegPRn9LesuWLkix/Oe5aEE9BEzfBFTkKA1rtosU5ki0VoZRjy5kyWz7si6dE7/PbubMBt4V/a
	XBwt5znhR7eqLhf4v51g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOvK-0000000BipT-46OJ;
	Mon, 10 Aug 2026 12:16:10 +0000
Received: from mail.zlab.su ([109.73.193.145])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOv6-0000000BiYR-30tC;
	Mon, 10 Aug 2026 12:15:58 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 5A5D2C0519;
	Mon, 10 Aug 2026 15:15:52 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zlab.su; s=dkim;
	t=1786364154; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=cDtG0QjaIvwPANkpMnYor9ZJCrij1s8L69sJNuEhQRw=;
	b=nnuhJ48/kMqZtnMtY0k5ZMoQmuIJec10u3anCmK4xdzZX4yufAnkC1zsUpbZe9T/xGMzQ3
	5IHfQYI1O+whLQNflzFD9CLBonOzqQPwK7p0BA8EezpQeaKjHWyKJQBm3kqBKQ49F/GH+x
	3ddMnyDyUeS7l7aSCR1mKDNIb7/b0zr1+Erka+leg12BkR+0SEfWqR1rfd7xZQ3k9V7KXC
	ao+D0T7DuKOlrurGy9KcYevfpIzzx+RObgZrNnlvRvCM7wk5p9SOdU5/aXCjeJ1w94CWyD
	fMtWao7pPtZ/pUs7oHcEY/fCiDa9gbF1LH8iXKOOwUrNmFs3W/jmBHvEgqPm4g==
From: Vladislav Leonov <vlad@zlab.su>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	Simon Glass <sjg@chromium.org>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Vladislav Leonov <vlad@zlab.su>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	linux-phy@lists.infradead.org
Subject: [PATCH 07/25] dt-bindings: phy: rockchip,inno-usb2phy: Add RV1106 compatible
Date: Mon, 10 Aug 2026 15:10:58 +0300
Message-ID: <20260810121121.210040-8-vlad@zlab.su>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260810121121.210040-1-vlad@zlab.su>
References: <20260810121121.210040-1-vlad@zlab.su>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_051557_123804_A5C3DABE 
X-CRM114-Status: UNSURE (   9.07  )
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

The RV1106 has a single USB2 PHY with only an OTG port. Its OTG port
also exposes a "disconnect" interrupt in addition to the existing
otg-bvalid/otg-id/linestate, needed for reliable HS device unplug
detection, so allow up to 4 interrupts for that variant.

Add the "rockchip,rv1106-usb2phy" compatible and require
"rockchip,usbgrf" for it, matching the other Rockchip PHYs that need
GRF access.

Signed-off-by: Vladislav Leonov <vlad@zlab.su>
---

 .../devicetree/bindings/phy/rockchip,inno-usb2phy.yaml   | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
index f50fc69fbbe4..4bc418376b18 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
@@ -25,6 +25,7 @@ properties:
       - rockchip,rk3568-usb2phy
       - rockchip,rk3576-usb2phy
       - rockchip,rk3588-usb2phy
+      - rockchip,rv1106-usb2phy
       - rockchip,rv1108-usb2phy
 
   reg:
@@ -121,7 +122,7 @@ properties:
 
       interrupts:
         minItems: 1
-        maxItems: 3
+        maxItems: 4
 
       interrupt-names:
         oneOf:
@@ -131,6 +132,11 @@ properties:
               - const: otg-bvalid
               - const: otg-id
               - const: linestate
+          - items:
+              - const: otg-bvalid
+              - const: otg-id
+              - const: linestate
+              - const: disconnect
 
       phy-supply:
         description:
@@ -160,6 +166,7 @@ allOf:
             enum:
               - rockchip,rk3528-usb2phy
               - rockchip,rk3568-usb2phy
+              - rockchip,rv1106-usb2phy
               - rockchip,rv1108-usb2phy
     then:
       required:
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
