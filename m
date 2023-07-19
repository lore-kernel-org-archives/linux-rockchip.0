Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25337C0015E
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jul 2023 20:16:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dxNh8crqPlLbAWedAyQb+hUBxuUzrVJamfk1XhRpTDA=; b=wKMQ47Ld0RTNWv
	xU7GERJ0ISIg5V8coNEcZBb080NZsbd++fOuCoh4+eNIDQ/NPbXSlcPSmqBzH7MZpWqfINvXhTTzn
	ebyrDccEp0Zcl6F0rIDHwFAfbGknVlEg1vBv2GmaBCKfVrdGaPSXL4Y3JDOVt8Bx1mXZl11Tm/7GD
	Eb3Zz77plIfwSI9sLArwUORHq9TegWcXpt4X0zorkT58Dx5GRcEiLAKh+FOgd63xfCGgLtUabt0xH
	mmtS3pMLCvKagQ3g2Dbp736dLo4Xg97CGA9Xoo0YObjELow8j1nH+ZfcIPeA8Z1MYuIqIcYkQeKbf
	Kz/WcNFQfLa/Oji4A+pQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qMDam-008oVJ-0t;
	Wed, 19 Jul 2023 20:16:12 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qMDaj-008oU2-15;
	Wed, 19 Jul 2023 20:16:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 62D2F6164F;
	Wed, 19 Jul 2023 20:16:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B680C433C8;
	Wed, 19 Jul 2023 20:16:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689797767;
	bh=j6e92Ndx74FH6PByjJZ4j4e9GQ6FFdbXxvBk/vDjsh4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BcblMrxaFpGR37DZykDQc/fmqAEvgdawVysnDghn2k8i9jjcCpOiLmL47RZv72yaZ
	 0eOsZtIGNaXz5ljaEGbwjuV+M8O+17gnMjF8eBsQ6Mw2OF12P5AJTJEyAWkXqyF3tk
	 n/BSZYWo5B30L06xg9QjeWT6gbtgR0lkeYutFpwdPKndi1XhHQ5wu0fkpL88dG9Pnw
	 5T88lbG4jw8lU11jaxaeEjLesIoWPELSSSbql406vsJ33q+q/qitMbs4UhaFrce3+3
	 wa3vl9Ia5TAjZg+QkRt+WbubnnGmxHQtX/Cf264feEJPKr6OJlEEXA4VP9BQyheZGj
	 CyB3mgp7OQ4Hw==
Received: (nullmailer pid 740813 invoked by uid 1000);
	Wed, 19 Jul 2023 20:16:05 -0000
Date: Wed, 19 Jul 2023 14:16:05 -0600
From: Rob Herring <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, Serge Semin <fancer.lancer@gmail.com>, Jingoo Han <jingoohan1@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v3 2/5] dt-bindings: PCI: dwc: rockchip: Fix
 interrupt-names issue
Message-ID: <20230719201605.GA706263-robh@kernel.org>
References: <20230717172651.64324-1-sebastian.reichel@collabora.com>
 <20230717172651.64324-3-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230717172651.64324-3-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230719_131609_461276_5110643F 
X-CRM114-Status: GOOD (  23.81  )
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

On Mon, Jul 17, 2023 at 07:26:48PM +0200, Sebastian Reichel wrote:
> The RK356x (and RK3588) have 5 ganged interrupts. For example the
> "legacy" interrupt combines "inta/intb/intc/intd" with a register
> providing the details.
> 
> Currently the binding is not specifying these interrupts resulting
> in a bunch of errors for all rk356x boards using PCIe.
> 
> Fix this by specifying the interrupts and add them to the example
> to prevent regressions.
> 
> This changes the reference from snps,dw-pcie.yaml to
> snps,dw-pcie-common.yaml, since the interrupts are vendor
> specific and should not be listed in the generic file. The
> only other bit from the generic binding are the reg-names,
> which are overwritten by this binding.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../bindings/pci/rockchip-dw-pcie.yaml        | 43 ++++++++++++++++++-
>  1 file changed, 42 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> index a4f61ced5e88..7836b9a5547c 100644
> --- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> @@ -17,7 +17,8 @@ description: |+
>    snps,dw-pcie.yaml.
>  
>  allOf:
> -  - $ref: /schemas/pci/snps,dw-pcie.yaml#
> +  - $ref: /schemas/pci/pci-bus.yaml#
> +  - $ref: /schemas/pci/snps,dw-pcie-common.yaml#
>  
>  properties:
>    compatible:
> @@ -60,6 +61,39 @@ properties:
>        - const: aux
>        - const: pipe
>  
> +  interrupts:
> +    items:
> +      - description:
> +          Combined system interrupt, which is used to signal the following
> +          interrupts - phy_link_up, dll_link_up, link_req_rst_not, hp_pme,
> +          hp, hp_msi, link_auto_bw, link_auto_bw_msi, bw_mgt, bw_mgt_msi,
> +          edma_wr, edma_rd, dpa_sub_upd, rbar_update, link_eq_req, ep_elbi_app
> +      - description:
> +          Combined PM interrupt, which is used to signal the following
> +          interrupts - linkst_in_l1sub, linkst_in_l1, linkst_in_l2,
> +          linkst_in_l0s, linkst_out_l1sub, linkst_out_l1, linkst_out_l2,
> +          linkst_out_l0s, pm_dstate_update
> +      - description:
> +          Combined message interrupt, which is used to signal the following
> +          interrupts - ven_msg, unlock_msg, ltr_msg, cfg_pme, cfg_pme_msi,
> +          pm_pme, pm_to_ack, pm_turnoff, obff_idle, obff_obff, obff_cpu_active
> +      - description:
> +          Combined legacy interrupt, which is used to signal the following
> +          interrupts - inta, intb, intc, intd
> +      - description:
> +          Combined error interrupt, which is used to signal the following
> +          interrupts - aer_rc_err, aer_rc_err_msi, rx_cpl_timeout,
> +          tx_cpl_timeout, cor_err_sent, nf_err_sent, f_err_sent, cor_err_rx,
> +          nf_err_rx, f_err_rx, radm_qoverflow

I'm confused. It is really up to the integrator on how each of these 
interrupts are combined? I thought it was a bit more fixed than that.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
