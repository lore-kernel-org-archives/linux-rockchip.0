Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D0ABE80A8A
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Sep 2023 22:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/i+avrFzHnUz50Df21ykEDYtlJ/mC0rn5T1U9vVhIhY=; b=Db6iJi7NpZeFHn
	9PimV9SpzfKLlwG1p6Hwun8YCrazm/4hkwQdQhomybf5r4OcY2BmyK9+laZn94/ZY7Ys8OVZXWDQh
	YiHGvjhYQb8ZaGV+jt0QfNOjTdcW8ey+CvllAfmx/79ZURXXvMW2YcSuDfP/R6c08HbLwL9ygXBvQ
	+6E7B+gqgR0yZc7V2gMzKZA3fM2Fz6KmBFWHAAx5Q6VLvA3sknY6LLNtIVOg7JFgrs2cnWQPOfibh
	6ZuLUVO+r5zMb6eFciIbcTGBJd5v2KtC1+QeOFyQFVZy0MAeqcy0v10yDR+PxJLjKL/+Du4wemvd8
	sqCLeshWra+49oBx5XFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qldJV-001rno-37;
	Wed, 27 Sep 2023 22:47:25 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qldJT-001rlD-0G
	for linux-rockchip@lists.infradead.org;
	Wed, 27 Sep 2023 22:47:24 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-504427aae4fso11782594e87.1
        for <linux-rockchip@lists.infradead.org>; Wed, 27 Sep 2023 15:47:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695854838; x=1696459638; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CY0vsjcVCBgE58w9UR6SBm++3xKyQBSwPNYicIzid6s=;
        b=BVFPxKw1GiHs4XiGuoPWG4ChbbSkKK6U6hSyGau/z4DTKEOf8FRrmkaTW1sID2KaOK
         R/e4mXHBpL3djilswoJKDjdcoMi53n05BClOl0snkOVUZVZe1U/I5PQzt9/uAMJsIc9y
         k/+MDYVU9mOa/RcboAk1O1jHHfRNeQvZBf0HI41ymW0WBC3K0LQNSQjBZE5kfoPM1eeh
         X1LheYd3Ndfqc/o8C0pjxLr764OAqtGe1Hlg45xxyIxV91SmGAgHE8H4XJiXFw8JGFdn
         KhJ8aDld+GzbeimJLUtfmjpk4WsC3L0zKuX+bC4V9juxKW97OqjquycKCrYrOEtEO279
         uf3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695854838; x=1696459638;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CY0vsjcVCBgE58w9UR6SBm++3xKyQBSwPNYicIzid6s=;
        b=rPjPpciu9dzo/+aTOkdOPJzu5LJF74td+GAsN0xTcGJ9nzEcNWsjj1eTicXw/Tv5Xz
         UDpPt5IvitvD9pYjRXhHHGEPQlL0IqizTf8v0QrDACLnQouvdIHR86sVY8OYvQuGjjL/
         VE87YCmDAyfsB7C+/NcmAP5O0pjDRqrQJQxnofvbRm4PSaOUrFJsSSXhyZhjfyl8LR2z
         eVt0cPddiM+ohVCQBrmEasFFSoFlKZ0ZgwvBrqTtktOTHkPPEFM4TAr8rYK0qY85m6v4
         f4MXjqbfINl0AbJB3zoxpNid7HBpzt6Jy9iDzcrFaDHSWz+wbtLv+SQ46StiAyNDuFUh
         aSwA==
X-Gm-Message-State: AOJu0YyTjWlb+SfxKOWoFldsTzal4P8i8pz2kZ3EuhOlxjQIwdd4pvOR
	ktp/P7wJnSZdPHEsEupoyLTfg5j0BQ0zj76pSFY=
X-Google-Smtp-Source: AGHT+IEX4yAeJVMQ9xLxRU+QUVQR8aPJSks9x5s8hY6YWkQ+B5BI90m9BXzskEw8JTnRLhnt+p9GEg==
X-Received: by 2002:a05:6512:110d:b0:501:bf37:1fb3 with SMTP id l13-20020a056512110d00b00501bf371fb3mr2796624lfg.24.1695854837664;
        Wed, 27 Sep 2023 15:47:17 -0700 (PDT)
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id ep14-20020a056512484e00b0050296068a12sm2801746lfb.30.2023.09.27.15.47.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 15:47:17 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 28 Sep 2023 00:47:16 +0200
Subject: [PATCH 3/4] ASoC: rockchip: Drop includes from Rockchip MAX98090
MIME-Version: 1.0
Message-Id: <20230928-descriptors-asoc-rockchip-v1-3-a142a42d4787@linaro.org>
References: <20230928-descriptors-asoc-rockchip-v1-0-a142a42d4787@linaro.org>
In-Reply-To: <20230928-descriptors-asoc-rockchip-v1-0-a142a42d4787@linaro.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: alsa-devel@alsa-project.org, linux-gpio@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230927_154723_118459_949D43C3 
X-CRM114-Status: UNSURE (   9.83  )
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

The Rockchip MAX98090 ASoC driver includes two legacy GPIO
headers but doesn't use symbols from any of them. Delete
the includes.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 sound/soc/rockchip/rockchip_max98090.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_max98090.c b/sound/soc/rockchip/rockchip_max98090.c
index 150ac524a590..8e48eb8aa7ad 100644
--- a/sound/soc/rockchip/rockchip_max98090.c
+++ b/sound/soc/rockchip/rockchip_max98090.c
@@ -9,8 +9,6 @@
 #include <linux/of_device.h>
 #include <linux/platform_device.h>
 #include <linux/slab.h>
-#include <linux/gpio.h>
-#include <linux/of_gpio.h>
 #include <sound/core.h>
 #include <sound/jack.h>
 #include <sound/pcm.h>

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
