Return-Path: <SRS0=PGv2=LG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4C78C48BCF
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Jun 2021 22:02:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7F962610E6
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Jun 2021 22:02:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7F962610E6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qnx2rM2i/ycwuCXVcNvZgZ4/JcVNjQNPUpl3RcpYPLE=; b=s25VrCNrmRchEG
	nr913PI4lB86omyyIskSC+SjkoSCW0Ln7Y9lTAPpb3ArtZjKsgFzTcrtabfxNiL5OgL93hiFZMkTa
	oeJhVMtLJXjoInW8lN03Ku/56Cd5hkEG7S228eTBCSqUOWo+TZQ/ol0pErnSuGQFbOif9dLEL4/wH
	yJx+S6yPczPIiR7DbG9HrZHmRMX6MNe6/KSlKB5KFN+0fep88KHz3DlOHzrDePnTFHKAmLX4FPQhx
	f+RcdgW7M139K9uer6aR5tmTeg6gzkOwXXVpH9ypQmxLIYUDV06/bMEmmFLBimtouSdN7gV7EUgP/
	Q9FzVPL+9zeY52HI1SHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lsBi7-009Dhi-Dk; Sat, 12 Jun 2021 22:02:35 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lsBhv-009Dge-NV; Sat, 12 Jun 2021 22:02:25 +0000
Received: by mail-ed1-x52c.google.com with SMTP id s6so41353720edu.10;
 Sat, 12 Jun 2021 15:02:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rEDs96ONr8FmGsjH+zhg8paw9S/VwLylFUAj5qFQW1M=;
 b=kbtIThhn6Eq2Qje5WRWnpASrFaPEFA67EEv9cJxwlGv91wx+pUx0y8AHAeUIMO6l4K
 oMw3YzHzQ4kusadFsvCIuipG5Q0QgqHY+uSCOXxV+5UDjHXE03JmYxGttBTFLQyZeS4D
 BJqkedJlohPXsuZedFQJAHohyT5KO+UoKs4mf+CpoI+ov7OEG9afV3P1CF8SoYqHnrrX
 0oSBfEWjuM7u2qKWVDK+AvPI2/GZyFDK7rTjwzM2oJ1v2w/veskIa+HvpTEOrdle1ELy
 qRaOx818HzONzHcJ9P1uj1F+KNFKfMg6H1kf0uBK/5LX0pIxLKdfk437EdY+y2Zl6bTo
 Mgwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rEDs96ONr8FmGsjH+zhg8paw9S/VwLylFUAj5qFQW1M=;
 b=PAFG9bNt5YL6Rb2eJ8P18FNSTt8ERnpfd8mXY8xR7dyyXk1r9bietkL15laSPtLqpb
 bZm9lPgWtnFyJkIpWXrinofJsN67fGCsa0CV7i4HGDLV74vUOZhLMx0wJ+Fev74a3oyG
 mVd6cxNA17HEfqzWb4snfkVzD3mb/9qst6SEtz+SrKR85pigqbC2TPpr1P0tX3vpwp6p
 LCZwtPqGJfOYaRUd5fz228UlVrWH+RSa8hBvsjcjAQ4lKd31/joRi/mgkpvGLZJXQWHn
 J8hU06PykezXZxA1O1vmA64zF3e8GZMpGYTQRz0W4hKCzRdeSB6XbpRY8FadOkBkptgz
 RG1g==
X-Gm-Message-State: AOAM531RyhCFgtFWnDOvaerlDKv12sdmr8+0dH3mgiO9S+MtX3jHL74l
 BMsI88XH65guOyURMrHC0Bt3ZjxUmwX7pmYF8ko=
X-Google-Smtp-Source: ABdhPJwocf+UkwLvI13sMGMlwzWKxuqsxhrp6exew0/a0z/JV3U5Vu/lylFpX54PhzLJx6f/DRjA7ja7BWxLykoGJrc=
X-Received: by 2002:a05:6402:3082:: with SMTP id
 de2mr9827627edb.214.1623535337350; 
 Sat, 12 Jun 2021 15:02:17 -0700 (PDT)
MIME-Version: 1.0
References: <20210608080409.1729276-1-javierm@redhat.com>
In-Reply-To: <20210608080409.1729276-1-javierm@redhat.com>
From: Peter Robinson <pbrobinson@gmail.com>
Date: Sat, 12 Jun 2021 23:02:06 +0100
Message-ID: <CALeDE9PAEArn6zTNkWe+eNomx4f1A2sK=jB+7GzE8MRJo=epAw@mail.gmail.com>
Subject: Re: [PATCH v2] PCI: rockchip: Avoid accessing PCIe registers with
 clocks gated
