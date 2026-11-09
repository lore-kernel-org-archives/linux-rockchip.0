Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A382A606A325
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2026 17:33:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=v8quKk7H;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=djPySGxs
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Unsubscribe-Post:List-Owner;
	bh=Rf9Uxdyu738iUg/KONJz9nW+m2k7YPP76VtHW/WV+4U=; b=v8quKk7HPSN2YxHukFDDL5NNTQ
	a70TfsEtV4UWb5T2muk4USE/c3ss54PLBg697+of/TItw7KnulmPoUTYXA3vMBPkMEDCKMX8wg22g
	X2Nnk7zwST8Ept5C3VSM6urDuhtC8Flrj32dmQn/5Ik6vWyuPY4lot2I7Kv0tWD/YNhziOf7cg09m
	IAug9yP81HrELXU9Hff/o01Vqt7dWgfvVHJbnGCn9hq3mTGO4+nqPnoqzCn/IGfQm5wO6E3Or0TWO
	fumoAfvCwe0vRd1Jh4BlG2YhqMNMLaznmwJV4jbBLsq42WH3+SIBAigph0hIVk/iW6PHxX37GHqLg
	bbiYU90g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQTFY-00000001Lx9-1tbe;
	Mon, 09 Nov 2026 17:33:44 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQTFM-00000001Lvu-1lyL;
	Mon, 09 Nov 2026 17:33:37 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E219D459E5;
	Mon,  9 Nov 2026 17:33:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 974581F0089F;
	Mon,  9 Nov 2026 17:33:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794245610;
	bh=Inir2BaRnVMDhUyUoteKvoszf0OxlCPGv6CRErVG1DA=;
	h=Date:From:To:Cc:Subject:In-Reply-To;
	b=djPySGxsZ6iEOQmv7jIjsonj7PjIFm4ls4iJ6JGTnv7gdAXiBEifz5ckdtKAk/DVC
	 KlhALj0Ws8vGo8pJSMxiay/BLWFRS8fkhDwvwfhSsEMH14sCyvtgOQBXqnO1CrxoYq
	 yrd2mNGvpHZZ2iklTgiBwq6WI/UxPeNteunEDnLMaP/nwIwg183acu1TsA3wg7GTrP
	 5k4zBmog6niDLxHxVaRTT8nnQ3JbfyTJSamxZklnW5u7LeWf54WWioccQVqn+4U4RF
	 varZMkequd4efC7MkflJx2hn0+nZaKADE9BNtQr/cyuJG+EuZhsoDRSf7XzulbiH0i
	 xAEb5sMVY4LCA==
Date: Mon, 9 Nov 2026 11:33:29 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Jingoo Han <jingoohan1@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	"Yury Norov (NVIDIA)" <yury.norov@gmail.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Alexey Charkov <alchark@flipper.net>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH v9 1/9] PCI: dw-rockchip: Fix LTSSM set functions
Message-ID: <20261109173329.GA252206@bhelgaas>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261105-rockchip-pcie-system-suspend-v9-1-a2e55846649e@collabora.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Thu, Nov 05, 2026 at 02:33:09PM +0100, Sebastian Reichel wrote:
> Before the Rockchip PCIe driver has been switched over to the
> FIELD_PREP_WM16 macro, PCIE_CLIENT_ENABLE_LTSSM and
> PCIE_CLIENT_DISABLE_LTSSM were setting bits with a mask of 0xc = 0b1100,
> which means BIT 2 and BIT 3. After the conversion it only sets bit 2,
> with bit 3 being handled by a separate define named
> PCIE_CLIENT_LD_RQ_RST_GRT. Apparently the conversion missed to make use
> of this new macros resulting in the third bit not being set.
> 
> Fixes: 30e919570581 ("PCI: dw-rockchip: Switch to FIELD_PREP_WM16 macro")

This commit appeared in v6.18, so this looks like it might be a
candidate for a stable tag?

> Reviewed-by: Shawn Lin <shawn.lin@rock-chips.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> index bd86e32cc2b1..c35c5583c797 100644
> --- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> @@ -322,14 +322,16 @@ static void rockchip_pcie_ltssm_trace(struct rockchip_pcie *rockchip,
>  
>  static void rockchip_pcie_enable_ltssm(struct rockchip_pcie *rockchip)
>  {
> -	rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_ENABLE_LTSSM,
> -				 PCIE_CLIENT_GENERAL_CON);
> +	u32 val = PCIE_CLIENT_ENABLE_LTSSM | PCIE_CLIENT_LD_RQ_RST_GRT;
> +
> +	rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_GENERAL_CON);
>  }
>  
>  static void rockchip_pcie_disable_ltssm(struct rockchip_pcie *rockchip)
>  {
> -	rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_DISABLE_LTSSM,
> -				 PCIE_CLIENT_GENERAL_CON);
> +	u32 val = PCIE_CLIENT_DISABLE_LTSSM | PCIE_CLIENT_LD_RQ_RST_GRT;
> +
> +	rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_GENERAL_CON);
>  }
>  
>  static bool rockchip_pcie_link_up(struct dw_pcie *pci)
> 
> -- 
> 2.53.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
