Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4779CCFA04
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Nov 2025 17:17:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BZEJNrEl73xf2d6BYHD9KV3obn/yAZzdfZgRsvyrrCc=; b=X14UmWfBrEOcXx
	H6mmiOwAx54jlMdghagNs97yUHasOJ2aFxYBjR/pb0pkntEkTsPYFk2V/Z1C2+DhEPPIh+lnJ177L
	Xg+9dMBxinp5tK1+ZJiIEoG2pMwp0nONZvek2PhcHX7raST7sdePEkbFsW6GpAp3K8CjMPtrbW9n8
	34eAdQWqyirRx8PSPt/nY9Z6FtX5+0ZJu2WmIglLjVur9cy70LU20Gh/4nEkSFjjK40pm7Yv7+n9w
	oMJh5SntFRQeMyEGtmPNnFOB0POSmmG4yvCjrNJimR8OmpH+UYT0ezfxEEwmJkrEG+nxKygXQzRSZ
	uiaiLp2WooOFkyOVYz5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFyBd-0000000AOhc-2SDR;
	Mon, 03 Nov 2025 17:17:45 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFyBa-0000000AOf3-0wbO
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Nov 2025 17:17:43 +0000
Received: by mail-pf1-x443.google.com with SMTP id d2e1a72fcca58-781206cce18so5007627b3a.0
        for <linux-rockchip@lists.infradead.org>; Mon, 03 Nov 2025 09:17:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762190261; x=1762795061; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NyQp65YrshJlf/E9g4tBCluPHZ0bWpe/t0XipA0RiBk=;
        b=Bma45gJjirvmUMo1U03y5XGXnnSyMxfEwcglSzufeLtZfrLPR/Ba2QhH/h+h5rOZBW
         RwLh88GSOTDNigb0J8OeeWTOJ9UHB+V9s/hAOeCVb2sa3g5qwVtmaWD7ylSuP8dzZSSM
         2c6cPF0L9KjaONehX7gwNcaB6xyN7N+pQOr9hEHTQshtqzIH7baoqRFrGobS4iEFgYY/
         Q7W/pcMLhprKbtJUp8v/oq3U74c60PpCsb94bKlP94RFV8LUs8+Qq8pvvu3hA5rTvBwd
         l/4RqhTgEa7/ELv6i9aNvqpXHpZXbP4KXmj9xCFdqZaVOU0ONXSe1smqtbyKnuDFh+qX
         l0Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762190261; x=1762795061;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NyQp65YrshJlf/E9g4tBCluPHZ0bWpe/t0XipA0RiBk=;
        b=gw11Y/aF3eoACaoft+DzBUOwJG1GbdDRqpEdKklRBal3Z2tDL7EDT6IRSC3wU6Lcvs
         hUqputuecdYdfPmUitXnqWUZ2JDjFNIuKqSohJngijkYeB26OAK4LRbHWtv/jX0/Wj9w
         0MjDvZrZpcDkQBvOssuDv8nKzpOnvQST1C5B0z6/IzR+UdSiRTfksHqrppet8vHrFr79
         KLT9JvR7dfQQEwlxOqsZSIEflezO4fXIs4lErpTHz85GMfFIcy/Vw6NFryu9R/5LHdsH
         wNbI8viZGFjmtGpUlI10u0MzX1wHEuiparXOOQSMim4TGeRCYbv3xXnCv0TQr43CZYxJ
         /2UA==
X-Forwarded-Encrypted: i=1; AJvYcCXFdw3YFyRBz62tX1+fHcEqj1JpJ6S1s0PQmJ3vigPueUHLX/nAqgC0niFadLUVd0E0u5JoO10VWUnuAdPbOA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwLnkRgSeXRxAz3TK87OuIC6qW210A0D505af156qRKHPTzTA17
	hvrHPgVwNfyphL8i4q73wstdNAyWOU6xIo/j5OBRu+bDKs8jA9MqgFGX
X-Gm-Gg: ASbGncvHk54j0LHhS9C6JNctzR5NYKFOFyMDvsMBJ93c1darMb7LkfuOSkIs+DG4J63
	YN40lXJd60DatUxSHR/wGWMFZHv9C1R6GR6CHs6IqLLGimbRQHH2MiUkORAhWtotGwKpRBYj0a7
	L9+fwzDezfG/nDn6n34DOVeJYA/lk8MzD+A0rJSdemg+sNHlOPDc7P2LFshOYHuij5ncSrOoTD+
	CYeZCXcQrWAH/AYwv/65oZSslrtfrQOBXB4z/rYKgIi0u7xhxjQ3vb/wltbeds4rLdBFr5bQZqh
	wLhPXitnaXHqSGvcVzdD3K5ENpMr7yGqCAfTqH6CQRUs8KvdpKpl+l6tjckdnFDI8Z2fgOpnA9L
	tDOWyrKy/mOWA9Eti5XAzwYC6iHvrsqpCwf9UQUHz5S+1HIeOIWrt0Y0jQNy1s3mOXMfKgTYPGv
	C+0l6aLIkYFA==
X-Google-Smtp-Source: AGHT+IG2SBCsPp3obcuh2HPn9F1zioqp77l2USqTslrv2MAJmfMr3FJvfEFhjKUR1CAermd0xiOHng==
X-Received: by 2002:a05:6a00:2e93:b0:7aa:a597:6881 with SMTP id d2e1a72fcca58-7acbf6ab4ecmr204256b3a.4.1762190261426;
        Mon, 03 Nov 2025 09:17:41 -0800 (PST)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a7db28d3fbsm12148112b3a.43.2025.11.03.09.17.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 09:17:40 -0800 (PST)
From: Coia Prant <coiaprant@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH v5 2/3] dt-bindings: arm: rockchip: Add 9Tripod X3568 series
Date: Tue,  4 Nov 2025 01:17:01 +0800
Message-ID: <20251103171702.1518730-3-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251103171702.1518730-1-coiaprant@gmail.com>
References: <20251103171702.1518730-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_091742_265725_E55AA9BB 
X-CRM114-Status: UNSURE (   7.79  )
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

This documents 9Tripod X3568 v4 which is a SBC based on RK3568 SoC.

Link: http://www.9tripod.com/showpro.php?id=117
Link: https://appletsapi.52solution.com/media/X3568V4%E5%BC%80%E5%8F%91%E6%9D%BF%E7%A1%AC%E4%BB%B6%E6%89%8B%E5%86%8C.pdf

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 6aceaa8ac..9b9b3d2c0 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -25,6 +25,12 @@ properties:
           - const: vamrs,rock960
           - const: rockchip,rk3399
 
+      - description: 9Tripod X3568 series board
+        items:
+          - enum:
+              - 9tripod,x3568-v4
+          - const: rockchip,rk3568
+
       - description: Amarula Vyasa RK3288
         items:
           - const: amarula,vyasa-rk3288
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
