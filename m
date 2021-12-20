Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B141C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Dec 2021 11:15:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xhvStEmU4CUdXAW5jk1Vt7nu45Oms1okJSy/truIlXo=; b=Egu42xUwZ+/HTx
	b5fyergqGvuuk+LjWT+f0YDus13mAvHAAjERtd95u3nP5PNvmEQn0nqnizNSPV/DbGbQSBfDLKYvU
	Gh5ABioNnxaP5qbg0jmgT+NRZN9aDUPI63E8XIwu7woBWs200jcSvmHwtDkBirc1r/lnXXRdZYaip
	ykugNkJO5An5pZ7UiPRxb3AeqjrmIZHYOjuruET2RzR5LhOH2fXtUJWz/+FSCW0xdXdteqsWchCnA
	3IjiYzDRVYHqOBNXTDpv6BZpcVB2B4M2MCZXBDLkwqEVQmfWSTyxd95wHBMdJMDiNZoZgBroSLAUA
	9I9wb/qN1nJCpP16Ny3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mzGdf-001tFa-At; Mon, 20 Dec 2021 11:15:31 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzGVb-001oQw-DF
 for linux-rockchip@bombadil.infradead.org; Mon, 20 Dec 2021 11:07:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=jns4NrVsl61J8kSnzss8C6qlMlGPBS8PulmCDXy9/T4=; b=IXCR+g4lJt2X5HgkpyYX3PWYal
 thKIYn3WE68IaybvT3dL8xSCuPX0qr4bIxxDjZ4jJZGfZ0ipWmygFJUKUyPuwC9o9hKaiZjI87rJj
 OHE/csAUbAoBIadSkChPR4Ct7KcIHbbdS/Y2gt/ry251alEFT4J7NKgeLBzrjFSzw9f6hlqCc4KAl
 nsUlOXVWqo1J6vdAB4iN86vDwU5nKLxjPK0Bjuh6EjSEILV5cML7UgyzqxLnbqLP0eljAAvOhwG/B
 lOA/DJNIbJtuD2iQW+lD0N/NF0sT2MFujR+x/K9aTXK9h/r5NWYjHGnEJJF9GbbHM4tFf3Df0eqe1
 is3EEZTA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzGVX-002UEO-FI
 for linux-rockchip@lists.infradead.org; Mon, 20 Dec 2021 11:07:09 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mzGVE-0004x6-DR; Mon, 20 Dec 2021 12:06:48 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1mzGVA-00EmEG-KL; Mon, 20 Dec 2021 12:06:44 +0100
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
Subject: [PATCH 07/22] dt-bindings: display: rockchip: dw-hdmi: Make unwedge
 pinctrl optional
Date: Mon, 20 Dec 2021 12:06:15 +0100
Message-Id: <20211220110630.3521121-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211220110630.3521121-1-s.hauer@pengutronix.de>
References: <20211220110630.3521121-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211220_110707_619652_47A04BDC 
X-CRM114-Status: GOOD (  10.00  )
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

None of the upstream device tree files has a "unwedge" pinctrl
specified. Make it optional.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml   | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
index 45cae4f57a1c1..6e09dd2ee05ac 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
@@ -73,6 +73,7 @@ properties:
       The unwedge pinctrl entry shall drive the DDC SDA line low. This is
       intended to work around a hardware errata that can cause the DDC I2C
       bus to be wedged.
+    minItems: 1
     items:
       - const: default
       - const: unwedge
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
