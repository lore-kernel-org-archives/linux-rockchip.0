Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2ED21CD1296
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Apr 2024 08:38:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=b9BqP+YNVkdHoooGXLe92h1Fp3slO6ORvDhaVdxZG4c=; b=Jg7m/1K0DhQzzQ
	soalDd//aakypLIF+M3OuNQpMg9iUJe8JMkGVFXgx7olyx52RauPkkIF45Gz6D7ZnNV0VV9PhRZqY
	p3JJ9OcnetA6LAxk/0lxoSxClj8RdbVjxX560k6ODXHamxzpTohIeDGl0LYO9FJJmcMCHegn5YiC8
	8wGo3M3RXOO6lYIz79KQjoxLVNJOLi2j2YQEs0jCSZzdqNtrPQZrl5kSKyTKFChvE3YvCj6PeAZkN
	k0ARr2N3aDn7YkvYInO8P3B4Rr9KGyxwFSEx1tSZOu6zNfOiS3SuQvXjA9Mm0Gt21o2JUosp5tlDb
	Sirgx6/3JqZtx5Fp4jow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsf61-00000005yXa-3C6E;
	Fri, 05 Apr 2024 08:38:49 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsf5x-00000005yTG-3x1a
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Apr 2024 08:38:47 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-a4702457ccbso259557666b.3
        for <linux-rockchip@lists.infradead.org>; Fri, 05 Apr 2024 01:38:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712306320; x=1712911120; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ubTb0fgVnrfBS5bggRD1QN9w4aDFQXkPd91AMrgys1Q=;
        b=Z/Dq8ZSDlBw04SF9RpwvxP42MM/tootGf2yergabugnqP+Ar2LTuj2Sj6bWb/uIkra
         IpOu7HPdX1tVFvnlI4RF8eL3d1nIerUyVfgA6mTHfJBIvVNfFfIvIiZ/YQMZP/aM5M0n
         BirYt+vscZ54MPSG9+yPLBrVSHoKSgTXRB+LKw/jqjtOp1ABeJt20fwSkb+BQzCPKLUT
         /bwhYp0XBzirPDAvPVl7LJJqAeBFpE1YCxTqLQpoHfTi53airkrGWVLdjYp6bJniqNvz
         GjaM/pIP2jetyTT00Avb3QU0+VWEMA66V3jT4UXrtt8T+ZpilsrfB3sLQ7Bt1RBU+Pfl
         yhqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712306320; x=1712911120;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ubTb0fgVnrfBS5bggRD1QN9w4aDFQXkPd91AMrgys1Q=;
        b=E8qG02dyPQZx7JJkfgCS6H12N7BeuXBIQ7HKdg3A/S7nyWsA0kYpSom13RWJfslrFb
         OD4B7Vo9eULzTRuwIyBvMz+3gMxn9ISX14rIfk+Vo1FHs/L3EJ4w9D0r4l3Z5QEyix+F
         OIjbITJgEhinlcnKm2tUmT+A4CrpbFU+sX6wuKXnvVc1OhYZYSgPlB51XVlXjnzyZu8x
         Nz6E+/vI6sVaJMDSYKdl2X1x5aFvnZXQhab45/TS3DWdCLbz1tGS7RhTJJ7ImReaT6Nk
         u/8I/snUAovedCdZBqNLwOJ+Fi+2gl8qdeqGRQcnN9PAbcafUjVdGpvxOwchF5vVw67D
         v5eA==
X-Forwarded-Encrypted: i=1; AJvYcCWKiaqqt0HrJxSPBtPIbXDs0MAEfW6U/rgoTltjHyyKE5ZCZhWigbLmO+qDbj4pNohakSFWgeJoGd+AOlVkBIKsfhVZblXvRdoJv3f4GKqNoi1z
X-Gm-Message-State: AOJu0YxuKeSyWtzmaU8PptuFt5gCei6RvbPWYbUipvfv2U9YyzLkqVOv
	FE0RyeFSKI6vfVldLzfm4yR5K/LMkc7Gy1TgGdbFtqJdHfbMS67EiWU1b8JPKhc=
X-Google-Smtp-Source: AGHT+IEbsXOh/N7WNWmlYpCZzHx5wkzHFgy5SzPZtE5tZZGTZhrkAvGSYXBlZD3FtsmRpsA6biQgGQ==
X-Received: by 2002:a17:906:2798:b0:a45:e3ab:152f with SMTP id j24-20020a170906279800b00a45e3ab152fmr499838ejc.21.1712306319804;
        Fri, 05 Apr 2024 01:38:39 -0700 (PDT)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id ci25-20020a170906c35900b00a4e2ad2cef0sm570122ejb.203.2024.04.05.01.38.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Apr 2024 01:38:39 -0700 (PDT)
Date: Fri, 5 Apr 2024 11:38:35 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Damien Le Moal <dlemoal@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <helgaas@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v2 02/18] PCI: endpoint: Introduce pci_epc_map_align()
Message-ID: <2b9ad9b2-c5df-4364-99cb-c2b41cdfee52@moroto.mountain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240330041928.1555578-3-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_013846_069858_1949BEAA 
X-CRM114-Status: UNSURE (   8.11  )
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

Hi Damien,

kernel test robot noticed the following build warnings:

