Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34FFECA0ED1
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Aug 2025 13:37:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=F6ke3wFFJb/YQO/P7fMrr2p+e/ubHKo/jHmvHlkKT5s=; b=y8ainZ2SC8C/t6
	XrBl9TJBLPbGwaq2MzhgRSZ3XkTQ9VpfHuBBR5HKwiW5hpO0YUmrRbfNb474LcXFa6fqBwAtLjym+
	JN8b4eR6JcxHjZU37rz1A/VLLn8YBe6beZY73oETlZf6ClXV82KnM2sjKnZfC8U4ROlK9TEdS/jQd
	wTv7hSdDs79irPYAoLkLs2AkRrnhTzMKdMyBs/B2KwLxBsLoTITDYDetgg47H8lNOrCJgl5aWoqUi
	C0WwyPD/AHHPiSMGccz1HwcnMJKr1E8l+io2qMG+3XqWefOHqivoJnG1TYcmXoi2MeMDHQRuvivX7
	+DCAa2X1TkHMv8NX/KCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo03K-00000007U5b-3XxQ;
	Mon, 18 Aug 2025 13:37:34 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1unv8a-00000006vkR-2IGY
	for linux-rockchip@lists.infradead.org;
	Mon, 18 Aug 2025 08:22:41 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-45a1ac7c066so21040175e9.1
        for <linux-rockchip@lists.infradead.org>; Mon, 18 Aug 2025 01:22:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755505359; x=1756110159; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DfM3OUic4SP+kzMyP8kHHqITaKkedG37VBt2aK4wKj0=;
        b=dbCoCiAeZD4Ja4KLxDZXDatDJSzx3v1y28oUQCf/BwtnGfrWOzeQ7JVRMeJryH575C
         j9tJDC+6Mr6kBiRqXCpavzgvEV7zKmNjJfSgunLQrKpKDLJerx4ygtVDKcUAlMfUewFy
         V0/y0dbr/lC+ArohaQlYOlHiK3PXwMaOVgWrYSWx8lbr4wFY05BgCpv5lRPIR1IyF0SE
         lQ5FPcw/anZz1bMEvr6wJy8YPkM2KEFAUQViVpNoPov0Xs0LiPNNc28y1crpaSY8lgNB
         gXta9wMmcqs6XBFOufiKQMDLJCN38zBcI69kjuL8sWU/uixbBVO0t/XWEq5yhkEyV796
         bAsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755505359; x=1756110159;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DfM3OUic4SP+kzMyP8kHHqITaKkedG37VBt2aK4wKj0=;
        b=cnhBVgpEd+q7Q2376uEn/4i+xy9+HwNekAgI1zPhkSEH0QAR0y17hc23hSjqd/yR7c
         WdFwYw0cj6go1lc46YlzdFmVqzAvKQYPWSpeh+yaDdBKQQR1wgBniEU9/urBZL4QJGP9
         hYHhKsQ5NmCSC+lRfDN8XYlkzFXPeeS8CznHEIIUv3nn4wiHodnv9k/v1z1ACX9V+ojj
         LC0Etjg1+VBLDKg+DduXOXviejRJqasenI/tpB21SwusAP0YxGLC9/mLFfR+qYVHl29w
         N8NYlOHnocXPnfE7axOqwLx/EpyQVrvvRBFObBFhKMwePo1lNoQRG2Xe/9YUQ91bGfqu
         EpRw==
X-Forwarded-Encrypted: i=1; AJvYcCWAcdQPlDZuCaCpSQe5x0hOLORCZFS1UoOefRxGq3cC9cDNRn07NSntTROVuFteBFyzBzQCP4G5FoHP8aXHMA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyFovVr7891/Dw6y+1dsdwemm9We0FWZ0YVZpdTwBJhqdnRlcAT
	JkfRUEcVgcdL1bu9bbJHMoIOxcmZsvOkchXfODeipEiK1Z2oG0TbcBKLvEjeEAlxr4g=
