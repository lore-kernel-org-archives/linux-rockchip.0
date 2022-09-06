Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF57BECAAD5
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Sep 2022 15:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hwVobsAuHJXL4r+uhpPu6vqwLUQOgr5i+dOWVRjrpZI=; b=kg3gaFrcNIFyNU
	xPxUsbayL8ntqtqFqeXyct5mqfItuDY8BROInqprGrFGMfVaYe93D7gUxaiCQQPKHNXgfdC+/hyk+
	L1jBxscHu2GOhNzDtasWLlGC95rks8eyK/nW82MSzrGM+RRvnvypYWZi/Pwa6W+sxjSXwvkXGsxcD
	4NtU/y19/kYBNb0yqzKOu2vp7zT/Ldqqy2QC9AXpdSdnRtLtAW1xJPJj8BE7GCOpGrGoflxIFehTp
	PIRFaw3uEIWlquSHIyXAwx/yGlq+bhSvfOYv+BZN01HQ0YZ0/HcwxE8w3CFuGmV74BEICi5qW8JQt
	l5yJT1qtxAgB89zYvoxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVaZR-00Eq38-BK; Tue, 06 Sep 2022 15:33:01 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVZij-00ENa8-Mr; Tue, 06 Sep 2022 14:38:36 +0000
Received: from jupiter.universe (dyndsl-037-138-186-136.ewe-ip-backbone.de [37.138.186.136])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 5E38E6601F39;
	Tue,  6 Sep 2022 15:38:29 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1662475109;
	bh=uUGCbE6A4divJgSvS8q19N75HGWZkvLcWodKJzEIEzw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=I6G9tqiWrRRuFFrYq1qHlobGToAqH2Vl0SbMWMhJRxYgyGoFAtzXBJJyNWzUU+3Cg
	 Yp984FlS5SMQkjO3XeJ/wC+K0HGHogjx/i+e7P72V6HE3OgEpOX7IylVOjzkD5v7SN
	 1EoenhSL5eAXq1W15OnMZdyjdgFAEOQ9o37PsKKBD6mYHJoKfnSqmZZdkHZ8t4nXhJ
	 KN7VwssQTc7qOwLtFApYUGcMUtWwOCugVREI5mKoXH9h7gGg7gn6MyBL8nldux5JwE
	 G9uDRauY6lnrAyEM0OeDqxGR/PqZaAHzHpYuo8o0VxIG2dtmHJt757mTNQXlpfWCwr
	 ZDA61k7r9Fnfw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 3B93048016B; Tue,  6 Sep 2022 16:38:27 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Lee Jones <lee@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com,
	Rob Herring <robh@kernel.org>
Subject: [PATCHv3 1/6] dt-bindings: arm: rockchip: add rk5388 compatible string to pmu.yaml
Date: Tue,  6 Sep 2022 16:38:20 +0200
Message-Id: <20220906143825.199089-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220906143825.199089-1-sebastian.reichel@collabora.com>
References: <20220906143825.199089-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220906_073834_086073_D5D0D7DC 
X-CRM114-Status: GOOD (  10.02  )
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

Add the compatible for the pmu mfd on rk3588.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/arm/rockchip/pmu.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml b/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
index 5ece38065e54..4c645049c15b 100644
--- a/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
@@ -25,6 +25,7 @@ select:
           - rockchip,rk3368-pmu
           - rockchip,rk3399-pmu
           - rockchip,rk3568-pmu
+          - rockchip,rk3588-pmu
 
   required:
     - compatible
@@ -39,6 +40,7 @@ properties:
           - rockchip,rk3368-pmu
           - rockchip,rk3399-pmu
           - rockchip,rk3568-pmu
+          - rockchip,rk3588-pmu
       - const: syscon
       - const: simple-mfd
 
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
