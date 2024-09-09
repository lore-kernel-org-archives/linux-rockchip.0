Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41E2CECE577
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Sep 2024 00:44:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kxR1fH2m1H6fGBKCOV1Id94Dq3LNuqgcd1yXmUn17io=; b=yduOhDhCs9gYnt
	32gT+t705HhS7Dt1YFrLurZU3qsOJD6wSSo0Vf4ZUZObH32kGJ0h9CtPMJxe8wh9ruLu1F75ukVC1
	0QDkSrgy6XQ2js8Xp5u0XC/1xuc3Y3WWrRMK3rOzZYMa+qXdXUTOXwUTXTzVJIcBrhT/84zQpCzJ9
	BRw+KL0akG5v5/mX009czkD5Ly+oxY1IRWVbNEpUgP+IJzUZj+KnCXu20h9Uk1hYV/s8+7/M2C0O6
	IL0/5pffaLQW9BwyPpwR0lF5rq+kzuauYu1NoTb1OXf95DPGF+HEI2UZ9fIv33INsRTXv/XKeJlv1
	NrEBfVbZZPvVhXF99rxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snSW4-000000007zp-0TRO;
	Mon, 09 Sep 2024 00:44:28 +0000
Received: from mgamail.intel.com ([198.175.65.19])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snSV2-000000007ul-4A6a;
	Mon, 09 Sep 2024 00:43:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1725842605; x=1757378605;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=XNNSjYDp2/vVWve1yWNzSRejqISxf3CiHc/EGOCbqS8=;
  b=H9Lt73J2phv9pPajz1Z+RaH+bRbiT8/UM1Cc30sQQZozwXUDQjlGtcG0
   7TxUVqC7OJYARSxCP2bfGKNdnmuyRS4/xvDu9SzNt2bgmn2QLg2ylZL/R
   ZrZMgTC4o8GedakbEMTLVQvxfL3L8PExSF2tvWcnhjjOFaDUyHMOGAjZk
   i8urAMnbmuFooDnZrg5VhjqFmXE8c13fLi1qIeq4S29flhdts4bRSDWli
   JJpFycsHDc89y8R9L06PZ322TGgzN8f3MGj1klUEOYpUP3M5eqtv0Fhfy
   l+oChNHzOgxEBOFiLcYam5NSIJec0vR+aPFB23EjmdUGFzxMZwKaGCrSI
   w==;
X-CSE-ConnectionGUID: v2vV+5pFRdSfzy9qbq0Q5w==
X-CSE-MsgGUID: CoGmTh9MTyaPRYD4dNb5dw==
X-IronPort-AV: E=McAfee;i="6700,10204,11189"; a="24380698"
X-IronPort-AV: E=Sophos;i="6.10,213,1719903600"; 
   d="scan'208";a="24380698"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
  by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Sep 2024 17:43:16 -0700
X-CSE-ConnectionGUID: 0TF1Qs4nRxmSO0LssqBdig==
X-CSE-MsgGUID: nHhGW951T3ePC2vI+90hZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,213,1719903600"; 
   d="scan'208";a="89764067"
Received: from lkp-server01.sh.intel.com (HELO 9c6b1c7d3b50) ([10.239.97.150])
  by fmviesa002.fm.intel.com with ESMTP; 08 Sep 2024 17:43:10 -0700
Received: from kbuild by 9c6b1c7d3b50 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1snSUl-000E7t-2r;
	Mon, 09 Sep 2024 00:43:07 +0000
Date: Mon, 9 Sep 2024 08:42:58 +0800
From: kernel test robot <lkp@intel.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Sandy Huang <hjc@rock-chips.com>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Mark Yao <markyao0591@gmail.com>,
	Sascha Hauer <s.hauer@pengutronix.de>
Cc: oe-kbuild-all@lists.linux.dev, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	kernel@collabora.com, Alexandre ARNOUD <aarnoud@me.com>,
	Luis de Arquer <ldearquer@gmail.com>,
	Algea Cao <algea.cao@rock-chips.com>
Subject: Re: [PATCH v6 3/3] drm/rockchip: Add basic RK3588 HDMI output support
Message-ID: <202409090615.l6BkuR5K-lkp@intel.com>
References: <20240906-b4-rk3588-bridge-upstream-v6-3-a3128fb103eb@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240906-b4-rk3588-bridge-upstream-v6-3-a3128fb103eb@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240908_174325_104101_09825284 
X-CRM114-Status: GOOD (  11.69  )
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

Hi Cristian,

kernel test robot noticed the following build warnings:

[auto build test WARNING on 8400291e289ee6b2bf9779ff1c83a291501f017b]

