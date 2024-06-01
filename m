Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8676C25B76
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Jun 2024 17:16:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8/P/7e7CoFUPrVn5rrDmW7FRbMVbhDTnJ+NzDajMZUY=; b=RtNt3buroHQ4tD
	gqjya6qdgAmKNJ9ihQC2+eTb6L+QYpPlSFPIXjme1dxeCKI1S3QG03WXKjYM6ccfu8rC0Umj8hM9I
	P6mKRqtUS9fj/MHR93AEgYMO5WyTfS8UYDOQkIe9d2bRqG6z2My5OSd64EQLWH0lzt1TGuQjl+alS
	c8GujFrlzFkvk5UCDuAj8ANGCdBk7eqFQMal1OqssTPHewdFepiRT6mcLVv8EYkhlUJe4asqSvD9G
	xOPd9HjJcBFnctXqP+E6AGhDImA2ebo9QtTSxBCx2RHjlFjx+4ta+IsY3+epz8hh6jT97dZHqdWaf
	yO93X/+HJO3RlmNdCikg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sDSL1-0000000D0ha-2eGG;
	Sat, 01 Jun 2024 17:16:15 +0000
Received: from mgamail.intel.com ([192.198.163.7])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sDSKs-0000000D0eS-3oIu;
	Sat, 01 Jun 2024 17:16:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1717262166; x=1748798166;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=QT0/E9Yiy8jGP3WrJjpfhCJZG2LSMCz7oy8UufZ8jHo=;
  b=muj8oD5Du+UFLLBrHcsB4hgb3snt84pHV+qJzTK1Z2AnvM2FRmsg5XNk
   mMwAJHbhocz7ELX/bvoa2UpVPD9RoFF+ZWhWlmdifEikOKQVNuy9x3HPu
   BLUhWzjCcLdPX4A+Jd8zrrWadROf+OO1RaThVfRm5FguXxei5SMAK4rXf
   DwZozpn9QsdRihCmbkTBb1tEaf8QZblQnDZKYZOprKYEzsLqSItuhzLqU
   2+c4V6ULoOYu/MOHsAEbBzc7RjPa2g30J9lCSH2Wsd4woBF58D5nKIuYA
   0IZE165Bl7F49uOv5ynfKkVh9EtYgT4WVb3n+Vr797ZB21D9b9lumX0G7
   w==;
X-CSE-ConnectionGUID: Lpyd+AC+RyeFYxcI/2o4og==
X-CSE-MsgGUID: 4M/aik0XTxaErnHX9SVjrA==
X-IronPort-AV: E=McAfee;i="6600,9927,11090"; a="39200165"
X-IronPort-AV: E=Sophos;i="6.08,207,1712646000"; 
   d="scan'208";a="39200165"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Jun 2024 10:15:57 -0700
X-CSE-ConnectionGUID: fh2X1d6hTGqjZBpzWWpz1g==
X-CSE-MsgGUID: EPn/z0lATWOf0HFkYD5mSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,207,1712646000"; 
   d="scan'208";a="41004444"
Received: from unknown (HELO 0610945e7d16) ([10.239.97.151])
  by fmviesa004.fm.intel.com with ESMTP; 01 Jun 2024 10:15:50 -0700
Received: from kbuild by 0610945e7d16 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1sDSKZ-000JAV-2x;
	Sat, 01 Jun 2024 17:15:47 +0000
Date: Sun, 2 Jun 2024 01:15:38 +0800
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
	Mark Yao <markyao0591@gmail.com>
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	kernel@collabora.com, Alexandre ARNOUD <aarnoud@me.com>,
	Luis de Arquer <ldearquer@gmail.com>,
	Algea Cao <algea.cao@rock-chips.com>
Subject: Re: [PATCH 14/14] drm/rockchip: dw_hdmi: Add basic RK3588 support
Message-ID: <202406020122.7LHytbS3-lkp@intel.com>
References: <20240601-b4-rk3588-bridge-upstream-v1-14-f6203753232b@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240601-b4-rk3588-bridge-upstream-v1-14-f6203753232b@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240601_101607_059985_8D8D68E0 
X-CRM114-Status: GOOD (  18.18  )
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

kernel test robot noticed the following build errors:

[auto build test ERROR on 1613e604df0cd359cf2a7fbd9be7a0bcfacfabd0]

