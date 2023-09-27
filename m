Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C54FE80ABC
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Sep 2023 22:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MzqUsOiK59fvhLDKy70uK0nUW2RTnMDWCDyfWmIBq34=; b=VRcPA53p/oqjmE
	xBw3X0z5wC4SryWva3jBp9ObvbPzQatfZTvoyMmDzrjcUi8hEP9LiuUhHbOfAPe+KJMTFryOoi2E7
	ehVSjJ/zK21M37sqJ9wwqoaMa9oqmLaZ0LZcrb1ww7XbBt9Styc11DrZj6xghYq+RZi+fS6VvfKN2
	WpJ5pvgmsf1UvMmNh2v5T9Duvpb8oXqEuXynwHL6XWmDcaGBRrdgbXP7JuGD2UtxBPAEoV+1nbCA9
	ynvmKyRPFVlggLAXKgk1bHk88Ni4rM7aC4P03E/EPkAP6NufnkW1DbtEDmusRyDLXY+9y0ACa17zI
	J9JPVmaD8Ptx0u/MIH5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qldJT-001rms-0d;
	Wed, 27 Sep 2023 22:47:23 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qldJP-001rkq-2m
	for linux-rockchip@lists.infradead.org;
	Wed, 27 Sep 2023 22:47:21 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-50435a9f800so18780632e87.2
        for <linux-rockchip@lists.infradead.org>; Wed, 27 Sep 2023 15:47:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695854835; x=1696459635; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1dCKjjzeijbdTSPrO4ZzfLQv8741SuwD/1oOGQ2gAfc=;
        b=rTOJEXDZxbk5l/YmyvrvggISXbVkhooOOsxm92UYMcfOV6ddO4UIhIHIy9pYrbMOH7
         12bWduoQlPfBax/WXQqsbB1GRkAS2RiM3+jx9NH0upHCIZ2BaqwF2tltDyl2fPdXnfwU
         IqZ3PzUUYMyDH/vt27G798yUwjocnm9i44sLsrPwrfUAujxOJhaLC6R/w3UPPlQv5c5C
         2yla5f4INstZ3QIWU8BBIe+52TrUWnhfHjFppBovCVn2h+TV2nzuApWJJIyivC00gqat
         MxgZI6vOg77tuvS74EI67EBPjv4f8pRa1YUrJIk0iKHxgAY2eRdIgBSfgelcKK+FrXQg
         +vtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695854835; x=1696459635;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1dCKjjzeijbdTSPrO4ZzfLQv8741SuwD/1oOGQ2gAfc=;
        b=CoBcxTogHHJhsHK97FyKLAROXoIklULQIWuOrz4ac2gOEErylx+lcHfmoNjh2fyZog
         RY2fHHlNQ/TonoXxGnjngPOumUUD6qD0cRj1rk9zOyADa46tec3XJOY6E28mZ5e1t75N
         PnEBFjm8VLCXSqY9n7WpiTZ6QhFZfwMFNrsAT+xgSfcrMDrm2NhUMzY+iqA+6whwMmF7
         5Oy6dDJ/yCbYoRKnRr3MWBvu8dIBBGRLAUqBvxQIiIu1YnTL9+BsNjo6ziSqz/C0O2vR
         wFF1bwNLxvhbDI+7jo11ZD6FrSV+kgrKNSKbR1uf7FW1mgMYFapSwyLRzdKxxXG60nhX
         WgKw==
X-Gm-Message-State: AOJu0YxA43jJY4DBdEFfj/VLUTG6Hv+EUytBa5sEkjX+U/Lp0T1+5SPj
	TFwW4hMP3CYQ/B+cLsv1MIHAVA==
X-Google-Smtp-Source: AGHT+IGhFAuBK5ertcQ4xkq/eaYTwDXePJsXKH8GWiwuuhP409Sx4xS0GQOcgVKOghVztPKWhY3JxQ==
X-Received: by 2002:a05:6512:3c88:b0:500:8f66:5941 with SMTP id h8-20020a0565123c8800b005008f665941mr3683799lfv.50.1695854835087;
        Wed, 27 Sep 2023 15:47:15 -0700 (PDT)
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id ep14-20020a056512484e00b0050296068a12sm2801746lfb.30.2023.09.27.15.47.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Sep 2023 15:47:14 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 0/4] Convert Rockchip ASoC drivers to GPIO descriptors
Date: Thu, 28 Sep 2023 00:47:13 +0200
Message-Id: <20230928-descriptors-asoc-rockchip-v1-0-a142a42d4787@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAPGwFGUC/x3MTQqEMAxA4atI1hPQVpyfqwyzqDHVINiSyCAU7
 25x+S3eK2CswgafpoDyX0zSVtE9GqAlbDOjTNXgWufbtxtwYiOVvCc1DJYINdFKi2R8eR/6ONK
 Tugi1z8pRjvv9/Z3nBWpkjGZrAAAA
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: alsa-devel@alsa-project.org, linux-gpio@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230927_154719_973848_3D946FB8 
X-CRM114-Status: UNSURE (   7.68  )
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

The Rockchip drivers are pretty straight-forward to convert
over to using GPIO descriptors.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Linus Walleij (4):
      ASoC: rockchip: Convert RK3288 HDMI to GPIO descriptors
      ASoC: rockchip: Drop includes from RK3399
      ASoC: rockchip: Drop includes from Rockchip MAX98090
      ASoC: rockchip: Drop includes from Rockchip RT5645

 sound/soc/rockchip/rk3288_hdmi_analog.c | 54 +++++++++++----------------------
 sound/soc/rockchip/rk3399_gru_sound.c   |  2 --
 sound/soc/rockchip/rockchip_max98090.c  |  2 --
 sound/soc/rockchip/rockchip_rt5645.c    |  2 --
 4 files changed, 17 insertions(+), 43 deletions(-)
---
base-commit: 0bb80ecc33a8fb5a682236443c1e740d5c917d1d
change-id: 20230926-descriptors-asoc-rockchip-833a4fbc7c1f

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
