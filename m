Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82CD1C43334
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jul 2022 10:29:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QD51c4VaC622sHzgs5YuqTYYf2zcsbQDMtyxi5BAb64=; b=XHznmMXfbrmFAL
	Ok6OeUc8JJtcqbh4ogVjyFXty/LSqXEQB8itS1BwLMDQJPs0SeD7aFFFXT9FRKMbsTr/SKNxKQMfv
	l4GjhYlOIDYFhSw9AthYv9h1nFPa8Fc9LjXQAC5/0QrmEwxVJ7MC4CZNdco3WyWX5/uJTslfHj4Ej
	iQYNnMh6KHzXZCXVlG4KFVxL7yEisaAJDXUTUvIcEqBsjsZuIDJlsTAWSlGyjN0h4USaNH5ZKTRKi
	UI52cHr8cahIRK7IkKU/6SRZYmc4tlQF3UsaSwkrFD8njjim/lf3QmtYwRDUhtW4pe22JhvV3CkZi
	7b0wfsB5UL1cozrc60/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o92Hl-008VwZ-GS; Wed, 06 Jul 2022 10:29:33 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o90xm-007bj1-Cp
	for linux-rockchip@lists.infradead.org; Wed, 06 Jul 2022 09:04:51 +0000
Received: by mail-wr1-x42f.google.com with SMTP id d16so14734540wrv.10
        for <linux-rockchip@lists.infradead.org>; Wed, 06 Jul 2022 02:04:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QRwoijrMVyavgOhukFjDrHIPhw2Aizqfl4rhNplf9c8=;
        b=EbUW1CorL++pA5HZwPVyXI6H8KXbBXQOWYFlcoiY3OJsBDxqinf63l+PavhtEofQAo
         W5ftr1cD08Cle/swB280sWtQPz3Biv445WGbK7hStJXcJbOz9fGedSzu8RCp7g5c3g9M
         jSSYhf9YXDACW67Yty9sEtXLo7REbXz6KWlh7kadZkKFilPJoloPNyfRXJUEU80sAnNj
         vs3lWwjwx51u0xAyJT3JjzzG6IfewPbFTHbbmQIFuKMeB/dBz+ti+h+gaRNVbaZzPR7P
         ANktB5poxuBZ1wpftcZabrVA2vcgeVzX3tfT8DtYQ/5Nrq6kDF60QW5/cWpMtLfKfuPk
         cRNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QRwoijrMVyavgOhukFjDrHIPhw2Aizqfl4rhNplf9c8=;
        b=QlGzUFEOMhm2uVBGmVc19Szuf8bohL4QRAD4CZLgf+UvtKdeN+NRZ6eHv1/Aw0HmGs
         IWZ6mPP0Nr5MJuECUok5+IAytTBhe+7orZrbakm2C1dVTDwrG+5Ukwu6Ulnq8yA4Tc/S
         myV+gYCQdj+I9Z2n8YtDJvtRbtiCG9qGcy+rcboeUO5izaLlVAx4/PnLozklWbhOWJjp
         IOKEs9hQU3hVGQElxYmdGxRRQFQpKzNQqoM6ZxP1Fk4dt7E96CbbOoiY5jE9f8gywP7u
         SPW8jrJZv0HeZFVhw0X+1bKqrdTSxKmSuwF2zsVIKF0tuBnmAnl2EZL1/fz2D/pFrcYi
         fcTA==
X-Gm-Message-State: AJIora9HreXJq+fMCPzF5UNmf6ppWK/7SJNq3MkrnPpFbBkFyxLhv46W
	vur5ashnXZkSNQpG82UvibkBfAKYINSDYw==
X-Google-Smtp-Source: AGRyM1uHRACL/yhNWelXRoGTrppw3+XTWYAI6/alcnOGghNjRVtWhGW3TsrfO52e6QKv1JVHStv7sw==
X-Received: by 2002:adf:e8ca:0:b0:21d:4ace:15b1 with SMTP id k10-20020adfe8ca000000b0021d4ace15b1mr24902118wrn.400.1657098289986;
        Wed, 06 Jul 2022 02:04:49 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v11-20020adfe28b000000b0021d6ef34b2asm5230223wri.51.2022.07.06.02.04.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 02:04:49 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	p.zabel@pengutronix.de,
	robh+dt@kernel.org,
	sboyd@kernel.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	john@metanate.com,
	didi.debian@cknow.org,
	Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v8 16/33] crypto: rockchip: add myself as maintainer
Date: Wed,  6 Jul 2022 09:03:55 +0000
Message-Id: <20220706090412.806101-17-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220706090412.806101-1-clabbe@baylibre.com>
References: <20220706090412.806101-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_020450_469095_C76F649A 
X-CRM114-Status: UNSURE (   8.50  )
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
index 392e59e9a03e..f8af07fa96fe 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -17449,6 +17449,13 @@ F:	Documentation/ABI/*/sysfs-driver-hid-roccat*
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
