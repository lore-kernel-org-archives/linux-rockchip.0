Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60CE5CED631
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Nov 2025 12:06:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zP5Lj/UWmYFSDtgyCcLabmExklCXsNpdo20Q6r9eyAY=; b=jngdtYdX9UUude
	zF0IEVFSL+sS8f9a2RT6J4u8AaVEh1oCmFFL345QIDdk0JWy9VfiA1Tg+C0oIrYzQ7W1RCqRTsojf
	4KsBM3yB8OdzwzMvk377+JMXe0xuzOtWC/tGQ60vz6/Tb5FtBC4D0t/NJZTyzglxaJB7hDqu35koS
	yPfsaMxoIsxV+uv9EHsMEgW1Twcka1+qquR+Uafzhk8xcL5+g9jgsOoQyiUZOd4E63B+hUhKiVxsM
	9LJlSWbTc1SD0us5rdGAgUodTYkpi/WrAchCo8G/3o4YmNOM/3XDJABGSvt8w3Gj+vAAsZjkhFOw/
	1Gwxh0SO6yQ41DKJYF2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLKTn-00000000Neh-400Y;
	Tue, 18 Nov 2025 12:06:39 +0000
Received: from mgamail.intel.com ([198.175.65.9])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLKTg-00000000NdW-0Wzy;
	Tue, 18 Nov 2025 12:06:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1763467592; x=1795003592;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=+DBrnd0XnZ/3Kg4ybg+n7skOvNHN+05c3Za6EBwWRJ4=;
  b=GlXNhvrYaFk/ou/ScCnzD5wUgjTP06vBlw74VAUafRwBF3tclsTblJAB
   zl7Q3N6RpmrVSgSNA0rPUKSZphS2TRbi7vLVLyrI9nvK/qzcNhAs/hsuk
   rHivZm5yY8t52JVNDoHgeThJPZdZKb0Vb5AeLcailIuD+HFPCkoUou7gH
   VoQsnwXe5uJpU+5Tey+wBS2X19alhYZ0YmAv+SqrNiZjnsiEvVom5iTmY
   p7xqQNrdpDVwWmhhifd+dPlDa/7depstqVHg9lvEVlseFIw0LsDgb7RPY
   adwELKP8R1+X8yFmrqLMZc6dFGjdDjZNy8Yx8pVgI2uNL710HDuD9J7Pl
   g==;
X-CSE-ConnectionGUID: fTaLdj5gSB2ODWfktWmbzQ==
X-CSE-MsgGUID: VsKTkj+eSyyGBoHhBFzQ/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="88137033"
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; 
   d="scan'208";a="88137033"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
  by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Nov 2025 04:06:30 -0800
X-CSE-ConnectionGUID: L4c+hRHQRGGzK2KKCLDfyA==
X-CSE-MsgGUID: NrQ8Oj1vTh6ywIF05IjymQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; 
   d="scan'208";a="195655072"
Received: from lkp-server01.sh.intel.com (HELO adf6d29aa8d9) ([10.239.97.150])
  by fmviesa004.fm.intel.com with ESMTP; 18 Nov 2025 04:06:23 -0800
Received: from kbuild by adf6d29aa8d9 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1vLKTV-0001hf-11;
	Tue, 18 Nov 2025 12:06:21 +0000
Date: Tue, 18 Nov 2025 20:06:08 +0800
From: kernel test robot <lkp@intel.com>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Harry Wentland <harry.wentland@amd.com>,
	Leo Li <sunpeng.li@amd.com>, Rodrigo Siqueira <siqueira@igalia.com>,
	Alex Deucher <alexander.deucher@amd.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Sandy Huang <hjc@rock-chips.com>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Tvrtko Ursulin <tursulin@ursulin.net>
Cc: oe-kbuild-all@lists.linux.dev, kernel@collabora.com,
	amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v4 02/10] drm: Add new general DRM property "color format"
Message-ID: <202511181958.eS8Ctiow-lkp@intel.com>
References: <20251117-color-format-v4-2-0ded72bd1b00@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251117-color-format-v4-2-0ded72bd1b00@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_040632_258199_F0CFA17F 
X-CRM114-Status: GOOD (  12.14  )
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

Hi Nicolas,

kernel test robot noticed the following build warnings:

[auto build test WARNING on d1d18879e01e4c9efcb85a96d188a8e4326136dd]

url:    https://github.com/intel-lab-lkp/linux/commits/Nicolas-Frattaroli/drm-amd-display-Remove-unnecessary-SIGNAL_TYPE_HDMI_TYPE_A-check/20251118-031440
base:   d1d18879e01e4c9efcb85a96d188a8e4326136dd
patch link:    https://lore.kernel.org/r/20251117-color-format-v4-2-0ded72bd1b00%40collabora.com
patch subject: [PATCH v4 02/10] drm: Add new general DRM property "color format"
config: arm-randconfig-001-20251118 (https://download.01.org/0day-ci/archive/20251118/202511181958.eS8Ctiow-lkp@intel.com/config)
compiler: arm-linux-gnueabi-gcc (GCC) 8.5.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20251118/202511181958.eS8Ctiow-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202511181958.eS8Ctiow-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> Warning: drivers/gpu/drm/drm_connector.c:1392 function parameter 'color_fmt' not described in 'drm_get_color_format_name'
>> Warning: drivers/gpu/drm/drm_connector.c:1392 function parameter 'color_fmt' not described in 'drm_get_color_format_name'

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
