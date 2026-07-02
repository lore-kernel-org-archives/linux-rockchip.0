Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A3DAC43327
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Jul 2026 19:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E3BFOug+5utGqr2svj6zabwXdBn7eyTObCOe+44NJGA=; b=BsjqlrMncSqecq
	/pVpInSfJXYFgJs2dVwy4XMUUIP8XKucA2fB1IdPiNh2JTqiqgd6VaqAcx7TzpdRCXY6I9czXnfXC
	vG11ziF8h/+v2AlODsyU97Zz5oxzyORkF/QTui8NEFe7EpbI6m3QeQ5clyeoq5Nj1vdSlM2Hijd2B
	7ZhmubHIgLLg3ueSXign8VAj77MRIMeiz4WhsJFyNdJrKeN9eBx+F1S2p8sDXYwI8BOcdCSRQuzDD
	rSuyA+G8GT6VkYYzwXWfp8MjzHFclzNAfJsgRj2YrxJy1yPlSmSamlEzYHZeKJCmU70WiBz2dzbzC
	9L/Aj1TEzQsttchcMPCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfNCX-00000005N7k-17ty;
	Thu, 02 Jul 2026 19:35:57 +0000
Received: from mail-pz2-x01.google.com ([2607:f8b0:4864:3b::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfNCS-00000005N4g-1VjN
	for linux-rockchip@lists.infradead.org;
	Thu, 02 Jul 2026 19:35:55 +0000
Received: by mail-pz2-x01.google.com with SMTP id 41be03b00d2f7-c888c2cff99so949438a12.1
        for <linux-rockchip@lists.infradead.org>; Thu, 02 Jul 2026 12:35:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783020952; x=1783625752; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kX4f21jjda4cufwsAQRS21Bz34ikOLxX1Fk3vMjHh/s=;
        b=daRf+O431mVOki8FYYyTXi0WV/9IHsmQ4TxaQVClT02WNT1fXUde+mHRs7nw0FpHVN
         /aTNGgp3AxCVrfpsj0cpzNzQc477Oep6dWAa2KZf95eZNoIe3+yjFQGz+gLIkztehi8n
         AqzcNPKPaoy0CDgy1xuOUJcOgfG8IFrQMeuHGnIhzBqMat33KhBZBcOZIHGe7mNZzcSp
         cAYgpzx/EKUOtokVh3gBXcpGuAbCKMLa6I7lJW6QwOeWU9O8VyQYvqe7CjT+lj1+izWu
         jcJVArTBi4AMtUchpX03jWIei8kY+2Gj1TXFv3cIRtjhCxX+oEe2T/tWV8ZmmX1NN9Zu
         KcdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783020952; x=1783625752;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kX4f21jjda4cufwsAQRS21Bz34ikOLxX1Fk3vMjHh/s=;
        b=IkulX1TWNMJ4PA5RoB/Z5Bv3Jy+wzmk17bkVfptclgvyMrMtJUerdx03LpYbR5CirL
         ZlBnL1IUx2UPvkqbxn5+ZKYKlV8fzBfErzG2/dI3pa80INn8IIwlxM0LEf4KIenQetvW
         91D1Hn7JyM4tH/ROL8cyfBg8y4I/XiGdh1O2N/3z+qQglV7s0zWOY1onsIX2H7D51f/Z
         t78AZ/rGjnUEMZshOAlidDnNPrDEoqcjlxF7VDQnsU0tMTX4L44LL+jJIDBA0glH+SQJ
         Ils36xHHnTHpXs9cYWVdYOVEctbIKhnT2abkkqpJ4MOFAaaH9QyBdH8VYb6KuCE6ZAGb
         KIAw==
X-Forwarded-Encrypted: i=1; AHgh+RpAswcMQhtEaDfnm8ymW2O9892hkWaMynFf/OBQPhiQSk2s2LqnmBJZcjh81GIiD17Z+TOyuHSjlsBQaZXe7g==@lists.infradead.org
X-Gm-Message-State: AOJu0YwQ/caLrABIfwVLqiMDPIH1NEptsT7CuGBsEJYDNAnoYlIf7o32
	Nig3TXKxlNCG/NPijUD4Cn2wIopzeSBlr6BJRpow1CUGmf4LcSlKyvxL
X-Gm-Gg: AfdE7clDB5f8b6NJwu2AozouhJQVpSzxnFYKwfdoJitzYH+RjYjc2Tbio9P4p0OvrHI
	mq5GnUnYjRRd8orABg5SaoSe6WFdlbevjwCN4CH+JP0odZEbD648CuH6pfcKnaZ2wEKS2Ji4sPC
	tfOI+9rKthGFzzPPSw22EuPEqHhiKvAXTiF6yxmTE5IbBGqGhY4yCrtaT0KHfy36kxavcjH56mI
	sC/lnhPVL7SYN/1pnIDASYid+OMQuQpxqDm8tuKtGrVjnQiTJJnq1NcXhjPZNWi5oWeZG2/81xt
	zGg1cuubd4Z33XHDNCNRzzvgJeGl++npZnPQZVaQmMr72NBh/nZ2GSJo6+mJz4av9RNWvmv29dC
	n1ZyhEeTGoEiSTLAiGe6zznDv+0xmihs0P9gKKhJszV7aqUOefdPvKfFvICGCit7AN5YcTKwQj7
	uj7Ppmq31pAoY=
X-Received: by 2002:a05:6a00:4f95:b0:847:9745:2f91 with SMTP id d2e1a72fcca58-847c5105275mr6728052b3a.28.1783020951613;
        Thu, 02 Jul 2026 12:35:51 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-847cb6dc188sm1844249b3a.4.2026.07.02.12.35.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 12:35:51 -0700 (PDT)
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
	Coia Prant <coiaprant@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v4 1/3] dt-bindings: vendor-prefixes: Add graperain
Date: Fri,  3 Jul 2026 03:35:36 +0800
Message-ID: <20260702193538.2195973-2-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260702193538.2195973-1-coiaprant@gmail.com>
References: <20260702193538.2195973-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_123553_285058_79D94331 
X-CRM114-Status: UNSURE (   8.00  )
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

Add graperain to the vendor prefixes.

Link: https://www.graperain.cn/ (China)
Link: https://www.graperain.com/ (Global)

Signed-off-by: Coia Prant <coiaprant@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 396044f368e7c..641a37c0debc9 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -682,6 +682,8 @@ patternProperties:
     description: Goramo Gorecki
   "^gplus,.*":
     description: GPLUS
+  "^graperain,.*":
+    description: Shenzhen Graperain Technology Co., Ltd.
   "^grinn,.*":
     description: Grinn
   "^grmn,.*":
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
