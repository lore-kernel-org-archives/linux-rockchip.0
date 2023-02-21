Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8809DC636D7
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Feb 2023 16:38:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hB5eugSsEask7RiVVI1N9xI5TLxqMsXkCViH1xFvF5Y=; b=bh8wXzaGcZrYF6
	X/T3imOcIMXHG1NDHiWuW6QiisbAuUjit7wTqZig531TKOC57vncq8BSrBp8saY7t2qZQNI3QSYKW
	F1AwGwpm+8glukKx2iCPSzbqN5Co2OAAhZyPR4HLaOu1luZrSgCyyOgmA1VTCz+Gv70I5695Pfib3
	Zg9lrucrBT/kvqUJ81ujecilE51fBtdlJcsE03ssgkSc0gJSvpNk/awWfuwhAMv59FoauqRgOoFHH
	Nc8Pq8xYktpkfVgLYiIuesO2n6vHVq2ZWw8gLQo359OKkj6hXtqfJWCIuzEIvuZr704yp75fVkivv
	XIfztwi57llP/j+Nybww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUVeY-008zFf-Le; Tue, 21 Feb 2023 16:38:06 +0000
Received: from mail-oa1-x2b.google.com ([2001:4860:4864:20::2b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUVeO-008zD3-81; Tue, 21 Feb 2023 16:37:58 +0000
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-1720433ba75so6293183fac.5;
        Tue, 21 Feb 2023 08:37:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RLjHRJBIZDzt/xCM/EXWPMqxEiDZeKfzk/U/vJzGizY=;
        b=Q6TIWdFHznVqxgc0h3jk1x7ZiS2M7VrijVzxfD0B03fs3VUL77+UK5+p8sknOYKEwp
         s9d5U1jX18ywsbJoJo+fjulSps8Y2evCVJx4xTZ5Dff781zMtcZO9oGaPHv6RheQoybX
         OpvT+NooxzxAZXit3bdNEGsWCaZl+RjYmRB00Rcc0lbyQOOdP1bsnvz1xG3k0ziBZdnj
         IxCTeQNGd1s+m2EHWP3cfpY4fIYYzN0YllN39JPfqxn9sLMrRlcW8tKcp5wCuISBLOgN
         YbL1a94rqSaVBaONZv7cYjN4A7gMwK90Bor7iURPs3z8Ax+59qKYvKgK33+GVYgDcc5F
         kSDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RLjHRJBIZDzt/xCM/EXWPMqxEiDZeKfzk/U/vJzGizY=;
        b=svc4XLZ3xNoVmhRB9c2TGPp1VEibnfiZybnNfknuHOhOJYbHAMoyxfknI00yX+vSVf
         TcayelFbe9rrvTMYM7ZG3/QzhYpa7i/sHzxUuphIh0QxoAJF6prRYEp9nYAvu/ZHKh69
         SZ5WON/owPmKHcaF3tDR6KPb6zkOfUSlwEVv8To3+Do547lwWQ8IXrOd1DNn4QgFmVEI
         UEtouyg9QNlWVFYAQfxaXzIG6K1s0PyCVr0CnM1Uv1smY4y2IR5BAm0gbDYl9P4ozknX
         kpl9jdIp2M0gabAnfXIH6rFVXdUeNtLnVAcNUYzz368UcPv0Aga02VteXAAfRGKY77TI
         MggA==
X-Gm-Message-State: AO0yUKVDX/Eem7BIBFffACwvC4ag0mzslFPQBUeBQXksA5npZXeN8emf
	PSBDGD9bxkaZJJMDeh4iE9/IHoP/WafFyuXFcQY=
X-Google-Smtp-Source: AK7set+P6wOe9Kc2Cw/k6qWFoE3y4T8bv6Cwc+0ZGi/kPqlK62itYqIL+Sr9eN0HksHZWT3y6ouMqd9jE76hhkyG1h4=
X-Received: by 2002:a05:6871:460b:b0:16e:c845:9f9 with SMTP id
 nf11-20020a056871460b00b0016ec84509f9mr686434oab.110.1676997472927; Tue, 21
 Feb 2023 08:37:52 -0800 (PST)
MIME-Version: 1.0
References: <20230214140858.1133292-1-rick.wertenbroek@gmail.com>
 <20230214140858.1133292-10-rick.wertenbroek@gmail.com> <ebbddcfa-99e5-efda-0eab-fbd61a33e2c3@opensource.wdc.com>
 <CAAEEuhpDTmAvBZhC9RCueOvqbLb=AttV1KxJrOUBcjHQrpVXmA@mail.gmail.com>
 <38ae72c9-0f0b-1a94-d2e0-f4ea80e94705@opensource.wdc.com> <CAAEEuhoQV1A8o_2jb1Qfq5d7dj9HpHL+mkDs8K4vs8v=-81zng@mail.gmail.com>
In-Reply-To: <CAAEEuhoQV1A8o_2jb1Qfq5d7dj9HpHL+mkDs8K4vs8v=-81zng@mail.gmail.com>
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Date: Tue, 21 Feb 2023 17:37:16 +0100
Message-ID: <CAAEEuhrnz-u1wUe2OVBawSvrsze+rNObSqhb+SEcAqfc-n2c_g@mail.gmail.com>
Subject: Re: [PATCH v2 9/9] PCI: rockchip: Add parameter check for RK3399 PCIe
 endpoint core set_msi()
To: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Cc: alberto.dassatti@heig-vd.ch, xxm@rock-chips.com, 
	rick.wertenbroek@heig-vd.ch, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Shawn Lin <shawn.lin@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Jani Nikula <jani.nikula@intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
	Mikko Kovanen <mikko.kovanen@aavamobile.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230221_083756_349587_4CD2B101 
X-CRM114-Status: GOOD (  68.01  )
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

On Tue, Feb 21, 2023 at 2:19 PM Rick Wertenbroek
<rick.wertenbroek@gmail.com> wrote:
>
> On Tue, Feb 21, 2023 at 11:55 AM Damien Le Moal
> <damien.lemoal@opensource.wdc.com> wrote:
> >
> > On 2/21/23 19:47, Rick Wertenbroek wrote:
> > > On Wed, Feb 15, 2023 at 2:39 AM Damien Le Moal
> > > <damien.lemoal@opensource.wdc.com> wrote:
> > >>
> > >> On 2/14/23 23:08, Rick Wertenbroek wrote:
> > >>> The RK3399 PCIe endpoint core supports only a single PCIe physcial
> > >>> function (function number 0), therefore return -EINVAL if set_msi() is
> > >>> called with a function number greater than 0.
> > >>> The PCIe standard only allows the multi message capability (MMC) value
> > >>> to be up to 0x5 (32 messages), therefore return -EINVAL if set_msi() is
> > >>> called with a MMC value of over 0x5.
> > >>>
> > >>> Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
> > >>> ---
> > >>>  drivers/pci/controller/pcie-rockchip-ep.c | 10 ++++++++++
> > >>>  1 file changed, 10 insertions(+)
> > >>>
> > >>> diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
> > >>> index b7865a94e..80634b690 100644
> > >>> --- a/drivers/pci/controller/pcie-rockchip-ep.c
> > >>> +++ b/drivers/pci/controller/pcie-rockchip-ep.c
> > >>> @@ -294,6 +294,16 @@ static int rockchip_pcie_ep_set_msi(struct pci_epc *epc, u8 fn, u8 vfn,
> > >>>       struct rockchip_pcie *rockchip = &ep->rockchip;
> > >>>       u32 flags;
> > >>>
> > >>> +     if (fn) {
> > >>> +             dev_err(&epc->dev, "This endpoint controller only supports a single physical function\n");
> > >>> +             return -EINVAL;
> > >>> +     }
> > >>
> > >> Checking this here is late... Given that at most only one physical
> > >> function is supported, the check should be in rockchip_pcie_parse_ep_dt().
> > >> Something like:
> > >>
> > >>         err = of_property_read_u8(dev->of_node, "max-functions",
> > >>                                   &ep->epc->max_functions);
> > >>
> > >>         if (err < 0 || ep->epc->max_functions > 1)
> > >>
> > >>                 ep->epc->max_functions = 1;
> > >>
> > >
> > > Yes, this could be moved to the probe, thanks.
> > >
> > >> And all the macros with the (fn) argument could also be simplified
> > >> (argument fn removed) since fn will always be 0.
> > >
> > > These functions cannot be simplified because they have to follow the signature
> > > given by "pci_epc_ops" (include/linux/pci-epc.h). And this signature has the
> > > function number as a parameter. If we change the function signature we won't
> > > be able to assign these functions to the pc_epc_ops structure
> >
> > I was not suggesting to change the functions signature. I was suggesting
> > dropping the fn argument for the *macros*, e.g.
> >
> > ROCKCHIP_PCIE_EP_FUNC_BASE(fn) -> ROCKCHIP_PCIE_EP_FUNC_BASE
> >
> > since fn is always 0.
> >
> > That said, I am not entirely sure if the limit really is 1 function at most. The
> > TRM seems to be suggesting that up to 4 functions can be supported...
> >
> > [...]
> >
> > >> Another nice cleanup: define ROCKCHIP_PCIE_EP_MSI_CTRL_REG to include the
> > >> ROCKCHIP_PCIE_EP_FUNC_BASE(fn) addition so that we do not have to do it
> > >> here all the time.
> > >
> > > Yes, this could be an improvement but this is the way it is written
> > > everywhere in this
> > > driver, I chose to keep it so as to remain coherent with the rest of the driver.
> > > Cleaning this is not so important since this code will not be
> > > rewritten / changed so
> > > often. But I agree that it might be nicer. But, on the other side if
> > > at some point
> > > support for virtual functions would be added, the offsets would need
> > > to be computed
> > > based on the virtual function number and the code would be written
> > > like it is now,
> > > so I suggest keeping this the way it is for now.
> >
> > Yes, sure, this can be cleaned later.
> >
> > A more pressing problem is the lack of support for MSIX despite the fact that
> > the controller supports that *and* advertize it as a capability. That is what
> > was causing my problem with the Linux nvme driver and my prototype nvme epf
> > function driver: the host driver was seeing MSIX support (1 vector supported by
> > default), and so was allocating one MSIX for the device probe. But on the EP
> > end, it is MSI or INTX only... Working on adding that to solve this issue.
> >
>
> I have seen this too, the controller advertises the capability. However, the TRM
> (section 17.5.9) says that MSI-X is not supported (MSI / INTx only as you said).
> So the solution should be to modify the probe function of the endpoint
> controller
> so that the MSI-X capability would not be advertised, this should fix
> your problem.
>
> I wonder if one could still implement MSI-X because from the endpoint we would
> just need to implement it as a message (TLP) over PCIe (because the space for
> the vectors is allocated and written, so that part should be ok). I am
> not an expert
> on MSI-X, but the reason the endpoint cannot send them could be because MSI-X
> requires some fields in the PCIe header descriptor to be filled with values that
> cannot be set through the "desc0-3" registers of the RK3399 PCIe endpoint core.
>
> Anyways, the endpoint should not advertise the MSI-X capabilities when it cannot
> send such interrupts. Once this is fixed you should be able to have your NVMe
> function running.
>
> Regards.
> Rick
>

It is possible to disable MSI-X by skipping the MSI-X capability
structure in the PCIe
capabilities structures linked-list.
The current linked list is MSI cap (0x90) -> MSI-X cap (0xb0) -> PCIe
Device cap (0xc0)
So we want to set MSI (0x90) -> PCIe Device cap (0xc0)

This can be done by writing 0xc0 to bits 15-8 of 0xFDA0'0090 (MSI cap).
I tested this quickly through devmem2 before loading the endpoint
function driver
and it fixes the issue of MSI-X capabilities being advertised to the host.

In the driver the changes would look like this;
In the probe function you can disable MSI-X as follows:

@@ -631,6 +618,28 @@ static int rockchip_pcie_ep_probe(struct
platform_device *pdev)

        ep->irq_pci_addr = ROCKCHIP_PCIE_EP_DUMMY_IRQ_ADDR;

+       /*
+        * Disable MSI-X because the controller is not capable of MSI-X
+        * This requires to skip the MSI-X capabilities entry in the
+        * chain of PCIe capabilities, we get the next pointer from the
+        * MSI-X entry and set that in the MSI capability entry, this way
+        * the MSI-X entry is skipped (left out of the linked-list)
+        */
+       cfg_msi = rockchip_pcie_read(rockchip, PCIE_EP_CONFIG_BASE +
+               ROCKCHIP_PCIE_EP_MSI_CTRL_REG);
+
+       cfg_msi &= ~ROCKCHIP_PCIE_EP_MSI_CP1_MASK;
+
+       cfg_msix_cp = rockchip_pcie_read(rockchip, PCIE_EP_CONFIG_BASE +
+               ROCKCHIP_PCIE_EP_MSIX_CAP_REG) &
ROCKCHIP_PCIE_EP_MSIX_CAP_CP_MASK;
+
+       cfg_msi |= cfg_msix_cp;
+
+       rockchip_pcie_write(rockchip, cfg_msi,
+               PCIE_EP_CONFIG_BASE + ROCKCHIP_PCIE_EP_MSI_CTRL_REG);
+
        rockchip_pcie_write(rockchip, PCIE_CLIENT_CONF_ENABLE,
PCIE_CLIENT_CONFIG);

        return 0;
 err_epc_mem_exit:
        pci_epc_mem_exit(epc);

In the pcie-rockchip.h add the following #defines:

@@ -216,21 +227,28 @@
 #define ROCKCHIP_PCIE_EP_CMD_STATUS                    0x4
 #define   ROCKCHIP_PCIE_EP_CMD_STATUS_IS               BIT(19)
 #define ROCKCHIP_PCIE_EP_MSI_CTRL_REG                  0x90
+#define   ROCKCHIP_PCIE_EP_MSI_CP1_OFFSET                      8
+#define   ROCKCHIP_PCIE_EP_MSI_CP1_MASK                        GENMASK(15, 8)
+#define   ROCKCHIP_PCIE_EP_MSI_FLAGS_OFFSET                    16
 #define   ROCKCHIP_PCIE_EP_MSI_CTRL_MMC_OFFSET         17
 #define   ROCKCHIP_PCIE_EP_MSI_CTRL_MMC_MASK           GENMASK(19, 17)
 #define   ROCKCHIP_PCIE_EP_MSI_CTRL_MME_OFFSET         20
 #define   ROCKCHIP_PCIE_EP_MSI_CTRL_MME_MASK           GENMASK(22, 20)
 #define   ROCKCHIP_PCIE_EP_MSI_CTRL_ME                         BIT(16)
 #define   ROCKCHIP_PCIE_EP_MSI_CTRL_MASK_MSI_CAP       BIT(24)
+#define ROCKCHIP_PCIE_EP_MSIX_CAP_REG                  0xb0
+#define   ROCKCHIP_PCIE_EP_MSIX_CAP_CP_OFFSET          8
+#define   ROCKCHIP_PCIE_EP_MSIX_CAP_CP_MASK            GENMASK(15, 8)
 #define ROCKCHIP_PCIE_EP_DUMMY_IRQ_ADDR                                0x1
 #define ROCKCHIP_PCIE_EP_PCI_LEGACY_IRQ_ADDR           0x3

I will add this to the next version of the patch set.
Thank you Damien for pointing this out ! This should solve the issues
you have with
your NVMe endpoint function regarding MSI-X interrupts.

Regards
Rick

>
> > --
> > Damien Le Moal
> > Western Digital Research
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
