Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF84DC54EE9
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Sep 2022 08:03:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6UdVQowzcGZ7XpzNsBm1TacOkzQ15X6/cNqGqZIaMc8=; b=SkpDXlU9Mj0PDy
	/QwpdFUM/kn68rP6i9916HVxwHBIFBvgAqy62jrx1pXv8DeUHwNUjF76D/aWOiViK/jNNPLXYqJ3y
	vVwh6pwDaAcGzDyMUf2r/4NONtWuKvZd4MobVx5yjraGJcb7x996c+BauaaqbfhBuzvwfxlBTX/+C
	6+CbquT/On8rpxZdSquBDj6ipSgbR8Y0EHPKOs4bYQbkQDWaqtE4ssAS1oMMqD8wLaDY48HmnYssw
	cb9KfP6aPucRCifxxKLWv5uR60NZuDWsEqsDyKbA8AxDTydr5yxsY45Y+hgctpHfpeNbFHImJv1u8
	3OEwMJYVAf3yBHmueKaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5Yc-008ykC-PN; Tue, 27 Sep 2022 08:03:10 +0000
Received: from mail-wm1-f46.google.com ([209.85.128.46])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5Ra-008uz2-Io
	for linux-rockchip@lists.infradead.org; Tue, 27 Sep 2022 07:55:58 +0000
Received: by mail-wm1-f46.google.com with SMTP id t4so5974314wmj.5
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Sep 2022 00:55:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=7ylfTYeCV4qm7Xvrt0AIQJLtkrEPyfygSFvvPlELDM0=;
        b=wbc0SyvXaTABHib78FBmKP0lE8/ezGuglpmYtKia6eLXSGdcnnuFZMkaTGKpXEox4l
         ej+Hu/upuxu6yu9UE0GM8vHx+E47AP2++H7Qcv5gphNO3kGJWajB32KvPh0HH3iwIVgH
         GlfryTyUxdtGkELhzh1hfnyQqVtxXHhRSoHqMDRYSQpykLw1uDm4VkyyVpU1rzYLJsmJ
         grs2Bx7U5y86yamAWrJ9B7/ODTH22xtzlr4xnxhQ+40iT/TuM1TQ4tP00HDR0ymArd5Y
         k0EgwtLUppyzKohuWTHK/iDb4TR1FCbaJBuZ8TRFAUinMweAt42fMZQFiNfxu2kPCw/G
         ADVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=7ylfTYeCV4qm7Xvrt0AIQJLtkrEPyfygSFvvPlELDM0=;
        b=inhyU9LDy81d9yWE4wzCiRgZtmwFqs9HRkcWMINIpTEpci2ZM1pD5PuNup6+bHXWAt
         wYeVu19hzYJcLH8BtVPh/ZCH+jpODvLQM0cMSZ/Sp1/WI9nNQ3IkQvizaQFBV6sOHjqM
         oibtQD+14iOTJb5p9KiRJYSJVwumypvbEMHaqPSrUFeXibSLxtl9d0QCFDCdIFMdgQvG
         9Y0Ebs0JKW8EflZsIPuOpM4+LGIGjXdnpZxz96LS67CmT5L9//2luSJXtjZdbl9s67gb
         r6oLFkIuooqrpZ4XeI/hIM0NHUsQLvnCVWOAote9fvvSGr0h7tFYwWo9gYn3d6G7lmZq
         GXpw==
X-Gm-Message-State: ACrzQf31qsRH0x8YW2g97VUq2y9+WEJvl1XDs+tNrhpCfJBiwf+X7kxv
	Wzf1Uafk5yu0hi/1cvPIdH2UMQ==
X-Google-Smtp-Source: AMsMyM7KPzoDPDP6P3GJiPjCTQ7gxxhh8hRIjHM6cB/B4uAKtXlN9csha8doRS7dLCk+7FZcdL5dMQ==
X-Received: by 2002:a1c:202:0:b0:3a8:4197:eec0 with SMTP id 2-20020a1c0202000000b003a84197eec0mr1602533wmc.83.1664265350864;
        Tue, 27 Sep 2022 00:55:50 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id x8-20020adfdcc8000000b0022afbd02c69sm1076654wrm.56.2022.09.27.00.55.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 00:55:50 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	ardb@kernel.org,
	davem@davemloft.net,
	herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org,
	sboyd@kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Corentin Labbe <clabbe@baylibre.com>,
	John Keeping <john@metanate.com>
Subject: [PATCH v10 16/33] crypto: rockchip: add myself as maintainer
Date: Tue, 27 Sep 2022 07:54:54 +0000
Message-Id: <20220927075511.3147847-17-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220927075511.3147847-1-clabbe@baylibre.com>
References: <20220927075511.3147847-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_005554_649153_4EEE44B2 
X-CRM114-Status: UNSURE (   8.89  )
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

Nobody is set as maintainer of rockchip crypto, I propose to do it as I
have already reworked lot of this code.

Reviewed-by: John Keeping <john@metanate.com>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 MAINTAINERS | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index d0d808564539..4798da736ad1 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -17702,6 +17702,13 @@ F:	Documentation/ABI/*/sysfs-driver-hid-roccat*
 F:	drivers/hid/hid-roccat*
 F:	include/linux/hid-roccat*
 
+ROCKCHIP CRYPTO DRIVERS
+M:	Corentin Labbe <clabbe@baylibre.com>
+L:	linux-crypto@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
+F:	drivers/crypto/rockchip/
+
 ROCKCHIP I2S TDM DRIVER
 M:	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
 L:	linux-rockchip@lists.infradead.org
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
