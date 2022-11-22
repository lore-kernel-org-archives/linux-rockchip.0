Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7309C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Nov 2022 22:04:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=19cHzheVfFO0EktUrna3IpQKbLGTUD/ei4Mv0Shjerw=; b=kv74IFpErKbKRj
	GYpxAO5LUs1XrsHlE+OIqRKsWJcc995J5OrgqlYQZXZjqHozy6RBsocISS4GvshRIyHoDAwmSYfLN
	vyxkVPPauTsMgVmYlVQPpfXm8G65yf2mOdUV5D0eMvCCXhUj3curv2aFnTgQC5czDLCnIQkiaE/VN
	U10Vl5c830KCR91O0L+n0TQw6zHcODnZSWJ9qP158w+ANJuxHGILalu3D/HI7Ct6l1lIEoIgfcJEU
	6PUxv/FAE8a+uyiuFtgxLG7ZzTf9iEDdeVOxMWc8VE9xzscMpQObGbSodXNG17I17f0fXB/NOflVG
	Sk+2Qk7vsZ+s9Oc1uAVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxbNI-00C55g-6g; Tue, 22 Nov 2022 22:04:16 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxbNG-00C54p-0w
	for linux-rockchip@lists.infradead.org; Tue, 22 Nov 2022 22:04:15 +0000
Received: by mail-ed1-x532.google.com with SMTP id x102so22587942ede.0
        for <linux-rockchip@lists.infradead.org>; Tue, 22 Nov 2022 14:04:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=OFhlAG7Hm2IB3aJn7V+VtFlHepO2BQ8l7T2C71S+LeA=;
        b=ex4ZVTQ34cpv+FD0Emp/UcAJbeYdz8e3y0tPUyCEJTr7w1LyuWmARDrjKrlDN+ohOg
         WM9Lcp0OOYkR/axVtd7Ua22oiA/6P9onOXZiqpcKvdAhlXUvrR8e6LIr25QnDv2u8Nub
         i2/382TXQvlRSD3E0UdA+0qNx2vH21CCUawW+BnSLnMSf5d2NPgg7w8WOTH8PLVsC1m7
         s0wLE3uA90Cvt88xNgceamIc+7/UExM3GgEG/4sqJoL5c74l3ZoaxbX4CfgjYz3DZzO7
         qVqjfPy/yLFIlDz+n864Skh653aQPfY8BqdH/5GDuarpMX5kCH12A1E27FoAEXjnbASH
         v2FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OFhlAG7Hm2IB3aJn7V+VtFlHepO2BQ8l7T2C71S+LeA=;
        b=3ZCLhrjNTQBNjNELgBvJP+2lhZhsds42cK2K/xSLjOvCkc6/cYQyoTZk7qx+csExCV
         0gKQgmiMga/MuHQtpal31CFOVOSC/EvHSW3q3aetHFlnBFo6u33wRPMOSegRhNVBDg7Q
         JLjl6w++nLyjKKV9LDeCAm9zsCnRxMuDJHVIzBfI2RUAVmdfWEKr/+BgfHsUfw9BuRYG
         msaP1lLO1g3Iv5eyBfknhRA5A4hK2elU0V2iPbbbMuGF63breM0Tqc4zJFtYcZ2zCJDU
         gOWvqEgEv5mXLwCS8zZZusIXNahpMKo9FIrVORNDOMpdcWooZvWrcao55VE7mQkSZMDU
         wCCg==
X-Gm-Message-State: ANoB5pmGvsCgvroh7sO3BvUFUkY82+ZdM75sD2KI8g40HT74ZOk+fWPB
	P89aV13jid7S7vo3vUaZxZ4cQ638idKphirENNQ=
X-Google-Smtp-Source: AA0mqf5nF1Ze9NtsyHdmHeTlpHdH+CFPjfFQ2h8RHyu37UMOLuCqP4Fi6t6UQfCqTllr5ejcB5IYQiF/s7SKnbNmlKw=
X-Received: by 2002:a05:6402:19a:b0:460:7413:5d46 with SMTP id
 r26-20020a056402019a00b0046074135d46mr23107338edv.47.1669154651814; Tue, 22
 Nov 2022 14:04:11 -0800 (PST)
MIME-Version: 1.0
References: <1669080013-225314-1-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1669080013-225314-1-git-send-email-shawn.lin@rock-chips.com>
From: Han Jingoo <jingoohan1@gmail.com>
Date: Tue, 22 Nov 2022 14:04:00 -0800
Message-ID: <CAPOBaE6KNXn56Gs8DCUg9nMqDPF494OaM58JYHsaKVsFRbvt5A@mail.gmail.com>
Subject: Re: [RESEND PATCH v2] PCI: dwc: Round up num_ctrls if num_vectors is
 less than MAX_MSI_IRQS_PER_CTRL
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Bjorn Helgaas <bhelgaas@google.com>, 
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_140414_106967_A80FEFA5 
X-CRM114-Status: GOOD (  16.71  )
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

On Mon, Nov 21, 2022 Shawn Lin <shawn.lin@rock-chips.com> wrote:
>
> Some SoCs may only support 1 RC with a few MSIs support that the total number of MSIs is
> less than MAX_MSI_IRQS_PER_CTRL. In this case, num_ctrls will be zero which fails setting
> up MSI support. Fix it by rounding up num_ctrls to at least one.
>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

Acked-by: Jingoo Han <jingoohan1@gmail.com>

Best regards,
Jingoo Han

> ---
>
> Changes in v2:
> - set num_ctrls to 1 if it's less than one
>
>  drivers/pci/controller/dwc/pcie-designware-host.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
> index 39f3b37..cfce1e0 100644
> --- a/drivers/pci/controller/dwc/pcie-designware-host.c
> +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
> @@ -62,6 +62,8 @@ irqreturn_t dw_handle_msi_irq(struct dw_pcie_rp *pp)
>         struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
>
>         num_ctrls = pp->num_vectors / MAX_MSI_IRQS_PER_CTRL;
> +       if (num_ctrls < 1)
> +               num_ctrls = 1;
>
>         for (i = 0; i < num_ctrls; i++) {
>                 status = dw_pcie_readl_dbi(pci, PCIE_MSI_INTR0_STATUS +
> @@ -343,6 +345,8 @@ static int dw_pcie_msi_host_init(struct dw_pcie_rp *pp)
>         if (!pp->num_vectors)
>                 pp->num_vectors = MSI_DEF_NUM_VECTORS;
>         num_ctrls = pp->num_vectors / MAX_MSI_IRQS_PER_CTRL;
> +       if (num_ctrls < 1)
> +               num_ctrls = 1;
>
>         if (!pp->msi_irq[0]) {
>                 pp->msi_irq[0] = platform_get_irq_byname_optional(pdev, "msi");
> @@ -707,6 +711,8 @@ int dw_pcie_setup_rc(struct dw_pcie_rp *pp)
>
>         if (pp->has_msi_ctrl) {
>                 num_ctrls = pp->num_vectors / MAX_MSI_IRQS_PER_CTRL;
> +               if (num_ctrls < 1)
> +                       num_ctrls = 1;
>
>                 /* Initialize IRQ Status array */
>                 for (ctrl = 0; ctrl < num_ctrls; ctrl++) {
> --
> 2.7.4
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
