Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0E3FC41513
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jun 2024 13:53:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yz4wVVSzGoKcAT6GJBp/uTGpBJxhPlG5wh+j7GvkK3U=; b=vB9+xyrKEob5t0
	JmCPHtsvdJAUOQ1r7wbKoIy+Ozz/lRb07RmjmXhyqhnhb0Q/AS3kVWFKcDw7Uw6eaLwe5b8FBOkbp
	TohbTssDb83J+QYyhiHwz2k4XYchLxUAYGLiBjYF/NoaW5M/0kkS9Hfu0YGJFTyvtpXVTET8MYvVp
	Ft4Nl/4Zv+H+rXMBZokxSGPeCpA+lGyhKYcIvfyn9WKuB4YBp/+jCZHD/xaYwfOItkNf3g9sO0Vj+
	pe+xw2MDiT1evluY/yRPQq/fh6OpNkTiXmw0zNM/XqsGVGAzGA1bHAiWwaK2r9qiwNY4GpbP22W2C
	U0YUqMH5u2fyZG1pxgAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHOQ6-0000000CozX-3bNQ;
	Wed, 12 Jun 2024 13:53:46 +0000
Received: from mail-wm1-f48.google.com ([209.85.128.48])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHOPa-0000000CoXx-1uM2;
	Wed, 12 Jun 2024 13:53:15 +0000
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-42108856c33so6089455e9.1;
        Wed, 12 Jun 2024 06:53:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718200393; x=1718805193;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0gvlL/3Hh6Rvkzj8HeRV4KajZ/sjiz7m+L1scRmwe5k=;
        b=QjnVs09HbcoKRNjvmpw5I0mybPmKPHzdpZsxtEreUXUup5mKEsH2DIjA5jTqZSaL5u
         lHz9xMsdFlzBX+nvVA8t6ZynwfzoRVF43V9m+LFwTHWd9UjlXks4tpnI9g2JHsIe+HiP
         2jgMnC8WC1al6ncaArQ0/189dL6UTh5SuUtOqeZAkUBdsphu2ltEwk44N/FoYDbG+xDB
         /XCgJqctXXtYllubnL0Ff8y2GtCbHwWz3IWQmexwUGZRko94P4/XsDUXw9TwlFA8maQR
         cNJpHDUTXzmRTZd5cQAxhVlLG4NFlcV0XMGy6+cItlYKXeCmP0vJJ6O5nGvx1kLZ/6Oz
         G5Ag==
X-Forwarded-Encrypted: i=1; AJvYcCW3ihb3oMBYMK7da7x2TAu8jqe3KaISyPi1oXi7Yqa3b5P0j/QVOxVAq06iR6qjZtIkVNzrQyLVOeKP0fH7UAPJydND3jj4sojFRvz7FhoE5FJ7EuBdHQFPF6Z1o2pKPPfcJ2wYI1Vtod89Nd/N7vVcHZXgWRPcuFY=
X-Gm-Message-State: AOJu0YzXua5+qjenSypaMjdEbm2xBE3S4rXNxdC9MY5Cgf7AtV7Mzki3
	h3lkYj4b++7Wm0dLpkMiopwGdaBJb6xJrunxHI0D5i58YJtLaAf/
X-Google-Smtp-Source: AGHT+IE2T90QH80rrQ35HgVVqB20gHNtrUAWASa/gbvajU+K3eKydM1CK3LNiNDzGaMzR19vk4V0bw==
X-Received: by 2002:a05:600c:3b23:b0:421:3249:557e with SMTP id 5b1f17b1804b1-4223c531cf9mr51588135e9.8.1718200392753;
        Wed, 12 Jun 2024 06:53:12 -0700 (PDT)
Received: from ramallet.home (cst-prg-45-36.cust.vodafone.cz. [46.135.45.36])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-422871ec9e6sm28201695e9.38.2024.06.12.06.53.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 06:53:12 -0700 (PDT)
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Wed, 12 Jun 2024 15:52:58 +0200
Subject: [PATCH 5/9] arm64: dts: rockchip: Enable the NPU on quartzpro64
MIME-Version: 1.0
Message-Id: <20240612-6-10-rocket-v1-5-060e48eea250@tomeuvizoso.net>
References: <20240612-6-10-rocket-v1-0-060e48eea250@tomeuvizoso.net>
In-Reply-To: <20240612-6-10-rocket-v1-0-060e48eea250@tomeuvizoso.net>
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>, 
 Tomeu Vizoso <tomeu.vizoso@tomeuvizoso.net>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Sumit Semwal <sumit.semwal@linaro.org>, 
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Cc: iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, 
 Tomeu Vizoso <tomeu@tomeuvizoso.net>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_065314_546197_027C7085 
X-CRM114-Status: GOOD (  10.57  )
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

Enable the nodes added in a previous commit to the rk3588s device tree.

Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
---
 arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts b/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
index b4f22d95ac0e..9afb7efebace 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
@@ -291,6 +291,14 @@ &gpu {
 	status = "okay";
 };
 
+&rknn {
+	status = "okay";
+};
+
+&rknn_mmu {
+	status = "okay";
+};
+
 &i2c2 {
 	status = "okay";
 

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
