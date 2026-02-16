Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F3C2E63F22
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Feb 2026 01:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zWIJ57DqWHRu8m565fOkkfYxit6kq/gzt/+l4EFnL3c=; b=zTzokbqAHMsKtA
	kPeNb67DZO7ABPQOoR0Hrqz97sY7Uf+CnKt41qTUzB0IbR/OIkj1ToHrbxn28+xBwm10X8Wqu0Qiw
	qZwTuTIRjkobsowDkj+4BgK776fwDZZVkKQG5959locUNQfUx9YzCLl/6204AkbnFO+1+Vjg02sX0
	g/hD8AAdy+uGQxYVKuIKVM5FgL84yqwlXJpr03WoqstWPV7OdmgKu4MLSAXOD/yMxy3fzzxj09cTu
	nNwkJl2GkkwLCmNS5yUfio1wTkb3yN8fc4hvEXyvO9MPISomn7T7aw+x3dzNDtDC4+6J52ioVSpxS
	OQFZex0ZwFiTfY8WjLuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrn0U-00000005pUM-3Ihw;
	Mon, 16 Feb 2026 01:02:34 +0000
Received: from mail-dl1-x1236.google.com ([2607:f8b0:4864:20::1236])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrn0R-00000005pTT-2Lgd
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Feb 2026 01:02:33 +0000
Received: by mail-dl1-x1236.google.com with SMTP id a92af1059eb24-127380532eeso7102382c88.1
        for <linux-rockchip@lists.infradead.org>; Sun, 15 Feb 2026 17:02:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771203750; x=1771808550; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0uUVQPbhvB6NSi3mbkZ1qXyVTFOD4aa4pfphYcfbKPU=;
        b=gXJbMuNsAIRWGAIZ6GlE3FSXnMyX3Bv161S0D6Q2N8xWnh30UObegegSAgNqUfOlWl
         YTf8DQp/5ve+mhfG1Vi0FX8JElRRSeXpt6mxbeUzwbf35TR+euugy9sZbmhhoJ2/bIYz
         uFEVn1nKPIwzVtMlvpByI2n2Ak2e2/OD4jZ1rRysv651kh9UbaDupH6sbg0FgrqAPCWM
         L7bkHeJFNuKipw+5plqgiXxgC3RYCT82jX+ywqjirD0H2UI79IDMsYt0Cz3VFMZKYYKk
         ha2CNyLZSqhFAeOSh7V7EjGiLjxxPHPxxifaEsKb30En0PvFM8D4QGyIRt2PEmwhpKd4
         oSVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771203750; x=1771808550;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0uUVQPbhvB6NSi3mbkZ1qXyVTFOD4aa4pfphYcfbKPU=;
        b=S00hCHv4IAzUL0C+SjTn2CjjYtiCPuTeEUS+SeRKcJGRDZPbMfRLNg7qc3aj4GHCt4
         9N8XzhbBxiSAvYYZCaC8fqRTJ5ojhaYyKifHKmWeVhKFM7K/lF/ByvqQ1DwXTJeM/Cs1
         MGQg1wEU60frjE0ZXt7Ebu/yHfw05fVz2hpwNeDH70qO96BrVGvv+yBa07Dx+3RCnLJC
         iQJKjK0geT6qFDblEx4512HGlU+JnfWaKgazDLqPBAOmjUtfZygT+reOYUEWK6/E6LRD
         /oWCcEGGgO+AjN/7B6eTWMYaFJY1ZcTm+KvpT6HvwSkbx2QVqBaqIPpf1SY0L+pdvwQ7
         oMFA==
X-Forwarded-Encrypted: i=1; AJvYcCV/HVFILXSHRk5Njppj/5GvCJHtfnL5MntGnLcGDGQdiWnVpfyqzE9rOg+ZOFnSmWJLJX6lnfIZ7yPEuvZdOw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyB7qz6QefbxVa3OrXbZHdgCP3MU2zLK6olJc+B8Lhmjp2rFk2H
	x3duy/m1pO/XbaH6Hwf6OdqBhSghco0K3vE8cmLdCG4CL7Q9X42BQoER
X-Gm-Gg: AZuq6aKOysv+QUEy5XoP3jGczshMMogWZefOZ8sfmiyRHKRVo0u+PtLBWfdfscE5JdO
	rZ4X8kyOGHb/fbWrIGV7Pkt9U87B6KV38JSJWBysOCDkYB5RezhBtStnci9QloFZ+aDwU6YRU4j
	t7nShq6dZxFisSrOnmWwgw3aagfAtF/C72OlpTLsYl7UtcWjc3xNmUEkB7xFvbYv6gBNhPuTFKB
	VkQ7e/3ioFBqRuvxBoJ70N/5R+unOdL+FO/OnDQgAJdCvDnpePtEGKY6KMY/IkVj72QWQmpl4jb
	KfE4Go+AV3b9pGoBjgzBhzocxUXOcH3vjvPNCZaG3RmMIGpUwsoAbeWegdRegjhS1X5JkaYTAfk
	ouzdMJ36Y1SZy0EIHKAiKzTZgy6xV2JURobeqEVEd/JsbOCq/+MIs3o7FLYzJpXjBNul5a7FfRw
	rAYOsqWFFE5x7JMpJGF7f2i97MmWM3uCuRxNFyiEnYFyAVLzh4jv/ZMivKPQIEmqLULA==
X-Received: by 2002:a05:701b:418a:10b0:127:3b1b:c816 with SMTP id a92af1059eb24-1273b1bc8e9mr3216897c88.20.1771203749797;
        Sun, 15 Feb 2026 17:02:29 -0800 (PST)
Received: from localhost.localdomain ([2804:14c:485:4ffb:cd7:e7e8:c526:2074])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-12742cadb25sm9158160c88.10.2026.02.15.17.02.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Feb 2026 17:02:29 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: jonas@kwiboo.se,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v5 1/4] dt-bindings: soc: rockchip: grf: Add RV1103B compatibles
Date: Sun, 15 Feb 2026 22:02:16 -0300
Message-Id: <20260216010219.2131484-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260215_170231_607412_44367B8C 
X-CRM114-Status: UNSURE (   7.43  )
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

From: Fabio Estevam <festevam@nabladev.com>

Add the PMU GRF and IOC compatible strings for the RV1103B SoC.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
Changes since v4:
- None.

 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 0b8e3294c83e..2cc43742b8e3 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -63,6 +63,7 @@ properties:
               - rockchip,rk3588-vo0-grf
               - rockchip,rk3588-vo1-grf
               - rockchip,rk3588-vop-grf
+              - rockchip,rv1103b-ioc
               - rockchip,rv1108-usbgrf
           - const: syscon
       - items:
@@ -98,6 +99,7 @@ properties:
               - rockchip,rk3576-pmu0-grf
               - rockchip,rk3576-usb2phy-grf
               - rockchip,rk3588-usb2phy-grf
+              - rockchip,rv1103b-pmu-grf
               - rockchip,rv1108-grf
               - rockchip,rv1108-pmugrf
               - rockchip,rv1126-grf
@@ -231,6 +233,7 @@ allOf:
               - rockchip,rk3036-grf
               - rockchip,rk3308-grf
               - rockchip,rk3368-pmugrf
+              - rockchip,rv1103b-pmu-grf
 
     then:
       properties:
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
