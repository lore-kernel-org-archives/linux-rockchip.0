Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BC49E7716A
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Dec 2024 00:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=wWuOaMtFyt9HLIsmNhxmtXdtoWU4r+XfdXmgM3xdqeU=; b=OVx62isemrud4T
	bL/viNrnuKV3m1vXnyke+URzZEEqDdwiLksKv/qiFnp3cMYkdTPPDhdXQ3m0uBsocUBYff5s+Eaxl
	gkwisIQzwNzNXi2fELrbbzy+O6NX0XnS9sJOKuI/w5GxX4s6aVMSR4yBkYOK10QwLnbNYTiiL/3JE
	7Nlz5pBt5FgL4ZmHyaRyhYGomco6nRqr9BCNUs3OOZXOpwUVJ+Pb4/qLtGHEOvU6ik80Zf3j8XAQH
	32O70IoZSjK+WTyqDsf8edsQ3XuOdJ6GMB9p04zSGuTeYjWmZCVSJycGOWylW9EUvJ3Pcdjj6uOG6
	zUVL7Mv2Jqm+3tCYxg3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tMcG8-000000079FD-2Ad5;
	Sun, 15 Dec 2024 00:13:20 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tMcG5-000000079Eo-42zz
	for linux-rockchip@lists.infradead.org;
	Sun, 15 Dec 2024 00:13:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 21DEEA406EB;
	Sun, 15 Dec 2024 00:11:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 262B0C4CED1;
	Sun, 15 Dec 2024 00:13:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734221595;
	bh=GOxtTBS0yKclfTbkzcgYLXgciMLHebdnxXnJIfg8xcs=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=NaAHXfUxtGgsVp/1JftfM7ApkQteOqXoL2wa03UIRyoj/IR73gVRkAlwX7G9U3OJ5
	 MMsifXAJYwgTDk0gsii651oZgcaCFC44EqspBdwzFAzb2QIrqOAI4WU0fSgGa5vn1Y
	 WQLZ6tsgEjqDd6ozo464Mm0NJs6dSnkmUdzxbwfYPjK0NbiJ7v52ayDeVXDCHwVQ7n
	 AyjftSVb9Od6MXYucJRp5Ieu66iQWoI5m7M+yvoK6xIa67T8xze8E5Yg6ZeTKWWGpQ
	 yTPHLyOAdwj3KGo0VFcMwM7b5eKaBUhdljM6uP4/2yFiV+fzrauxya4aCYu3+0UXmx
	 Ms4+0Tv3AGipg==
Date: Sat, 14 Dec 2024 18:13:13 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v5 13/14] PCI: rockchip-ep: Handle PERST# signal in
 endpoint mode
Message-ID: <20241215001313.GA3482864@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241017015849.190271-14-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241214_161318_076252_CA928DF4 
X-CRM114-Status: GOOD (  10.25  )
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

On Thu, Oct 17, 2024 at 10:58:48AM +0900, Damien Le Moal wrote:
> Currently, the Rockchip PCIe endpoint controller driver does not handle
> the PERST# signal, which prevents detecting when link training should
> actually be started or if the host resets the device. This however can
> be supported using the controller reset_gpios property set as an input
> GPIO for endpoint mode.

> @@ -50,6 +51,9 @@ struct rockchip_pcie_ep {
>  	u64			irq_pci_addr;
>  	u8			irq_pci_fn;
>  	u8			irq_pending;
> +	int			perst_irq;
> +	bool			perst_asserted;
> +	bool			link_up;
>  	struct delayed_work	link_training;
>  };

I should have caught this last cycle, but just noticed this:

  $ make W=1 -k drivers/pci/ drivers/misc/pci_*
  ...
    CC      drivers/pci/controller/pcie-rockchip-ep.o
  drivers/pci/controller/pcie-rockchip-ep.c:59: warning: Function parameter or struct member 'perst_irq' not described in 'rockchip_pcie_ep'
  drivers/pci/controller/pcie-rockchip-ep.c:59: warning: Function parameter or struct member 'perst_asserted' not described in 'rockchip_pcie_ep'
  drivers/pci/controller/pcie-rockchip-ep.c:59: warning: Function parameter or struct member 'link_up' not described in 'rockchip_pcie_ep'
  drivers/pci/controller/pcie-rockchip-ep.c:59: warning: Function parameter or struct member 'link_training' not described in 'rockchip_pcie_ep'

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
