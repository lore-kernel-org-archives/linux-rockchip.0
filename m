Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 881A3C07E9D
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Sep 2022 09:07:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dMscJtp68Bm1C3vm1JdDa8HEdZgAprFBWuiMnOnaWFo=; b=K6LyEaunU/I49X
	ua+sVvF0IF/tsjkQR8gBBHfwFIMo1OGt9wjl30dxlUBXp+rsK3uqsdZh/o+KtDVRhAnxMK/gczuhx
	+QLGnnOHH1S5hYGqDb9yn2eXL3WbCFt4ArI/UxCQAvyIy4lwbzOhfT4A1IgJp3FiEKNcUEMM2fXAt
	M1xCzkSAst7vB5ZOKZgjaQxgr0ctHw2U8URHJ+1mDgRD3LSeTPUrpCEW2AErUb8gOuid9akqjdu42
	/FUsJwA+M4nGBFnkXZnrUkcNZbZrqmH+IjwFlKDnXvW7Kj9cdXF7MJSnzD3Mhj3LbguQV3/CxVUia
	ohVzgCHQM+rP+HEsS3hQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od6YF-009NzX-IN; Tue, 27 Sep 2022 09:06:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od6V7-009ML8-AQ
	for linux-rockchip@bombadil.infradead.org; Tue, 27 Sep 2022 09:03:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=V0VQZblY3ilqDl88ksU7sNdmpCxvXcKe3g1VMncWlyM=; b=boiNWmMG7pXoF+mqYq6EDfL+Nn
	ISWNIs6sN9TDcvpINK3v3WKVZ6UNl2d6ZIA2VHUO/xre5hVg8iMEda5E5H10rhiwIqRbI17/2BT/V
	9FNSbK5BSSZ8IlXgjKrqH5iDwAVo1O2xc8uIaN7qtB458uTrCaJDFK+yIhw8h7dtEa4gtruCwvziF
	z9d8/FtNZbGLwGUet6nbQZjWrgiEvkU4XRX0udeZ8Bh/GwCcKTmxfJHuAguuK6EjLs1POkYY9udh9
	eCwgOXYtc2bFzD11prnXDmgMYRiKKRVAFZxyPrSB8eOJypnCx68FzIWCXre9zgQL3SIaoq1SQIelx
	HJmcZnFQ==;
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5Ra-00GEkm-PV
	for linux-rockchip@lists.infradead.org; Tue, 27 Sep 2022 07:55:58 +0000
Received: by mail-wm1-x334.google.com with SMTP id o5so6000245wms.1
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Sep 2022 00:55:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=V0VQZblY3ilqDl88ksU7sNdmpCxvXcKe3g1VMncWlyM=;
        b=1PX3SXj7VPF0pe7fhlNFB9cxwIRGoeeqcKLXCn49u5WMzeqSM0T09nj6e3A6DOKU8q
         tGcMs5u7Y80omnaGO5Bqw4gPL5/YObdpQYk4sXIQc+Bv6xJobf1FIeT//nhZ8Z9tiu4g
         dJo4c3LyA1MIScZWHvRYHWrDq2fDzTcKsEmlBe76Bbu916t+kk3MP+dzVtZGxyIb7N7D
         LyDyu6wDzZXY5DIBWytQLu3dfejqbgNgJ7dx0MPJqPpOX3TJ2iSA+eY2PS7Y+uZCqkh0
         K1pGmnB3scOqO6nbgmogm3dFqMkElIzaBqI8+x73RdpMpCYZDjqwP1Z703xvRCt/2P1/
         dYZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=V0VQZblY3ilqDl88ksU7sNdmpCxvXcKe3g1VMncWlyM=;
        b=aDWK9LQn4RLS6E3CJiTLo0T14+nszgItrb7/VYPZxRd2Y1DZThJ/dTtP2gFz/LGwFD
         zixqEdk+NMMyfEhlruC0w9oZTRVBGQ3WId9jPJL4gdO0PVhiZOEwJG4Zr67zR0WT0q0l
         3TeFWGW6SUJVp9bDAc14U11RyVbev/oD2V4XoZ0/8hmZ2v3mutBTsx6p70DcCc3Zn+/n
         SpkQOy9sGQVRjliPWu9ZpwoMMJ3eTF6UjMCmnEnVQDA8n/Vf4ZCx6Qv5OR+O4okBscrb
         IjYjp/GDrlqw5NhECXd24U4Fle9mF0IZkIV3TuQIOB/vfNdqzG7w/V3U+zYOp0/5kGWp
         57FQ==
X-Gm-Message-State: ACrzQf3sJ3xOeG7TN22m+NPV7Urg6L4AzZQtKRsVQu6RVEBFMIz7RM7a
	lqNazHhkdhgzADnZQHfBzpk4fw==
X-Google-Smtp-Source: AMsMyM6frkTpArL1ymbs5PR7cpgsCIvMZ4EbT+UIaulpCw2vJIN/ofpo1m8tRMkH7XX/NfYVj+uOOQ==
X-Received: by 2002:a05:600c:1da2:b0:3b4:856a:162c with SMTP id p34-20020a05600c1da200b003b4856a162cmr1578572wms.28.1664265354557;
        Tue, 27 Sep 2022 00:55:54 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id x8-20020adfdcc8000000b0022afbd02c69sm1076654wrm.56.2022.09.27.00.55.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 00:55:54 -0700 (PDT)
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
Subject: [PATCH v10 19/33] crypto: rockchip: add support for rk3328
Date: Tue, 27 Sep 2022 07:54:57 +0000
Message-Id: <20220927075511.3147847-20-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220927075511.3147847-1-clabbe@baylibre.com>
References: <20220927075511.3147847-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_085556_701776_9C066968 
X-CRM114-Status: GOOD (  10.99  )
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

The rk3328 could be used as-is by the rockchip driver.

Reviewed-by: John Keeping <john@metanate.com>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index a635029ac71d..c92559b83f7d 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -202,6 +202,7 @@ static void rk_crypto_unregister(void)
 
 static const struct of_device_id crypto_of_id_table[] = {
 	{ .compatible = "rockchip,rk3288-crypto" },
+	{ .compatible = "rockchip,rk3328-crypto" },
 	{}
 };
 MODULE_DEVICE_TABLE(of, crypto_of_id_table);
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