To: Javier Martinez Canillas <javierm@redhat.com>
Cc: linux-kernel@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>, 
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring <robh@kernel.org>, 
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org, 
 linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210612_150223_822233_D87DBCBE 
X-CRM114-Status: GOOD (  34.37  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Tue, Jun 8, 2021 at 9:04 AM Javier Martinez Canillas
<javierm@redhat.com> wrote:
>
> IRQ handlers that are registered for shared interrupts can be called at
> any time after have been registered using the request_irq() function.
>
> It's up to drivers to ensure that's always safe for these to be called.
>
> Both the "pcie-sys" and "pcie-client" interrupts are shared, but since
> their handlers are registered very early in the probe function, an error
> later can lead to these handlers being executed before all the required
> resources have been properly setup.
>
> For example, the rockchip_pcie_read() function used by these IRQ handlers
> expects that some PCIe clocks will already be enabled, otherwise trying
> to access the PCIe registers causes the read to hang and never return.
>
> The CONFIG_DEBUG_SHIRQ option tests if drivers are able to cope with their
> shared interrupt handlers being called, by generating a spurious interrupt
> just before a shared interrupt handler is unregistered.
>
> But this means that if the option is enabled, any error in the probe path
> of this driver could lead to one of the IRQ handlers to be executed.
>
> In a rockpro64 board, the following sequence of events happens:
>
>   1) "pcie-sys" IRQ is requested and its handler registered.
>   2) "pcie-client" IRQ is requested and its handler registered.
>   3) probe later fails due readl_poll_timeout() returning a timeout.
>   4) the "pcie-sys" IRQ is unregistered.
>   5) CONFIG_DEBUG_SHIRQ triggers a spurious interrupt.
>   6) "pcie-client" IRQ handler is called for this spurious interrupt.
>   7) IRQ handler tries to read PCIE_CLIENT_INT_STATUS with clocks gated.
>   8) the machine hangs because rockchip_pcie_read() call never returns.
>
> To avoid cases like this, the handlers don't have to be registered until
> very late in the probe function, once all the resources have been setup.
>
> So let's just move all the IRQ init before the pci_host_probe() call, that
> will prevent issues like this and seems to be the correct thing to do too.
>
> Reported-by: Peter Robinson <pbrobinson@gmail.com>
> Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
> Acked-by: Shawn Lin <shawn.lin@rock-chips.com>
Tested-by: Peter Robinson <pbrobinson@gmail.com>

Tested on a Rock960, Firefly3399 and a Pinebook Pro

> ---
>
> Changes in v2:
> - Add missing word in the commit message.
> - Include Shawn Lin's Acked-by tag.
>
>  drivers/pci/controller/pcie-rockchip-host.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
> index f1d08a1b159..78d04ac29cd 100644
> --- a/drivers/pci/controller/pcie-rockchip-host.c
> +++ b/drivers/pci/controller/pcie-rockchip-host.c
> @@ -592,10 +592,6 @@ static int rockchip_pcie_parse_host_dt(struct rockchip_pcie *rockchip)
>         if (err)
>                 return err;
>
> -       err = rockchip_pcie_setup_irq(rockchip);
> -       if (err)
> -               return err;
> -
>         rockchip->vpcie12v = devm_regulator_get_optional(dev, "vpcie12v");
>         if (IS_ERR(rockchip->vpcie12v)) {
>                 if (PTR_ERR(rockchip->vpcie12v) != -ENODEV)
> @@ -973,8 +969,6 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
>         if (err)
>                 goto err_vpcie;
>
> -       rockchip_pcie_enable_interrupts(rockchip);
> -
>         err = rockchip_pcie_init_irq_domain(rockchip);
>         if (err < 0)
>                 goto err_deinit_port;
> @@ -992,6 +986,12 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
>         bridge->sysdata = rockchip;
>         bridge->ops = &rockchip_pcie_ops;
>
> +       err = rockchip_pcie_setup_irq(rockchip);
> +       if (err)
> +               goto err_remove_irq_domain;
> +
> +       rockchip_pcie_enable_interrupts(rockchip);
> +
>         err = pci_host_probe(bridge);
>         if (err < 0)
>                 goto err_remove_irq_domain;
> --
> 2.31.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