url:    https://github.com/intel-lab-lkp/linux/commits/Cristian-Ciocaltea/drm-bridge-synopsys-Add-DW-HDMI-QP-TX-Controller-support-library/20240906-092027
base:   8400291e289ee6b2bf9779ff1c83a291501f017b
patch link:    https://lore.kernel.org/r/20240906-b4-rk3588-bridge-upstream-v6-3-a3128fb103eb%40collabora.com
patch subject: [PATCH v6 3/3] drm/rockchip: Add basic RK3588 HDMI output support
config: powerpc64-randconfig-r122-20240908 (https://download.01.org/0day-ci/archive/20240909/202409090615.l6BkuR5K-lkp@intel.com/config)
compiler: clang version 17.0.6 (https://github.com/llvm/llvm-project 6009708b4367171ccdbf4b5905cb6a803753fe18)
reproduce: (https://download.01.org/0day-ci/archive/20240909/202409090615.l6BkuR5K-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202409090615.l6BkuR5K-lkp@intel.com/

sparse warnings: (new ones prefixed by >>)
>> drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c:679:24: sparse: sparse: incorrect type in return expression (different address spaces) @@     expected struct dw_hdmi_qp * @@     got void [noderef] __iomem *[assigned] regs @@
   drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c:679:24: sparse:     expected struct dw_hdmi_qp *
   drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c:679:24: sparse:     got void [noderef] __iomem *[assigned] regs

vim +679 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c

4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  653  
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  654  struct dw_hdmi_qp *dw_hdmi_qp_bind(struct platform_device *pdev,
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  655  				   struct drm_encoder *encoder,
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  656  				   const struct dw_hdmi_qp_plat_data *plat_data)
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  657  {
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  658  	struct device *dev = &pdev->dev;
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  659  	struct dw_hdmi_qp *hdmi;
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  660  	void __iomem *regs;
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  661  	int ret;
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  662  
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  663  	if (!plat_data->phy_ops || !plat_data->phy_ops->init ||
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  664  	    !plat_data->phy_ops->disable || !plat_data->phy_ops->read_hpd) {
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  665  		dev_err(dev, "Missing platform PHY ops\n");
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  666  		return ERR_PTR(-ENODEV);
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  667  	}
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  668  
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  669  	hdmi = devm_kzalloc(dev, sizeof(*hdmi), GFP_KERNEL);
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  670  	if (!hdmi)
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  671  		return ERR_PTR(-ENOMEM);
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  672  
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  673  	INIT_DELAYED_WORK(&hdmi->scramb_work, dw_hdmi_qp_scramb_work);
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  674  
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  675  	hdmi->dev = dev;
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  676  
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  677  	regs = devm_platform_ioremap_resource(pdev, 0);
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  678  	if (IS_ERR(regs))
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06 @679  		return regs;
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  680  
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  681  	hdmi->regm = devm_regmap_init_mmio(dev, regs, &dw_hdmi_qp_regmap_config);
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  682  	if (IS_ERR(hdmi->regm)) {
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  683  		dev_err(dev, "Failed to configure regmap\n");
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  684  		return ERR_CAST(hdmi->regm);
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  685  	}
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  686  
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  687  	hdmi->phy.ops = plat_data->phy_ops;
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  688  	hdmi->phy.data = plat_data->phy_data;
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  689  
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  690  	dw_hdmi_qp_init_hw(hdmi);
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  691  
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  692  	ret = devm_request_threaded_irq(dev, plat_data->main_irq,
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  693  					dw_hdmi_qp_main_hardirq, NULL,
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  694  					IRQF_SHARED, dev_name(dev), hdmi);
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  695  	if (ret)
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  696  		return ERR_PTR(ret);
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  697  
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  698  	hdmi->bridge.driver_private = hdmi;
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  699  	hdmi->bridge.funcs = &dw_hdmi_qp_bridge_funcs;
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  700  	hdmi->bridge.ops = DRM_BRIDGE_OP_DETECT |
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  701  			   DRM_BRIDGE_OP_EDID |
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  702  			   DRM_BRIDGE_OP_HDMI |
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  703  			   DRM_BRIDGE_OP_HPD;
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  704  	hdmi->bridge.of_node = pdev->dev.of_node;
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  705  	hdmi->bridge.type = DRM_MODE_CONNECTOR_HDMIA;
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  706  	hdmi->bridge.vendor = "Synopsys";
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  707  	hdmi->bridge.product = "DW HDMI QP TX";
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  708  
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  709  	hdmi->bridge.ddc = dw_hdmi_qp_i2c_adapter(hdmi);
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  710  	if (IS_ERR(hdmi->bridge.ddc))
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  711  		hdmi->bridge.ddc = NULL;
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  712  
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  713  	ret = devm_drm_bridge_add(dev, &hdmi->bridge);
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  714  	if (ret)
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  715  		return ERR_PTR(ret);
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  716  
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  717  	ret = drm_bridge_attach(encoder, &hdmi->bridge, NULL,
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  718  				DRM_BRIDGE_ATTACH_NO_CONNECTOR);
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  719  	if (ret)
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  720  		return ERR_PTR(ret);
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  721  
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  722  	return hdmi;
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  723  }
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  724  EXPORT_SYMBOL_GPL(dw_hdmi_qp_bind);
4ae2f13b217e6c Cristian Ciocaltea 2024-09-06  725  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
