Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2387BC07E9D
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Sep 2022 08:07:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4rd8jIIMLjJDt8FMsXVJbZznwZg3Qd6TrmDbHndSsIM=; b=SEH3EldGV9niqP
	hckpl4lYIdUVm9V99897BzRVuwJyQx65LLcv2cEPUb6w0fiVAbxX2Th8JAmunQLeB8yUMYR0AGRNS
	i2STjU0HD1kvAQDE7Tmbh8YyPqOli/ycFAYIavcTvVIj3m9GHk/XEjAddfO0C0Fz54lCwTyxFhnVQ
	jt4mS++kWBDejvNuwS4vjr/3HMxGKWJ8O6Nm36/6XczDQ1eAjEOv16m6fo+NC/HQa0LuQG12wU/OQ
	CEi/AxxtKu163yrRVbfnRKDCCebhG2Z+W16UBQlUxoKDI0jyQv4+huO0HNCtLvwmZDNyZlBbj/I98
	uISzvPdo6BF4+XpTlsxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5cu-0090j7-OJ; Tue, 27 Sep 2022 08:07:36 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5Wh-008xsS-Cv
	for linux-rockchip@lists.infradead.org; Tue, 27 Sep 2022 08:01:14 +0000
Received: by mail-wm1-x32b.google.com with SMTP id r3-20020a05600c35c300b003b4b5f6c6bdso4969805wmq.2
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Sep 2022 01:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=wPGAhdd0/cVSzg/VD0f276D5LseQyNwXzj19lsEfYlU=;
        b=0vxLZEGja3Z/vABzdvDHqbhHIpXhhJzdAnPiiYDz7Evr0FarEc6VZtXmUGNDadiRlF
         Pd5rc+dt+crkZUBayKcBU6gLWM7C5vJrVYSMzYpaFDengcOQOWJnyDK+2Qp+nRHl800L
         lrlJOQ9Ey4hzdsmiMaLY370jgWZOHhVhwDlXttSQUKIMRr0VhK/W8d6tzSQ4cWK/e9P6
         rZfaHm8+PhuEDEYWpHOr3QGdx+g4rvF7+OEDAUdsmh64i9ZcAAFw3RqCVAMaPJbiXRZD
         NvUZgoLTYLTKC2Zrk5Erx8Nr3OmVyFrN/+uQRSTAq0t4srB0sG6XfjDo6VLQK3ah2dqn
         AZ3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=wPGAhdd0/cVSzg/VD0f276D5LseQyNwXzj19lsEfYlU=;
        b=BsUyGLpdnh7UDXFL5byUj7c/ittIbbmXoGEVBzqNdNLL0WLJPSeDflw+V0XgZ04ems
         F8xKUiWiOwA0HKCqG0t4ypVJtVNDw+aveRTlhjWdIyAP6GFvTnYS3SlczyaF2eukBUMI
         u9KKyYzT1BSbTovm2oF+O25iMonO3BfKrUIkiS+31/xXOY4Uu5LhrWcoGFwr7TpaCsBV
         ordJvBSaASewkYu4gEOpIdsCBtMLo8AP5eSxBXf4PLnt1wJ43S12YHquYcb7oOllibji
         lzu+hta0YmFxyOVORW+ZCAJSr/+zfRj57ls3A80TgnLH7AeexF1DsVyKpOnD0LjUdNJY
         NEcQ==
X-Gm-Message-State: ACrzQf2dmuRCbkKVLR4F1ruUasXs3fKrP1lIsFjo7mMTjHknpxsP9THa
	2I9XwtWfUzjgIgxGrUdvIxIiyw==
X-Google-Smtp-Source: AMsMyM5z40kZ9WpI9Hrvz83bGhzPKvE5thgsJk4hmPydLZ463Byz6OMkecVmVm1d/vWNJef245sRew==
X-Received: by 2002:a05:600c:410d:b0:3b4:9454:f894 with SMTP id j13-20020a05600c410d00b003b49454f894mr1567838wmi.111.1664265669754;
        Tue, 27 Sep 2022 01:01:09 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id p4-20020a1c5444000000b003a5c7a942edsm13357199wmi.28.2022.09.27.01.01.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 01:01:09 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	davem@davemloft.net,
	herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH RFT 3/5] MAINTAINERS: add new dt-binding doc to the right entry
Date: Tue, 27 Sep 2022 08:00:46 +0000
Message-Id: <20220927080048.3151911-4-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220927080048.3151911-1-clabbe@baylibre.com>
References: <20220927080048.3151911-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_010111_484866_C9A16677 
X-CRM114-Status: UNSURE (   9.96  )
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

Rockchip crypto driver have a new file to be added.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index fffc36ee3c99..2d9c95ae44e7 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -17712,6 +17712,7 @@ M:	Corentin Labbe <clabbe@baylibre.com>
 L:	linux-crypto@vger.kernel.org
 S:	Maintained
 F:	Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
+F:	Documentation/devicetree/bindings/crypto/rockchip,rk3588-crypto.yaml
 F:	drivers/crypto/rockchip/
 
 ROCKCHIP I2S TDM DRIVER
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
