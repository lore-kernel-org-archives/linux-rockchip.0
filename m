Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87053EB64DC
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jul 2023 13:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EiKyMsONQeF9eU4Rt9rKUAvfkI9I8s01vR3jNlC/iYU=; b=tNKC0ilglCUV9E
	LuJ0gk1bVVhqpRjckZyqwHHFpjnBwhaRv2hgzTH1BwVRtLL2LQ6Y3NR13uo33PajzH4r9gb4lyUUj
	lIWmur+EdSOXi6MhzU/ZzHDnwJi4XXTyCIQgT6y4mnWDGUX7t3n+mN83VKPBC2rD0APdxeN03AD+Y
	DOC81DmU1btF1F50iINC3859lPSA1rKMhQDo/AFnXVvg8Q7pe1VlVxRtrFVfD9Q/DN5RhSTCcY9Av
	uc5uSV+36HoYdiIC9jmCdVv7w+TfLDc0WiMgVVOdtFRHxSQdPh38/QGXQXCGslxo5nsbim/VxJ9pd
	0J8WyNWAr3JJ2HWVSjuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qMTJL-00BCY4-0f;
	Thu, 20 Jul 2023 13:03:15 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qMTJI-00BCVg-2M;
	Thu, 20 Jul 2023 13:03:14 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2b935316214so10568221fa.1;
        Thu, 20 Jul 2023 06:03:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689858188; x=1690462988;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=KtLR1t7Xy+lp2xGUnHnlsDF6j8PRmaFSawsn2vIvBWc=;
        b=Ql9e0h/oYbX6KrhJ1ePRDKew/5d+3Q9oyOoSy1HFtZzh0rNcDBUoJuNGy59r5hmnpL
         /ma2hKdbFnrTrz1oWlu0x+r9PWf1rJ5xQA/XXmC/dui7DC9z17dkyeB21AI6jUyH2LFo
         np98/NeShzaKiK9EKh+C66iKrKZsg9Lo0ewj/wCKx8mTFb2j8vAUZwl8g/0sdPa9s/nY
         zqNqWGZyxbcWWefW05nTSgXSpsOruLIua4m65k9Lm5NoUMTtOsUiL+fZ+K4eqFnp2/Tl
         oPLtY5jh45qBg7VSj19rktqsZZ1Y9Lx7C8rju8Nv6yTRUy2HYzMzn5R4ZVxNIzvu5I59
         oZMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689858188; x=1690462988;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KtLR1t7Xy+lp2xGUnHnlsDF6j8PRmaFSawsn2vIvBWc=;
        b=QhYjOptTFIM2EvvItE0q0ys8cKjsKKfWwTtqzM080GW3M2IGRART+b8oXg2WKdhhfg
         utikk+5rye5T5SL4lTVNV0qn95uVSmiCa88ebTo5v4LmN0dgTXFDfuqATKeyA/YPibHw
         dTJKmqAjDioc/5liJRJERp8nmo7C8MUcuFtn2QiyE3UXGKnFB5zw3NhTwpYrrwn3BV/a
         8O6n8uF+Y/9SwFltsc+69SYHsXW1lH0Qq59CzFWMDsX13Mw11ADL9wfcUqBnzdGT8NWH
         PTK1GAvei6M7Kd1fx6g+t+e8pXYqszLgH2n25PKciEF1iEsoqcGl8LO/rrO72V4kf7ON
         u1/Q==
X-Gm-Message-State: ABy/qLZqzuOiZLn4icGsE42SewJ1/R57HQhA8lAeCKaBNBxHO7EaldjX
	ysxtsSmMro7CnfeHyQb0r5Y=
X-Google-Smtp-Source: APBJJlELNtA9t7Vl1ywF7Sx7SuXwzg/v92//dlg5e+KqGI92b1hBQbNtg8odOdwcSW3NiUezfoohMQ==
X-Received: by 2002:a2e:9259:0:b0:2b9:601d:2c0 with SMTP id v25-20020a2e9259000000b002b9601d02c0mr956643ljg.25.1689858188099;
        Thu, 20 Jul 2023 06:03:08 -0700 (PDT)
Received: from mobilestation ([109.197.207.60])
        by smtp.gmail.com with ESMTPSA id t25-20020a2e7819000000b002b70ac2f631sm266813ljc.76.2023.07.20.06.03.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jul 2023 06:03:07 -0700 (PDT)
Date: Thu, 20 Jul 2023 16:03:04 +0300
From: Serge Semin <fancer.lancer@gmail.com>
To: Rob Herring <robh@kernel.org>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, 
	linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Jingoo Han <jingoohan1@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v3 2/5] dt-bindings: PCI: dwc: rockchip: Fix
 interrupt-names issue
Message-ID: <epqbt5c4vxb65l47tupmogxfnskwbd54cg6vzq7xnelrt44omu@py7ntcft6dhf>
References: <20230717172651.64324-1-sebastian.reichel@collabora.com>
 <20230717172651.64324-3-sebastian.reichel@collabora.com>
 <20230719201605.GA706263-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230719201605.GA706263-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230720_060312_769864_9F42CCE4 
X-CRM114-Status: GOOD (  30.75  )
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

