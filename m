Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DC0FC43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jun 2022 04:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hCq2FQY792F00hj6Yw+YAIL49CJsd4du5KeB3OUR6E0=; b=E/r6p9AQRudmx6
	RwYsHXPdZBkSN2czrUFnHMz3JsCa6oaK6pGy4h9o9oD44YaFfrTFwQWQ9Y/awSnkOaD7pL66KgsR1
	1bE6N3iifly4kEAVO2FWPFmodwf6rOyblYWHs9ZNnRloKbKm2AlDIqDD9XMN2QLl8DQuRFy/fN7E3
	NTHKv9VoPmOK4cnF8xnl4V2NZH+67Ok0PyU6azvGRj4PKkuSKEQ7awotzSk5GvzXygxKn7HSGa+UI
	jh6ZcY2U98Gaxb8MIFfNNV2xZJlcZTzXDJwoyA2Fx4EblpqhxZlLG52NnZka5IPP7PlDJpHI0RxI5
	gOTiiUO0Q84PhOtoGf8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o23Le-005OjG-0N; Fri, 17 Jun 2022 04:12:42 +0000
Received: from mga12.intel.com ([192.55.52.136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o23LT-005OhC-0u; Fri, 17 Jun 2022 04:12:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1655439151; x=1686975151;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=YvdWTFUk63l31qGeLrbQlCsXOPg6/TSiY97UBVlYBnM=;
  b=fipMksOmSvRFVV2cH/oJcvlNTAWvMO+cX9t0wItL+PLng0xe2wGckusV
   ROUYcMzCvLKSSjyzfm9+zzQK4v2SNgQ6rcjaX8JhDGDXhQp/cvy4dvvEs
   Cx9TnEvAtM5ibi7KvXSkgZxwNFYGhYjH02xUmRpQIM+RGbifVg3ewjjDd
   Riu2/KOMYUcDZT+QLzEq0yV/aj+xKHA7hA3mOWo3249xdbWN0lL9y93Pd
   dNWUZX00YFAOANLCzJzixPdukH8OLr44xYMYKFnQKn+Gu1uebGSehokiI
   k8DuIcfevrHEeGlWumb6KB2IGT+KbP2hUI945KshhpVP7ldYZSPF0KMPg
   Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="259266131"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; 
   d="scan'208";a="259266131"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jun 2022 21:12:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; 
   d="scan'208";a="619133541"
Received: from lkp-server01.sh.intel.com (HELO 60dabacc1df6) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 16 Jun 2022 21:12:26 -0700
Received: from kbuild by 60dabacc1df6 with local (Exim 4.95)
	(envelope-from <lkp@intel.com>)
	id 1o23LO-000P3N-1H;
	Fri, 17 Jun 2022 04:12:26 +0000
Date: Fri, 17 Jun 2022 12:12:06 +0800
From: kernel test robot <lkp@intel.com>
To: Judy Hsiao <judyhsiao@chromium.org>, Rob Herring <robh+dt@kernel.org>
Cc: kbuild-all@lists.01.org, Heiko Stuebner <heiko@sntech.de>,
	Brian Norris <briannorris@chromium.org>,
	Douglas Anderson <dianders@chromium.org>,
	Guenter Roeck <groeck@google.com>,
	Chen-Yu Tsai <wenst@chromium.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Judy Hsiao <judyhsiao@chromium.org>
Subject: Re: [v1] arm64: dts: rk3399: i2s: switch BCLK to GPIO
Message-ID: <202206171259.Mm7iOW4r-lkp@intel.com>
References: <20220615045146.3134420-1-judyhsiao@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220615045146.3134420-1-judyhsiao@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_211231_121038_9E49E066 
X-CRM114-Status: GOOD (  13.51  )
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

Hi Judy,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on rockchip/for-next]
[also build test ERROR on v5.19-rc2 next-20220616]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/intel-lab-lkp/linux/commits/Judy-Hsiao/arm64-dts-rk3399-i2s-switch-BCLK-to-GPIO/20220615-125441
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
config: arm64-defconfig (https://download.01.org/0day-ci/archive/20220617/202206171259.Mm7iOW4r-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 11.3.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/intel-lab-lkp/linux/commit/1fba583f1d6efea74ff18356d44566c17fbdc4a1
        git remote add linux-review https://github.com/intel-lab-lkp/linux
        git fetch --no-tags linux-review Judy-Hsiao/arm64-dts-rk3399-i2s-switch-BCLK-to-GPIO/20220615-125441
        git checkout 1fba583f1d6efea74ff18356d44566c17fbdc4a1
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.3.0 make.cross W=1 O=build_dir ARCH=arm64 SHELL=/bin/bash

If you fix the issue, kindly add following tag where applicable
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> Error: arch/arm64/boot/dts/rockchip/rk3399-opp.dtsi:6.1-2 syntax error
   FATAL ERROR: Unable to parse input tree
--
>> Error: arch/arm64/boot/dts/rockchip/rk3399-evb.dts:10.1-2 syntax error
   FATAL ERROR: Unable to parse input tree
--
>> Error: arch/arm64/boot/dts/rockchip/rk3399-op1-opp.dtsi:6.1-2 syntax error
   FATAL ERROR: Unable to parse input tree

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
