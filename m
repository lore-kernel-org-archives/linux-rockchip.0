Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44D19C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Apr 2022 13:38:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FuSc8/3vif7u2U4oOP25w40k7qwTQodqAJo45WgtB5g=; b=PrrtXgfX4UYNHn
	mRfqbtLgCGa1D+J6ZArZNGrrCTN50nAgTZy7nSQVKk8JhIc9bCDB3gSTuqt7AjVD5I1ad1pIkdPqX
	wSPd7K+IS1x3+vLQNizhU57HMSi3YUQP//x4AcxwC6kiCfPvYFF/aYSckWwmG98fyRHFgvljClnTc
	i780FhDYwD0qDQ2hCneHmsGYa5wsqwmLxZ9kNT19ifMjbzhe4QSxkXAGN/0eZ67XyDOiig6/FJuK7
	clPCmiGa4JJNKmYag1GpUC7eq2T43W0xaGNpNBTv1+z8pWd509VrxFaCfxGLhET7uuvgZh1uVmZXp
	rfeUIEziNJi0JvRRKqZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nedCN-001CSL-R5; Wed, 13 Apr 2022 13:38:19 +0000
Received: from mail-qt1-x82a.google.com ([2607:f8b0:4864:20::82a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nedCB-001CL0-KE; Wed, 13 Apr 2022 13:38:09 +0000
Received: by mail-qt1-x82a.google.com with SMTP id z19so1365977qtw.2;
 Wed, 13 Apr 2022 06:38:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kQeNukA9v0sAIjhr8IxlYmsIPikuBlNT7ZSLuaA7VkQ=;
 b=Mq+7g8tDrDPA6Y/smYyEuWeRwuMTPNbg3IMRnuvDOosjH8z0Zf+X7Gkaehqfa9AmZ1
 8516oOb/LDbE259AqGWP5+8lPidr+YSZG5WUkDPrdv5sgJgxW7UG6CBrB89ammJc5uRm
 Y5WN/HHXs/Opp7EHbPCi5nF3VhS7JMxEDuiKTf4yaTT1m2KFTDiKC/DsKDkLnBt0iHC6
 QQFpuubKKXo3WXIp3cPhWTxo0+yw936ltO8p23CHKgMrnQtHBvlFv1NfAARppwFAr8jL
 eJSqLI5YPmDL8+OcOZv1wDsJ2gr+eUa1/m6iODUV6e9sHgQet5IyQ3AezWTIME28KItg
 2AKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kQeNukA9v0sAIjhr8IxlYmsIPikuBlNT7ZSLuaA7VkQ=;
 b=Lp6WoyGAP41a/jRFdHCUxLRtJlA+e1AV58V/s8i9qJMTBLZgJo47OExIzOpxfU1wkK
 fCHM5lgmm/T2DAQGQxHWiCI1sxjL4Pzn4F6neHdGazFWqyg0pyfkg59eFkG+WZMg2nMG
 STUCsawqA2dcF8xMOocCUUk0gfx02SAaY+CXSKqcLiU6VW7TczaJ1nAVjx6E7yad1sNy
 qteiztO7VQRVuhVyH+gyxv+mWEnKVSmR2n/J8BFHtpADhfzZMaLDyoaG+yjeRpyK/csi
 cd8z03Vtiuejxs111Q9K0QiP0L64Dl0VDNYOF1xmX7pU9zxaXMTwGsajtPRtyaEz4Nz0
 rWcQ==
X-Gm-Message-State: AOAM531XD9UMUREoRtX/HjOpBSZKLWF5VHBiBJVbxnBpBgawBbPsaw5K
 gSBTglDjUgUEHy4jv02v78g=
X-Google-Smtp-Source: ABdhPJztXwfsW7BO3NnHC4u35LCaJUWDbkRdjMvL4IMH4HQyGKDsbj3JDw6N+KqRSIddpXjLqjkv9w==
X-Received: by 2002:ac8:6903:0:b0:2f1:af14:a01c with SMTP id
 bt3-20020ac86903000000b002f1af14a01cmr2954735qtb.45.1649857079608; 
 Wed, 13 Apr 2022 06:37:59 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 143-20020a370795000000b0069c59e1b8eesm790584qkh.10.2022.04.13.06.37.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 06:37:59 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/4] dt-bindings: pci: remove fallback from Rockchip
 DesignWare binding
Date: Wed, 13 Apr 2022 09:37:28 -0400
Message-Id: <20220413133731.242870-2-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220413133731.242870-1-pgwipeout@gmail.com>
References: <20220413133731.242870-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_063807_687668_77455A93 
X-CRM114-Status: GOOD (  11.66  )
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

The snps,dw-pcie binds to a standalone driver.
It is not fully compatible with the Rockchip implementation and causes a
hang if it binds to the device.

Remove this binding as a valid fallback.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
index 142bbe577763..8dc11fed8a3c 100644
--- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
+++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
@@ -32,7 +32,6 @@ properties:
   compatible:
     items:
       - const: rockchip,rk3568-pcie
-      - const: snps,dw-pcie
 
   reg:
     items:
@@ -110,7 +109,7 @@ examples:
         #size-cells = <2>;
 
         pcie3x2: pcie@fe280000 {
-            compatible = "rockchip,rk3568-pcie", "snps,dw-pcie";
+            compatible = "rockchip,rk3568-pcie";
             reg = <0x3 0xc0800000 0x0 0x390000>,
                   <0x0 0xfe280000 0x0 0x10000>,
                   <0x3 0x80000000 0x0 0x100000>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
