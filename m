Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7261CCA0EE3
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Aug 2025 07:26:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=j+3ZsCdNmkmrfU/7fWmLEWAb9Fk9pueRM9viAbmo8Rc=; b=kTIqxcCzfAR11J
	rjkR7rd+S0sGLjog1ZnQDZN2ZpBHroy56rNG3bmttCgyI1PdaCI/dwS88+oKzjUK+aZR3P6Z5FQRz
	zh9xwz/W68oFJf17D6s4IC1QANae93Zf51zxl26JFDkl1Ixu5HhOYU7H3ZjUazf6jFac0y6UBeSml
	PN9dfpC2F6KsP0g8/TB0W2dGgsnAEMcFQ4iwVi9fnMlKLYffFMIgwgcAkaciTUbDSe4OIMId3DAHd
	duNEEOw1XBrslYTnxEX3P5pwJRch/vvsRtxUtNbj0hkn59KdWEWyuurn0Pt0tnhR74K6HM6nsWxcT
	24zB71UKAyaQAE3e0uXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umSLv-0000000G4pt-0Hvj;
	Thu, 14 Aug 2025 07:26:23 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umS9z-0000000G3L0-1Ph1
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Aug 2025 07:14:04 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-45a1b0cd668so2740775e9.3
        for <linux-rockchip@lists.infradead.org>; Thu, 14 Aug 2025 00:14:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755155641; x=1755760441; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=t9E3NrCTEwbCDabEtVeBf62CMBWNpRfAcIAwAy7HrVc=;
        b=wS9WnUDi9zJ8zMQUjHcZnDGGByuTBDvAbvo0n7lBgWRRWRJfrhbCZD6oTUY2z8EVjw
         46Gp3+W0yQTwRTcYCSXnti/4bHCbxBn7hR0H1qYiMfo1gFoz/eKZRlgF6VkYVyDdVwBy
         HP83xn4TcpGQJ1YKG67wOiMwQWt3EjNcTn3u6JNmTLifdEvw1OocdG/9q7TueHODO23I
         CcGks02kG31qLiG21OTwzAt2H8QkvvsyEuZ62FsK2kWtiqxXuvIgjCLa5ZKKezX4Kmd6
         /3JgtXjiYP13Juoq0JfFN/a5yVfssShByiwPOrkGb+ypfX8bi8X5me5AeNmC1isc0092
         hxPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755155641; x=1755760441;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t9E3NrCTEwbCDabEtVeBf62CMBWNpRfAcIAwAy7HrVc=;
        b=nFQwX03P5BUfZPl9CPx6BNcoN9ojQuAXFNY2B7QmXZwMyUkQkJMWnrBDlYBRqMOK3s
         Z4GX9DkemuCKRwJ9cc6tvz5E6lIrwaKigvtkAXYwIiZHA+ezeswym3DvCG+VqF0viuXM
         8KO0tSgpO7GxFrjLOh0Llf3A+nbQp2t1G94IS/o41a+4NPSiHbMQJwmF8JcEO9lZgtDo
         yWpY2jTOEb6Fc25CvJ7RFltUUROgxqi4H6139Vte7uiHeiIPF7dTLI0g1eMnvm3quEFO
         5wIonUhqRirgmf0SYOpHXh9LlqjORf61T8MRJpsyB69PVuQlGUS0b7CNwSK9i5827MmN
         bkNA==
X-Forwarded-Encrypted: i=1; AJvYcCUxPoAPj9+1Kbf4T27AnEIGgn1j6AiCdApMWBNb9EMvbe/zlgCxB6llGrEI+PDU+5FKVQ/wrt1LybwEN3NaDg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwmZj37TIWSJm/NTWPpaU30AeL0rmN1iYZfwCOPRjaJ2vcrhhEr
	8kx0t3G7m4IleVUWhrbNXx0Pe3JXW2Q59tCcMY/Ye3y0XFGWny8S/uhum1dxv+DxIm4=
X-Gm-Gg: ASbGncshrW0tXZHfn8D0wwJeX1lveZEbt0Q0772FvI0jhbIAXlnAcfAQveedVl2y7Uv
	lrfgegq1nar05apa/W607jyRgg/+wuEFSkLlRhJWerkoGJSYdeJwNuhfQRpUYT2xFwZ8PJP/sjW
	/2MEWcQlvM61RDdS4gm4YoMH/BG9IoW2OgEXrL6cZnIyJSiUnmBjqbm1UDPi9HqfV8hODyLfsfE
	OlykhtAVksuOV5MX6I8rJV6BeitZ0kGZWqnvS+PJARrhM9BnkhCPTRXzAPg5MsrFUP9v6WAAJVy
	wVBfxONMc85P2qkZ+Uj+720Ha7wRPf6q8K5+QbyuI6btEYhm3xNl/aOvU9SfJVMrzow3gs8KUSW
	6vS006e8YhSLqc8Okpvrkg9hMVTA=
X-Google-Smtp-Source: AGHT+IFP9kiDc1q1dkQQRBUhr400gKrEB0WYTXwapO4qVV4879GgEBYYtEyy7MjPdh+h9soCzQb3KQ==
X-Received: by 2002:a05:6000:2089:b0:3a4:eed9:755d with SMTP id ffacd0b85a97d-3b9edfd196emr1313673f8f.3.1755155641197;
        Thu, 14 Aug 2025 00:14:01 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-45a1c70acc7sm9647105e9.25.2025.08.14.00.14.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 00:14:00 -0700 (PDT)
