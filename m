Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAD15C83F1B
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jul 2025 18:23:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uB8NM7mU7Mx9Om8ujJw3UHA58z9nXLxo0iVBONZ+8Vk=; b=PXeaXbwodfi9vj
	nIRz9G/JrhLlYN+0L3OVz/c4k0WyRe5MLcExpIUvo938pu4+6w1HFra/TGo/ids375KL271hGTkUs
	6PkUnqsd8+/7Mivc6c8L2U7IKyOW4IwMgOHA7BZfN7fAp+5tUk7fZGqLl8KxYgx82ICHiFMP4U+WW
	2cHR1fKfP7AKhNHYVg8jp1km4UkCPHzrnAMOWEtX6UHmUzVYC98ebbGMSVsgaIzh6YDpeAA8kk8zM
	PGuo3/V4x3cDao5ayokLnR0fFoEHPoORvV2FyHyOzLF8QXYOh63sCQm+dqHSX9HTd/kcAIuswBIl9
	Vo0P3/gFfv7S4eNkQJbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZvvj-0000000Cgxs-3qc8;
	Thu, 10 Jul 2025 18:23:35 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZtok-0000000CME3-0P3g
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Jul 2025 16:08:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752163693;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dBVtIjzgSdM7j9vfNKuudokyDuXNQpoH5us+QUAZFLc=;
	b=da+pZsT5Up90WvRye4v/8XdZShLSui2ICXFMSLLzS5MUtm1/75x2dROtlEzQjg9XgVsMsm
	2y8XON5arzXYfhU7OShp/UIykkEKRWpipcg4tDSBRtXJWM476MKQZEZidEQbvMMwNKBySG
	DNjlzNtI99f7CzvzHp9cnfHTq/ezjd8=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-498-TbKUuvxiOkaQaT2UMDfSPA-1; Thu, 10 Jul 2025 12:08:12 -0400
X-MC-Unique: TbKUuvxiOkaQaT2UMDfSPA-1
X-Mimecast-MFC-AGG-ID: TbKUuvxiOkaQaT2UMDfSPA_1752163691
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6fd3aeb2825so36441846d6.3
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Jul 2025 09:08:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752163691; x=1752768491;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dBVtIjzgSdM7j9vfNKuudokyDuXNQpoH5us+QUAZFLc=;
        b=xSyhv/KqDCrwfWMn+Y53ypeVu/Z05VE7cPyjPJeBVmp3i2AYseS0+m2AAvwEMLKcSN
         jz+Hk5xJpjlOCab8Huon6o/b1GhhOedseZbnE9VVieRRYuA375owqoj/g3CIpiHTvVGk
         QpmMZcELZ908ecMSvA98trvvtxk2uZaQYf/zjrN7JGDRa8UMoJqb2BQmLBy0cEXyEVqe
         +vREOF3EAnj9+BhgGPK06JMYXT04TG78sYqPYM1bl+cW9iYyuRZ9tXen46aik5hrVDFz
         xFhaqTZw+AZddJBEfhGYUXJ4ZcMlTkC06iSzlkZ0nrSIhppmupWtecMqdoCsbhD1O81f
         zAtA==
X-Forwarded-Encrypted: i=1; AJvYcCVSw0USdMQPy5+PsrMHb7eGbHuMaXtGJTB+QTUvPvim56q2Q+b/gI31DgSc1emIMykagTjRbFue8kfu5OVG9A==@lists.infradead.org
X-Gm-Message-State: AOJu0YyAUmXybEzEerdFXxQYKpwEQhJOssF0kpBA4dY8FJZNB1dmRTbA
	zOtn7Fee3ulncrLOCxYrrH4z2nkg5Fyk76CIiK28MB+8IIYr0p200JbxyFXUGboLbm1EZgVFlnQ
	7DL5PQyQtBcYOGs8DN4NgTehtpr6ZUHUyLAEF6ytYL5ROQRND3LatLEG6PRSDT/oAKTT0PhQ/Yw
	==
X-Gm-Gg: ASbGncv12F0zkFekfP5pYQdVcFcb2RnuRyMe6OKupd+AN0H67E6b1lw/f3N/FKFOMR6
	v6GZzJqZN4iX9eU8jcI9+B7yvsEL6UOrqQ1CJYApOCr1Uz0znXT0phdZRAB0bfvJHS/N07bQKGg
	25G2YC3qvirscDPhgp3+Cos8AvCeXn88AmZR07jTaoTYZ+fguFfhB4OHOUIXjlvTqNf/BqIuzq6
	xIktGTvxRexnODRQWzrrQy4T7Jne46N7nCpwrQblJH9GoSf4avAcB7w8Cx2aQOE6FWqhz+DRmJv
	tQ20H1ZIVs8UHwyhBF8gw+ooSGjWWZ1uSz6GAW4HH+4HfUHzJminDJzuat/i