X-Gm-Gg: ASbGncuuCXk8c6VizIqH78cqJe5onJVHGDpNivjQZP3w7e5htQ9QYKCr4jRJA75vrhA
	CvUXkqFpj7b0Qmc72NXbzfI0vCsWatYhnoQ2BWqiDyh5MvbFFP3/AHHPSMG5CCZA7ihEOj8nYbZ
	rMygukLtlHowa7jT7ntlZ0E31dXAoyH7Mm26668oyedZqxsnMs1GLvnFqwAl9+GY/fBhICAuX3s
	ICICzPS5r5DBbrxdkjVCN2kLQrU9uKw319rhteaXc0UM/M+6D6p6cPbZ3FWIBMQcum1vdCGLVPV
	O9g61Fe487C9h7unT9GOmBxWK2q59sbVbdw4GMJ1KjgAQYoBC7DHKzBjm/AHXyYSgBFz4V1Phxy
	Fw281WXZ+XNLP2kr9FzjTn1wo6mP7tljZAK+Nkfpbjvk=
X-Google-Smtp-Source: AGHT+IGwnL7IszKslS4RMmOckl7pctBDP8Ycuqwcw2vG42+4+Q5iaY+TBsZa0MdI4VtsEKOZ6UKuug==
X-Received: by 2002:a05:600c:35d3:b0:458:bf15:689c with SMTP id 5b1f17b1804b1-45a1b65c6c6mr115855795e9.2.1755505358701;
        Mon, 18 Aug 2025 01:22:38 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-45a22210ab4sm122737435e9.3.2025.08.18.01.22.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Aug 2025 01:22:38 -0700 (PDT)
Date: Mon, 18 Aug 2025 11:22:35 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, broonie@kernel.org, lee@kernel.org,
	lgirdwood@gmail.com, sre@kernel.org, heiko@sntech.de,
	conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH V6 3/5] power: supply: bq257xx: Add support for BQ257XX
 charger
Message-ID: <202508181503.GrRD2T4C-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250812214300.123129-4-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_012240_592432_32098C3C 
X-CRM114-Status: UNSURE (   7.89  )
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

Hi Chris,

kernel test robot noticed the following build warnings:

