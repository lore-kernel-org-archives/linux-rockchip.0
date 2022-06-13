Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B435EC43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jun 2022 20:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0VrLFl/QrXbFMv7DZiTIiLv5BZ7Cb4RNWcXVxMXZn6o=; b=Tnr/SFmuB/hLoh
	uHRB10ewtGEJ917oKRGE/dwG0fS7Tgsm7eoldLZA3dQkv1o8Wu6HhgGLYCbtVuJbzNkB9oYrkNDTR
	bg5N3B+P1hKBLhPVOV/noIh74J1+HTJq3GUB8VNF0Ge3dpjo0TvkLJVlsW8w1wbm+LZnK0Ii/+jK0
	/meZZteir2hRMAXVREvko6tDv+3bDMJSQPO0zK3Oj4zstirIAxQfIaXcTYIcJPNKPDXdv5XsIsAbo
	/Hbr+NMnaPMzs4fimdGJGKRQW9EjIW9JXRWWKtLxQ+8VpyUq1UHhTRhQiqNKGxHwSg24G4oeSsC5l
	iTxDdFs3OEuk6BhgC3rA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0qys-005mu9-Lu; Mon, 13 Jun 2022 20:48:14 +0000
Received: from mail-il1-f176.google.com ([209.85.166.176])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0qyn-005msr-Tj; Mon, 13 Jun 2022 20:48:11 +0000
Received: by mail-il1-f176.google.com with SMTP id z11so5164530ilq.6;
        Mon, 13 Jun 2022 13:48:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=/dzRBMIn98y05EN99Sgq5WDsEwo7wpH66xTE6XCo/M4=;
        b=QlOoUzlj+BGDjIMX98sYZ07evySSX16e7LY1VRIZ3qklSw3h4XypJR3aQKI6peUzzD
         3b0q9Uu+rrHPaPacV7QuuBzXa1qj4lFjJGo7mLVbD2dMQh+DemmoHxIjWTQKgDnVAZRC
         ZTc2l+v8mVOvfape2KyHKd2jJX4cPaSy6Nst/etKqsW26fjiJyJLiF6V3wf53WOaxN5L
         VjzcAozlZkVRdCb9ZHubwvLKK4TVo7HIbYZmmC+VlSOGBUZNO4hT8scDmiuodicyf3qK
         ToX/J0R61/C2VSGyPy9rJGijyjt8m5dmdkVCUtyAxpwLTD9G4ZeLMFrSWBs/ds+GoKNH
         cauw==
X-Gm-Message-State: AJIora/48RGaxuNvh8zh03NXHXsqHGc1pvifcGIlFPeQX8Dyvee2+EdH
	iDIoot/Jb31LJeloXOzKkw==
X-Google-Smtp-Source: AGRyM1uVO/KYjaDwGOXreGf4KGdEqy/t353ouqbFZgp5s/y6kuWD2fxXl3ut4zPLn500QHJwX/rd6w==
X-Received: by 2002:a92:ca45:0:b0:2d1:b7cf:26a9 with SMTP id q5-20020a92ca45000000b002d1b7cf26a9mr962751ilo.52.1655153288816;
        Mon, 13 Jun 2022 13:48:08 -0700 (PDT)
Received: from robh.at.kernel.org ([69.39.28.171])
        by smtp.gmail.com with ESMTPSA id c2-20020a92c8c2000000b002d11397f4f9sm4380280ilq.74.2022.06.13.13.48.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jun 2022 13:48:08 -0700 (PDT)
Received: (nullmailer pid 56167 invoked by uid 1000);
	Mon, 13 Jun 2022 20:48:06 -0000
