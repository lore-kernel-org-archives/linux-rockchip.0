Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D83C3C54E58
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Mar 2024 06:54:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pd73lgFGbdlcwfA+ic006USRQNyPF1VeZOCDDniG0OM=; b=uNZXdUG4z8p9JX
	RFLmsj1luPkg2i7GAiXThKj3V4aGXjbZkJe3Hfu9mXjRhsU1fVZ/fNm+wE3kWbX4FgheksaKo9MO6
	s7i3lqXTg3qTIalQbdrBfeO51CfgBAjwFQgaO+lkhI3iYhgHOvkqMEvRFjLiC7F7nva9jApxkJO/2
	64cdnkzDNMoO78GCId289PF5LjW1gJV/he//zt1TTv9PUHDvwaBJEfS2YOGpus43L1Tzz8Kwlb37x
	3SDRcbwZQC6U6kQlinkDPEFAOhoyhM8EdbMZCBxxBLyDncym44IpCF8yS3/YthWk612R2oeeWI3fR
	mazzKAIITXIih500/aDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp0h4-00000003LWk-3CDu;
	Tue, 26 Mar 2024 06:53:58 +0000
Received: from mgamail.intel.com ([198.175.65.15])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp0h1-00000003LW0-2TO9;
	Tue, 26 Mar 2024 06:53:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1711436036; x=1742972036;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=T93oDLJVqmXjMft3p/o0gcTvmzd4o0CYgIVWkB1+goo=;
  b=KAEuHzfUNT8bRKy1QoAJvztgV7P84uNZhb4JZ/NnlnOJx2dv0IVqk1Jc
   6haH1SygadQfWyPHlRGOlZexEN2ulfMiTGa5s+if3Sngd+ruk6HSHrNQE
   KeXC8+lGf5L0vSVcL9B79vk+etaxrQt08sGokc5rnBNhk5CzuQbOiw7tk
   55SyeaxWumWHGn71OuZ0x5AcZkf7lWVnHo9RbjlCb+H9Zg2fOY+zEuUxa
   EkMW1fKc71gfY8BiQ5kNBE1izvTHPNyx06nEkEEE38eWsuDsL2kXFKHeL
   I01bsGHS8JTG8+aIcTzvR6UNE0HnSlSS8XB6a/UMjLPCk4YcckGhfnGMz
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="10264707"
X-IronPort-AV: E=Sophos;i="6.07,155,1708416000"; 
   d="scan'208";a="10264707"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
  by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Mar 2024 23:53:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,155,1708416000"; 
   d="scan'208";a="46870214"
Received: from lkp-server01.sh.intel.com (HELO b21307750695) ([10.239.97.150])
  by orviesa002.jf.intel.com with ESMTP; 25 Mar 2024 23:53:51 -0700
Received: from kbuild by b21307750695 with local (Exim 4.96)
	(envelope-from <lkp@intel.com>)
	id 1rp0gu-000NBW-0N;
	Tue, 26 Mar 2024 06:53:48 +0000
Date: Tue, 26 Mar 2024 14:53:26 +0800
From: kernel test robot <lkp@intel.com>
To: Sugar Zhang <sugar.zhang@rock-chips.com>, heiko@sntech.de
Cc: oe-kbuild-all@lists.linux.dev, linux-rockchip@lists.infradead.org,
	Sugar Zhang <sugar.zhang@rock-chips.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Rob Herring <robh@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 2/2] dt-bindings: clock: rockchip: Add support for clk
 input / output switch
Message-ID: <202403261442.9P6rk3Wk-lkp@intel.com>
References: <1711340191-69588-2-git-send-email-sugar.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1711340191-69588-2-git-send-email-sugar.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_235355_701310_1BC20641 
X-CRM114-Status: GOOD (  12.12  )
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

Hi Sugar,

kernel test robot noticed the following build warnings:

[auto build test WARNING on rockchip/for-next]
[also build test WARNING on linus/master v6.9-rc1 next-20240325]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Sugar-Zhang/clk-rockchip-Add-support-for-clk-input-output-switch/20240325-212211
base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git for-next
patch link:    https://lore.kernel.org/r/1711340191-69588-2-git-send-email-sugar.zhang%40rock-chips.com
patch subject: [PATCH v1 2/2] dt-bindings: clock: rockchip: Add support for clk input / output switch
compiler: loongarch64-linux-gcc (GCC) 13.2.0
reproduce: (https://download.01.org/0day-ci/archive/20240326/202403261442.9P6rk3Wk-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202403261442.9P6rk3Wk-lkp@intel.com/

dtcheck warnings: (new ones prefixed by >>)
>> Documentation/devicetree/bindings/clock/rockchip,clk-out.yaml: title: 'Rockchip Clock Out Control Module Binding' should not be valid under {'pattern': '([Bb]inding| [Ss]chema)'}
   	hint: Everything is a binding/schema, no need to say it. Describe what hardware the binding is for.
   	from schema $id: http://devicetree.org/meta-schemas/base.yaml#

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
