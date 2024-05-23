Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AF17C25B75
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 May 2024 18:56:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U4ZP2u0RigvsKc52sqDZvQG3VngqsF5hNd8m6Wv0NGA=; b=XFtPDk2xpgcj12
	hCP9J2Wn6WMeCUWM3pIirVZ+6LwUn7QKNeNo+R2zb2l00x+M3HpOGLCvzdb68c+ac69mTCEQ/qHTi
	nkIdwKNmTZ1cfl9A15YUGaJyudn9jUiZVe00u6u8emNb//3lZrxXrubopzsqXBKPYGLJ9PP+TPAAe
	dOxRENnz03pvY+jy49xfxjWO0BIg9UpwNLTXa03Hg7fAQQb6EbJ8hUElwpjh7owZ1ABxhH0jqV6/r
	lQ/pzc37Goz9yTWYBg+5X96lVC+08wSTaKP/P+w0qOoMRHnAPK6bz3cc5PCreCudyzpNZL9IKYR+H
	b2OiHqpA/LA7TzhRPzFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sADcM-000000074CC-2NJQ;
	Thu, 23 May 2024 18:56:46 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sADcF-00000007475-07ia;
	Thu, 23 May 2024 18:56:40 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-42011507a54so14103725e9.0;
        Thu, 23 May 2024 11:56:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716490598; x=1717095398; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2vGSPeiqToBwb/4U9wuLT4Lc5GeDuH/YmWaUfRoLwoY=;
        b=JWkz5ht7viN4vrMTz3/q+1SghY0uCUJ67XTDK9H7Gj6C633vmVBFsN/3j12f3LLeKo
         lFyv5HA1SScBO8l2FTnICJkY6Hn5ZwW7Amog/kzm2dgsRil1Gy4IaiJm8YdAXYJuKVTp
         InlEWIfkM8HgsrDGacREmMZyeAZQqdpMXKmI6gZf7/EalyzqTXzzg+sPO8oZeAvL98oh
         OKeW0zNcVBbz7hcYUTWht9J+VSrMFYfrTYG9Wc0B/Ghs7NCczaBOpBx6G6LpXpx7LAKs
         BxsaZj4xZEINv9MqQaCH+M/Gb0so+A1bOYzf1mDrMkDN7IQtO/vg7TfdqgaHErttoJPL
         7hjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716490598; x=1717095398;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2vGSPeiqToBwb/4U9wuLT4Lc5GeDuH/YmWaUfRoLwoY=;
        b=HW5OQj/lKkNN8K4wAzk/+AbO5mDArt44LgZU20vIt5Q34qPdGuAVubp4L+mWT1ItJT
         M86ChdfHMTitzEetthg/3nirZDa+7E+WYMj3hNFqF18yrTG5xoEH6erF406f5pMI3iPe
         6kC/7/4oNFNYegRaff4II1Hhdm+/0jBbZ8rm0E5blhUS38PyhQBQU5Qi5PkIGcds2a5x
         0v19W5WAX4BXAsks7moldoHmSJtAB76/6xE8NEbWFh9/mtjM8KC/GbK/4sKD6l8rC12b
         ZMjT4My4UN3DyhhDlVTq/q1nnS2J7oIX/E/LRN2vsItVe53pM+qqsEucZ49ZSSOJVyRV
         +YZw==
X-Forwarded-Encrypted: i=1; AJvYcCVQ0yAh9rg3X5jso3tVSm50YUUxYl4nVSY5FP/G6Ro38/tWOrFK2tjlZKpCKdcb3PmKANFB3EL14v9Ir9H3823c/U73SnBKYaTgsMWC2xoiiwKn/g6gngVxmKSo6WgZ5ZqKprBnr9XaeI2TnzBB/bUh+FmJCeac8Po=
X-Gm-Message-State: AOJu0Yw4tC8rxLyYpxegwNKixi22blJnTvJX/8tg+Nwau5kmzWe6FSwy
	Sj6I8tIQ+ARj8HNY/Fe/lWpYNY5FCLw9ijwBO69cf8KKoIwyh3c=
X-Google-Smtp-Source: AGHT+IEUZra0IuLte/TUh4lf+7J7uFOqJNB0+Y3jfsjskFSS7GiJogn1Iw72XUCIBYcdCBior5phsA==
X-Received: by 2002:a05:600c:3150:b0:41b:f24a:b590 with SMTP id 5b1f17b1804b1-421015a62ffmr28810115e9.3.1716490597736;
        Thu, 23 May 2024 11:56:37 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:a453:b45b:e52a:2302])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3550c675581sm3965f8f.13.2024.05.23.11.56.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 11:56:37 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 2/3] soc: rockchip: grf: Set RK3128's vpu main clock
Date: Thu, 23 May 2024 20:56:32 +0200
Message-ID: <20240523185633.71355-3-knaerzche@gmail.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20240523185633.71355-1-knaerzche@gmail.com>
References: <20240523185633.71355-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240523_115639_131551_461FF1D3 
X-CRM114-Status: GOOD (  12.87  )
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

RK3128 has a setting in GRF which selects whether the vpu attached iommu
uses the AXI clock of the decoder (vdpu) or the encoder (vepu). The
default is vepu but some part of the vendor firmware sets it to vdpu.

In order to be independent on whether any of those vendor firmware blobs is
used to boot the SoC reset "vpu main clock" setting to it's default value.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 drivers/soc/rockchip/grf.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/soc/rockchip/grf.c b/drivers/soc/rockchip/grf.c
index 5fd62046b28a..df64de3d3040 100644
--- a/drivers/soc/rockchip/grf.c
+++ b/drivers/soc/rockchip/grf.c
@@ -41,9 +41,11 @@ static const struct rockchip_grf_info rk3036_grf __initconst = {
 };
 
 #define RK3128_GRF_SOC_CON0		0x140
+#define RK3128_GRF_SOC_CON1		0x144
 
 static const struct rockchip_grf_value rk3128_defaults[] __initconst = {
 	{ "jtag switching", RK3128_GRF_SOC_CON0, HIWORD_UPDATE(0, 1, 8) },
+	{ "vpu main clock", RK3128_GRF_SOC_CON1, HIWORD_UPDATE(0, 1, 10) },
 };
 
 static const struct rockchip_grf_info rk3128_grf __initconst = {
-- 
2.45.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