X-Received: by 2002:a05:6214:29ee:b0:702:d7e2:88b7 with SMTP id 6a1803df08f44-70494e7190bmr52729216d6.6.1752163691384;
        Thu, 10 Jul 2025 09:08:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH6DKE/B6Jz/oJiRJgLwGjr9+CDT2KUQYMq69PGQL2Cpo9Zo4B0GowYF0QAn7rhBvA9uVWDKQ==
X-Received: by 2002:a05:6214:29ee:b0:702:d7e2:88b7 with SMTP id 6a1803df08f44-70494e7190bmr52728706d6.6.1752163690776;
        Thu, 10 Jul 2025 09:08:10 -0700 (PDT)
Received: from [192.168.1.3] (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-70497d39749sm9670216d6.58.2025.07.10.09.08.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 09:08:09 -0700 (PDT)
From: Brian Masney <bmasney@redhat.com>
Date: Thu, 10 Jul 2025 12:07:11 -0400
Subject: [PATCH 1/9] phy: freescale: phy-fsl-samsung-hdmi: convert from
 round_rate() to determine_rate()
MIME-Version: 1.0
Message-Id: <20250710-phy-clk-round-rate-v1-1-0ff274055e42@redhat.com>
References: <20250710-phy-clk-round-rate-v1-0-0ff274055e42@redhat.com>
In-Reply-To: <20250710-phy-clk-round-rate-v1-0-0ff274055e42@redhat.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Heiko Stuebner <heiko@sntech.de>, Maxime Ripard <mripard@kernel.org>, 
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Brian Masney <bmasney@redhat.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752163685; l=1978;
 i=bmasney@redhat.com; s=20250528; h=from:subject:message-id;
 bh=fKrbnjnqlbXKGKlsruK+qB8Kg9daZJZ+BBb5bsrBbyI=;
 b=KjDWEK+2W/Nntn7kgVA1LXI5UW998Hy2QzJ7T12w24jbptJPTQ20Hu1na1UrDrlq2m/ybtKHR
 1nSX6rsyHP1DjtYMF4VJcw2r9wmw7SB7c7PmH5QSepXY2pM+05ltjYv
X-Developer-Key: i=bmasney@redhat.com; a=ed25519;
 pk=x20f2BQYftANnik+wvlm4HqLqAlNs/npfVcbhHPOK2U=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: J06HFgXCzAGGrS-PUM-9nw5jyjhYxCWXsxpl0SiCLB0_1752163691
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_090814_209208_C82DABB9 
X-CRM114-Status: GOOD (  12.89  )
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

The round_rate() clk ops is deprecated, so migrate this driver from
round_rate() to determine_rate() using the Coccinelle semantic patch
on the cover letter of this series.

Signed-off-by: Brian Masney <bmasney@redhat.com>
---
 drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
index 191c282246d96e3f6c5a8d17abe078892882bf44..d010fec15671d33cc363af79e9f1c3f26ecb3464 100644
--- a/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
+++ b/drivers/phy/freescale/phy-fsl-samsung-hdmi.c
@@ -570,17 +570,20 @@ const struct phy_config *fsl_samsung_hdmi_phy_find_settings(struct fsl_samsung_h
 	return fract_div_phy;
 }
 
-static long fsl_samsung_hdmi_phy_clk_round_rate(struct clk_hw *hw,
-						unsigned long rate, unsigned long *parent_rate)
+static int fsl_samsung_hdmi_phy_clk_determine_rate(struct clk_hw *hw,
+						   struct clk_rate_request *req)
 {
 	struct fsl_samsung_hdmi_phy *phy = to_fsl_samsung_hdmi_phy(hw);
-	const struct phy_config *target_settings = fsl_samsung_hdmi_phy_find_settings(phy, rate);
+	const struct phy_config *target_settings = fsl_samsung_hdmi_phy_find_settings(phy,
+										      req->rate);
 
 	if (target_settings == NULL)
 		return -EINVAL;
 
 	dev_dbg(phy->dev, "round_rate, closest rate = %u\n", target_settings->pixclk);
-	return target_settings->pixclk;
+	req->rate = target_settings->pixclk;
+
+	return 0;
 }
 
 static int fsl_samsung_hdmi_phy_clk_set_rate(struct clk_hw *hw,
@@ -599,7 +602,7 @@ static int fsl_samsung_hdmi_phy_clk_set_rate(struct clk_hw *hw,
 
 static const struct clk_ops phy_clk_ops = {
 	.recalc_rate = phy_clk_recalc_rate,
-	.round_rate = fsl_samsung_hdmi_phy_clk_round_rate,
+	.determine_rate = fsl_samsung_hdmi_phy_clk_determine_rate,
 	.set_rate = fsl_samsung_hdmi_phy_clk_set_rate,
 };
 

-- 
2.50.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
