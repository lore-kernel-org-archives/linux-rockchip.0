Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C16D9CA0FE5
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Aug 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=IITjoLFeoIzL9Y6Kc1Ih4QpHMn1jN/fCPsVkeHuNTmc=; b=3fOo8VrDJs4GS5
	IIb6h8dB15sCAvJ9/sXzaruj78Soa0gMZIZKT5PJURvYXlxn0shxaqtTZRFjM80jAc465TQt1982s
	iIynDRWHS08RplhXA+YEpWKlfKl6kO9mpaSIbbx2vf1wK0XKkkvOdvQ7VpHuL99NCCMw1Eops6+zZ
	bSRJ8n2nYsGIbHaNoF0bmJw+p9oOaKWIff6U+aAHJ4J3h5mlePvaSVwUs39I80YmkhmLGH3nmWD1+
	+Y61c/bgwPXgNUwTsou5lEs4BopDG+H60QcsZblPWd1kTqMU+IIZSCjpsP2S7nWT24qlZ0sIfu8+F
	XJG2fjUvCdh+h1Od9KvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up1lo-0000000GQEc-2Nai;
	Thu, 21 Aug 2025 09:39:44 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uozYa-0000000G4w1-0YKF
	for linux-rockchip@lists.infradead.org;
	Thu, 21 Aug 2025 07:17:57 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-3b9e411c820so398680f8f.1
        for <linux-rockchip@lists.infradead.org>; Thu, 21 Aug 2025 00:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755760674; x=1756365474; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=H3tAtOi04xs7pQD42uV+iRrcb/K5gV7/3jestZ8bCUo=;
        b=l7T+OrLtHo4FODBq8w9K1/326KvhBvYpHik0oUQcU2u4xtSJa+s0FEb43ZKKSKzv3K
         svr5jhEYMzvlwANYKlzcHRV8Cd2jOXWnknJmowL/vhKOjodHH372cwsFP4LnRPYpPvsD
         H+LQ9JAlDHkkJ8g8YUynrSJRH7G7YNH1tee9qjNObF0RreQ+fEHkQk+xnkAgMxMIKDwd
         6XzqYvO6NeHiJMQmuDQvbsN6R3Tnexa0MSRbze4OrrYGvrUxffRBQjfaKymwdmh4D/g0
         fTeLDXtiCzmiBTymgQK/1ZD6xYYzKrpJBt07mO/VeCNHT479r/qn6ysfRhxDrAfPleXQ
         brlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755760674; x=1756365474;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H3tAtOi04xs7pQD42uV+iRrcb/K5gV7/3jestZ8bCUo=;
        b=wPLO+e75CmmXISzPmhk9XEYvCi6t5h62bjR7PBM7radkGgquagaHopF7i59uVQAkxc
         CgSpiE4Y2W2I7OAlIBYWIKG4VNTMvQ7UJ4SM+4pSxz9mvdJUCPw4SjyPnkawrBIharBD
         bN59Vex57n1rYC8dxhipnuX93KekyMyriZDgcu7Y+u6twlHyOKT9D/rGZZcNjtTobOuW
         LjLnZ9Z69i/52nBQ5vlpPJ/FokcnVu60Fap3Tu1O1EYcsGj9MZYLZf5j6pgJLbF6eQii
         LZXEDuK3LcLV6d7Cl5LlKO+O2ww9FTXP05WS7c1BSHK8tzNjV0niR2bfikAzspwp6fzS
         NEkg==
X-Forwarded-Encrypted: i=1; AJvYcCUB1yYwbzHEQ5hKMADPfERSW6I8hbPW4pjdF/rZeMO1L14WrzrxdFGE13z0xaY2fuoO5hLsnS3fxXSxwRis5g==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy5PsgeUuOCsOAz5RON4Q86Dj8bDARCkU/MEIpczPVv2x/w0VOk
	NzISYbNgiCy9m7vMEJ/moaO6j+vMC9/vE8qmbA3L7fft6LguyHd1vYiOz52fgsN2yGA=
X-Gm-Gg: ASbGnct4fSFlYq0ZPQP/ZTyDTN19NIYFpftqoDIsA+trzo+xB01Wzh+WbkXg3VgM9z7
	S35aX9LSoIEBEp8SeN22TPIR/7M1xC8a8bSvWM+gxJ5owZ2QfJZtjNA+EmcFawwYErRFzHwU0Iy
	K0vjA20n3WdBfvYDKi+a3ojIlet7IIZXax1RtRS/+sNFGllaUE297/4ktdomxLNa4DcETXEl05m
	4zXlbWBj09iJ2aFqUU2524EGAzQTU+29YyxDPGZQ4DiI5Cc+qwZMVGDqgojRRQlBU5SB7YMk9jp
	iwSeOggNKUT2l1GtaDDcuJpDSlac75bMQkVdprCI6I0b56gT9gcsy0X9eUhdXlokHtuyc0TysnH
	1F4m7F43y/MqPAxfAbjH+v0QeHik=
