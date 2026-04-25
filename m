Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B842FF8850
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Apr 2026 03:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uBDLVZMsxScxnGQ6agN/YwYdbU0ln+EeC8JfzRkjEOQ=; b=vedcTpVdmBIbjA
	/ivH0zoKYCzppFX1DmCqrlk+UEFmn99hHKclfwsoj/25YY8Z/NCkqnXjK90i/eS22Ch4KLLBKRke9
	rymER5y7YIheJv6MznQvcrfSr5nWZNpc8ZrdywkZi4G/UvPbgJqsgpP8uz/vMJCZtfXGylEf7UzaD
	eLVLepm1iLs/ESIWCs3JGNvLQwrgmDrU0rL5EMc60Vv8du+pZgGkE8gf0gCzDz5tUVbBoiBPXT0N3
	qtepfKwtXpLeRojzPJUmafOFcdaCWo8Minhr8Xd6vWsnT/EniEwsHCBnSF/0aRiU1tWdcy9KTlJ48
	rtpHm/UpPp06sqWQUsoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGTPQ-0000000E1bR-2Htv;
	Sat, 25 Apr 2026 03:10:20 +0000
Received: from mail-dy1-x1364.google.com ([2607:f8b0:4864:20::1364])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGTPO-0000000E1aU-1bfZ
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Apr 2026 03:10:19 +0000
Received: by mail-dy1-x1364.google.com with SMTP id 5a478bee46e88-2dee127b3c5so12160574eec.1
        for <linux-rockchip@lists.infradead.org>; Fri, 24 Apr 2026 20:10:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1777086618; x=1777691418; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qyy2EUSFHuUvP8vn408rgcFPQdBTOKcJ9K4PyZHCKk0=;
        b=JQgNipXkYhobsKq6XBO0RHxl+DeUE/p90ed+vppeYcMKJdxm8dgf7ipIxdSoU+CWO1
         FxpzC2BiYrOb2uCzaaNXaYGFK88N5zG0xNC24upM9HnXTqmr5W5n4+AihNYpU4Sd9eHA
         zyMca7xP0d/hFl7ejRAtnuP9qBGRxydkVSsHAzPa75XInErzuJXYwVdfo4X4G0b+CHnH
         /0oYnz2FmQe5faa8sVLEartXDAKlND8+rIylLc0EwVQqhp5xxxeaqHTUwao/WmvNPtmR
         KpqTI7nC0tW9nwRX0RYbGhZ4+rj1T/q4vAV/cPLg2DdCktJsAV00+/FvpA741/55q7L2
         ExKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777086618; x=1777691418;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Qyy2EUSFHuUvP8vn408rgcFPQdBTOKcJ9K4PyZHCKk0=;
        b=jeNIf7aKBsmK7yVytXbDBY1faBplxCAoDqnjD9qes2V+qvEAyIRFTcuq08FVxKvvyz
         pP6UbIJ4nKneLeBahRo6FCgWUNzSuld/CVXDELFLjBXTXONTj+HROllIQUEZm/mP3pAw
         DghU9ITAWO2ouSPBKNordnya4MP9JCVmKFRtLx18JBuedPnJIJzEk4a+lMgzXnLKH72x
         CuDLM/pkhlqiKn/aQc7WiePPHmvNS1dX7GKYER5DcR+oYhXJFn0lwv8SIA582OTzTO96
         7V/sb1JEVrb0Y2zynRML6vZ71ULZYZFHU//6pBM+rtMaH79G90FqvEioXA/p8f1UyITl
         gdVA==
X-Forwarded-Encrypted: i=1; AFNElJ+RFJqqVWOlpoDUk1HYmItCnYNoDcWEXYPHMD7ks/Zo+m2w7WYZ3QSypT7PoqX7oLiaM27JbY89KOmLg0HLXg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxcD0NvEaG5KGWIqzmQ+dXYgUfl79mPAJXNX/YJmMzFunCZqeof
	uOZUJjq3HrTbrqx9l17T0+INlPZEUOlifeS+geXSbhCo5pt5H1xUYjQvlKeS6ioGjj4VJBkLQyV
	Lt85NYWiTtKkSem22neD9lBg2XojBGnaee7Yj
X-Gm-Gg: AeBDietz+qH/mFaWVNvTYT23CRBzzEiCWkbBzIxuIWwI86BRoILaXJ4g6X52D+OlKX3
	GPv0uUUAJtq9PVHSnu7lUpaVNk7k9/sczSVKaOGpIG8PLFfSwBJT3ECd53YfB7NF5I8vUyc7cgf
	Asa/KmulmUxKRze8c0+rA2pKqzPCuB8udtMP3m9zYG/iSX9YPrPGnQrqA962CClaRUVOkW3Dj9U
	u3gcoqsfI0OXrTnKUKOABX9PgwRkzwzGgwkPLBeMONgHCen7fOXW/G4RjJF3ruz5Af5NncPYnFd
	kLYA8rgTkBoe8XiQRXKD2E+91+0OvUaTYaeY8Hj1CLqQ1OHSv9sAUw0bgd5mHZS00ZEWiVOl2Dq
	Dhla4ZnwSpoZq0qtRsBq79l2M7ImiR6eFKPnxSEcokrgVctYwIZP0zEo=
X-Received: by 2002:a05:7301:578e:b0:2d9:6373:ad1d with SMTP id 5a478bee46e88-2e478c1f833mr20475128eec.20.1777086617724;
        Fri, 24 Apr 2026 20:10:17 -0700 (PDT)
Received: from ryac.ausil.us (207-179-239-100.mtco.net. [207.179.239.100])
        by smtp-relay.gmail.com with ESMTPS id 5a478bee46e88-2e53a3ae691sm1728646eec.11.2026.04.24.20.10.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Apr 2026 20:10:17 -0700 (PDT)
X-Relaying-Domain: ausil.us
From: Dennis Gilmore <dennis@ausil.us>
To: Heiko Stuebner <heiko@sntech.de>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maxime Ripard <mripard@kernel.org>,
	Alexey Charkov <alchark@gmail.com>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	Dennis Gilmore <dennis@ausil.us>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v8 1/6] dt-bindings: arm: rockchip: Add Orange Pi 5 Pro
Date: Fri, 24 Apr 2026 22:10:06 -0500
Message-ID: <20260425031011.2529364-2-dennis@ausil.us>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260425031011.2529364-1-dennis@ausil.us>
References: <20260425031011.2529364-1-dennis@ausil.us>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260424_201018_420456_17D0164D 
X-CRM114-Status: UNSURE (   6.97  )
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

Add compatible string for the Orange Pi 5 Pro.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Dennis Gilmore <dennis@ausil.us>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ae77ded9fe47..3c6b83a84463 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1320,6 +1320,7 @@ properties:
         items:
           - enum:
               - xunlong,orangepi-5
+              - xunlong,orangepi-5-pro
               - xunlong,orangepi-5b
           - const: rockchip,rk3588s
 
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
