Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85815C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Apr 2022 11:53:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nBjNBOZ0WVL7MhjjBnf28ruIxKdHWge+EC26M8TCBqw=; b=EpeGK66pWV6RBs
	oKpYFvFEM9NLryna5xJDjvKgalbRW5/a+Aj5XRXpWantkHcpaVDWdoZWNuUqUKsKXAInekKOtB+hO
	MmA7/qrUdWx5MRoCbG5bKgt1Y8QWnANS/HI+N0ExpJAOZEeDAZz0Iymwvb28nfwfAy5Wpccc7JCG3
	H7KfFd8V6XawSBD0+XlRwZB8jQzVSDKrooB/M0ipSD6VD6GtZccRBSI/JyGyJoVfoSGjTAqSs5nDj
	OQHvR1Dh+36JXDdA2a7JHBXZkODJRvpHnwPAllPlNoWuH+ykt6t6oeSSLyE8xHXDDnHycNTKBxQUR
	2t4FPAYJF9avYPMoOyOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkPBm-00B1Hm-CJ; Fri, 29 Apr 2022 11:53:34 +0000
Received: from mail-qk1-x734.google.com ([2607:f8b0:4864:20::734])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkPBQ-00B157-Gg; Fri, 29 Apr 2022 11:53:13 +0000
Received: by mail-qk1-x734.google.com with SMTP id b20so3040900qkc.6;
 Fri, 29 Apr 2022 04:53:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jW8w5Kaw7/H5XCbI2kCQ16R8uTSgfLbNJXXeM0gMkvo=;
 b=RNt7zo98GfO6oQ2OvLOZidtn73jtI6KGw7Tbw7PdL1cJ0/n5ihcStj0IdxKjnP3klH
 S516ToXWBx3vo5aF9t2aEmMX9HJAkeaHyJ4bVL/Ya9gZMZquLsGppaNZnVcMVGrt7Bqr
 gcnhvgBEF3/I0N/P/TjykqoeH7Ok7Hb0Azmx6p4JUWPYTrlt/hawzbvlvpEZ3aLGK9Om
 B3jyCQIQieHzFv/inOnb+vITn6qDa0VlZRPJ/ayRCag0qkvzSiNu0v/OpanuyBabjz4I
 IV4THTJREjqC+NTWxkXG2Bg7Z7FP0QdZ7udG1HQJGkghRwAcmfeVbp6HIW9fQw3NL0Gr
 F1ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jW8w5Kaw7/H5XCbI2kCQ16R8uTSgfLbNJXXeM0gMkvo=;
 b=z+aux4R44DW+raC3F9qgju0LgyqifAs0WMUuppaW+1WquoinvGtJA+DdN9GUThyv/v
 HI21ntUdLMEIb2DUv9WkBUucM5voO2wsk3LJYPfuibtO4E4vDoMc0AEkpskSrTvzXh2N
 QPfuXkojh95777afH8+UnZbNQW9m8a3+GUWzMPOxA4ifT7+qG5lPLSdObTC3uuL/IIhN
 fSfD9gku8XdUfoymblN16DaYOt/E1awWDCm/2YZ/c/DmMW5nPAKYQ5xLtwoYdJZDJKQ4
 IOAskgffgZO+LV3fSCMC1NqO+5DdoNrWb6fHs6a/sPCmMRYr/jwpTwIBwKtxaUSNGmgn
 BMtg==
X-Gm-Message-State: AOAM531AtbRWMUcGntcmw3wDuz5lb9iX4Rv41cqWlfcRav21xNnSh0kk
 qSFNbinXE5y3nsP4uvmaxHovEW7AyikYUw==
X-Google-Smtp-Source: ABdhPJwbuQgvcFaVFG72RI4ScVNdIUw9FCOeppgEtLex90TTIiMwKskD7aNa6c7UPCidcXCwFKvbvg==
X-Received: by 2002:a37:6902:0:b0:606:853:fe50 with SMTP id
 e2-20020a376902000000b006060853fe50mr22197916qkc.751.1651233189959; 
 Fri, 29 Apr 2022 04:53:09 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 123-20020a370c81000000b0069fa408fdb7sm1382505qkm.24.2022.04.29.04.53.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Apr 2022 04:53:09 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 2/7] dt-bindings: arm: rockchip: Add Pine64 SoQuartz SoM
Date: Fri, 29 Apr 2022 07:52:47 -0400
Message-Id: <20220429115252.2360496-3-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220429115252.2360496-1-pgwipeout@gmail.com>
References: <20220429115252.2360496-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220429_045312_586846_B3498697 
X-CRM114-Status: GOOD (  10.35  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The SoQuartz system on module is designed to be pin compatible with the
RPi CM4 SoM. It is based on the rk3566 SoC and outputs on uart2 for
debug and console. The first carrier board supported is the CM4IO board
from RPi.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index beb5b0ac1a2a..b85a8e6c5e75 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -509,6 +509,13 @@ properties:
               - pine64,quartz64-b
           - const: rockchip,rk3566
 
+      - description: Pine64 SoQuartz SoM
+        items:
+          - enum:
+              - pine64,soquartz-cm4io
+          - const: pine64,soquartz
+          - const: rockchip,rk3566
+
       - description: Radxa Rock
         items:
           - const: radxa,rock
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
