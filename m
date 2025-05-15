Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7C03C2D0CD
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 May 2025 22:04:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ntXeCcdGoW2u19joqXmMReRtFOo2YjugxrHlMcu6k2o=; b=GrEftPzNKkrPQj
	uYBB3O4Tmc0g7XJQ+r7Ijyps5VcTjXaDTYzYtms+SjXR4aX7Mww9sO6JVMNmZLNLpUPbJmE0YSJH5
	cOQCBIzJ0i0Zcx/ixTM9x7L2iiF9FLxA5zan5kcleRRxbcG2/0FgoKWf/12FR2Pai1cXWBXVy4NT9
	HsteoEMtMgIoZxJSi9O0QtO8JyyAKaIjFb/WCPICkitMy5cEVmm7hYGH/g8WcREtKvzjVIBqrr7p+
	tzpqGXn1WwsMFbIIzKnSThHLhnvQDGaH/m4NzU+/qbapXZLDScXixAexh81QoW6EUtkMOezUhTurf
	HkBiw5qCIn1VPoz6mSfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFggO-00000001wgl-3KwG;
	Thu, 15 May 2025 22:04:04 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFggL-00000001wfy-2sfn
	for linux-rockchip@lists.infradead.org;
	Thu, 15 May 2025 22:04:03 +0000
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-740b3a18e26so1643191b3a.2
        for <linux-rockchip@lists.infradead.org>; Thu, 15 May 2025 15:04:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747346640; x=1747951440; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CLZVl59i+cLGSuNYnHKizgt3XCFfJAE/Fk11Cib4KvY=;
        b=cqWCH2v9fUbO58sXzNBuDshDqC32v8ds4Q1pAZhS7sei74xCQoBPODSr9By8whZKEz
         UOJ8aMYjTSdY6jgi9TBzLM+N5tqRmAOrCKgFp3qZ/guD5rxsF+3yN90ZythXLY60NI1i
         vBJHd4DYkhi0WrW4xgIh8/5FQkD+/EKmFLPPjCjqJWDdRFkSmvOa0OiG20yFdTsJOjaX
         oGFYxYClJHfUJbm4aUpZAwB4BUnhLq8grKeRHqaSnIVWZHFi/r8Qh8gwJF7REbeXCe+s
         8trOTJs+Vk2WKh/1jWxOrWvFMcWf+aTCV9zdDDKlZof5+vZ9ewns6DreEA7qPDmbx3Yo
         0TUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747346640; x=1747951440;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CLZVl59i+cLGSuNYnHKizgt3XCFfJAE/Fk11Cib4KvY=;
        b=pLE9e25PowmXJF36Tt/njbl1zSnDj51wcgFhBtArgivvqEOIaMlG59cF7uW4im9dOR
         KCihNamcAXDpQcCJI4h+wZ9CA5/teK94rLDMpwvSS7LsS4J+/vDX/DJQnj6fBaPTYa9D
         NU3QbZF0T8mEc7hPKCqyrlDQZd1JEDebW/R0/bcgdFlwt41diS9eRuAKfvdMbhpp5cJ5
         eeZ2wGrgkGZezNle0nOG3wwGH5bMI4HB7eTghlQz1RZOpRI8WT60ul8J4aSvgyJ5T/op
         geQoHKET1y5+HniuEqrKwRA5mifNbQy5S27VzQ0Ymoc48r1dm9nVUHov07ny/acxua2o
         GuYg==
X-Forwarded-Encrypted: i=1; AJvYcCXalVm4n2zA1rp35pQAPxnMTzgDymqXx1bDMOawEAGCBWlTklleeno4CwRfzNx6WkNAWDOxEga98nSbxiE11g==@lists.infradead.org
X-Gm-Message-State: AOJu0YyEosRmpYhtUxSPfMHnN/Qjt96IRkKK9UyEARxrppV5SV+dYbbE
	ATRqijhvYSE1CWl3uTQwF1dKi8NsJNV8nUnp77DTRwfMNCsE8hRykaam
X-Gm-Gg: ASbGncvFrlEeq2D35nOzwj4wDrw3KiBox6WLbk4waixAaTaLYv/OmKsErZwOU5PAFOo
	HXR9wXfz/OK3l9mAIZ7Y5TFhE60SCMxJbJJsNW1O/3ugZ8li/0idp9ua5lm2MHKVVLpa6mwF5+q
	YGDWFnIwfw1YGJHECHqpqj2JA6Bgp8SwMm5aHBT/fDFFu/xklNaOkxP2bRWRvdAzqAvCukFxvDR
	KX/tA5jDaoriPGC39Wh8D4EUP7Rq5rbzFDpYP1X7ymLDHW7gCIgh0btz9Wx1/+f8yXuwebcI51X
	jzthd6sTxze/ul0WbRPx3/ckmlEi7IokuAKDYTQFTpMdP6hpigjrkqcMUqGwBjm0bQ==
X-Google-Smtp-Source: AGHT+IFBtph9fv+7fKDEC6nUWw7uIsIzzIOwz1cYir/tCyC84UZwVDLtqukgWlfF7ed346exY4Vk/g==
X-Received: by 2002:a05:6a00:21c3:b0:73e:10ea:b1e9 with SMTP id d2e1a72fcca58-742a979672dmr1193531b3a.6.1747346640178;
        Thu, 15 May 2025 15:04:00 -0700 (PDT)
Received: from localhost.localdomain ([50.46.184.91])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-742a986d8d7sm284352b3a.130.2025.05.15.15.03.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 May 2025 15:03:59 -0700 (PDT)
From: Joseph Kogut <joseph.kogut@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Steve deRosier <derosier@cal-sierra.com>,
	Joseph Kogut <joseph.kogut@gmail.com>
Subject: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add Radxa CM5 IO board
Date: Thu, 15 May 2025 15:00:33 -0700
Message-ID: <20250515220034.393303-1-joseph.kogut@gmail.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250515_150401_725112_E3EA0546 
X-CRM114-Status: UNSURE (   8.42  )
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

Add device tree binding for the Radxa CM5 IO board.

This board is based on the rk3588s.

Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 650fb833d96e..d9ca282c0b4f 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -840,6 +840,13 @@ properties:
           - const: radxa,cm3
           - const: rockchip,rk3566
 
+      - description: Radxa Compute Module 5 (CM5)
+        items:
+          - enum:
+            - radxa,cm5-io
+          - const: radxa,cm5
+          - const: rockchip,rk3588s
+
       - description: Radxa CM3 Industrial
         items:
           - enum:

base-commit: c94d59a126cb9a8d1f71e3e044363d654dcd7af8
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