url:    https://github.com/intel-lab-lkp/linux/commits/Cristian-Ciocaltea/drm-bridge-dw-hdmi-Simplify-clock-handling/20240601-211531
base:   1613e604df0cd359cf2a7fbd9be7a0bcfacfabd0
patch link:    https://lore.kernel.org/r/20240601-b4-rk3588-bridge-upstream-v1-14-f6203753232b%40collabora.com
patch subject: [PATCH 14/14] drm/rockchip: dw_hdmi: Add basic RK3588 support
config: arm-defconfig (https://download.01.org/0day-ci/archive/20240602/202406020122.7LHytbS3-lkp@intel.com/config)
compiler: clang version 14.0.6 (https://github.com/llvm/llvm-project f28c006a5895fc0e329fe15fead81e37457cb1d1)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240602/202406020122.7LHytbS3-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406020122.7LHytbS3-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c:280:26: error: implicit declaration of function 'devm_gpiod_get_optional' is invalid in C99 [-Werror,-Wimplicit-function-declaration]
                   hdmi->qp_enable_gpio = devm_gpiod_get_optional(hdmi->dev, "enable",
                                          ^
   drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c:280:26: note: did you mean 'devm_clk_get_optional'?
   include/linux/clk.h:597:13: note: 'devm_clk_get_optional' declared here
   struct clk *devm_clk_get_optional(struct device *dev, const char *id);
               ^
>> drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c:281:15: error: use of undeclared identifier 'GPIOD_OUT_HIGH'
                                                                  GPIOD_OUT_HIGH);
                                                                  ^
>> drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c:364:3: error: implicit declaration of function 'gpiod_set_value' is invalid in C99 [-Werror,-Wimplicit-function-declaration]
                   gpiod_set_value(hdmi->qp_enable_gpio, 1);
                   ^
   3 errors generated.


vim +/devm_gpiod_get_optional +280 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c

   226	
   227	static int rockchip_hdmi_parse_dt(struct rockchip_hdmi *hdmi)
   228	{
   229		static const char * const qp_clk_names[] = {
   230			"pclk", "hdp", "earc", "aud", "hclk_vo1",
   231		};
   232		struct device_node *np = hdmi->dev->of_node;
   233		struct clk *qp_clk;
   234		int ret, i;
   235	
   236		hdmi->regmap = syscon_regmap_lookup_by_phandle(np, "rockchip,grf");
   237		if (IS_ERR(hdmi->regmap)) {
   238			drm_err(hdmi, "Unable to get rockchip,grf\n");
   239			return PTR_ERR(hdmi->regmap);
   240		}
   241	
   242		hdmi->ref_clk = devm_clk_get_optional_enabled(hdmi->dev, "ref");
   243		if (!hdmi->ref_clk)
   244			hdmi->ref_clk = devm_clk_get_optional_enabled(hdmi->dev, "vpll");
   245	
   246		if (IS_ERR(hdmi->ref_clk)) {
   247			ret = PTR_ERR(hdmi->ref_clk);
   248			if (ret != -EPROBE_DEFER)
   249				drm_err(hdmi, "failed to get reference clock\n");
   250			return ret;
   251		}
   252	
   253		hdmi->grf_clk = devm_clk_get_optional(hdmi->dev, "grf");
   254		if (IS_ERR(hdmi->grf_clk)) {
   255			ret = PTR_ERR(hdmi->grf_clk);
   256			if (ret != -EPROBE_DEFER)
   257				drm_err(hdmi, "failed to get grf clock\n");
   258			return ret;
   259		}
   260	
   261		if (hdmi->is_hdmi_qp) {
   262			hdmi->vo1_regmap = syscon_regmap_lookup_by_phandle(np, "rockchip,vo1_grf");
   263			if (IS_ERR(hdmi->vo1_regmap)) {
   264				drm_err(hdmi, "Unable to get rockchip,vo1_grf\n");
   265				return PTR_ERR(hdmi->vo1_regmap);
   266			}
   267	
   268			for (i = 0; i < ARRAY_SIZE(qp_clk_names); i++) {
   269				qp_clk = devm_clk_get_optional_enabled(hdmi->dev, qp_clk_names[i]);
   270	
   271				if (IS_ERR(qp_clk)) {
   272					ret = PTR_ERR(qp_clk);
   273					if (ret != -EPROBE_DEFER)
   274						drm_err(hdmi, "failed to get %s clock: %d\n",
   275							qp_clk_names[i], ret);
   276					return ret;
   277				}
   278			}
   279	
 > 280			hdmi->qp_enable_gpio = devm_gpiod_get_optional(hdmi->dev, "enable",
 > 281								       GPIOD_OUT_HIGH);
   282			if (IS_ERR(hdmi->qp_enable_gpio)) {
   283				ret = PTR_ERR(hdmi->qp_enable_gpio);
   284				drm_err(hdmi, "failed to request enable GPIO: %d\n", ret);
   285				return ret;
   286			}
   287		}
   288	
   289		ret = devm_regulator_get_enable(hdmi->dev, "avdd-0v9");
   290		if (ret)
   291			return ret;
   292	
   293		ret = devm_regulator_get_enable(hdmi->dev, "avdd-1v8");
   294	
   295		return ret;
   296	}
   297	
   298	static enum drm_mode_status
   299	dw_hdmi_rockchip_mode_valid(struct dw_hdmi *dw_hdmi, void *data,
   300				    const struct drm_display_info *info,
   301				    const struct drm_display_mode *mode)
   302	{
   303		struct rockchip_hdmi *hdmi = data;
   304		const struct dw_hdmi_mpll_config *mpll_cfg = rockchip_mpll_cfg;
   305		int pclk = mode->clock * 1000;
   306		bool exact_match = hdmi->plat_data->phy_force_vendor;
   307		int i;
   308	
   309		if (hdmi->ref_clk) {
   310			int rpclk = clk_round_rate(hdmi->ref_clk, pclk);
   311	
   312			if (abs(rpclk - pclk) > pclk / 1000)
   313				return MODE_NOCLOCK;
   314		}
   315	
   316		for (i = 0; mpll_cfg[i].mpixelclock != (~0UL); i++) {
   317			/*
   318			 * For vendor specific phys force an exact match of the pixelclock
   319			 * to preserve the original behaviour of the driver.
   320			 */
   321			if (exact_match && pclk == mpll_cfg[i].mpixelclock)
   322				return MODE_OK;
   323			/*
   324			 * The Synopsys phy can work with pixelclocks up to the value given
   325			 * in the corresponding mpll_cfg entry.
   326			 */
   327			if (!exact_match && pclk <= mpll_cfg[i].mpixelclock)
   328				return MODE_OK;
   329		}
   330	
   331		return MODE_BAD;
   332	}
   333	
   334	static void dw_hdmi_rockchip_encoder_disable(struct drm_encoder *encoder)
   335	{
   336	}
   337	
   338	static bool
   339	dw_hdmi_rockchip_encoder_mode_fixup(struct drm_encoder *encoder,
   340					    const struct drm_display_mode *mode,
   341					    struct drm_display_mode *adj_mode)
   342	{
   343		return true;
   344	}
   345	
   346	static void dw_hdmi_rockchip_encoder_mode_set(struct drm_encoder *encoder,
   347						      struct drm_display_mode *mode,
   348						      struct drm_display_mode *adj_mode)
   349	{
   350		struct rockchip_hdmi *hdmi = to_rockchip_hdmi(encoder);
   351	
   352		clk_set_rate(hdmi->ref_clk, adj_mode->clock * 1000);
   353	}
   354	
   355	static void dw_hdmi_rockchip_encoder_enable(struct drm_encoder *encoder)
   356	{
   357		struct rockchip_hdmi *hdmi = to_rockchip_hdmi(encoder);
   358		struct drm_crtc *crtc = encoder->crtc;
   359		u32 val;
   360		int ret, rate;
   361	
   362		if (hdmi->is_hdmi_qp) {
   363			/* Unconditionally switch to TMDS as FRL is not yet supported */
 > 364			gpiod_set_value(hdmi->qp_enable_gpio, 1);
   365	
   366			if (crtc && crtc->state) {
   367				clk_set_rate(hdmi->ref_clk,
   368					     crtc->state->adjusted_mode.crtc_clock * 1000);
   369				/*
   370				 * FIXME: Temporary workaround to pass pixel clock rate
   371				 * to the PHY driver until phy_configure_opts_hdmi
   372				 * becomes available in the PHY API. See also the related
   373				 * comment in rk_hdptx_phy_power_on() from
   374				 * drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
   375				 */
   376				if (hdmi->phy) {
   377					rate = crtc->state->mode.clock * 10;
   378					phy_set_bus_width(hdmi->phy, rate);
   379					drm_dbg(hdmi, "%s set bus_width=%u\n",
   380						__func__, rate);
   381				}
   382			}
   383		}
   384	
   385		if (hdmi->chip_data->lcdsel_grf_reg < 0)
   386			return;
   387	
   388		ret = drm_of_encoder_active_endpoint_id(hdmi->dev->of_node, encoder);
   389		if (ret)
   390			val = hdmi->chip_data->lcdsel_lit;
   391		else
   392			val = hdmi->chip_data->lcdsel_big;
   393	
   394		ret = clk_prepare_enable(hdmi->grf_clk);
   395		if (ret < 0) {
   396			drm_err(hdmi, "failed to enable grfclk %d\n", ret);
   397			return;
   398		}
   399	
   400		ret = regmap_write(hdmi->regmap, hdmi->chip_data->lcdsel_grf_reg, val);
   401		if (ret != 0)
   402			drm_err(hdmi, "Could not write to GRF: %d\n", ret);
   403	
   404		clk_disable_unprepare(hdmi->grf_clk);
   405		drm_dbg(hdmi, "vop %s output to hdmi\n", ret ? "LIT" : "BIG");
   406	}
   407	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
