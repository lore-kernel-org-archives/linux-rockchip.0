Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25F6BC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Nov 2022 23:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7/TQBz/tF0tA99WzBGSH+zFt49EutwXCeMsDG1R4jmo=; b=ch3pk/VnflM8zS
	MwP/17XJUHO7sf5ZvlQEshwtdc00wQ8jHul9muGCYiYQRuktdcGHFTh08MYS+aZZHBvQi14hA86iG
	uemy/ELjE34NJ2rqsa3qze5uhoE53YnQHhtF0aNTY37VFx6RA6GrjqIu7IAHn9WPf/Iee2cBVmvSY
	igqA0oJoHP/I9DsdFQtBf2gYRdY+a9SiJ855iWfx6iJ/Ebo+hQ44LY8DiGnhnnNKViLTbFJIcI17O
	jjLm8Myq2p9BX2Jq5RB89VOUUhPfQ+RYeHvTBs0mmVR6E3AOR95iDshiemCDtrx4qe32VOTaqd7yP
	MYkEo9R6JPcK0F3yzMsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxGcm-001Sec-4k; Mon, 21 Nov 2022 23:54:52 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxGcj-001SeA-E6
	for linux-rockchip@lists.infradead.org; Mon, 21 Nov 2022 23:54:50 +0000
Received: by mail-ej1-x632.google.com with SMTP id m22so32030878eji.10
        for <linux-rockchip@lists.infradead.org>; Mon, 21 Nov 2022 15:54:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=d7xhKnOcB71a2ZVb8nhxzwdaG6r8FnahNHMuFn4dMPc=;
        b=M02zW5V8SfeT7IVK3x4WxpQV5fEi4269OMA/Q+CHdeM5bw8D7rU9FGEbvT1yOM7KhZ
         aqZc2SgwKR/C2MiNmZPmOt9yEeXSYGWVcPTKE8deyMnvHXIesC8Su6ytr3bSMOCEINQL
         /1A2kUbyRY2SOYf67P3MJ2LMRG5mETxjg2/gB8OMrhjk7jX0rmM3TjthryhtVe4zGZpl
         L7xXUKJ7iUsZUBte0IhgwIQlCL8tMM32HJFLTVapYN/g0stWXPuFXtjZC/1hfHNdJP2X
         V7Q/doEUg5ddLStpSYI5p9PAXQ4XitGJPFGDGMxR6kHuoep4vZ2a4n2+wC2isRODkOvi
         FXiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d7xhKnOcB71a2ZVb8nhxzwdaG6r8FnahNHMuFn4dMPc=;
        b=sPpk0s9khgGfQaJrLUVbTCl7Fg0IB2vU4LdexEMXVWJxwBi6BljMQ69KfyjGWodoaC
         CSOfIitO8hICr4+pKAml3ZOvE0EEA7ZBKWZKF2tri9+ZtLjo+1fe6f8mXErQuGokYFX1
         SSdvyg4ZTuymynenKkSYCn1a1CtR1QphAuVFlSR5lRlatPd6BhFMvm6lSD46ybA/wVQA
         jg9e8uxDip5DTPScKa6uynojH4paxJb53+VqFT4QEcDzrma21uq6zLQpHQiSP3kdBNQ8
         qwbaRoAyUqCreEMgGL3uIa2OeShKrFkZjKMpWMXew7i//tANNu4OPXXeh1fbcGqX67m9
         n9AA==
X-Gm-Message-State: ANoB5plHlF9fSwNAEx2MUApmYSOPyVoZiRDgEQcSCDUotwx9LvXZYkkr
	P0/oEWDCkwOOURS8cZ87NIEC28TGxc8vfN6TwWOsR9vzLe0=
X-Google-Smtp-Source: AA0mqf4pReabHjbQcjTohnTPsET8HLgndd4Q2OzKPoWBVNDsHVplBj2fbaDhBk+4NfJaDZml1MIZLu/PpNPpG2yh88Y=
X-Received: by 2002:a17:906:3bc7:b0:7b2:884e:3c83 with SMTP id
 v7-20020a1709063bc700b007b2884e3c83mr17086739ejf.59.1669074886593; Mon, 21
 Nov 2022 15:54:46 -0800 (PST)
MIME-Version: 1.0
References: <1669014996-177686-1-git-send-email-shawn.lin@rock-chips.com>
In-Reply-To: <1669014996-177686-1-git-send-email-shawn.lin@rock-chips.com>
From: Han Jingoo <jingoohan1@gmail.com>
Date: Mon, 21 Nov 2022 15:54:35 -0800
Message-ID: <CAPOBaE5_w94UGx+mEkNi+jzjk+Te3K6Mt6KaB5uLsWXSY192mA@mail.gmail.com>
Subject: Re: [PATCH] PCI: dwc: Round up num_ctrls if num_vectors is less than MAX_MSI_IRQS_PER_CTRL
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Bjorn Helgaas <bhelgaas@google.com>, 
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_155449_496967_DBB282C4 
X-CRM114-Status: GOOD (  16.37  )
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

On Sun, Nov 20, 2022 Shawn Lin <shawn.lin@rock-chips.com> wrote:
>
> Some SoCs may only support 1 RC with a few MSIs support that the total numver of MSIs is
> less than MAX_MSI_IRQS_PER_CTRL. In this case, num_ctrls will be zero which fails setting
> up MSI support. Fix it by rounding up num_ctrls to at least one.

Hi Shawn Lin,

If you find only a single case (1RC with a few MSIs), please set it as one
if the divided value is zero.

For example,
num_ctrls = pp->num_vectors / MAX_MSI_IRQS_PER_CTRL;
if (num_ctrls < 1)
    num_ctrls = 1

Best regards,
Jingoo Han

>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
>
>  drivers/pci/controller/dwc/pcie-designware-host.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
> index 39f3b37..2cba2a8 100644
> --- a/drivers/pci/controller/dwc/pcie-designware-host.c
> +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
> @@ -61,7 +61,7 @@ irqreturn_t dw_handle_msi_irq(struct dw_pcie_rp *pp)
>         irqreturn_t ret = IRQ_NONE;
>         struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
>
> -       num_ctrls = pp->num_vectors / MAX_MSI_IRQS_PER_CTRL;
> +       num_ctrls = DIV_ROUND_UP(pp->num_vectors, MAX_MSI_IRQS_PER_CTRL);
>
>         for (i = 0; i < num_ctrls; i++) {
>                 status = dw_pcie_readl_dbi(pci, PCIE_MSI_INTR0_STATUS +
> @@ -342,7 +342,7 @@ static int dw_pcie_msi_host_init(struct dw_pcie_rp *pp)
>
>         if (!pp->num_vectors)
>                 pp->num_vectors = MSI_DEF_NUM_VECTORS;
> -       num_ctrls = pp->num_vectors / MAX_MSI_IRQS_PER_CTRL;
> +       num_ctrls = DIV_ROUND_UP(pp->num_vectors, MAX_MSI_IRQS_PER_CTRL);
>
>         if (!pp->msi_irq[0]) {
>                 pp->msi_irq[0] = platform_get_irq_byname_optional(pdev, "msi");
> @@ -706,7 +706,7 @@ int dw_pcie_setup_rc(struct dw_pcie_rp *pp)
>         dw_pcie_setup(pci);
>
>         if (pp->has_msi_ctrl) {
> -               num_ctrls = pp->num_vectors / MAX_MSI_IRQS_PER_CTRL;
> +               num_ctrls = DIV_ROUND_UP(pp->num_vectors, MAX_MSI_IRQS_PER_CTRL);
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
