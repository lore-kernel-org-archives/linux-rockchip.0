Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 943CDD2F7E1
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Oct 2024 02:55:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1d0raI/pgpjaNIIxaInYoGtYgtPZJTo+S0TPKUFF6fM=; b=vFm6Dm3QJbymM6
	PWJqmJj3RDN2clKsz7lDJ6klmKmM9QhESoyzlFP8yOjIPlO6xPX4lT+OMC0GS3NQW4VtoWBsgE7iW
	qls9dnZwnjbHCytsxXTkQu1M/q4vDSNDfjNQhwogWB4K1BRp6kAobErZUhNpck6k5zmT4Bnh827nX
	pGXwOZUUI82ImG3PBwesk2yrIXA+hBFdwrBb9xTzlMo0xDFpkfGd6yVHCM78fqt1Bg19Q6j2VRhHS
	Q3sIxK52hW2oseX7EOAkIlqFzBhrGm94x4sF70BojbQj2tdx0XlvrFs0Tk+Ztx76a13zLLGrS+Nfe
	qH3vq3UwKWcpOFIN+wNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1Gfx-0000000DbFc-08IS;
	Thu, 17 Oct 2024 02:55:45 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1Gd2-0000000Daid-1CTF;
	Thu, 17 Oct 2024 02:52:45 +0000
Received: by mail-pj1-x102e.google.com with SMTP id 98e67ed59e1d1-2e2a96b242cso76668a91.3;
        Wed, 16 Oct 2024 19:52:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729133563; x=1729738363; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=85QbIQffcxhlYB86XB+l//9U96d/RGIx76nV68ii/DI=;
        b=XOs/fwr2+vOqzyjBzu76TxuWTkbY3LwtrBNWgK+JOzzN+3mPj5xYfHOHV+LgvG99hM
         JhfXxiFLpD6I72Q2AtvMxKwBtXhVyL0YOybR/SF4mmOeffbrQuefO63VyQhO2KH5TJ1g
         HTGK8XWIVuQ9ztnVjLFM776nCV7x++CbJDvRhmdXFI10tk5xKyIAwBaUiXA2Zg81p0M4
         JK4EVHBbW9A8jw5h6eJPiN6mm8SeTczlu/6sNCqaIIURmUfvICm9xZrkPBhSDWVyL3Cx
         iSfR4c5oVM0OkfEnAp+6C1BAgXgccipWaVjHfNgm4YO27oUo9r+yRFp/liuqv3+u85Ni
         e+BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729133563; x=1729738363;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=85QbIQffcxhlYB86XB+l//9U96d/RGIx76nV68ii/DI=;
        b=fKxcLCfDhgiyIDa/AsOajm8zzRRWe1JUGDWAWSUVwsO1vcNjYgjBNkyyCKS+sj6obx
         pcAJ8Lx2+Cfx1gyVHt4HMC+NVWuw6Ul08/EAyAhG4IhRODboYNTK9HYaah2CVP5aVfRe
         MzPaaqB95ZJpF0Va6JzHb32SeexeTwysrVB1j1LP5WXKO4+pHLpo89p6hw0BeLFbx1nl
         RveKWhOiSb2VVg1/36QZH5+T8dVAdeSNbfLSP2mHQJiIlFWxlhvZX/xK6XqFz4W/VkYs
         1nMyWQtg8BkXA+9J1yJQgtpndvh4W1c9ji5N6bA9cb4SR61ZixYUG+HMcdb0JJz2glEY
         XDHg==
X-Forwarded-Encrypted: i=1; AJvYcCUEzgobbNz7EOdIgnfQABJee4/jcvtEG0UMnUATIlLfPSmL4889WNCwRt48LyaE39+RNGs+LeJK9AxkAysPQyEe@lists.infradead.org, AJvYcCUX2a79qDEmARisVt2nuNAJtBPfzD1U/11ItXqykkdxAxsBym2exIkKm+veHbdle2yBme/WFsgL1YMHgGH0/i0=@lists.infradead.org
X-Gm-Message-State: AOJu0YzxzNgwmuSoaam+CO7IBO5THHHDlxDE87c/uKHLrPCMMM/gnuMv
	KZaNYf3StHgVwOrpMGCWkn4Fb4Ni5YIJ2Cd4AHNIeCztrVJbkDWy
X-Google-Smtp-Source: AGHT+IFawOJeailC2Asgzjpb5jX970qzHmdvlW2PrVbbt7XJMis9ydsbJUn9eiDov4nXvZpPai5NrA==
X-Received: by 2002:a17:90b:3144:b0:2e2:d1c0:758a with SMTP id 98e67ed59e1d1-2e3dc2abb36mr923178a91.8.1729133563258;
        Wed, 16 Oct 2024 19:52:43 -0700 (PDT)
Received: from localhost.localdomain ([103.29.142.67])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e3e08d8b6esm628537a91.29.2024.10.16.19.52.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2024 19:52:42 -0700 (PDT)
From: Frank Wang <frawang.cn@gmail.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	william.wu@rock-chips.com,
	tim.chen@rock-chips.com,
	yubing.zhang@rock-chips.com,
	Frank Wang <frank.wang@rock-chips.com>,
	Dragan Simic <dsimic@manjaro.org>
Subject: [PATCH v2 2/3] dt-bindings: phy: rockchip-usbdp: add rk3576
Date: Thu, 17 Oct 2024 10:52:29 +0800
Message-Id: <20241017025230.28752-2-frawang.cn@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241017025230.28752-1-frawang.cn@gmail.com>
References: <20241017025230.28752-1-frawang.cn@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_195244_352994_E8D8FB19 
X-CRM114-Status: UNSURE (   8.57  )
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

From: Frank Wang <frank.wang@rock-chips.com>

Add compatible for the USBDP phy in the Rockchip RK3576 SoC.

Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Dragan Simic <dsimic@manjaro.org>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
---
Changelog:
v2:
 - add Reviewed and Acked tag.

v1:
 - https://patchwork.kernel.org/project/linux-phy/patch/20241014020342.15974-1-frawang.cn@gmail.com/

 Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml
index 1f1f8863b80d0..b42f1272903d8 100644
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml
@@ -13,6 +13,7 @@ maintainers:
 properties:
   compatible:
     enum:
+      - rockchip,rk3576-usbdp-phy
       - rockchip,rk3588-usbdp-phy
 
   reg:
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
