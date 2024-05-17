Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0ED44C04FFE
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 May 2024 17:05:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sa3gSCCv0U5DZrJuJGy1tpawVj6myf76KmgUzGNEotk=; b=VFKilfzpeYxq1x
	39jeeNF70n3QuAdexYV0Oz8kcnerE3++P9VkB9Yna6KPib6Cb7R/Z/bwC2dL0fKBLxYJBxZhJvy+o
	uLT0xMCzMAmMgvQKhyXjzynFHxw1zzFyVW3Z3p1/r69Eu+3vuVh9lGTWQ5ti1KA31oOUPxRS7ZJsK
	f6hQYO8PTzilZlFmmXiKzW28e2dYAy9Yd4ExZMoQ75qHb8rPNwZhA/eicQqf8fnDeWDu9dz+u+ptU
	qkHDXJdFcY4U8+vHzaLOdLIr/uBlCqnWz2n7rhCCnHGQZ5in2ELte5/ylzaBx4bCXaz7zSy0YswtE
	5narKxgsLH840Gux+Hhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s8111-00000008T2o-2YDv;
	Fri, 17 May 2024 17:05:07 +0000
Received: from mail-pf1-f171.google.com ([209.85.210.171])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s810x-00000008T27-2Gbj;
	Fri, 17 May 2024 17:05:06 +0000
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-6f44bcbaae7so1253397b3a.2;
        Fri, 17 May 2024 10:05:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715965501; x=1716570301;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZAF2nClB9tdRe2nZvO7iQeg/IDzJ4PErDPhyqSEtfbs=;
        b=mTTHSQRDY481G9/KaFfQLxxJ5sffFsXiLDqkFLO6yDLWmiAQ3A/VsZMuKM3Rmn1Yrs
         WmiV1joDLbNQfGjQcdphgE1sAjLNDo0H1o8BfRQjPsMsIHL8ZXOckyDwElTPl4twWe8K
         5ndWogdWP6M42ikf2zhbfHNI3iZeagq4w2ZqoQydKn5djqQr+jqWKoiYGVmaiedvOnlQ
         hlULKSKucGiQ66Lx8vtzfGEgA/Si86+8szIskG5NpuqMc+sbubMEmHt2rwgH1Csm+RNq
         YACPXSl3GHwmuiv1OTHU+L4SBGcrsOJoPG142BjXmf4Sb+AiIadRu1Oxs8klwY5W5mec
         CJNQ==
X-Forwarded-Encrypted: i=1; AJvYcCWmWiWdCInuXJEyPCg23iSofM+Lqt9Z3wzZJTec9nZSkjBwC4gR2VGShUsNc3n85GXyWKpRwJTn6vDGq407l5fKKUQ0DIBuAOUFR+kDgCvcGVq3Q6Ppv8ir2Ck2saJcpC2qHct9VH6FkQTPIYeDV+gbzkqKnsjtz9o=
X-Gm-Message-State: AOJu0YzLAqP2cM3A1+whxafRfm6OMcmmCTlXr5qVv9ommkwiAermnW9P
	sHxGCHVb334lWxI4Q+8mVNWei35KCmYupjAUFh6xVhamEARyMWYl
X-Google-Smtp-Source: AGHT+IGDk5wz8T58ydDnsgGbyCZmHKCAeGjDn9utiYyGXMhzVl4Lcok/JS9rF8CQMUTTLF/lj2nWEQ==
X-Received: by 2002:a05:6a00:238b:b0:6ea:afdb:6d03 with SMTP id d2e1a72fcca58-6f4e02d3ef9mr24111615b3a.19.1715965501417;
        Fri, 17 May 2024 10:05:01 -0700 (PDT)
