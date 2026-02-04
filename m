Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF899E9539D
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Feb 2026 13:27:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D8vFp5NiyQS1BhnB1vJUdtFKQtAx3iQpMgB4C9RIyxY=; b=3WHwtdpXK/K//J
	PYwm7Ihy/7BvsA+7s/6f23+Cz/rpNASnw+8I3eE7hkHRjCqtKEwtOBc165vLJNWD1YNkJX2VPX19Q
	y4Ail8KIMqMxfbKRZbxruw3w3U10TgE8o19j8mx+6tcIEIwFb5bE2TNJdFqSoyo7smrIYXTxRthna
	O7CyYBqJATIUJckoX0hXT1UbSZxjfujVxnwyHCd8PYsyskn/5/4C4/OHzSp/Jv5De04m8XbwVav9F
	O6/RVCbxTiZ5OIBH0q6JEd7PrSbMZeHEiQCb/gKl9c/q9APdHaWI4r0oUGkOH/hPxO+6fXyiLWPFZ
	jSOqRX7/ubd43F2eJkcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vncuc-00000008Vaz-39Gl;
	Wed, 04 Feb 2026 13:27:18 +0000
Received: from mail-pg1-x529.google.com ([2607:f8b0:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vncuZ-00000008VXa-1ah6
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Feb 2026 13:27:17 +0000
Received: by mail-pg1-x529.google.com with SMTP id 41be03b00d2f7-c06cb8004e8so2793352a12.0
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Feb 2026 05:27:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770211634; x=1770816434; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vw4pY4dR7kSA9L7fEwOm42xTHQF2Ha5YuN0sTkWD41Y=;
        b=GDMbUwp69UYrglF81cciYetxXzvYSuCpwl+rQEUDF5XDe9eNB4xKNGlJHMhBROjGtU
         8jh1Zu7djm380+0qTO+xG9svyfBjWxx6yL8nN8Z8MNeg+ALGpnG4D8ystJhYsV58gumo
         3qM2yVRW9Dzd/mborb8JtGhf2C5RhXP1hcDsEv/XXWkEGuBJTbwWqamhWRkZredOl2m4
         Lc/U4XA7z4XBIoURNeLgphJD8tTFs3J/WKV8v3dl9P6mfdZB012NAUwWPDSnXQVD+QHu
         CxCz12EsI/XrbM1ztpPShF99tUxm0lQsn3AiNKJRlYXLvQLinN3QCj623m7yM7tf5c9O
         zLPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770211634; x=1770816434;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Vw4pY4dR7kSA9L7fEwOm42xTHQF2Ha5YuN0sTkWD41Y=;
        b=o0OansWbcgzh12f7nJYu47ijrH9UnyFKRJRfeARD3uwLJvKlSk0gYR6BLBF9g4MSQz
         WhQIpRD1MBXA2S6Gb7Hf4puMEwHFvF47283G3pf7etfJP2RVK8mnWXoqFX7SzpRZjGCt
         KMourOkqGQMICwcxVtqbD74kcEyMQfByCBmkq1b9BAVSZagkWNWtWCRPQHRD8hHWvWdA
         qVwWtmmpTzVr1szuu7WtbY7UBtQc1YQkq5RSROFbHHmjtm3mvdipKMk+QjKLadyiNz0X
         yQwnEk01Lh3Xhaigbclw3rdptI0aBCMbn1pTai9Pfr36Fq/cZ4AsnRfcacZW5Le/LueT
         GjFQ==
X-Forwarded-Encrypted: i=1; AJvYcCX78jSpL69kshI3xqSQa8Gx3SD498JMmP/d/rsWeSRhER2p5qVqbKLrNtBZmU7GTKLBpMDSSrk6x3I8sFtiew==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx8+5iLRk/AvHtwC39T58AEtgA6dceCCvK4+XI2xZ9ItEsPM5MG
	WOANw7etvxHNq/dtE4hspsvYXUt5IbylPUlayqm7u/qvD+wsy6VbwoVN54hGy9uz
X-Gm-Gg: AZuq6aL+3XTL148U/igampVNIMVFlVM4bRpReDksAnjxltHLOq+rhUB782+QczM0SK2
	DwOTrjhslv+tne2ogLbOvngVDkfLduEhJCsqaYf9rd25jrSJPSElqjFJOhF7xa+PdAdjmyi8c99
	bgDPrO8IGse6YZFjkh9m0m2QIH4Gx8ClIbBB9H/FUnVsbamUBzVYJk6/h7QIDSbDLpeK0jsiqaG
	9YBUBop5OTg7bI46yF4Ql1P54onEXAPJbsGSYjRTbr4hhoUxJdPwS4R+9EWNfpdgvf28efap7cv
	CMRDUdjr9TCg4Qev6ryMbC1lwpEwh2ulbPwSMPJZ/jkAJIgUA5a+i7VGcOUTo7F6l52fwJRCJZy
	rTeLzKaccrg8ackpDZkm0ZZ/jnRQMRX2kcvqu26eKmYzBs1jM5Icm5LazfTZoBP5OYRBBswlct2
	28xerB2duqjsVgnQsY8mw=
X-Received: by 2002:a17:90b:57c5:b0:353:38c8:b612 with SMTP id 98e67ed59e1d1-354870db3d6mr2643119a91.12.1770211634292;
        Wed, 04 Feb 2026 05:27:14 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a52:d2b1::1004])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35487726e6bsm875763a91.6.2026.02.04.05.27.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Feb 2026 05:27:13 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	alchark@gmail.com,
	dsimic@manjaro.org,
	andyshrk@163.com,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH v4 2/3] dt-bindings: arm: rockchip: Add OneThing Edge Cube series
Date: Wed,  4 Feb 2026 21:26:55 +0800
Message-ID: <20260204132700.329894-3-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260204132700.329894-1-jerrysteve1101@gmail.com>
References: <20260204132700.329894-1-jerrysteve1101@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_052715_424202_7B58A031 
X-CRM114-Status: UNSURE (   8.09  )
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

Add devicetree binding for the OneThing OEC and OEC-turbo

The OneThing Edge Cube (OEC) series features the RK3566 SoC, 8GB
eMMC storage, and supports one SATA interface, one Gigabit Ethernet
port, and one USB 3.0 port.
Among the lineup, the standard OEC model comes with 2GB of RAM, while
the OEC-turbo features 4GB of RAM; The rest of the specifications are
identical.

The OneThing Edge Cube series (shipping with the vendor firmware) is
originally designed as a PCDN (P2P Content Delivery Network) device.

Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ae77ded9fe47..292fa0bbec93 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -813,6 +813,11 @@ properties:
           - const: openailab,eaidk-610
           - const: rockchip,rk3399
 
+      - description: OneThing Edge Cube series
+        items:
+          - const: onething,edge-cube
+          - const: rockchip,rk3566
+
       - description: Xunlong Orange Pi RK3399 board
         items:
           - const: xunlong,rk3399-orangepi
-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