On Wed, Jul 19, 2023 at 02:16:05PM -0600, Rob Herring wrote:
> On Mon, Jul 17, 2023 at 07:26:48PM +0200, Sebastian Reichel wrote:
> > The RK356x (and RK3588) have 5 ganged interrupts. For example the
> > "legacy" interrupt combines "inta/intb/intc/intd" with a register
> > providing the details.
> > 
> > Currently the binding is not specifying these interrupts resulting
> > in a bunch of errors for all rk356x boards using PCIe.
> > 
> > Fix this by specifying the interrupts and add them to the example
> > to prevent regressions.
> > 
> > This changes the reference from snps,dw-pcie.yaml to
> > snps,dw-pcie-common.yaml, since the interrupts are vendor
> > specific and should not be listed in the generic file. The
> > only other bit from the generic binding are the reg-names,
> > which are overwritten by this binding.
> > 
> > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > ---
> >  .../bindings/pci/rockchip-dw-pcie.yaml        | 43 ++++++++++++++++++-
> >  1 file changed, 42 insertions(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> > index a4f61ced5e88..7836b9a5547c 100644
> > --- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> > +++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> > @@ -17,7 +17,8 @@ description: |+
> >    snps,dw-pcie.yaml.
> >  
> >  allOf:
> > -  - $ref: /schemas/pci/snps,dw-pcie.yaml#
> > +  - $ref: /schemas/pci/pci-bus.yaml#
> > +  - $ref: /schemas/pci/snps,dw-pcie-common.yaml#
> >  
> >  properties:
> >    compatible:
> > @@ -60,6 +61,39 @@ properties:
> >        - const: aux
> >        - const: pipe
> >  
> > +  interrupts:
> > +    items:
> > +      - description:
> > +          Combined system interrupt, which is used to signal the following
> > +          interrupts - phy_link_up, dll_link_up, link_req_rst_not, hp_pme,
> > +          hp, hp_msi, link_auto_bw, link_auto_bw_msi, bw_mgt, bw_mgt_msi,
> > +          edma_wr, edma_rd, dpa_sub_upd, rbar_update, link_eq_req, ep_elbi_app
> > +      - description:
> > +          Combined PM interrupt, which is used to signal the following
> > +          interrupts - linkst_in_l1sub, linkst_in_l1, linkst_in_l2,
> > +          linkst_in_l0s, linkst_out_l1sub, linkst_out_l1, linkst_out_l2,
> > +          linkst_out_l0s, pm_dstate_update
> > +      - description:
> > +          Combined message interrupt, which is used to signal the following
> > +          interrupts - ven_msg, unlock_msg, ltr_msg, cfg_pme, cfg_pme_msi,
> > +          pm_pme, pm_to_ack, pm_turnoff, obff_idle, obff_obff, obff_cpu_active
> > +      - description:
> > +          Combined legacy interrupt, which is used to signal the following
> > +          interrupts - inta, intb, intc, intd
> > +      - description:
> > +          Combined error interrupt, which is used to signal the following
> > +          interrupts - aer_rc_err, aer_rc_err_msi, rx_cpl_timeout,
> > +          tx_cpl_timeout, cor_err_sent, nf_err_sent, f_err_sent, cor_err_rx,
> > +          nf_err_rx, f_err_rx, radm_qoverflow
> 

> I'm confused. It is really up to the integrator on how each of these 
> interrupts are combined? I thought it was a bit more fixed than that.

As I explained it here [1] in details there are only several signals
which are actually marked as IRQs:
hp_pme,
hp/hp_msi,
link_auto_bw/link_auto_bw_msi,
bw_mgt/bw_mgt_msi,
edma_wr/edma_rd,
cfg_pme/cfg_pme_msi,
inta, intb, intc, intd,
aer_rc_err/aer_rc_err_msi.
(not listed above: cfg_int, cfg_safety_corr, cfg_safety_uncorr,
cfg_vpd, msi_ctrl_int).
All of the above (except msi_ctrl_int, which belongs to a none-SII
group of signals) are a part of the so called "SII: Interrupt
Signals". They are normally used to indicate IRQs in the most of the
DW PCIe devices. That's why I listed them in the generic DW PCIe
DT-bindings.

The rest of the signals described by Sebastian are also a part of the
System Information Interface (SII), but they _aren't_ marked as the
IRQs. Although the signals explicitly stated as interrupts and some
common SII Signals are marked as _outputs_ (from the DW PCIe
controller point of view). So all of them can be used as the interrupt
sources if they are somehow connected to a system interrupt
controller. Though normally the none-IRQ outputs are just wired to the
application-specific CSR space and if needed tracked by a separate
IRQ signal (see the "app" signal in the generic DW PCIe DT-bindings)

AFAIU RK rk356x HW designers just grouped some SII output signals and
OR'ed them up before attaching to the system IRQ controller. So
basically all the IRQs described by Sebastian can be categorized as
application-specific IRQs. That's amongst various solutions I
suggested to rename them to indicate that (see [1]). I don't know what
the Rockchip HW-engineers were thinking providing such a mix of the
IRQ sources instead just using the standardized by Synopsys interface,
but here it is.

[1] https://lore.kernel.org/linux-pci/3628628.VLH7GnMWUR@phil/T/#m3b3149c26b15e03686cfc2b76033c9949b0d565c

-Serge(y)

> 
> Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