Received: from localhost (fpd11144dd.ap.nuro.jp. [209.17.68.221])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-6f68c7d3651sm1904783b3a.183.2024.05.17.10.04.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 May 2024 10:04:59 -0700 (PDT)
Date: Sat, 18 May 2024 02:04:58 +0900
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Jingoo Han <jingoohan1@gmail.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Marek Vasut <marek.vasut+renesas@gmail.com>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Vidya Sagar <vidyas@nvidia.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Richard Zhu <hongxing.zhu@nxp.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Minghuan Lian <minghuan.Lian@nxp.com>,
	Mingkai Hu <mingkai.hu@nxp.com>, Roy Zang <roy.zang@nxp.com>,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Jesper Nilsson <jesper.nilsson@axis.com>,
	Srikanth Thokala <srikanth.thokala@intel.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-tegra@vger.kernel.org,
	linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linuxppc-dev@lists.ozlabs.org, Niklas Cassel <cassel@kernel.org>,
	linux-arm-kernel@axis.com, linux-rockchip@lists.infradead.org,
	Frank Li <Frank.Li@nxp.com>
Subject: Re: [PATCH v12 0/8] PCI: dwc: ep: Fix DBI access failure for drivers
 requiring refclk from host
Message-ID: <20240517170458.GA1947919@rocinante>
References: <20240327-pci-dbi-rework-v12-0-082625472414@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240327-pci-dbi-rework-v12-0-082625472414@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240517_100503_606801_0C63D161 
X-CRM114-Status: GOOD (  17.77  )
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


Hello,

> This series is the continuation of previous work by Vidya Sagar [1] to fix the
> issues related to accessing DBI register space before completing the core
> initialization in some EP platforms like Tegra194/234 and Qcom EP.
> 
> Since Vidya is busy, I took over the series based on his consent (off-list
> discussion).
> 
> NOTE
> ====
> 
> Based on the comments received in v7 [2], I've heavily modified the series
> to fix several other issues reported by Bjorn and Niklas. One noticeable
> change is getting rid of the 'core_init_notifer' flag added to differentiate
> between glue drivers requiring refclk from host and drivers getting refclk
> locally.
> 
> By getting rid of this flag, now both the DWC EP driver and the EPF drivers
> can use a single flow and need not distinguish between the glue drivers.
> 
> We can also get rid of the 'link_up_notifier' flag in the future by following
> the same convention.
> 
> Testing
> =======
> 
> I've tested the series on Qcom SM8450 based dev board that depends on refclk
> from host with EPF_MHI driver. It'd be good to test this series on platforms
> that generate refclk locally and also with EPF_TEST driver.

Applied to controller/dwc, thank you!

[01/08] PCI: dwc: ep: Fix DBI access failure for drivers requiring refclk from host
        https://git.kernel.org/pci/pci/c/869bc5253406
[02/08] PCI: dwc: ep: Add Kernel-doc comments for APIs
        https://git.kernel.org/pci/pci/c/7cbebc86c72a
[03/08] PCI: dwc: ep: Remove deinit() callback from struct dw_pcie_ep_ops
        https://git.kernel.org/pci/pci/c/b7dec6b85089
[04/08] PCI: dwc: ep: Rename dw_pcie_ep_exit() to dw_pcie_ep_deinit()
        https://git.kernel.org/pci/pci/c/c8682a3314c1
[05/08] PCI: dwc: ep: Introduce dw_pcie_ep_cleanup() API for drivers supporting PERST#
        https://git.kernel.org/pci/pci/c/570d7715eed8
[06/08] PCI: dwc: ep: Rename dw_pcie_ep_init_complete() to dw_pcie_ep_init_registers()
        https://git.kernel.org/pci/pci/c/7d6e64c443ea
[07/08] PCI: dwc: ep: Call dw_pcie_ep_init_registers() API directly from all glue drivers
        https://git.kernel.org/pci/pci/c/df69e17ccc2f
[08/08] PCI: endpoint: Remove "core_init_notifier" flag
        https://git.kernel.org/pci/pci/c/a01e7214bef9

	Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
