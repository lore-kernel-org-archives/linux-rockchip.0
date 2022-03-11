Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6980C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Mar 2022 08:34:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ppQKN/CXs2ukqz3xN38vtav9dpiMuIlG4xmWiMi/5k=; b=G0ce6YtaWFVeBE
	YBvYJCdAZFP5gZGnaVRERJaHUjVspsi5SaBUYHeHBWMFoprcwZENt2DJHNRU8umkg5P04esW8hSAT
	ebJbCTsbVSliMlDrVpxWsm9YciXurpqV17JDQFbSHNEzjfLOd9ciU3/0ZSLiThx2eR/i1nWHBcT2o
	BspGhyLN/fMDzYam2u/fAFFvh76iVGl3NYxMiwliORoMLrByU2sg1Ca4JjasFqG/sz/EJsMJ17dmt
	eQ4SCVF7R6o0u8PimSbbSaSgZkrH3W4iE3Q7KXVOWhJYiiwShWJroVog8NC5a4WTK845IEeAPAVSt
	JDxqI18TXiua6aiCbmuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSaiv-00FZXH-Dh; Fri, 11 Mar 2022 08:34:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSaiL-00FZ8Y-VT
 for linux-rockchip@lists.infradead.org; Fri, 11 Mar 2022 08:33:36 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nSaiI-0000aO-FB; Fri, 11 Mar 2022 09:33:30 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nSaiE-0040go-IH; Fri, 11 Mar 2022 09:33:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v8 10/24] dt-bindings: display: rockchip: dw-hdmi: Add
 additional clock
Date: Fri, 11 Mar 2022 09:33:09 +0100
Message-Id: <20220311083323.887372-11-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220311083323.887372-1-s.hauer@pengutronix.de>
References: <20220311083323.887372-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220311_003334_024308_14A9F4C0 
X-CRM114-Status: GOOD (  11.31  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The rk3568 HDMI has an additional clock that needs to be enabled for the
HDMI controller to work. It is not needed for the HDMI controller
itself, but to make the SoC internal busses work.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---

Notes:
    Changes since v7:
    - rename hclk to niu

 .../bindings/display/rockchip/rockchip,dw-hdmi.yaml        | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
index e6b8437a1e2d1..1df61cb420744 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
@@ -33,12 +33,13 @@ properties:
     items:
       - {}
       - {}
-      # The next three clocks are all optional, but shall be specified in this
+      # The next four clocks are all optional, but shall be specified in this
       # order when present.
       - description: The HDMI CEC controller main clock
       - description: Power for GRF IO
       - description: External clock for some HDMI PHY (old clock name, deprecated)
       - description: External clock for some HDMI PHY (new name)
+      - description: NIU clock, needed on rk356x for SoC internal bus circuitry
 
   clock-names:
     minItems: 2
@@ -50,13 +51,17 @@ properties:
           - grf
           - vpll
           - ref
+          - niu
       - enum:
           - grf
           - vpll
           - ref
+          - niu
       - enum:
           - vpll
           - ref
+          - niu
+      - const: niu
 
   ddc-i2c-bus:
     $ref: /schemas/types.yaml#/definitions/phandle
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
