Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BD81FA373E
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Oct 2022 17:47:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tNd35uNLe/fTE3pmF/vThEOsppmIVAZ9g3vp4kByZp0=; b=yPcguz0TSodHyT
	uE6Z56cuVqeIXrRgOYZlfYpLBpZeqnRV9WHemaflcDBJb42dZjOTNIA4piUGFjE4/4jUGIiFBQ9dT
	d2NxMcPvRExSkKL+mIbHiYoVIMHAPFdlf7533Tc2MFsma4FsKm0QaX4IDeb1BFFJQ1+6Ec8P4mQMS
	B29Q/JCTlPZ1U5JRET4d6A76OGYLjzK19dMLF5Z5Qwyzljie52fY+62s5kMvXkUEhPAHjjJGxFujk
	H9kAV73WCc90ln2yhxzU8sHVrrQbNlWCQPpOOfHqKrRprazpEwkwFGWk8rLWiWroHZlcLUB3pyyvr
	WmPTlZgHRT7+qqzvsXhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olw7K-009Hje-7C; Fri, 21 Oct 2022 17:47:34 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olw7D-009HdY-RV
	for linux-rockchip@lists.infradead.org; Fri, 21 Oct 2022 17:47:29 +0000
Received: from jupiter.universe (dyndsl-037-138-189-087.ewe-ip-backbone.de [37.138.189.87])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 252B066025FA;
	Fri, 21 Oct 2022 18:47:26 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1666374446;
	bh=H47s4Vww46ISyx+X7Wz7KvqsX1h10yHB4Z5oppVpziM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=b93aAqBSJSJYyKb0dFqjUcIII/z8/XELYAUfNcuzvn6J0tCsP9X8caIzeBhRaFL+q
	 JMfyngQ2plNxcKa8l2UFMIBv8y+aLRooKNO+U793hKJ/8XIh/ArG8mh43eLFbvEnnA
	 vpsdrn/FPLGtAYSB8sNrAlPUPttC7NaLl2EzX6mzhKusxnH0ESnjrL1kMiywKtzJwI
	 4EYEPT959vl00OE1XIbgsTS690LVBjXOtdsgAfpRKN2KdbfB9R/EpSg6ENr1GYovg7
	 Yi4vyh5yyCnRCqxjU0Gq0jICp90UGWE5bWTC5QWUZQOfHuwENXIvaq57GJAZX7umY6
	 PzHDmwzdfi3Uw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 6644E480897; Fri, 21 Oct 2022 19:47:23 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Amit Kucheria <amitk@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH 2/2] dt-bindings: rockchip-thermal: Support the RK3588 SoC compatible
Date: Fri, 21 Oct 2022 19:47:21 +0200
Message-Id: <20221021174721.92468-3-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221021174721.92468-1-sebastian.reichel@collabora.com>
References: <20221021174721.92468-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221021_104728_055470_93DC0BC7 
X-CRM114-Status: UNSURE (   9.73  )
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

Add a new compatible for the thermal sensor device on RK3588 SoCs.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml b/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
index f6c1be226aaa..55f8ec0bec01 100644
--- a/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
+++ b/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
@@ -19,6 +19,7 @@ properties:
       - rockchip,rk3368-tsadc
       - rockchip,rk3399-tsadc
       - rockchip,rk3568-tsadc
+      - rockchip,rk3588-tsadc
       - rockchip,rv1108-tsadc
 
   reg:
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
