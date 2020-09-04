Return-Path: <SRS0=xWqI=CN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D8F7C2BB84
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Sep 2020 18:36:57 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0EE6120665
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Sep 2020 18:36:56 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="2i7X/eGW";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iZQkkf6i"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0EE6120665
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RYpvgEQtBj/HaI5U3L0OIRKzI6uMJRKqahOrjtZUf38=; b=2i7X/eGWtCOmQuVb7gILJyEvKt
	qJF9Tw9h2t4UJRfsjC76FGsJd0SGSN63/BYzRtdp+6ZBOE5M4HIoR4PDtfY0BlrLvCdwi3M7XZrkw
	lI6YZPjumsT5jtdT3GICcW/5hNfI9mjg2iAka8fQS/8jAGwEP4LIlN40I77ARbazf6vw7a6papo9Y
	SgTIKroyz1hUixpsBi2zOGAzw3EWlZICtKEYEX4nD+/rFPqjE3Js/Hng+TA8DeL43VoiaKIeTVlnj
	y6xnXxeb7czUMak4g2vCBErqNkZ7/ikiLlqtL+azJ8Ru5QYGqK/+zR7KCENOh5z9bKSMNcu+wT5y5
	+jKddkhg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kEF8m-00059M-1T; Fri, 04 Sep 2020 17:04:44 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kEF8h-00058D-Lb; Fri, 04 Sep 2020 17:04:40 +0000
Received: by mail-wm1-x342.google.com with SMTP id a9so6733333wmm.2;
 Fri, 04 Sep 2020 10:04:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qnhyxI2YW5mCxRpk6hspno3Ftt+MAEF29reZU4Qqw2U=;
 b=iZQkkf6izy+fvsbb5gd2CCpJANc2aFO2akcl5DrXKfp/Zd29xDWNH8JHNG7iH2QCPI
 3Lw/zdWQLASMouw+2tht0b9dJM7YwAClfzpE9Uyg+RdNJuYdSC24ClQcbs8TTsbgsH6E
 KVe8LIvhfpsfY8KOgERJYvJY7c8rsddfLmxCJ0LL3QdrKyH1hTb1aPx4uowyjB23RHZu
 /evXgP1vA4rx+EjTtO1WPLxTFQRG33rmDph6zGXhgux/YX4wZ0oin6GT3tKBvUsHlMCV
 cLEdbvhqoKhb6xbxti0lmjZ2QVqL4z+uPTeXZYunWzT8YjDmkI+OY/u+TAucokSqcZ1J
 SA9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qnhyxI2YW5mCxRpk6hspno3Ftt+MAEF29reZU4Qqw2U=;
 b=HERYnt0sDMhU271pgf9l84t5mJeGR4J7XPrHxJCld2SHPYCQCweVWR40umz096lvMO
 qhowjsykakdOHRkSZYyMofOwFWI7CRjBLIgkX8dWLUCp7sPydqE4zl1z/JFp711FnLDV
 NNgf7rIYrUJeNocjiXoHcNN/a0lO6jYdm0K1wskIcR7x6lolCozkXvJM3ZCwQqOFYgLB
 jeUdgfx0+TvDZ5hDwKgyn+UFtWBXjRtc75l6Jwi3Ot5YKbpX2n8Bqibsg4kM6+AZZin/
 gJb7riOICWBAv8L2ZUPLnu17et9wQhtYeX8IDmuj4poqzkbXRWg1Ti/cwjFAxdZu7GHv
 cumQ==
X-Gm-Message-State: AOAM5334EKKWfIolZs0SmoKhKBH1fk8+eYJcsJFwsOQ47NwP8q10HgJC
 k4Mvg6My0ip9kGHDtOyWz80=
X-Google-Smtp-Source: ABdhPJwTay7wrMhUJ7lacbMquseeNhy37Fil53XNxaCXx7jKQTbxBga2aWvaK3SVGUi5cXCZB8GUng==
X-Received: by 2002:a05:600c:2109:: with SMTP id
 u9mr8060516wml.147.1599239072429; 
 Fri, 04 Sep 2020 10:04:32 -0700 (PDT)
Received: from localhost.localdomain
 (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net. [82.28.105.188])
 by smtp.gmail.com with ESMTPSA id 5sm12144759wmz.22.2020.09.04.10.04.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Sep 2020 10:04:31 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
To: 
Subject: [PATCH] iio: adc: rockchip_saradc: Allow compile-testing with !ARM
Date: Fri,  4 Sep 2020 18:04:16 +0100
Message-Id: <20200904170416.16061-1-alex.dewar90@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200904_130439_713394_2DCA3DFC 
X-CRM114-Status: GOOD (  14.04  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Alexandru Tachici <alexandru.tachici@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>, Heiko Stuebner <heiko@sntech.de>,
 Michael Hennerich <michael.hennerich@analog.com>,
 Saravanan Sekar <sravanhome@gmail.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-rockchip@lists.infradead.org,
 Linus Walleij <linus.walleij@linaro.org>,
 Vincent Pelletier <plr.vincent@gmail.com>, linux-kernel@vger.kernel.org,
 Beniamin Bia <beniamin.bia@analog.com>, linux-iio@vger.kernel.org,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Alexandru Ardelean <alexandru.ardelean@analog.com>,
 Alex Dewar <alex.dewar90@gmail.com>, Jonathan Cameron <jic23@kernel.org>,
 Artur Rojek <contact@artur-rojek.eu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

There seems no reason to allow for compile-testing on ARM only, so
remove this restriction.

Build-tested with allyesconfig on x86.

Signed-off-by: Alex Dewar <alex.dewar90@gmail.com>
---
 drivers/iio/adc/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iio/adc/Kconfig b/drivers/iio/adc/Kconfig
index d94dc800b842..03929606bb01 100644
--- a/drivers/iio/adc/Kconfig
+++ b/drivers/iio/adc/Kconfig
@@ -863,7 +863,7 @@ config RN5T618_ADC
 
 config ROCKCHIP_SARADC
 	tristate "Rockchip SARADC driver"
-	depends on ARCH_ROCKCHIP || (ARM && COMPILE_TEST)
+	depends on ARCH_ROCKCHIP || COMPILE_TEST
 	depends on RESET_CONTROLLER
 	select IIO_BUFFER
 	select IIO_TRIGGERED_BUFFER
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
