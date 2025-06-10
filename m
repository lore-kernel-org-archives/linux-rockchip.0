Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 576C2C678DA
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jun 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=BbA7yzXnWjmiHqtVV/Av0PqwZ1IZWLO5t/FZqGDiS+E=; b=SgIZwZADaJqYuP
	AMxfCxcPJALx1Utjl/SNuoDKqdmz4RmxxoYDAY5BShPx375mC7M5r86EZjYg8Ddj3w9+NQcBNujyh
	9rPFfcZlI2/fDa8csHsPYp6Xu/Ya1882B4yqaiUiYlom1M7RfRjZ4mlcE2ZbDqYBG1aEEO+WOcGxt
	HbFE+tmEr04M114wqtfL40E6JTEIxdkGVWY+lm7kfUAPbDvkdZg6NeP1qDEIgX0m59C8WmBUBtGk0
	8KsxxXWgmQ86JhTeBpdWMUvpY6HNGMj4G/CkIzh3gJBMIZl0ymK78VUa7eczvJl9RWHQPoXmEiBRU
	mRdPzph45V1uv/3mJlVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP7mu-00000008Hfu-2vVf;
	Tue, 10 Jun 2025 22:49:48 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP5G7-000000080I6-0jj5;
	Tue, 10 Jun 2025 20:07:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 3C275629F9;
	Tue, 10 Jun 2025 20:07:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3A72C4CEF2;
	Tue, 10 Jun 2025 20:07:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749586065;
	bh=lbQngPJAmS13ljvDR/pW0TUmUN4LkzEaZLuRBDXzcOA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=UX23vM6JvgwxNd+hm0flKLu2Gy/D5qE1UszYiy05r2Sijxti8K1ynp3VaVnhsCZA6
	 JYZe5h5y+BbJGaLMAxH5JKZU+SiYRDdwTmmnbvIKpn+t2Od+NM3zIYZqKdMO5MQUBs
	 e1fYFuo8olSap0530IHf+HcZhXaRniOgAQrXqo7aEEuSbYOBndyF85vB13sHqDmIYL
	 p11s1hOoKcQGHfIZsNIcRR7GZZVJde8N3shq69QJ5k2iDt+mWKBylX4NH1m6CN13dL
	 d/gCPIi/SfHvWJ/76MxPCnHIcNKLWyFjzEuBrwLuNw2utGdEk46pL7BGLr89T2adKR
	 cqjULovPTEttw==
Date: Tue, 10 Jun 2025 15:07:44 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Geraldo Nascimento <geraldogabriel@gmail.com>
Cc: linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH 1/4] PCI: pcie-rockchip: add bits for Target Link
 Speed in LCS_2
Message-ID: <20250610200744.GA820589@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aEQb5kEOCJNQJMin@geday>
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

On Sat, Jun 07, 2025 at 08:00:54AM -0300, Geraldo Nascimento wrote:
> Link Control and Status Register 2 is not present in current
> pcie-rockchip.h definitions. Add it in preparation for
> setting it before Gen2 retraining.
> 
> Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>
> ---
>  drivers/pci/controller/pcie-rockchip.h | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
> index 14954f43e5e9..7a84899d3812 100644
> --- a/drivers/pci/controller/pcie-rockchip.h
> +++ b/drivers/pci/controller/pcie-rockchip.h
> @@ -166,6 +166,9 @@
>  #define   PCIE_RC_CONFIG_LINK_CAP_L0S		BIT(10)
>  #define PCIE_RC_CONFIG_LCS		(PCIE_RC_CONFIG_BASE + 0xd0)
>  #define PCIE_EP_CONFIG_LCS		(PCIE_EP_CONFIG_BASE + 0xd0)
> +#define PCIE_RC_CONFIG_LCS_2		(PCIE_RC_CONFIG_BASE + 0xf0)
> +#define   PCIE_RC_CONFIG_LCS_2_TLS_25	BIT(0)
> +#define   PCIE_RC_CONFIG_LCS_2_TLS_50	BIT(1)

This stuff:

  #define PCIE_RC_CONFIG_DCR              (PCIE_RC_CONFIG_BASE + 0xc4)
  #define PCIE_RC_CONFIG_DCSR             (PCIE_RC_CONFIG_BASE + 0xc8)
  #define PCIE_RC_CONFIG_LINK_CAP         (PCIE_RC_CONFIG_BASE + 0xcc)
  #define PCIE_RC_CONFIG_LCS              (PCIE_RC_CONFIG_BASE + 0xd0)
  #define PCIE_RC_CONFIG_LCS_2            (PCIE_RC_CONFIG_BASE + 0xf0)

*Looks* like it might be duplicates of:

  #define PCI_EXP_DEVCAP          0x04    /* Device capabilities */
  #define PCI_EXP_DEVCTL          0x08    /* Device Control */
  #define PCI_EXP_LNKCAP          0x0c    /* Link Capabilities */
  #define PCI_EXP_LNKCTL          0x10    /* Link Control */
  #define PCI_EXP_LNKCTL2         0x30    /* Link Control 2 */

where the PCIe Capability is at (PCIE_RC_CONFIG_BASE + 0xc0).

If so, can you please rework these to use the existing PCI_EXP_*
definitions, including the fields inside?

>  #define PCIE_RC_CONFIG_L1_SUBSTATE_CTRL2 (PCIE_RC_CONFIG_BASE + 0x90c)
>  #define PCIE_RC_CONFIG_THP_CAP		(PCIE_RC_CONFIG_BASE + 0x274)
>  #define   PCIE_RC_CONFIG_THP_CAP_NEXT_MASK	GENMASK(31, 20)
> -- 
> 2.49.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
