Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFB72C4167B
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Dec 2023 05:36:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=eCjYwCwDoHt9LEI0SY6b9Glopr7K8fN7DOPeCsxk1Dw=; b=UA0CeFA/8m3lfC
	OeVuZH07N3ZrHvOu2nmrhbaYHYS1pgJUwkyQxmUWLj5OgWgME5SclfFUV2fmcYHhtcnkNG9IHqmxs
	XqvCdrcwSpnQWOxY7yiIRv3SwgLkdnjvD7835GLz5bnTwQsqQLQMqmhaf7k4JpkomPNlrLY4NtT6R
	iwFoOCj+7b4WH4NmdxlBNLtUZHXTZV0HOAfFXrLK4je6e1DFDAhmeHKmuvjRis6avS3nOL9i9R6Oq
	Xfv7M02BYUAXTmj+IEnbusW3NxTRVNfM4tIb4OsBr2rgejYGpDC2vY/vW9DBZp51oau8SWr+PFC58
	uCJ+6/pvlf6Jb3YvcgcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAkZm-0096zZ-2O;
	Wed, 06 Dec 2023 05:36:02 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAkZi-0096yk-0T
	for linux-rockchip@lists.infradead.org;
	Wed, 06 Dec 2023 05:36:00 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-40c0fc1cf3dso20895925e9.0
        for <linux-rockchip@lists.infradead.org>; Tue, 05 Dec 2023 21:35:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701840955; x=1702445755; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qzthnNL0UkewQ0fO1K+PfqxIntdCT/Ts1fLBxjOArOk=;
        b=vm9p5uf2cm5Q2unshIcW6SGltlsUfCJxl0tB0FGsDDIOs0H/I8aZnMZQ21HZHKEqO5
         mKNpMD1tGHFZ2ma76SrApxxOXSF591Nw7oECkMdfwT77f3tFHB/5i8xmWlrqSmBN9bWJ
         fp5MIlUc78MVP6ls2dKDSyor7NgiJzn5uLEIEUMprqxUs36LO12e9pc+8+FXrDMy58F8
         iHODi4XiaN+NyQN33aLVPWP+sGKBYc6Jjv5+NU2cFnyi6ZL7sUfnjO2xYxtUcvoH2fmG
         YKvJ7LxMMyHMSlzVKXA1wDxQVaOjS79Qh1I6iUQhZlcxwYghNynC3mFxQl838cbwQkrN
         9jdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701840955; x=1702445755;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qzthnNL0UkewQ0fO1K+PfqxIntdCT/Ts1fLBxjOArOk=;
        b=FhaBVKgGCZPSGSMEh/I5QlVyuis4JkwjdlD3JEFV6G7j8T4q+7VoX4vLuCalwEZDa8
         pjloiLn41nKawoBEvNmqQ0SxZiy9abPXwnlEOZF6Hbi7651jYFryEMnA2DcumovEt84m
         zzKAKyFaax6LP7qlM3faqs3uguWYATJYPNBtzSwAkVuK8gpvfXkJhRGeHOieyS3Mt4+y
         Ir0xF0CdbDCxhAMKLRNQvEoxguoySN2JHhTYONA53yxrB7/VPZ95bG3awMDQtnVB05E6
         Hwre3CAe6ksOzx6jopbCUuvELGg9cEgF7d6pqZa9txNz53/XPM/NBPETp8OpHE7gSuVS
         1npQ==
X-Gm-Message-State: AOJu0YwLM7ZwRI+5cHYrK44L586NuL+uGB8RFyP8c5FZ1pucvWJWgXdG
	bJILpXAUTZHUk3OONAp1/WUZNA==
X-Google-Smtp-Source: AGHT+IENKmGGzONbrvIGkyY6v9ZdmSl19kkWnDTVDK4IiWorUXZqx8FY4JZ07ZgvvdYSt4VRR9L23w==
X-Received: by 2002:a05:600c:21c9:b0:40b:5e59:c555 with SMTP id x9-20020a05600c21c900b0040b5e59c555mr214951wmj.127.1701840955265;
        Tue, 05 Dec 2023 21:35:55 -0800 (PST)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id x16-20020adfec10000000b003333beb564asm10410153wrn.5.2023.12.05.21.35.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Dec 2023 21:35:54 -0800 (PST)
Date: Wed, 6 Dec 2023 08:35:52 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Haoran Liu <liuhaoran14@163.com>,
	davem@davemloft.net
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev, edumazet@google.com,
	pabeni@redhat.com, heiko@sntech.de, netdev@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Haoran Liu <liuhaoran14@163.com>