https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Damien-Le-Moal/PCI-endpoint-Introduce-pci_epc_function_is_valid/20240330-122311
base:   https://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git next
patch link:    https://lore.kernel.org/r/20240330041928.1555578-3-dlemoal%40kernel.org
patch subject: [PATCH v2 02/18] PCI: endpoint: Introduce pci_epc_map_align()
config: parisc-randconfig-r071-20240405 (https://download.01.org/0day-ci/archive/20240405/202404051508.hvNRDVZq-lkp@intel.com/config)
compiler: hppa-linux-gcc (GCC) 13.2.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202404051508.hvNRDVZq-lkp@intel.com/

smatch warnings:
drivers/pci/endpoint/pci-epc-core.c:493 pci_epc_map_align() error: we previously assumed 'features' could be null (see line 487)

vim +/features +493 drivers/pci/endpoint/pci-epc-core.c

9d2f10d2ace040 Damien Le Moal         2024-03-30  458  int pci_epc_map_align(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
9d2f10d2ace040 Damien Le Moal         2024-03-30  459  		      u64 pci_addr, size_t size, struct pci_epc_map *map)
9d2f10d2ace040 Damien Le Moal         2024-03-30  460  {
9d2f10d2ace040 Damien Le Moal         2024-03-30  461  	const struct pci_epc_features *features;
9d2f10d2ace040 Damien Le Moal         2024-03-30  462  	size_t mask;
9d2f10d2ace040 Damien Le Moal         2024-03-30  463  	int ret;
9d2f10d2ace040 Damien Le Moal         2024-03-30  464  
9d2f10d2ace040 Damien Le Moal         2024-03-30  465  	if (!pci_epc_function_is_valid(epc, func_no, vfunc_no))
9d2f10d2ace040 Damien Le Moal         2024-03-30  466  		return -EINVAL;
9d2f10d2ace040 Damien Le Moal         2024-03-30  467  
9d2f10d2ace040 Damien Le Moal         2024-03-30  468  	if (!size || !map)
9d2f10d2ace040 Damien Le Moal         2024-03-30  469  		return -EINVAL;
9d2f10d2ace040 Damien Le Moal         2024-03-30  470  
9d2f10d2ace040 Damien Le Moal         2024-03-30  471  	memset(map, 0, sizeof(*map));
9d2f10d2ace040 Damien Le Moal         2024-03-30  472  	map->pci_addr = pci_addr;
9d2f10d2ace040 Damien Le Moal         2024-03-30  473  	map->pci_size = size;
9d2f10d2ace040 Damien Le Moal         2024-03-30  474  
9d2f10d2ace040 Damien Le Moal         2024-03-30  475  	if (epc->ops->map_align) {
9d2f10d2ace040 Damien Le Moal         2024-03-30  476  		mutex_lock(&epc->lock);
9d2f10d2ace040 Damien Le Moal         2024-03-30  477  		ret = epc->ops->map_align(epc, func_no, vfunc_no, map);
9d2f10d2ace040 Damien Le Moal         2024-03-30  478  		mutex_unlock(&epc->lock);
9d2f10d2ace040 Damien Le Moal         2024-03-30  479  		return ret;
9d2f10d2ace040 Damien Le Moal         2024-03-30  480  	}
9d2f10d2ace040 Damien Le Moal         2024-03-30  481  
9d2f10d2ace040 Damien Le Moal         2024-03-30  482  	/*
9d2f10d2ace040 Damien Le Moal         2024-03-30  483  	 * Assume a fixed alignment constraint as specified by the controller
9d2f10d2ace040 Damien Le Moal         2024-03-30  484  	 * features.
9d2f10d2ace040 Damien Le Moal         2024-03-30  485  	 */
9d2f10d2ace040 Damien Le Moal         2024-03-30  486  	features = pci_epc_get_features(epc, func_no, vfunc_no);
9d2f10d2ace040 Damien Le Moal         2024-03-30 @487  	if (!features || !features->align) {
                                                            ^^^^^^^^^
Check for NULL

9d2f10d2ace040 Damien Le Moal         2024-03-30  488  		map->map_pci_addr = pci_addr;
9d2f10d2ace040 Damien Le Moal         2024-03-30  489  		map->map_size = size;
9d2f10d2ace040 Damien Le Moal         2024-03-30  490  		map->map_ofst = 0;

Missing return 0?

9d2f10d2ace040 Damien Le Moal         2024-03-30  491  	}
9d2f10d2ace040 Damien Le Moal         2024-03-30  492  
9d2f10d2ace040 Damien Le Moal         2024-03-30 @493  	mask = features->align - 1;
                                                               ^^^^^^^^^^

9d2f10d2ace040 Damien Le Moal         2024-03-30  494  	map->map_pci_addr = map->pci_addr & ~mask;
9d2f10d2ace040 Damien Le Moal         2024-03-30  495  	map->map_ofst = map->pci_addr & mask;
9d2f10d2ace040 Damien Le Moal         2024-03-30  496  	map->map_size = ALIGN(map->map_ofst + map->pci_size, features->align);
9d2f10d2ace040 Damien Le Moal         2024-03-30  497  
9d2f10d2ace040 Damien Le Moal         2024-03-30  498  	return 0;
9d2f10d2ace040 Damien Le Moal         2024-03-30  499  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