X-Google-Smtp-Source: AGHT+IG63iMqN7wTtRiIXVZbSCze5rPWQlrS04IFAuyrUFZ9haZV4BHRyggzdxUPlHVMATR9Za+YDA==
X-Received: by 2002:a05:6000:2411:b0:3b7:8146:4640 with SMTP id ffacd0b85a97d-3c4977414d6mr1081489f8f.56.1755760674518;
        Thu, 21 Aug 2025 00:17:54 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-45b4db29878sm15276145e9.6.2025.08.21.00.17.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 00:17:53 -0700 (PDT)
Date: Thu, 21 Aug 2025 10:17:50 +0300
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
Message-ID: <202508210308.Lw2Klipk-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250812214300.123129-5-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_001756_185655_CC2559D9 
X-CRM114-Status: UNSURE (   8.75  )
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
config: xtensa-randconfig-r073-20250819 (https://download.01.org/0day-ci/archive/20250821/202508210308.Lw2Klipk-lkp@intel.com/config)
compiler: xtensa-linux-gcc (GCC) 9.5.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202508210308.Lw2Klipk-lkp@intel.com/

smatch warnings:
drivers/regulator/bq257xx-regulator.c:132 bq257xx_reg_dt_parse_gpio() warn: passing zero to 'PTR_ERR'

vim +/PTR_ERR +132 drivers/regulator/bq257xx-regulator.c

d6db7dce7cd965 Chris Morgan 2025-08-12  107  static void bq257xx_reg_dt_parse_gpio(struct platform_device *pdev)
d6db7dce7cd965 Chris Morgan 2025-08-12  108  {
d6db7dce7cd965 Chris Morgan 2025-08-12  109  	struct device_node *child, *subchild;
d6db7dce7cd965 Chris Morgan 2025-08-12  110  	struct bq257xx_reg_data *pdata = platform_get_drvdata(pdev);
d6db7dce7cd965 Chris Morgan 2025-08-12  111  
d6db7dce7cd965 Chris Morgan 2025-08-12  112  	child = of_get_child_by_name(pdev->dev.of_node,
d6db7dce7cd965 Chris Morgan 2025-08-12  113  				     pdata->desc.regulators_node);
d6db7dce7cd965 Chris Morgan 2025-08-12  114  	if (!child)
d6db7dce7cd965 Chris Morgan 2025-08-12  115  		return;
d6db7dce7cd965 Chris Morgan 2025-08-12  116  
d6db7dce7cd965 Chris Morgan 2025-08-12  117  	subchild = of_get_child_by_name(child, pdata->desc.of_match);
d6db7dce7cd965 Chris Morgan 2025-08-12  118  	if (!subchild)
d6db7dce7cd965 Chris Morgan 2025-08-12  119  		return;
d6db7dce7cd965 Chris Morgan 2025-08-12  120  
d6db7dce7cd965 Chris Morgan 2025-08-12  121  	of_node_put(child);
d6db7dce7cd965 Chris Morgan 2025-08-12  122  
d6db7dce7cd965 Chris Morgan 2025-08-12  123  	pdata->otg_en_gpio = devm_fwnode_gpiod_get_index(&pdev->dev,
d6db7dce7cd965 Chris Morgan 2025-08-12  124  							 of_fwnode_handle(subchild),
d6db7dce7cd965 Chris Morgan 2025-08-12  125  							 "enable", 0,
d6db7dce7cd965 Chris Morgan 2025-08-12  126  							 GPIOD_OUT_LOW,
d6db7dce7cd965 Chris Morgan 2025-08-12  127  							 pdata->desc.of_match);
d6db7dce7cd965 Chris Morgan 2025-08-12  128  
d6db7dce7cd965 Chris Morgan 2025-08-12  129  	of_node_put(subchild);
d6db7dce7cd965 Chris Morgan 2025-08-12  130  
d6db7dce7cd965 Chris Morgan 2025-08-12  131  	if (IS_ERR_OR_NULL(pdata->otg_en_gpio)) {

This should just be an IS_ERR() check.  When a function returns a mix of
error pointers and NULL, then the NULL is not an error and shouldn't
result in an error message.

https://staticthinking.wordpress.com/2022/08/01/mixing-error-pointers-and-null/

Here devm_fwnode_gpiod_get_index() can't actually return NULL so it
doesn't matter, I suppose.

d6db7dce7cd965 Chris Morgan 2025-08-12 @132  		dev_err(&pdev->dev, "Error getting enable gpio: %ld\n",
d6db7dce7cd965 Chris Morgan 2025-08-12  133  			PTR_ERR(pdata->otg_en_gpio));
d6db7dce7cd965 Chris Morgan 2025-08-12  134  		return;
d6db7dce7cd965 Chris Morgan 2025-08-12  135  	}
d6db7dce7cd965 Chris Morgan 2025-08-12  136  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