Subject: Re: [PATCH] [net/ethernet] arc_emac: Add error handling in
 emac_rockchip_probe
Message-ID: <08f04975-2abb-4c1a-8bf6-34e6653568af@suswa.mountain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231130031318.35850-1-liuhaoran14@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_213558_236887_E0E456DD 
X-CRM114-Status: UNSURE (   9.13  )
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

Hi Haoran,

kernel test robot noticed the following build warnings:

https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Haoran-Liu/arc_emac-Add-error-handling-in-emac_rockchip_probe/20231130-112325
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
patch link:    https://lore.kernel.org/r/20231130031318.35850-1-liuhaoran14%40163.com
patch subject: [PATCH] [net/ethernet] arc_emac: Add error handling in emac_rockchip_probe
config: csky-randconfig-r071-20231203 (https://download.01.org/0day-ci/archive/20231206/202312060119.eRpB9j4s-lkp@intel.com/config)
compiler: csky-linux-gcc (GCC) 13.2.0
reproduce: (https://download.01.org/0day-ci/archive/20231206/202312060119.eRpB9j4s-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202312060119.eRpB9j4s-lkp@intel.com/

smatch warnings:
drivers/net/ethernet/arc/emac_rockchip.c:139 emac_rockchip_probe() warn: missing unwind goto?
drivers/net/ethernet/arc/emac_rockchip.c:249 emac_rockchip_probe() warn: 'ndev' from alloc_etherdev_mqs() not released on lines: 139.

vim +139 drivers/net/ethernet/arc/emac_rockchip.c

6eacf31139bf96 Romain Perier      2014-09-08   93  static int emac_rockchip_probe(struct platform_device *pdev)
6eacf31139bf96 Romain Perier      2014-09-08   94  {
6eacf31139bf96 Romain Perier      2014-09-08   95  	struct device *dev = &pdev->dev;
6eacf31139bf96 Romain Perier      2014-09-08   96  	struct net_device *ndev;
6eacf31139bf96 Romain Perier      2014-09-08   97  	struct rockchip_priv_data *priv;
6eacf31139bf96 Romain Perier      2014-09-08   98  	const struct of_device_id *match;
0c65b2b90d13c1 Andrew Lunn        2019-11-04   99  	phy_interface_t interface;
6eacf31139bf96 Romain Perier      2014-09-08  100  	u32 data;
0c65b2b90d13c1 Andrew Lunn        2019-11-04  101  	int err;
6eacf31139bf96 Romain Perier      2014-09-08  102  
6eacf31139bf96 Romain Perier      2014-09-08  103  	if (!pdev->dev.of_node)
6eacf31139bf96 Romain Perier      2014-09-08  104  		return -ENODEV;
6eacf31139bf96 Romain Perier      2014-09-08  105  
6eacf31139bf96 Romain Perier      2014-09-08  106  	ndev = alloc_etherdev(sizeof(struct rockchip_priv_data));
6eacf31139bf96 Romain Perier      2014-09-08  107  	if (!ndev)
6eacf31139bf96 Romain Perier      2014-09-08  108  		return -ENOMEM;
6eacf31139bf96 Romain Perier      2014-09-08  109  	platform_set_drvdata(pdev, ndev);
6eacf31139bf96 Romain Perier      2014-09-08  110  	SET_NETDEV_DEV(ndev, dev);
6eacf31139bf96 Romain Perier      2014-09-08  111  
6eacf31139bf96 Romain Perier      2014-09-08  112  	priv = netdev_priv(ndev);
6eacf31139bf96 Romain Perier      2014-09-08  113  	priv->emac.drv_name = DRV_NAME;
6eacf31139bf96 Romain Perier      2014-09-08  114  	priv->emac.set_mac_speed = emac_rockchip_set_mac_speed;
6eacf31139bf96 Romain Perier      2014-09-08  115  
0c65b2b90d13c1 Andrew Lunn        2019-11-04  116  	err = of_get_phy_mode(dev->of_node, &interface);
0c65b2b90d13c1 Andrew Lunn        2019-11-04  117  	if (err)
0c65b2b90d13c1 Andrew Lunn        2019-11-04  118  		goto out_netdev;
6eacf31139bf96 Romain Perier      2014-09-08  119  
af72261f33ee49 Xing Zheng         2016-01-08  120  	/* RK3036/RK3066/RK3188 SoCs only support RMII */
6eacf31139bf96 Romain Perier      2014-09-08  121  	if (interface != PHY_INTERFACE_MODE_RMII) {
6eacf31139bf96 Romain Perier      2014-09-08  122  		dev_err(dev, "unsupported phy interface mode %d\n", interface);
6eacf31139bf96 Romain Perier      2014-09-08  123  		err = -ENOTSUPP;
6eacf31139bf96 Romain Perier      2014-09-08  124  		goto out_netdev;
6eacf31139bf96 Romain Perier      2014-09-08  125  	}
6eacf31139bf96 Romain Perier      2014-09-08  126  
663713eb477b9b Caesar Wang        2016-03-14  127  	priv->grf = syscon_regmap_lookup_by_phandle(dev->of_node,
663713eb477b9b Caesar Wang        2016-03-14  128  						    "rockchip,grf");
6eacf31139bf96 Romain Perier      2014-09-08  129  	if (IS_ERR(priv->grf)) {
663713eb477b9b Caesar Wang        2016-03-14  130  		dev_err(dev, "failed to retrieve global register file (%ld)\n",
663713eb477b9b Caesar Wang        2016-03-14  131  			PTR_ERR(priv->grf));
6eacf31139bf96 Romain Perier      2014-09-08  132  		err = PTR_ERR(priv->grf);
6eacf31139bf96 Romain Perier      2014-09-08  133  		goto out_netdev;
6eacf31139bf96 Romain Perier      2014-09-08  134  	}
6eacf31139bf96 Romain Perier      2014-09-08  135  
6eacf31139bf96 Romain Perier      2014-09-08  136  	match = of_match_node(emac_rockchip_dt_ids, dev->of_node);
8cb4cdab4b4030 Haoran Liu         2023-11-29  137  	if (!match) {
8cb4cdab4b4030 Haoran Liu         2023-11-29  138  		dev_err(dev, "No matching device found\n");
8cb4cdab4b4030 Haoran Liu         2023-11-29 @139  		return -ENODEV;

goto out_netdev;

8cb4cdab4b4030 Haoran Liu         2023-11-29  140  	}
8cb4cdab4b4030 Haoran Liu         2023-11-29  141  
6eacf31139bf96 Romain Perier      2014-09-08  142  	priv->soc_data = match->data;
6eacf31139bf96 Romain Perier      2014-09-08  143  
6eacf31139bf96 Romain Perier      2014-09-08  144  	priv->emac.clk = devm_clk_get(dev, "hclk");
6eacf31139bf96 Romain Perier      2014-09-08  145  	if (IS_ERR(priv->emac.clk)) {
663713eb477b9b Caesar Wang        2016-03-14  146  		dev_err(dev, "failed to retrieve host clock (%ld)\n",
663713eb477b9b Caesar Wang        2016-03-14  147  			PTR_ERR(priv->emac.clk));
6eacf31139bf96 Romain Perier      2014-09-08  148  		err = PTR_ERR(priv->emac.clk);
6eacf31139bf96 Romain Perier      2014-09-08  149  		goto out_netdev;
6eacf31139bf96 Romain Perier      2014-09-08  150  	}
6eacf31139bf96 Romain Perier      2014-09-08  151  
6eacf31139bf96 Romain Perier      2014-09-08  152  	priv->refclk = devm_clk_get(dev, "macref");
6eacf31139bf96 Romain Perier      2014-09-08  153  	if (IS_ERR(priv->refclk)) {
663713eb477b9b Caesar Wang        2016-03-14  154  		dev_err(dev, "failed to retrieve reference clock (%ld)\n",
663713eb477b9b Caesar Wang        2016-03-14  155  			PTR_ERR(priv->refclk));
6eacf31139bf96 Romain Perier      2014-09-08  156  		err = PTR_ERR(priv->refclk);
6eacf31139bf96 Romain Perier      2014-09-08  157  		goto out_netdev;
6eacf31139bf96 Romain Perier      2014-09-08  158  	}
6eacf31139bf96 Romain Perier      2014-09-08  159  
6eacf31139bf96 Romain Perier      2014-09-08  160  	err = clk_prepare_enable(priv->refclk);
6eacf31139bf96 Romain Perier      2014-09-08  161  	if (err) {
6eacf31139bf96 Romain Perier      2014-09-08  162  		dev_err(dev, "failed to enable reference clock (%d)\n", err);
6eacf31139bf96 Romain Perier      2014-09-08  163  		goto out_netdev;
6eacf31139bf96 Romain Perier      2014-09-08  164  	}
6eacf31139bf96 Romain Perier      2014-09-08  165  
6eacf31139bf96 Romain Perier      2014-09-08  166  	/* Optional regulator for PHY */
6eacf31139bf96 Romain Perier      2014-09-08  167  	priv->regulator = devm_regulator_get_optional(dev, "phy");
6eacf31139bf96 Romain Perier      2014-09-08  168  	if (IS_ERR(priv->regulator)) {
00777fac28ba3e Christophe JAILLET 2018-03-18  169  		if (PTR_ERR(priv->regulator) == -EPROBE_DEFER) {
00777fac28ba3e Christophe JAILLET 2018-03-18  170  			err = -EPROBE_DEFER;
00777fac28ba3e Christophe JAILLET 2018-03-18  171  			goto out_clk_disable;
00777fac28ba3e Christophe JAILLET 2018-03-18  172  		}
6eacf31139bf96 Romain Perier      2014-09-08  173  		dev_err(dev, "no regulator found\n");
6eacf31139bf96 Romain Perier      2014-09-08  174  		priv->regulator = NULL;
6eacf31139bf96 Romain Perier      2014-09-08  175  	}
6eacf31139bf96 Romain Perier      2014-09-08  176  
6eacf31139bf96 Romain Perier      2014-09-08  177  	if (priv->regulator) {
6eacf31139bf96 Romain Perier      2014-09-08  178  		err = regulator_enable(priv->regulator);
6eacf31139bf96 Romain Perier      2014-09-08  179  		if (err) {
6eacf31139bf96 Romain Perier      2014-09-08  180  			dev_err(dev, "failed to enable phy-supply (%d)\n", err);
6eacf31139bf96 Romain Perier      2014-09-08  181  			goto out_clk_disable;
6eacf31139bf96 Romain Perier      2014-09-08  182  		}
6eacf31139bf96 Romain Perier      2014-09-08  183  	}
6eacf31139bf96 Romain Perier      2014-09-08  184  
f4c9d3ee0334fd Xing Zheng         2016-01-08  185  	/* Set speed 100M */
f4c9d3ee0334fd Xing Zheng         2016-01-08  186  	data = (1 << (priv->soc_data->grf_speed_offset + 16)) |
f4c9d3ee0334fd Xing Zheng         2016-01-08  187  	       (1 << priv->soc_data->grf_speed_offset);
f4c9d3ee0334fd Xing Zheng         2016-01-08  188  	/* Set RMII mode */
f4c9d3ee0334fd Xing Zheng         2016-01-08  189  	data |= (1 << (priv->soc_data->grf_mode_offset + 16)) |
f4c9d3ee0334fd Xing Zheng         2016-01-08  190  		(0 << priv->soc_data->grf_mode_offset);
6eacf31139bf96 Romain Perier      2014-09-08  191  
6eacf31139bf96 Romain Perier      2014-09-08  192  	err = regmap_write(priv->grf, priv->soc_data->grf_offset, data);
6eacf31139bf96 Romain Perier      2014-09-08  193  	if (err) {
663713eb477b9b Caesar Wang        2016-03-14  194  		dev_err(dev, "unable to apply initial settings to grf (%d)\n",
663713eb477b9b Caesar Wang        2016-03-14  195  			err);
6eacf31139bf96 Romain Perier      2014-09-08  196  		goto out_regulator_disable;
6eacf31139bf96 Romain Perier      2014-09-08  197  	}
6eacf31139bf96 Romain Perier      2014-09-08  198  
6eacf31139bf96 Romain Perier      2014-09-08  199  	/* RMII interface needs always a rate of 50MHz */
6eacf31139bf96 Romain Perier      2014-09-08  200  	err = clk_set_rate(priv->refclk, 50000000);
2a9ee696c72a24 Branislav Radocaj  2017-12-12  201  	if (err) {
663713eb477b9b Caesar Wang        2016-03-14  202  		dev_err(dev,
663713eb477b9b Caesar Wang        2016-03-14  203  			"failed to change reference clock rate (%d)\n", err);
2a9ee696c72a24 Branislav Radocaj  2017-12-12  204  		goto out_regulator_disable;
2a9ee696c72a24 Branislav Radocaj  2017-12-12  205  	}
c9bca2fe3ca6d6 Xing Zheng         2016-01-08  206  
f4c9d3ee0334fd Xing Zheng         2016-01-08  207  	if (priv->soc_data->need_div_macclk) {
f4c9d3ee0334fd Xing Zheng         2016-01-08  208  		priv->macclk = devm_clk_get(dev, "macclk");
f4c9d3ee0334fd Xing Zheng         2016-01-08  209  		if (IS_ERR(priv->macclk)) {
663713eb477b9b Caesar Wang        2016-03-14  210  			dev_err(dev, "failed to retrieve mac clock (%ld)\n",
663713eb477b9b Caesar Wang        2016-03-14  211  				PTR_ERR(priv->macclk));
f4c9d3ee0334fd Xing Zheng         2016-01-08  212  			err = PTR_ERR(priv->macclk);
f4c9d3ee0334fd Xing Zheng         2016-01-08  213  			goto out_regulator_disable;
f4c9d3ee0334fd Xing Zheng         2016-01-08  214  		}
f4c9d3ee0334fd Xing Zheng         2016-01-08  215  
f4c9d3ee0334fd Xing Zheng         2016-01-08  216  		err = clk_prepare_enable(priv->macclk);
f4c9d3ee0334fd Xing Zheng         2016-01-08  217  		if (err) {
f4c9d3ee0334fd Xing Zheng         2016-01-08  218  			dev_err(dev, "failed to enable mac clock (%d)\n", err);
f4c9d3ee0334fd Xing Zheng         2016-01-08  219  			goto out_regulator_disable;
f4c9d3ee0334fd Xing Zheng         2016-01-08  220  		}
f4c9d3ee0334fd Xing Zheng         2016-01-08  221  
f4c9d3ee0334fd Xing Zheng         2016-01-08  222  		/* RMII TX/RX needs always a rate of 25MHz */
f4c9d3ee0334fd Xing Zheng         2016-01-08  223  		err = clk_set_rate(priv->macclk, 25000000);
e46772a6946a7d Branislav Radocaj  2017-12-07  224  		if (err) {
663713eb477b9b Caesar Wang        2016-03-14  225  			dev_err(dev,
663713eb477b9b Caesar Wang        2016-03-14  226  				"failed to change mac clock rate (%d)\n", err);
e46772a6946a7d Branislav Radocaj  2017-12-07  227  			goto out_clk_disable_macclk;
e46772a6946a7d Branislav Radocaj  2017-12-07  228  		}
f4c9d3ee0334fd Xing Zheng         2016-01-08  229  	}
f4c9d3ee0334fd Xing Zheng         2016-01-08  230  
c9bca2fe3ca6d6 Xing Zheng         2016-01-08  231  	err = arc_emac_probe(ndev, interface);
c9bca2fe3ca6d6 Xing Zheng         2016-01-08  232  	if (err) {
c9bca2fe3ca6d6 Xing Zheng         2016-01-08  233  		dev_err(dev, "failed to probe arc emac (%d)\n", err);
2a9ee696c72a24 Branislav Radocaj  2017-12-12  234  		goto out_clk_disable_macclk;
c9bca2fe3ca6d6 Xing Zheng         2016-01-08  235  	}
c9bca2fe3ca6d6 Xing Zheng         2016-01-08  236  
6eacf31139bf96 Romain Perier      2014-09-08  237  	return 0;
2a9ee696c72a24 Branislav Radocaj  2017-12-12  238  
e46772a6946a7d Branislav Radocaj  2017-12-07  239  out_clk_disable_macclk:
2a9ee696c72a24 Branislav Radocaj  2017-12-12  240  	if (priv->soc_data->need_div_macclk)
e46772a6946a7d Branislav Radocaj  2017-12-07  241  		clk_disable_unprepare(priv->macclk);
6eacf31139bf96 Romain Perier      2014-09-08  242  out_regulator_disable:
6eacf31139bf96 Romain Perier      2014-09-08  243  	if (priv->regulator)
6eacf31139bf96 Romain Perier      2014-09-08  244  		regulator_disable(priv->regulator);
6eacf31139bf96 Romain Perier      2014-09-08  245  out_clk_disable:
6eacf31139bf96 Romain Perier      2014-09-08  246  	clk_disable_unprepare(priv->refclk);
6eacf31139bf96 Romain Perier      2014-09-08  247  out_netdev:
6eacf31139bf96 Romain Perier      2014-09-08  248  	free_netdev(ndev);
6eacf31139bf96 Romain Perier      2014-09-08 @249  	return err;
6eacf31139bf96 Romain Perier      2014-09-08  250  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
