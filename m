Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B28D4C02183
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jan 2025 11:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2eYFAj6KuRIaOAMAm9UPF8nVxh4vGfKJM0ddFY3a2sA=; b=DQ8QZoL0t9zssU
	5B6LVVOIHNRsXn+dUraJ2s3Wt7eOSc3hI6f20AEau6Mi4VXObSmVnDZyZXqxvwH5WDpWxrwCCVU6J
	qSAoUTZa8MAz+c6w+fuEeA7JUuv9eN51BRhL0GI3onjvR6co4P6fUAmqgizNs4r8j7fCBvzh2r0sN
	75QcRAH/aorcxTzi+WYCCneesQYEDMnqzm/Y8QL4uHMs3YylPmWhBiuvl/NMzGrKpdARvykVwnSGH
	tQAcPyWb2NC7kNpQnOIgwSe5H6oEQ+pVolq5yMVP/eVATfJa9IY7p5hrDp38ZhZzSipjHyiFnrx+8
	0g1xviDJ9D0vdh0Lg5ZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYk6p-000000005i2-2Qny;
	Fri, 17 Jan 2025 11:01:51 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYk5Y-000000005Yf-3p8X;
	Fri, 17 Jan 2025 11:00:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 971E05C5A50;
	Fri, 17 Jan 2025 10:59:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2E58C4CEDD;
	Fri, 17 Jan 2025 11:00:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737111632;
	bh=vTQWVenncOu0byGPfgs/rhAj7iiznjI2FJ93MNmTcbA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ce8fz37pPDP5gDINIBCUOuKjCl205rRiGqED6Pfg5wEGmsWhDn2lffBdaV2lawUel
	 rxRcOoc9hjikyzet4hyiS+/UxCABYTJo+yuveYvt46WuuOp1MHxaZThtUmf0na89Pn
	 gumePF/7azZyuU17N9wbVRMAqDDeQkhftLWdxp1sRMVOvZKj9UrfU87CjGhyPr1Vak
	 StgzXQgi0OlwyDzeYBorKZwgfrKnhbg47nLEM73d4zYYHzXrdTAd7eZpdhK7c8EwtW
	 7rOhLwi1wIgQ/4urjz1cDdVjJt4pdu7oxA6CAa/fsFQ8SIHHstVBBGyY89m4fSqVvk
	 ZX2TXdGaoxu3g==
Date: Fri, 17 Jan 2025 12:00:25 +0100
From: Niklas Cassel <cassel@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org,
	Simon Xue <xxm@rock-chips.com>, Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	linux-pci@vger.kernel.org,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v5 1/2] dt-bindings: PCI: dw: rockchip: Add rk3576 support
Message-ID: <Z4o4SazNBV6aLdxg@ryzen>
References: <20250117032742.2990779-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250117032742.2990779-1-kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250117_030032_998542_6E6B8B95 
X-CRM114-Status: GOOD (  18.61  )
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

On Fri, Jan 17, 2025 at 11:27:41AM +0800, Kever Yang wrote:
> rk3576 is using dwc controller, with msi interrupt directly to gic instead
> of to gic its, so
> - no its support is required and the 'msi-map' is not need anymore,
> - a new 'msi' interrupt is needed.
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> ---
> 
> Changes in v5:
> - Add constraints per device for interrupt-names due to the interrupt is
> different from rk3588.
> 
> Changes in v4:
> - Fix wrong indentation in dt_binding_check report by Rob
> 
> Changes in v3:
> - Fix dtb check broken on rk3588
> - Update commit message
> 
> Changes in v2:
> - remove required 'msi-map'
> - add interrupt name 'msi'
> 
>  .../bindings/pci/rockchip-dw-pcie-common.yaml | 53 +++++++++++++++----
>  .../bindings/pci/rockchip-dw-pcie.yaml        |  4 +-
>  2 files changed, 44 insertions(+), 13 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie-common.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie-common.yaml
> index cc9adfc7611c..eef108037184 100644
> --- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie-common.yaml
> +++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie-common.yaml
> @@ -40,6 +40,7 @@ properties:
>  
>    interrupts:
>      minItems: 5
> +    maxItems: 9
>      items:
>        - description:
>            Combined system interrupt, which is used to signal the following
> @@ -64,6 +65,10 @@ properties:
>            interrupts - aer_rc_err, aer_rc_err_msi, rx_cpl_timeout,
>            tx_cpl_timeout, cor_err_sent, nf_err_sent, f_err_sent, cor_err_rx,
>            nf_err_rx, f_err_rx, radm_qoverflow
> +      - description:
> +          Combinded MSI line interrupt, which is to support MSI interrupts
> +          output to GIC controller via GIC SPI interrupt instead of GIC its
> +          interrupt.

If you are talking about GIC interrupt translation service here,
then I think you should:
s/GIC its/GIC ITS/


Kind regards,
Niklas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
