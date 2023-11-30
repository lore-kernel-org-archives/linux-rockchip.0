Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDCF6C10DC2
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Nov 2023 15:56:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hx5oqK0v8lZinpIPq2z4Fg0aw5v346zyihbPAYZD0yM=; b=bz4VY/ccTywasR
	VJ59Vc6NwO8Wl5TBXYcfx6qpb8D80H13kG2nBaqeqGmXFw9G+F+fTduoPFSSLpa0CwcEJW+uD07sy
	phN2xFG83eJAKE+niwvXNUY3WgJvqKJgotZcdQy5CxXx7thHUeDko2BZk1FpSelePwTAyR57q/xkj
	dC1ntrz+ZaFuiV/I3Mws/adBXa8FmE7UaBR9jDYvM2QE/4+bVUAXL5wP6Ru0EtHlxzjwYsF/rwrgX
	b0Q/KfzVpxtNeadYPTBHLkO4ami2xhpI3PsQFZiy9HAzyCnX/8qfE0KNKqgvfqWpBtcLq2QrFW9Kz
	aYEjHoSPig0xS3sAa4Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8jPF-00BGrs-2v;
	Thu, 30 Nov 2023 15:56:49 +0000
Received: from mail-ot1-x331.google.com ([2607:f8b0:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8jPA-00BGlS-2w
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Nov 2023 15:56:46 +0000
Received: by mail-ot1-x331.google.com with SMTP id 46e09a7af769-6d84ddd642fso642612a34.0
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Nov 2023 07:56:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701359801; x=1701964601; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0sWTB9BvFGB6WA60MMINgbzw8nAjuQT9CcbxWGyQD3o=;
        b=EC2eFujJ7qH/D/tnt7Bt0iOAEQ2UE1SdcxNFswntXt/pHtRcEeMzQUUPovFQpAdYlD
         rBttEMPlaIilsTT6YLlnjYJ1zjwM2Sel4J86+ctBuonX9jjOEcDee3xD+cx2WbVCuIfl
         FNXpAMPtCdDTfsSPAuy420vttI5BnsI6tAVzZQWRC6tjI8Jvn5Cj3XntGDW5fNZrl+Ao
         NVzSVabug9JQkg5+TG4WKuZ9CAVSqHZIBb7fzmAMJ1yfKnlMssTF8MgvbavMhn41cOuP
         fmzoSQxp96BAsIXBeol2nAUrbRtrdJ/TcfHf1skLnh1dowjKpQ+b5XD8xAV+P66cmMZl
         x8eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701359801; x=1701964601;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0sWTB9BvFGB6WA60MMINgbzw8nAjuQT9CcbxWGyQD3o=;
        b=CQ24UiemTEhSi6q4eXEUU0jzGFCNVLPP2A6FyJdOQjhV+xsPiGQ0IPKZYoNs/efPLJ
         iAVEzkLMCNN+vPB0Jmk6RboDZ4a0hrQAxl7C8YKnwM2bVkhfMBETZG34yMrpnWXzWYxo
         VfWexVUR5ZM5yxq3DBp+NusBGYA9jigxFQ8NFKuktC4PLckEiTkgyTMymCFcyaCAm0LW
         fJy94+na3S+2juxXS05nJIjjD1Me1Zw3g/f1AszlhM0Czl8q858nVfFhi6d5vGXAW5EA
         J7S7dPVpaxyU8xGWfY4YC2B7d0zZdDsZ6+sfBZTCOtBUG3wv74XiU6sUTGURd1yG48Qr
         OZyg==
X-Gm-Message-State: AOJu0YyqFXXbU2+6KgGYplZJY6AXeCY/Tk1oPCOyO3LjM81CPWftFpxi
	ynG/S3/cyQSBp47YvmTX73kN8KB0WgA=
X-Google-Smtp-Source: AGHT+IGhpeCC7WDuUm5wiohpgqJLZBDERA+sjaUEm5YoAWSiC2xyMiO8MrsIn2UVXz1odmuZv6XxQg==
X-Received: by 2002:a05:6830:16d9:b0:6d8:57d9:23cd with SMTP id l25-20020a05683016d900b006d857d923cdmr4029693otr.22.1701359801533;
        Thu, 30 Nov 2023 07:56:41 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id n25-20020a9d6f19000000b006d7ff27a47esm187852otq.77.2023.11.30.07.56.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 07:56:41 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	javierm@redhat.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 8/9] dt-bindings: arm: rockchip: Add Powkiddy X55
Date: Thu, 30 Nov 2023 09:56:23 -0600
Message-Id: <20231130155624.405575-9-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231130155624.405575-1-macroalpha82@gmail.com>
References: <20231130155624.405575-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_075644_974100_B8862056 
X-CRM114-Status: UNSURE (   9.42  )
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

From: Chris Morgan <macromorgan@hotmail.com>

The Powkiddy RK2023 is a handheld gaming device made by Powkiddy and
powered by the Rockchip RK3566 SoC. This device is somewhat similar
to the existing Powkiddy RK3566 devices, which have been grouped
together with a previous commit[1].

[1] https://lore.kernel.org/linux-rockchip/20231117202536.1387815-1-macroalpha82@gmail.com/T/#m4764997cfafaca22fe677200de96caa5fb8f0005

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 021a0e95ba62..5e22f247ee6e 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -681,6 +681,7 @@ properties:
           - enum:
               - powkiddy,rgb30
               - powkiddy,rk2023
+              - powkiddy,x55
           - const: rockchip,rk3566
 
       - description: Radxa Compute Module 3(CM3)
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
