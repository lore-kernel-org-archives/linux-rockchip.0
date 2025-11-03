Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57564CCF9F8
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Nov 2025 17:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fItE/SG1b6M4DgpIq5r3+YSItoWb/XJtGic6POWta+I=; b=mMLGMxO8oaEVVj
	BY6vZZdDe6kHTl3dEz817UnfyZPTbpKeT+/R4YC5FqtOZfaPY4J2rbjyo/VVKNiH/WFtZCisxl/wP
	Fy4G1d+FxiYeR1GQeeIAeSMCWCTcRhsVOeVlWgT/tbl9FHaCimVv857ekVtV8tSvgVp7gIByQk7M0
	9uWCuI+4pvoxY6/cFH5BGZ7ws/k9EigMnXwC1tOSUWJ7rAX/Wxk7nwrpQ75CGR7nrJ3u50ZRM8Mev
	lHkLpj9Qis+K7La9a4+zhXJA5mKJil9HrFr99dUruZkGGoDcL9CJ99GDc41DBoSEJK8OlaQBaYz0T
	MtwSZEDwVA63c/VDeiGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFyBX-0000000AOd4-1Tp8;
	Mon, 03 Nov 2025 17:17:39 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFyBV-0000000AObX-0V9q
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Nov 2025 17:17:38 +0000
Received: by mail-pf1-x444.google.com with SMTP id d2e1a72fcca58-7a9c64dfa8aso1516168b3a.3
        for <linux-rockchip@lists.infradead.org>; Mon, 03 Nov 2025 09:17:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762190256; x=1762795056; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bPWqT9ltZKPbWWhVTqxcM6qSbxQc4UppEkvUs5jJNuY=;
        b=Vwxc5JrOL57uCLlonhTjvNO9mkYDBK8APboW3N0u2kGyq8YTVxYdIqoJplHZZ4EWsh
         vrAoeazre/1EJ0BT2RxejZCExL3eRacqk4wA3YXBg0btNadDWX2rFkIcZuzRufaBAZqh
         4aNg6/FSIvlYgxraqUTVifRvRbZbiBWijBL2oLS/zUw+jSsbC1Olr+7ACLOmWsDWwHZH
         3vk7xKQ4GzfD0S/r0RyxELQv81pLov5BN9dk/FpxlB9lSnpScvgSoyyYDDyvtztWL6s3
         MXFhQB1Z4Mr2B9UZ43AmhLNSJR+FxTpkYweCVnl+dEajHi7dSTsLbWqAXm4m8qFeplHq
         qdfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762190256; x=1762795056;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bPWqT9ltZKPbWWhVTqxcM6qSbxQc4UppEkvUs5jJNuY=;
        b=ph5ceACGP9Ghec3cDHc5S5WhWKA8lyuO+kgYEe9HukQgV3gQyAdtkAg25i9GFqgL7D
         YBdBgh7pB/f2FPYLEk2JIhWtyxm+AiiL23t0siKMXst1YlvY39V0qLvHQHMTeKzaGQUA
         6cg25GjG8eg6uIghZmGWp+YxST5rD1W7ygS1WmeT1M3MaU5ZInDEqW5iM+BSviT4PWnC
         Ib2I+SluOz+0eSLHnQnCIBV2g0zgKh8LusnwgACgfgQj7i5SaYLoaCh13G1T2kuTTn9I
         efFWh8h/bIF9Vdx6N+vC/V6JFdzKRSrD7jo0KN/dHS3KcGu7ioraT2hCR9nWqcg+he1b
         sxoQ==
X-Forwarded-Encrypted: i=1; AJvYcCWMQBVGh+Da8CwV/mNO4ylPXiMiK/VDUhcaMvHC/8DHApDMCSiXj/TYVjyiMXJU+CGNpCuHPAMrJF6fKskdDA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy2W+rAZcWUpKnLzCTAYSoh3sZtiYwPU83vZV6wSDb6lOGf6G0G
	bO2AgFhbRAxmbXUvyzrqRJCvWy6cYnZI7hvAWIZAQHZvkgvCbfiFl0/0
X-Gm-Gg: ASbGncuPNbbkh+DSiU9CxGVdZ4II3kmpwEV5Q3mJrPIi36PK/qsFG4aetNLq+H+acEB
	WnszsexrjC+PGm1tOn6g1wppKpwSqK6MBnLmQSuDrFcnbBb20pnFfnFwrDVFjH++R5yQy8ApYDS
	ZvayZfY8FAg10NP9K784eXNPkzfa+WZ2DUQJR5nTGtl3vzPlra7VFxF+WzEiji8G3EFKL4GchVq
	LZWTEhs9yf8l763dqIP0pDd7MjbijxX+xHPLCjoCy9/cVRZ+rUtQosXtK3Cx8OxRwOx9tjsKwQc
	XRihDZyuLkEml47SpnOOFHzLiv+Q7oE18FqULEFuMsFljVrsjG7qYlACP9DoeNY2Z9o2IOAK+Ui
	+3nHzZVHgjxbwuGWQofCgOM9DOtVluWR2t8+54omxFxtqdbeq/GwFrnaUkTJd0t1iP007zLl5Vq
	bgudEG1grS5g==
X-Google-Smtp-Source: AGHT+IF/rCUTpuM1jtcm99InanDksEwGe6KOBOO9WDLmz0bycdnKff9axedjvSMnH2NA1RIHweT5UQ==
X-Received: by 2002:aa7:88d0:0:b0:781:2291:1045 with SMTP id d2e1a72fcca58-7a77737e08amr16094326b3a.8.1762190256392;
        Mon, 03 Nov 2025 09:17:36 -0800 (PST)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a7db28d3fbsm12148112b3a.43.2025.11.03.09.17.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 09:17:35 -0800 (PST)
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
Subject: [PATCH v5 1/3] dt-bindings: vendor-prefixes: Add 9Tripod
Date: Tue,  4 Nov 2025 01:17:00 +0800
Message-ID: <20251103171702.1518730-2-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251103171702.1518730-1-coiaprant@gmail.com>
References: <20251103171702.1518730-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_091737_163463_249D16F7 
X-CRM114-Status: UNSURE (   7.71  )
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

Add 9Tripod to the vendor prefixes.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index f1d188200..97b169f63 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -30,6 +30,8 @@ patternProperties:
     description: 70mai Co., Ltd.
   "^8dev,.*":
     description: 8devices, UAB
+  "^9tripod,.*":
+    description: Shenzhen 9Tripod Innovation and Development CO., LTD.
   "^abb,.*":
     description: ABB
   "^abilis,.*":
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
