Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC2DEC04A95
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Oct 2022 12:43:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/b4uOBCCTQ4lLLUsct5R5dABXmAM0Aw4gNfqBfrfUhY=; b=a/8dOisPdCE5tu
	oGGIIzUHcosA2A9HbOZjthL1gy8+jqyOuv/xu4qMK9yzljaGg0vyJ84bVrmGZk0vp+tzP39WAzeQq
	ifb8OMBrsAg1m12TmiHWIiXL5lT72SAWuPjhmICrqAkc3GY0lMUyxEGDF/R+wtZY8AA9uAT3IEgDq
	Z62DWCD/LpV+e3PE3/COqhQuvaNAik4X6MAuXX4ga2UDHBy+Z011JiP4TNxAFJeiZoEayT7KLvEpJ
	2q41TqjVtamxVX4g0MkevGpKEK1cZSmewM4D/ARbBAyEIHHcEuHOKLC5vk3Bu1PWR5LDElwf4cdpV
	SGJ45vJgvnI1Z7FLB0zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onJGo-005EcS-T2; Tue, 25 Oct 2022 12:43:03 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onJFv-005E52-QI; Tue, 25 Oct 2022 12:42:09 +0000
Received: by mail-wr1-x42f.google.com with SMTP id k8so11961626wrh.1;
        Tue, 25 Oct 2022 05:42:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KZM0T9VAIhDH8MlN6WTNKMHChs2UsyWeC4jS+W4xqgE=;
        b=KKMGuE4/SZ26vZUsXFESU9bVBmQJ/U9oz2QjLdmDj6petr7Z0fUlZubuhdLhvEHci5
         NKRFIbeUyziptVGfh3p/uVfPCIQyrHUuKO5Qlc2RR/bNaUvRQHI6pnNX9R4FEBl6PjYD
         6mWRvQQIfpy7O/C5VnXdugs6rY/7p+VQPqmphCuqAVwJpcPGG5PqRqrPO5Zhh1yeaNJy
         9wnklj2raQkZPW+/B0fbHfSxoPtdzucnF3Fn58vb2YsvsXViLeErmNpBsxvYCy25J9Ur
         glBOkXDAOSNthoVwGPXzCa5jRxghjJ4x7toQbOtgT1kjjHVrzNMFVACINvHPlyhT1NOJ
         JevQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KZM0T9VAIhDH8MlN6WTNKMHChs2UsyWeC4jS+W4xqgE=;
        b=hjuYiVWluHicMjPNFOPgP4D5sL8x5w1uTCsvLD7YQcp61ZPBdd6Okngfg4WdUvv0en
         AC4DrPUfNas16OuUwzCcSCFUrdlj/MguwCayjv9HX9XA3kuw1+OSZ16nQ2mb0CKViME9
         awfFKieOMZeBsUshLx/5But9TywTONsxHwUTarTnAh5PLvEsy4Ikiay2zwtIeCU2vQjQ
         iVREvHSu4TEUx9cSqiHDv/EGCBHXMiYkuLI2IlYApNdYL0mH+XQ4C58HB8skssQtQCAp
         DZsabVfE1ChLPdrbbiV3UdwiZiu1VVQCew8SdP8PiJfp1KIVkfvjqQZblNfd+m40NSeq
         Jpig==
X-Gm-Message-State: ACrzQf0ZaifjBkvsVelABqEHjkawuUhQr0yP8a1m3zB2d210lEYKXmzN
	KXPLMAXCVvUW3S/LV7ekbQ8=
X-Google-Smtp-Source: AMsMyM7qGiPSr6jS0SrVQrVe6ZNaIcaZ3Pzpjqm4tGdeQk37enhjvFMn62fA5LjFriOIMhSj/XcqVA==
X-Received: by 2002:a1c:ed0b:0:b0:3c1:d16e:a827 with SMTP id l11-20020a1ced0b000000b003c1d16ea827mr25702572wmh.127.1666701723192;
        Tue, 25 Oct 2022 05:42:03 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id ay19-20020a05600c1e1300b003a1980d55c4sm11250664wmb.47.2022.10.25.05.42.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Oct 2022 05:42:02 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	alsa-devel@alsa-project.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 4/4] ASoC: rockchip: i2s_tdm: Add support for RK3588
Date: Tue, 25 Oct 2022 14:41:32 +0200
Message-Id: <20221025124132.399729-5-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221025124132.399729-1-frattaroli.nicolas@gmail.com>
References: <20221025124132.399729-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221025_054207_883206_A93A2273 
X-CRM114-Status: GOOD (  14.35  )
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

This adds support for the RK3588 SoC to the I2S/TDM driver.
---
 sound/soc/rockchip/rockchip_i2s_tdm.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/sound/soc/rockchip/rockchip_i2s_tdm.c b/sound/soc/rockchip/rockchip_i2s_tdm.c
index 917f17107891..08b90ec5cc80 100644
--- a/sound/soc/rockchip/rockchip_i2s_tdm.c
+++ b/sound/soc/rockchip/rockchip_i2s_tdm.c
@@ -1318,6 +1318,7 @@ static const struct of_device_id rockchip_i2s_tdm_match[] = {
 	{ .compatible = "rockchip,rk1808-i2s-tdm", .data = &rk1808_i2s_soc_data },
 	{ .compatible = "rockchip,rk3308-i2s-tdm", .data = &rk3308_i2s_soc_data },
 	{ .compatible = "rockchip,rk3568-i2s-tdm", .data = &rk3568_i2s_soc_data },
+	{ .compatible = "rockchip,rk3588-i2s-tdm" },
 	{ .compatible = "rockchip,rv1126-i2s-tdm", .data = &rv1126_i2s_soc_data },
 	{},
 };
@@ -1556,7 +1557,7 @@ static int rockchip_i2s_tdm_probe(struct platform_device *pdev)
 	i2s_tdm->dev = &pdev->dev;
 
 	of_id = of_match_device(rockchip_i2s_tdm_match, &pdev->dev);
-	if (!of_id || !of_id->data)
+	if (!of_id)
 		return -EINVAL;
 
 	spin_lock_init(&i2s_tdm->lock);
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
