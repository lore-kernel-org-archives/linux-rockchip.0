Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB4E4C27C53
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jun 2024 02:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CRGHDVtTv7I82v1yYz2n1XwThfduytRQ+Vqf/mjM4eQ=; b=PVcvcHpMcXLqnr
	4r8q4FlXY+47ZtBXQBN8biy3V0h+OhFzieMcstg11OXMrBXntBI1WPaJb5pKQZpDs9mNJ++1Tp9pV
	DwzlGl3MNp1qSdAkzaeaTrQR4vZE94TjjVPbgKX6ma4QLvaNafYvfwFR6QzAWj638uyMKc/vUOC1U
	J0OdCNqKlps4vHTDdQLk2/FIRVh28tpkoPgizJZdc2b3+uydaUxeo8wNQx705VorJcCqCA3192ynA
	YCnYcPi8yJid1R2y9BL7Mr7DhfJNimmQMG1VAN19KkQgySd9tdXWFTnAkE4oCSquWYLchhxweoXmX
	3MAdcW1FPT3ebM7+wnJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sK7Ki-00000003L5E-2c5Z;
	Thu, 20 Jun 2024 02:15:28 +0000
Received: from mail-oo1-xc2a.google.com ([2607:f8b0:4864:20::c2a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sK7Kf-00000003L4I-2OQy;
	Thu, 20 Jun 2024 02:15:27 +0000
Received: by mail-oo1-xc2a.google.com with SMTP id 006d021491bc7-5c1bf0649a5so172215eaf.3;
        Wed, 19 Jun 2024 19:15:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718849721; x=1719454521; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CRUkQdGOKU9OB0MqSqSfhBwPPa2DOFb6bMBOZf3RUNM=;
        b=mKpxQrZYxiWpTy/Y/FgoMeo8a1EgQ2KobsLbxOfsYMXZtDAGw7ZKCagegQmi26TwTJ
         ArkDSBHSMMEm0DjloQREjStcBEofQemCK8iBMBnX/yfATNdRq5HMdWEYG2PgzdQhKmgq
         QJrE5Os2aq0n0dmvHo7t0zCkUWHykWuE8r2l/f2HtBfcrbJxfXcjpFy8lXiYRo17IZzg
         Ww1deeW6Zv2jqQQY0LP110ld4/bDuI2lWeIHKeveMOKUGEo9XGo8JJY6O7VYMU8U9iij
         7dQJCARrz+GUFrrmIZr+d6cqZ4cZ4uttagRYHY2M1o2u3pwJQKOoIva6IzgJB4iux3Of
         56nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718849721; x=1719454521;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CRUkQdGOKU9OB0MqSqSfhBwPPa2DOFb6bMBOZf3RUNM=;
        b=i0uRClb8wTS5jwS+gMy77zE+0WRB68jS58kuDSzfIT18EW/p4RwB47CefeyyXCbDQJ
         i8rAhXZgm1iIU/0YbW7OFhyaRU5bff4PNGs4tLjIecn97g87AxKGNmVkVUVmmc0KwpZv
         vvbZwT58hPF/1vtWh6o8Z1NiAsTZaz9AZDR9dE98RN4fIAQ1mIgtSG8UDtx4s+xDcJA9
         M/5g0/ZhT2nh2iCgkdaqAQnOPIdolgrIhzIgpHdnDVeKPUcKZQlX0ZUPq1SoTzMDC5V8
         zSxMWQPDDU+QVdori24BEm9EbeuDKZVeXuJ6ulOce1XnHkZi+iFDpHSzQ6Qm8IGfu5BU
         ZKXA==
X-Forwarded-Encrypted: i=1; AJvYcCUu8pzuUTG1RCglBgH59T98yy90nBI8TansKIMKn9qdIdaBp8C3BPLD6CpIfESbCLN69XQtsgqy+IosWfui3YXSrLfoWaGEHHrHNzAmTG4Lgor2EY0BKbW4Ac2CU+2WL6WOhxlSgUdqDR6IzlhIcYgu9B77Bmff6S4=
X-Gm-Message-State: AOJu0YxLy9fJHWujcxvcPSuoWTQQobUw8mSuBrnfygQj9otbqju3YbU7
	Ydrz4KMshRLaAKANg4wnV+HwxgFWRziW606k0b3MRHXtUL4kqawVXrDJgyetUmAVb/JA8U65f/v
	KdrpIdBcofC99ipdtZSR+6ISSwo0=
X-Google-Smtp-Source: AGHT+IHrnG/ArrsWeUTM5kYZ3ewBI2pHcNcWXpk3t2crBp2qN+iBG5ZBkS/qw5d1gUi8Lf5tvzb7mkZ9vhDLpLpIHi0=
X-Received: by 2002:a4a:2513:0:b0:5bb:1310:5f37 with SMTP id
 006d021491bc7-5c1adb1884cmr4687145eaf.3.1718849721163; Wed, 19 Jun 2024
 19:15:21 -0700 (PDT)
MIME-Version: 1.0
References: <20240618164133.223194-2-linux.amoon@gmail.com> <202406200818.CQ7DXNSZ-lkp@intel.com>
In-Reply-To: <202406200818.CQ7DXNSZ-lkp@intel.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 20 Jun 2024 07:45:05 +0530
Message-ID: <CANAwSgS74LOHi+hXQAG9NH5PZ-OA+w21vXtucQagfsNtn-3Qww@mail.gmail.com>
Subject: Re: [PATCH v1 1/3] PCI: rockchip: Simplify clock handling by using
 clk_bulk*() function
To: kernel test robot <lkp@intel.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <helgaas@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	oe-kbuild-all@lists.linux.dev, linux-pci@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240619_191525_641510_5CF30E03 
X-CRM114-Status: GOOD (  20.76  )
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

Hi All,

On Thu, 20 Jun 2024 at 06:25, kernel test robot <lkp@intel.com> wrote:
>
> Hi Anand,
>
> kernel test robot noticed the following build errors:
>
> [auto build test ERROR on pci/next]
> [also build test ERROR on pci/for-linus linus/master v6.10-rc4 next-20240619]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch#_base_tree_information]
>
> url:    https://github.com/intel-lab-lkp/linux/commits/Anand-Moon/PCI-rockchip-Simplify-reset-control-handling-by-using-reset_control_bulk-function/20240619-014145
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git next
> patch link:    https://lore.kernel.org/r/20240618164133.223194-2-linux.amoon%40gmail.com
> patch subject: [PATCH v1 1/3] PCI: rockchip: Simplify clock handling by using clk_bulk*() function
> config: arc-randconfig-001-20240620 (https://download.01.org/0day-ci/archive/20240620/202406200818.CQ7DXNSZ-lkp@intel.com/config)
> compiler: arceb-elf-gcc (GCC) 13.2.0
> reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240620/202406200818.CQ7DXNSZ-lkp@intel.com/reproduce)
>
> If you fix the issue in a separate patch/commit (i.e. not just a new version of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Closes: https://lore.kernel.org/oe-kbuild-all/202406200818.CQ7DXNSZ-lkp@intel.com/
>
> All errors (new ones prefixed by >>):
>
>    In file included from drivers/pci/controller/pcie-rockchip-ep.c:20:
> >> drivers/pci/controller/pcie-rockchip.h:311:31: error: array type has incomplete element type 'struct clk_bulk_data'
>      311 |         struct  clk_bulk_data clks[ROCKCHIP_NUM_CLKS];
>          |                               ^~~~
>

I will try to fix this issue in the next version, once I get more
feedback on the rest of the changes.

>
> vim +311 drivers/pci/controller/pcie-rockchip.h
>
>    298
>    299  struct rockchip_pcie {
>    300          void    __iomem *reg_base;              /* DT axi-base */
>    301          void    __iomem *apb_base;              /* DT apb-base */
>    302          bool    legacy_phy;
>    303          struct  phy *phys[MAX_LANE_NUM];
>    304          struct  reset_control *core_rst;
>    305          struct  reset_control *mgmt_rst;
>    306          struct  reset_control *mgmt_sticky_rst;
>    307          struct  reset_control *pipe_rst;
>    308          struct  reset_control *pm_rst;
>    309          struct  reset_control *aclk_rst;
>    310          struct  reset_control *pclk_rst;
>  > 311          struct  clk_bulk_data clks[ROCKCHIP_NUM_CLKS];
>    312          struct  regulator *vpcie12v; /* 12V power supply */
>    313          struct  regulator *vpcie3v3; /* 3.3V power supply */
>    314          struct  regulator *vpcie1v8; /* 1.8V power supply */
>    315          struct  regulator *vpcie0v9; /* 0.9V power supply */
>    316          struct  gpio_desc *ep_gpio;
>    317          u32     lanes;
>    318          u8      lanes_map;
>    319          int     link_gen;
>    320          struct  device *dev;
>    321          struct  irq_domain *irq_domain;
>    322          int     offset;
>    323          void    __iomem *msg_region;
>    324          phys_addr_t msg_bus_addr;
>    325          bool is_rc;
>    326          struct resource *mem_res;
>    327  };
>    328
>
> --
> 0-DAY CI Kernel Test Service
> https://github.com/intel/lkp-tests/wiki

Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