https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Chris-Morgan/dt-bindings-mfd-ti-bq25703a-Add-TI-BQ25703A-Charger/20250813-054704
base:   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next
patch link:    https://lore.kernel.org/r/20250812214300.123129-4-macroalpha82%40gmail.com
patch subject: [PATCH V6 3/5] power: supply: bq257xx: Add support for BQ257XX charger
config: parisc-randconfig-r072-20250818 (https://download.01.org/0day-ci/archive/20250818/202508181503.GrRD2T4C-lkp@intel.com/config)
compiler: hppa-linux-gcc (GCC) 8.5.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202508181503.GrRD2T4C-lkp@intel.com/

smatch warnings:
drivers/power/supply/bq257xx_charger.c:392 bq25703_hw_init() warn: potential ! vs ~ typo

vim +392 drivers/power/supply/bq257xx_charger.c

7f3b6f1e51a925 Chris Morgan 2025-08-12  365  static int bq25703_hw_init(struct bq257xx_chg *pdata)
7f3b6f1e51a925 Chris Morgan 2025-08-12  366  {
7f3b6f1e51a925 Chris Morgan 2025-08-12  367  	struct regmap *regmap = pdata->bq->regmap;
7f3b6f1e51a925 Chris Morgan 2025-08-12  368  	int ret = 0;
7f3b6f1e51a925 Chris Morgan 2025-08-12  369  
7f3b6f1e51a925 Chris Morgan 2025-08-12  370  	regmap_update_bits(regmap, BQ25703_CHARGE_OPTION_0,
7f3b6f1e51a925 Chris Morgan 2025-08-12  371  			   BQ25703_WDTMR_ADJ_MASK,
7f3b6f1e51a925 Chris Morgan 2025-08-12  372  			   FIELD_PREP(BQ25703_WDTMR_ADJ_MASK,
7f3b6f1e51a925 Chris Morgan 2025-08-12  373  			   BQ25703_WDTMR_DISABLE));
7f3b6f1e51a925 Chris Morgan 2025-08-12  374  
7f3b6f1e51a925 Chris Morgan 2025-08-12  375  	ret = pdata->chip->bq257xx_set_ichg(pdata, pdata->ichg_max);
7f3b6f1e51a925 Chris Morgan 2025-08-12  376  	if (ret)
7f3b6f1e51a925 Chris Morgan 2025-08-12  377  		return ret;
7f3b6f1e51a925 Chris Morgan 2025-08-12  378  
7f3b6f1e51a925 Chris Morgan 2025-08-12  379  	ret = pdata->chip->bq257xx_set_vbatreg(pdata, pdata->vbat_max);
7f3b6f1e51a925 Chris Morgan 2025-08-12  380  	if (ret)
7f3b6f1e51a925 Chris Morgan 2025-08-12  381  		return ret;
7f3b6f1e51a925 Chris Morgan 2025-08-12  382  
7f3b6f1e51a925 Chris Morgan 2025-08-12  383  	ret = bq25703_set_min_vsys(pdata, pdata->vsys_min);
7f3b6f1e51a925 Chris Morgan 2025-08-12  384  	if (ret)
7f3b6f1e51a925 Chris Morgan 2025-08-12  385  		return ret;
7f3b6f1e51a925 Chris Morgan 2025-08-12  386  
7f3b6f1e51a925 Chris Morgan 2025-08-12  387  	ret = pdata->chip->bq257xx_set_iindpm(pdata, pdata->iindpm_max);
7f3b6f1e51a925 Chris Morgan 2025-08-12  388  	if (ret)
7f3b6f1e51a925 Chris Morgan 2025-08-12  389  		return ret;
7f3b6f1e51a925 Chris Morgan 2025-08-12  390  
7f3b6f1e51a925 Chris Morgan 2025-08-12  391  	regmap_update_bits(regmap, BQ25703_CHARGE_OPTION_0,
7f3b6f1e51a925 Chris Morgan 2025-08-12 @392  			   BQ25703_EN_LWPWR, !BQ25703_EN_LWPWR);

Yeah.  This really looks like it should be bitwise negate ~ instead of
logical negate !.

7f3b6f1e51a925 Chris Morgan 2025-08-12  393  
7f3b6f1e51a925 Chris Morgan 2025-08-12  394  	regmap_update_bits(regmap, BQ25703_ADC_OPTION,
7f3b6f1e51a925 Chris Morgan 2025-08-12  395  			   BQ25703_ADC_CONV_EN, BQ25703_ADC_CONV_EN);
7f3b6f1e51a925 Chris Morgan 2025-08-12  396  
7f3b6f1e51a925 Chris Morgan 2025-08-12  397  	regmap_update_bits(regmap, BQ25703_ADC_OPTION,
7f3b6f1e51a925 Chris Morgan 2025-08-12  398  			   BQ25703_ADC_START, BQ25703_ADC_START);
7f3b6f1e51a925 Chris Morgan 2025-08-12  399  
7f3b6f1e51a925 Chris Morgan 2025-08-12  400  	regmap_update_bits(regmap, BQ25703_ADC_OPTION,
7f3b6f1e51a925 Chris Morgan 2025-08-12  401  			   BQ25703_ADC_FULL_SCALE, BQ25703_ADC_FULL_SCALE);
7f3b6f1e51a925 Chris Morgan 2025-08-12  402  
7f3b6f1e51a925 Chris Morgan 2025-08-12  403  	regmap_update_bits(regmap, BQ25703_ADC_OPTION,
7f3b6f1e51a925 Chris Morgan 2025-08-12  404  			   BQ25703_ADC_CH_MASK,
7f3b6f1e51a925 Chris Morgan 2025-08-12  405  			   (BQ25703_ADC_CMPIN_EN | BQ25703_ADC_VBUS_EN |
7f3b6f1e51a925 Chris Morgan 2025-08-12  406  			   BQ25703_ADC_PSYS_EN | BQ25703_ADC_IIN_EN |
7f3b6f1e51a925 Chris Morgan 2025-08-12  407  			   BQ25703_ADC_IDCHG_EN | BQ25703_ADC_ICHG_EN |
7f3b6f1e51a925 Chris Morgan 2025-08-12  408  			   BQ25703_ADC_VSYS_EN | BQ25703_ADC_VBAT_EN));
7f3b6f1e51a925 Chris Morgan 2025-08-12  409  
7f3b6f1e51a925 Chris Morgan 2025-08-12  410  	return ret;
7f3b6f1e51a925 Chris Morgan 2025-08-12  411  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
