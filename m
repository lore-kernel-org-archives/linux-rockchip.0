Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B4D7EB64D9
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Jul 2023 09:34:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H6Sdg/QE+CwkuHAN/Gn7DNp3o7AU66gB+uwcxkugV4M=; b=HPXSDnq0F6rYI8
	W4fuLwGsXVu69tblR4FnG3c+BVdzrQfjGhJ3lV/s4KKoKTXiwhY4pWNJPyMqpZ0bBsFsPid6GycFP
	gH10hUU/wwrrhNN6xe/PAdL0FOAnhqi5dT+Qdq6pZMCokXuh8MOePRt1y30S7+tBOM0aLVZkKPA++
	DnyzlvWcj1yGRBhKnT6OkN6rx2Q3OctlLhz4rRTnP90eslixzERSzBl2GKnL2DNbK3grFeafaEfoP
	sFPqZ+cRPmsJ2W80NkgXNbXY0Wn4V1tuDuj4jfP/wAaTegUXLN5c/FKqB5/YxSFKbxkKtx0iAcZ+L
	BpbCk9JZf+TCKLYFyogQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGcPo-00Cjke-2c;
	Tue, 04 Jul 2023 09:33:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGcPH-00Cj9k-0q
	for linux-rockchip@bombadil.infradead.org;
	Tue, 04 Jul 2023 09:33:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=SkfqaA8/RJS+625MZhrRtwa1Pba22CXSJWHCMWVVBm8=; b=mG9QYZXBdpg1WrdtcEDri/SgVx
	fRMUfVrNY5HXc4jrHf/rt0R0P0d5q2mfI4bAucO9SKDXmdOlUaOY4scfEuqEKbD4WPwNUA+cqr+XM
	3QekOUdzjXW9LSKJg9qrBFDA3hGzfY1kFSHfTkLZAQ1z1BjolbFs9Uh2W+/ACY1pTNjnhRPdnDO9A
	cNJ47BL2/zvlswDCXR4ZdRPLLwUfbExS8A3iQu2m1NHUEdsNEhDrkFN2A0Eg7SKrCLZjnrK3II+fM
	Dr89RPQE3587Lw7oloYjNQKpCZNUbBoXJXO+5XRBMP7S099zYyRlGvJik6FcMCrq2PlL3DYMioEg1
	jBYz8j9g==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGcP5-00Apf2-2q
	for linux-rockchip@lists.infradead.org;
	Tue, 04 Jul 2023 09:33:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qGcOx-0006xy-7N; Tue, 04 Jul 2023 11:32:51 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qGcOw-00C0Aq-HX; Tue, 04 Jul 2023 11:32:50 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qGcOr-002Tz0-FC; Tue, 04 Jul 2023 11:32:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Robin Murphy <robin.murphy@arm.com>,
	Vincent Legoll <vincent.legoll@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v7 22/26] dt-bindings: devfreq: event: rockchip,dfi: Add rk3588 support
Date: Tue,  4 Jul 2023 11:32:38 +0200
Message-Id: <20230704093242.583575-23-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230704093242.583575-1-s.hauer@pengutronix.de>
References: <20230704093242.583575-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230704_103308_129029_08439C46 
X-CRM114-Status: GOOD (  12.11  )
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

This adds rockchip,rk3588-dfi to the list of compatibles. Unlike ealier
SoCs the rk3588 has four interrupts (one for each channel) instead of
only one, so increase the number of allowed interrupts to four.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---

Notes:
    Changes since v4:
    - new patch
    
    Changes since v5:
    - drop interrupt-names property
    
    Changes since v4:
    - new patch

 .../devicetree/bindings/devfreq/event/rockchip,dfi.yaml       | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml b/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
index e8b64494ee8bd..50d3fabe958d5 100644
--- a/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
+++ b/Documentation/devicetree/bindings/devfreq/event/rockchip,dfi.yaml
@@ -14,6 +14,7 @@ properties:
     enum:
       - rockchip,rk3399-dfi
       - rockchip,rk3568-dfi
+      - rockchip,rk3588-dfi
 
   clocks:
     maxItems: 1
@@ -23,7 +24,8 @@ properties:
       - const: pclk_ddr_mon
 
   interrupts:
-    maxItems: 1
+    minItems: 1
+    maxItems: 4
 
   reg:
     maxItems: 1
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
