Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83CE2E9E2E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Feb 2026 11:06:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2og2lIaf+Mp2eKbe52ZGt7vxOSpYo4R/CujL3UjBv78=; b=H9vH4NiWmTHxd5
	9RsjFBdyFq9zgXCRwfOXIq/2Ym8tUFl2G6vIaAgIrEGx5QxPoIz9b1NeFVVS0d3SaARiJBHKpHg/9
	txfIwbBFHEPxGD/zjjRO543hL9vBc0O9ycsNB2nqR3GMG24K6jX+D7VM/C8YVvmwPRVGmHBiTKmXq
	T61AG9LE6ZJG/2VHUwIU1wNfcij3DOrLNK1HnVP4pD5jWrb2Kh5B/mg0focF6vFmpCOU4aMK7IZeF
	CFlE+Bic3905k4H67rP3vMu4LSnXK90Zy+TZ0gvjn3Ot/kZuPgpdLvwCe3PuVhkEZDuULdSZBNpqo
	G8EIMDtNv28/Sri6ZUQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vq82t-00000000YPx-27mt;
	Wed, 11 Feb 2026 11:06:11 +0000
Received: from mail-yx1-xb12d.google.com ([2607:f8b0:4864:20::b12d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vq82q-00000000YOp-3ysW
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Feb 2026 11:06:10 +0000
Received: by mail-yx1-xb12d.google.com with SMTP id 956f58d0204a3-64ae2ce2fe1so1948715d50.1
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Feb 2026 03:06:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770807967; x=1771412767; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8q8Sj38G7lSy2PHdK39pfdrWAcnwDx01kj871muJL5o=;
        b=T9+Q/SHn74Cia9J8U6h7gwaoMPwW+/y8Epel8w+NQJyhCDC+VU9wIlHWuyc9x1C19w
         QRJ/9K3YwHNKZIJNmdOXvlrS76X9yN4xt0jpi/WKs55oyHCAxti324cgrOdFWcDklKGu
         zXwgIsrNgYnf33xcAMpG0GPEFiLpNbxiyoGIJq2i1fOlTbFSOc0Z9TfmFVON+nnterIB
         iHb2VM8/5gWWyZqx70IZiPM84bFMr0ncD5rXsjrQcp7ytWs1Zp7EyVskbb7u/5xqXQDW
         LE5ERPpWmD8L3DFPfZu3KzKUCgO9xxh8Qr3WLVP0XqtCrUmD/QHhUReIpgs8FAVDVlF1
         0R3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770807967; x=1771412767;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8q8Sj38G7lSy2PHdK39pfdrWAcnwDx01kj871muJL5o=;
        b=HTTKcsOII9h41s8TCaYu+rEGrvtC3+72URshrU1FAy91dtc0e3a7NyOaj2ZayF5RQe
         Q2Cnu+qgGzeNMipt2y4lbOZkFtDnVXsavuNZYOwwMlvnYA1N+FEPO81lSQebKYv9X2bg
         LazACqmoYi1hjfztiyICF9qNHy9L8HXFIqi/X6GOs0VKq1iCsv8B9HLi0LkD5Yi4m4Ts
         ipqNQ0vsak4Om+GkMhDK7ugpichvlEpClRJ+fJUT3KAgAdYVs71liMd4mD1YG0hhi82P
         AZlCTk/YDSG3R/UTzFGyYST7X+vThdnMSaCw2AMmNlCPop7I9U7n6XaPRzbMyvJFd8HT
         XuAw==
X-Forwarded-Encrypted: i=1; AJvYcCXqjkr9nSno0LlMCCd6OF9XXHDgsvlb9NdnIYforkQvMVQWUSxUd8d9QPNwrznpIK8hsjElUXoeUvErn3PHOg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzvscGbnJagMfoP4wLbgV81Bk7pHvZNsKCdq7KQ9OqRjXt0g3fe
	ns27QUTrJUxGtAUjNRuV+9OdF5WSHgP9l/qVgjP7MNVRy3zsPZhTZNqw
X-Gm-Gg: AZuq6aIrLcQIDoT0ZckVdSL7SIc1KYgTqw8SDf3y5rRuQRPvV8HsS23U6A590lda3Mg
	+G2n+JTmUCGsZqGPi2WvfePc0enOZPlKC95CIIgYDt5yGO9A0JwIY4tr8tHji1fdelfvQFt/rVU
	2RRv2V+SxJuKG9lX1eRGUVjWBzQZjieWG6lASfX5bodpYsb/vukwvoCwRV1PaGk5y7tp6WBifUe
	rvSMquhRYcsyRVQDVYSjlktvqNspwhXf8OHcEiRL1dmujvjbP55BNU8lthjwRymSdd4Es4imnx3
	uGQGcmnqj41EWCE5WmSdQk7i6zjTv+DGR1ZfUscT5L1Z6FDsG6mS8gBl4Q1vmGLzyNKcAS4+lS3
	5ROgOtKuzb8/zHr/xWy/VP6b+ATs7/iEjepTLD03asL+qJ3TcsvnazDHK7hiezagNgIjJJ8sWGF
	c6jWveA/RG3cYLVUlJ2H+hikROcfRgdYJ48pU=
X-Received: by 2002:a05:690e:1401:b0:64a:e234:e722 with SMTP id 956f58d0204a3-64ae234eebfmr8768217d50.39.1770807967480;
        Wed, 11 Feb 2026 03:06:07 -0800 (PST)
Received: from localhost.localdomain ([2804:14c:485:4ffb:e36d:8763:a188:5dcb])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-64afc87ff20sm1533719d50.10.2026.02.11.03.06.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 03:06:06 -0800 (PST)
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
Subject: [PATCH v4 1/4] dt-bindings: soc: rockchip: grf: Add RV1103B compatibles
Date: Wed, 11 Feb 2026 08:05:47 -0300
Message-Id: <20260211110550.580474-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_030608_997050_A5958131 
X-CRM114-Status: UNSURE (   7.52  )
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
Changes since v3:
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