Date: Thu, 14 Aug 2025 10:13:56 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, broonie@kernel.org, lee@kernel.org,
	lgirdwood@gmail.com, sre@kernel.org, heiko@sntech.de,
	conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V6 4/5] regulator: bq257xx: Add bq257xx boost regulator
 driver
Message-ID: <202508141051.hwl2Erq6-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250812214300.123129-5-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_001403_378986_AE72FF2E 
X-CRM114-Status: UNSURE (   7.82  )
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
patch link:    https://lore.kernel.org/r/20250812214300.123129-5-macroalpha82%40gmail.com
patch subject: [PATCH V6 4/5] regulator: bq257xx: Add bq257xx boost regulator driver
config: m68k-randconfig-r073-20250814 (https://download.01.org/0day-ci/archive/20250814/202508141051.hwl2Erq6-lkp@intel.com/config)
compiler: m68k-linux-gcc (GCC) 15.1.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202508141051.hwl2Erq6-lkp@intel.com/

smatch warnings:
drivers/regulator/bq257xx-regulator.c:161 bq257xx_regulator_probe() error: uninitialized symbol 'init_data'.

vim +/init_data +161 drivers/regulator/bq257xx-regulator.c

d6db7dce7cd965 Chris Morgan 2025-08-12  138  static int bq257xx_regulator_probe(struct platform_device *pdev)
d6db7dce7cd965 Chris Morgan 2025-08-12  139  {
d6db7dce7cd965 Chris Morgan 2025-08-12  140  	struct device *dev = &pdev->dev;
d6db7dce7cd965 Chris Morgan 2025-08-12  141  	struct bq257xx_device *bq = dev_get_drvdata(pdev->dev.parent);
d6db7dce7cd965 Chris Morgan 2025-08-12  142  	struct bq257xx_reg_data *pdata;
d6db7dce7cd965 Chris Morgan 2025-08-12  143  	struct device_node *np = dev->of_node;
d6db7dce7cd965 Chris Morgan 2025-08-12  144  	struct regulator_init_data *init_data;
d6db7dce7cd965 Chris Morgan 2025-08-12  145  	struct regulator_config cfg = {};
d6db7dce7cd965 Chris Morgan 2025-08-12  146  
d6db7dce7cd965 Chris Morgan 2025-08-12  147  	pdev->dev.of_node = pdev->dev.parent->of_node;
d6db7dce7cd965 Chris Morgan 2025-08-12  148  	pdev->dev.of_node_reused = true;
d6db7dce7cd965 Chris Morgan 2025-08-12  149  
d6db7dce7cd965 Chris Morgan 2025-08-12  150  	pdata = devm_kzalloc(&pdev->dev, sizeof(struct bq257xx_reg_data), GFP_KERNEL);
d6db7dce7cd965 Chris Morgan 2025-08-12  151  	if (!pdata)
d6db7dce7cd965 Chris Morgan 2025-08-12  152  		return -ENOMEM;
d6db7dce7cd965 Chris Morgan 2025-08-12  153  
d6db7dce7cd965 Chris Morgan 2025-08-12  154  	pdata->bq = bq;
d6db7dce7cd965 Chris Morgan 2025-08-12  155  	pdata->desc = bq25703_vbus_desc;
d6db7dce7cd965 Chris Morgan 2025-08-12  156  
d6db7dce7cd965 Chris Morgan 2025-08-12  157  	platform_set_drvdata(pdev, pdata);
d6db7dce7cd965 Chris Morgan 2025-08-12  158  	bq257xx_reg_dt_parse_gpio(pdev);
d6db7dce7cd965 Chris Morgan 2025-08-12  159  
d6db7dce7cd965 Chris Morgan 2025-08-12  160  	cfg.dev = &pdev->dev;
d6db7dce7cd965 Chris Morgan 2025-08-12 @161  	cfg.init_data = init_data;
                                                                ^^^^^^^^^
Uninitialized.

d6db7dce7cd965 Chris Morgan 2025-08-12  162  	cfg.driver_data = pdata;
d6db7dce7cd965 Chris Morgan 2025-08-12  163  	cfg.of_node = np;
d6db7dce7cd965 Chris Morgan 2025-08-12  164  	cfg.regmap = dev_get_regmap(pdev->dev.parent, NULL);
d6db7dce7cd965 Chris Morgan 2025-08-12  165  	if (!cfg.regmap)
d6db7dce7cd965 Chris Morgan 2025-08-12  166  		return -ENODEV;
d6db7dce7cd965 Chris Morgan 2025-08-12  167  
d6db7dce7cd965 Chris Morgan 2025-08-12  168  	pdata->bq257xx_reg = devm_regulator_register(dev, &pdata->desc, &cfg);
d6db7dce7cd965 Chris Morgan 2025-08-12  169  	if (IS_ERR(pdata->bq257xx_reg)) {
d6db7dce7cd965 Chris Morgan 2025-08-12  170  		return dev_err_probe(&pdev->dev, PTR_ERR(pdata->bq257xx_reg),
d6db7dce7cd965 Chris Morgan 2025-08-12  171  				     "error registering bq257xx regulator");
d6db7dce7cd965 Chris Morgan 2025-08-12  172  	}
d6db7dce7cd965 Chris Morgan 2025-08-12  173  
d6db7dce7cd965 Chris Morgan 2025-08-12  174  	return 0;
d6db7dce7cd965 Chris Morgan 2025-08-12  175  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