Date: Mon, 13 Jun 2022 14:48:06 -0600
From: Rob Herring <robh@kernel.org>
To: Serge Semin <Sergey.Semin@baikalelectronics.ru>
Cc: Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, 
	Kishon Vijay Abraham I <kishon@ti.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Jingoo Han <jingoohan1@gmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Richard Zhu <hongxing.zhu@nxp.com>, 
	Lucas Stach <l.stach@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, 
	Minghuan Lian <minghuan.Lian@nxp.com>, Mingkai Hu <mingkai.hu@nxp.com>, Roy Zang <roy.zang@nxp.com>, 
	Yue Wang <yue.wang@amlogic.com>, Neil Armstrong <narmstrong@baylibre.com>, 
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Jonathan Chocron <jonnyc@amazon.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Jesper Nilsson <jesper.nilsson@axis.com>, 
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Heiko Stuebner <heiko@sntech.de>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Greentime Hu <greentime.hu@sifive.com>, 
	Rahul Tanwar <rtanwar@maxlinear.com>, Srikanth Thokala <srikanth.thokala@intel.com>, 
	Xiaowei Song <songxiaowei@hisilicon.com>, Binghui Wang <wangbinghui@hisilicon.com>, 
	Stanimir Varbanov <svarbanov@mm-sol.com>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <bjorn.andersson@linaro.org>, Pratyush Anand <pratyush.anand@gmail.com>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>, Serge Semin <fancer.lancer@gmail.com>, 
	Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>, 
	Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>, Frank Li <Frank.Li@nxp.com>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, linux-pci@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linuxppc-dev@lists.ozlabs.org, linux-amlogic@lists.infradead.org, 
	linux-arm-kernel@axis.com, linux-rockchip@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-tegra@vger.kernel.org
Subject: Re: [PATCH v4 15/18] PCI: dwc: Add dw_ prefix to the pcie_port
 structure name
Message-ID: <20220613204806.GA55629-robh@kernel.org>
References: <20220610082535.12802-1-Sergey.Semin@baikalelectronics.ru>
 <20220610082535.12802-16-Sergey.Semin@baikalelectronics.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220610082535.12802-16-Sergey.Semin@baikalelectronics.ru>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220613_134810_003118_67378BA3 
X-CRM114-Status: GOOD (  16.44  )
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

On Fri, Jun 10, 2022 at 11:25:31AM +0300, Serge Semin wrote:
> All of the DW PCIe core driver entities have names with the dw_ prefix in
> order to easily distinguish local and common PCIe name spaces. All except
> the pcie_port structure which contains the DW PCIe Root Port descriptor.
> For historical reason the structure has retained the original name since
> commit 340cba6092c2 ("pci: Add PCIe driver for Samsung Exynos") when
> the DW PCIe IP-core support was added to the kernel. Let's finally fix
> that by adding the dw_ prefix to the structure name and by adding the _rp
> suffix to be similar to the EP counterpart. Thus the name will be coherent
> with the common driver naming policy. It shall make the driver code more
> readable eliminating visual confusion between the local and generic PCI
> name spaces.
> 
> Signed-off-by: Serge Semin <Sergey.Semin@baikalelectronics.ru>
> 
> ---
> 
> Changelog v4:
> - This is a new patch created on the v4 lap of the series.
> ---
>  drivers/pci/controller/dwc/pci-dra7xx.c       | 12 +++----
>  drivers/pci/controller/dwc/pci-exynos.c       |  6 ++--
>  drivers/pci/controller/dwc/pci-imx6.c         |  6 ++--
>  drivers/pci/controller/dwc/pci-keystone.c     | 20 +++++------
>  drivers/pci/controller/dwc/pci-layerscape.c   |  2 +-
>  drivers/pci/controller/dwc/pci-meson.c        |  2 +-
>  drivers/pci/controller/dwc/pcie-al.c          |  6 ++--
>  drivers/pci/controller/dwc/pcie-armada8k.c    |  4 +--
>  drivers/pci/controller/dwc/pcie-artpec6.c     |  4 +--
>  .../pci/controller/dwc/pcie-designware-host.c | 36 +++++++++----------
>  .../pci/controller/dwc/pcie-designware-plat.c |  2 +-
>  drivers/pci/controller/dwc/pcie-designware.h  | 30 ++++++++--------
>  drivers/pci/controller/dwc/pcie-dw-rockchip.c |  4 +--
>  drivers/pci/controller/dwc/pcie-fu740.c       |  2 +-
>  drivers/pci/controller/dwc/pcie-histb.c       | 10 +++---
>  drivers/pci/controller/dwc/pcie-intel-gw.c    |  6 ++--
>  drivers/pci/controller/dwc/pcie-keembay.c     |  4 +--
>  drivers/pci/controller/dwc/pcie-kirin.c       |  2 +-
>  drivers/pci/controller/dwc/pcie-qcom.c        |  4 +--
>  drivers/pci/controller/dwc/pcie-spear13xx.c   |  6 ++--
>  drivers/pci/controller/dwc/pcie-tegra194.c    | 22 ++++++------
>  drivers/pci/controller/dwc/pcie-uniphier.c    | 10 +++---
>  drivers/pci/controller/dwc/pcie-visconti.c    |  6 ++--
>  23 files changed, 103 insertions(+), 103 deletions(-)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
