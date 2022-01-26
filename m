Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43083C28CF5
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jan 2022 15:13:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EbFT3Ijb8LJJKWHZkynSBE0Ajtxqzh4vR3ce19gZDrc=; b=ueBO7HzO9LDb/g
	R9hElxUs+2GDBoUIecaHR3VdvCQ0RjKg4VFnkUTLioEU68MDBie4dT24Wxk0mZoy1hJ1vAVdaX5M0
	oq/6RN1IifQDhTY+5ZvbISZix0J6WMGgsY9FNHQgW5EmwikicL6FhzqJCGhPNL+rnsAfuJh1EXYC7
	QxKElwMcfezrXmW5ZfvYh0L0Oqwsxx+DwH6ipRtGgwW/u6fpa3e6j5t+TM0dnzkBrZexHCUZd1YvC
	U08szR0uEnO/EF5NWG2vM9vF3wn6PqJi3cnIiRK2lE50VqCQmwuuZs8b5e4NCPX/LtDyuxMPpFyHF
	5U+XGr9s9ZoYSBJjO0kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCjzL-00CBD2-7d; Wed, 26 Jan 2022 15:13:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCjkv-00C4Pj-ED
 for linux-rockchip@bombadil.infradead.org; Wed, 26 Jan 2022 14:58:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=cxcdSdPZ9EGKp8SzA8ZkM0zRXGoueXzvoutqU/lQFjU=; b=TZekFQAticOZF3uEVXh7HqrXRt
 KoyvE6gfCqQ9Une6WQteBu4VeagX13HXS1E9qn1DHGz573sHs8qA8pZdXAzImFUh4oQkpyYgJZmnL
 Rkcu3wI0SqdGv8jQIpsrHdYthIwlyGjcHYELqb5SwyS8mjcfMXY0uwFdBK1fH5IYhAjoGGLwm2slg
 Gr90S6K5MNYcZqfhRx0szG2TUHjhv8erYVt4E9ewUOVA1S2T4BfnpbuyzDFGn5bidk8Gv/GxA9Vt4
 YnSvWHoC0Fyw3jbvL8q3fImwb/ovuTu5zk/wRdJ0xzXgbtJ7zTzGHZIDWahHElFR7aQmwKBt95HIv
 HSZDfoMg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCjkm-003pif-D7
 for linux-rockchip@lists.infradead.org; Wed, 26 Jan 2022 14:58:39 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nCjkc-0005fQ-5c; Wed, 26 Jan 2022 15:58:22 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nCjka-002l6p-Mk; Wed, 26 Jan 2022 15:58:20 +0100
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
Subject: [PATCH 16/27] dt-bindings: display: rockchip: dw-hdmi: Add additional
 clock
Date: Wed, 26 Jan 2022 15:55:38 +0100
Message-Id: <20220126145549.617165-17-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220126145549.617165-1-s.hauer@pengutronix.de>
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_145832_691915_262E6F05 
X-CRM114-Status: GOOD (  12.58  )
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
HDMI controller to work. The purpose of that clock is not clear. It is
named "hclk" in the downstream driver, so use the same name.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../bindings/display/rockchip/rockchip,dw-hdmi.yaml        | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
index d7cb2b2be60e..7dd753630b46 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
@@ -44,12 +44,13 @@ properties:
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
+      - description: hclk
 
   clock-names:
     minItems: 2
@@ -61,13 +62,17 @@ properties:
           - grf
           - vpll
           - ref
+          - hclk
       - enum:
           - grf
           - vpll
           - ref
+          - hclk
       - enum:
           - vpll
           - ref
+          - hclk
+      - const: hclk
 
   ddc-i2c-bus:
     $ref: /schemas/types.yaml#/definitions/phandle
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
