Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F3B7C98317
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2026 11:23:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OvkCKrQvsAXHvfJW6axqbcBx27U2ofH+138apfXrJYA=; b=Y2C6lkiDl/Ss3Z
	7Dn/c0eC49Xa2wZwl02LkhlKU630VDzVECa1e/liSdVSWWvljygHNBo5z2tXp/RuG9xfATYn3kIrQ
	y2gzpg1XEmx48ikA3zIw7Y53ylGjV9FogTeLmcUuA6hcPmKGrbxogSmwdq7tl4e4y3CUAV8biQgCz
	8VmQBxWa0oA1upGxNCA6stV1g2x0JqmWSFJuvwjamMZ9YcDLXY0klMZ5+ASzs/zaNOawuoE/dhlaL
	H/bQdyP5+1WHyRsJbxGexkOJ0TqC++0d1bcQXUb5rzf/Q4zNATLJKKglFmjuuXHYiwp106iS41j75
	15o35VoEmjFkR+M7k5/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9hYR-0000000Ar4H-0HIV;
	Thu, 24 Sep 2026 11:23:55 +0000
Received: from mail-pj2-x11.google.com ([2607:f8b0:4864:39::11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9hYM-0000000Ar11-1nNs
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Sep 2026 11:23:51 +0000
Received: by mail-pj2-x11.google.com with SMTP id d9443c01a7336-2d747eefae4so5478325ad.0
        for <linux-rockchip@lists.infradead.org>; Thu, 24 Sep 2026 04:23:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790249029; x=1790853829; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=JCxRdNlieCfNGhjYZk26pUpqaG4f6xkrRSGT2nKsEsw=;
        b=md5SnOg/Kni34hnMfZWWA+6+rSkFa4Z9ekjFKF5OszXlNS/JPLuUNhhLJcaLGaVBbU
         mB4X14dVY/wmAPs6Yh2SRQpSl96NIcXnRSF+jEVgFki8gBlfsaWleC30e1sZXTT6rAEq
         nszTu2qXPzaVs+vk5BsK7VCt+9l6pYqOcIve+mq/383ZOuFgjmqOP06W0QnRBCwHqxjz
         M16K7ij5j7OtohMOiyf7iNpR4E+WM/twrPaEdbmRi+9hSzmbzjevoQXjHAkDca8onVuV
         CaadXkU2iu/oF0HRgmHa+W1vV0Htw1447cOGdLi1LwA4KVAcreyl9SX558WR6JQTFhA2
         4irQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790249029; x=1790853829;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=JCxRdNlieCfNGhjYZk26pUpqaG4f6xkrRSGT2nKsEsw=;
        b=uLFms71Z0m5T2AYMbAqLiNhX9BZLHZUurPwGKA0q9WXx80LqPjHy6XXzyeXym8jUUE
         OhpY4+C3UvPGmTZ5Btr4YUWIXGO3qCU0GWmfow7q47/rjd91rPhIz0okAqwX66qGhx6X
         ktd6fnVRybnUGWVNp1yCzqjV+vBDdgl+4OXVBk4bwFDOxYRAYzWzhVHWiQ4x6Psow7EQ
         Z6D6teBx8EYrUajLMOGdsjTUeqvMbc2q0xtrZFC/7QvIKFXD7ZcKjQPg31sPxivtV9Bt
         FEAjAJhuZyDPaYZDWPF2NqPui3kwRQTZFGYgeQswDssovCze3tHWtBdLt3s078odBwZB
         oRGg==
X-Forwarded-Encrypted: i=1; AKwUvBzcn9IToKm10dTFCG9IXsaqGKMmeiq0VAt9oU1UaSQvAnFXj2yoMHrlCvVhKW71o67NXUl5K6aht0UztKw3kw==@lists.infradead.org
X-Gm-Message-State: AFuF++kG6bXJVtIdNVKDz2Wd1L6ExK7aae5VeHYxpSxfbxB3fVV/lqnG
	Su9aDXoNQRPek7pMfZ3lHcUa1jT/5RLxe4fT0i5ngWj/a0Y44qnior4H
X-Gm-Gg: AYBFou1CEQkG26cpYI5S5+f/hIBf/GjUmwxDaZG5Qk1ArEynNebeJZTGCC3s0meCAEt
	keCcX3/18P21BliTuhN8SjeKtTID8NzPM/OkYkk7tkDOUMoHL4G0vMdHGG35N5/JVMemrCbGC60
	iQ5YDMVbtdzTY8U/nKtqI/pw7vMzOiSJSN8amEgX4BDmVJQ18Iz0ceUhyPuCQ1cOZGB/XHApmwi
	k+lZvkaKJoMZRRvKwZcEPwEQfs3xdSf3doNi8YdPugs8g6N7icVcv+O8JC+J7I26wXxCLOsegFc
	y9Wzy0NdVEp7jwgic0WsyIxHqxOeudDjpZVJ5fUMTo1l8gAAYr2iyepnOhY5GOHykUUa7Hz+y+P
	dqB/VVAFrbyLar2AI7S01TqII/4OVAdCiSkk2NDr3DKDyU5JILwV1bSlY6rz4SLH1I9xfo8P0p4
	CgwOwH1q35RZ1kGySN+dFxHwLUAm0YpolfGZ42oDN+GoWabKc4TUkymUY=
X-Received: by 2002:a17:90b:38cc:b0:3a0:9564:2d3c with SMTP id 98e67ed59e1d1-3a09860e008mr1308139a91.8.1790249024756;
        Thu, 24 Sep 2026 04:23:44 -0700 (PDT)
Received: from lgs.. ([2001:250:5800:1002::de93])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a0813318c1sm3586800a91.4.2026.09.24.04.23.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Sep 2026 04:23:44 -0700 (PDT)
From: Guangshuo Li <lgs201920130244@gmail.com>
To: broonie@kernel.org,
	heiko@sntech.de,
	william.zhang@broadcom.com,
	kursad.oney@broadcom.com,
	jonas.gorski@gmail.com
Cc: linux-spi@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linusw@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	jon.lin@rock-chips.com,
	bcm-kernel-feedback-list@broadcom.com,
	noltari@gmail.com,
	lgs201920130244@gmail.com
Subject: [PATCH 1/3] spi: fsl: unmap immr_spi_cs on remove
Date: Thu, 24 Sep 2026 19:23:27 +0800
Message-ID: <20260924112329.1566051-2-lgs201920130244@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260924112329.1566051-1-lgs201920130244@gmail.com>
References: <20260924112329.1566051-1-lgs201920130244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_042350_467863_4AD2089A 
X-CRM114-Status: GOOD (  10.65  )
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

of_fsl_spi_remove() does not unmap pinfo->immr_spi_cs after a
successful probe when CONFIG_FSL_SOC is enabled and fsl,spisel_boot
causes of_fsl_spi_probe() to map it with ioremap(). The probe error
path already performs the matching iounmap().

Retrieve pinfo from the platform data and call iounmap() when
pinfo->immr_spi_cs is present, pairing normal removal with the mapping
established by of_fsl_spi_probe().

Fixes: 0f0581b24bd0 ("spi: fsl: Convert to use CS GPIO descriptors")
Signed-off-by: Guangshuo Li <lgs201920130244@gmail.com>
---
 drivers/spi/spi-fsl-spi.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/spi/spi-fsl-spi.c b/drivers/spi/spi-fsl-spi.c
index e45816ef7b65..665902703973 100644
--- a/drivers/spi/spi-fsl-spi.c
+++ b/drivers/spi/spi-fsl-spi.c
@@ -702,10 +702,18 @@ static void of_fsl_spi_remove(struct platform_device *ofdev)
 {
 	struct spi_controller *host = platform_get_drvdata(ofdev);
 	struct mpc8xxx_spi *mpc8xxx_spi = spi_controller_get_devdata(host);
+#if IS_ENABLED(CONFIG_FSL_SOC)
+	struct fsl_spi_platform_data *pdata = dev_get_platdata(&ofdev->dev);
+	struct mpc8xxx_spi_probe_info *pinfo = to_of_pinfo(pdata);
+#endif
 
 	spi_unregister_controller(host);
 
 	fsl_spi_cpm_free(mpc8xxx_spi);
+#if IS_ENABLED(CONFIG_FSL_SOC)
+	if (pinfo->immr_spi_cs)
+		iounmap(pinfo->immr_spi_cs);
+#endif
 }
 
 static struct platform_driver of_fsl_spi_driver = {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
