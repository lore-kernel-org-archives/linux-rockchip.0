Return-Path: <SRS0=Jg7J=FK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF55CC4361B
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Dec 2020 20:17:07 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 80AAB2310B
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Dec 2020 20:17:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 80AAB2310B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linux.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sGw70y7+KVJfkU5oHu4KKo4YC39YqXuAmbVuznqhu/Q=; b=2X31iSpyX8x1M7lbak9Yt+m3Y
	7RJ9LtluoBBSXeBMYQzhh/psmrfD2yFcHLoftffF0U5D3W8c60r9n/A2O3/xISJEgF7IZXw8ONpRu
	IF+xJ0n7d9Nk+y2a1CYBfdzrzUksisIm7F1lvvyy+h7uuFnugzyJYAL0XkzlWLbK0z3wklqdd5na7
	C0ZJ0uZRM4gSa0zZO6o3YVgRc9zm7+8yHtIdaNtBxrAhqWE942dPBQ7J8N1blScLnMsq8TU2Temuh
	Mq158nlS9u3/20Z3ducVsyAWQPc1tPfNL04/zgkwFcIPROHygcyAo/9NqCmdOkOEhkcUmv5KlO7z3
	Wmj5OQEDQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1km0Ss-0002NI-GY; Sun, 06 Dec 2020 20:17:02 +0000
Received: from mail-pj1-f67.google.com ([209.85.216.67])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1km0Sn-0002Mh-Iz; Sun, 06 Dec 2020 20:16:58 +0000
Received: by mail-pj1-f67.google.com with SMTP id iq13so6144804pjb.3;
 Sun, 06 Dec 2020 12:16:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=R+rjdl/kMmpfvATyyiBKTTDC7/ADOrYG2LQ26ycg4ts=;
 b=UVSibi/Mun73YtGoLr7deKQteyXjjeqO5g4I3GjqIvVaMjoX/6vvZePYA/SMcdEmFV
 YujjMjMigb0A1Yy02XSxG8bFC4w60OlVH/kblCMCJNoWMiZoiY7UPSK5c5wnPVrof+vM
 KxhQPXRTblUqSKi7UIcFsif49DF+gPTXOpCSKURVgMSVnmQPUa7ipw31CXOmmxd2qg9m
 mAiNpnCX80riln2gHptavIFcYMP+QzrFNlEr3uZ7t7NrStf2vLezsKZVRjN+6YI0XayC
 iubWqvCcwdV5VnqyaF1/rKk4K1wqbVsI8qd7e2m0mJW5i2NPXUziR2zb271eP8bM08L7
 T/9A==
X-Gm-Message-State: AOAM5312hKIlc1iN7rwzdFtYbL1vALa+sXaZvP2m9jIhW/cGYDF/aFKZ
 1ERUEXtc4P7NTCux4FrOiGs=
X-Google-Smtp-Source: ABdhPJxpA9QCLH2CckDZiO4WQ7tusbQz3TsQfr9LJIt6xF7N6IQbRIyD2evK2VHZgjLCDBw3mAerWw==
X-Received: by 2002:a17:90a:990a:: with SMTP id
 b10mr2206383pjp.87.1607285815024; 
 Sun, 06 Dec 2020 12:16:55 -0800 (PST)
Received: from rocinante ([95.155.85.46])
 by smtp.gmail.com with ESMTPSA id w11sm12784288pfi.162.2020.12.06.12.16.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Dec 2020 12:16:54 -0800 (PST)
Date: Sun, 6 Dec 2020 21:16:36 +0100
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Bjorn Helgaas <bhelgaas@google.com>
Subject: Re: [PATCH v6 1/5] PCI: Unify ECAM constants in native PCI Express
 drivers
Message-ID: <X808JJGeIREwqIjb@rocinante>
References: <20201129230743.3006978-1-kw@linux.com>
 <20201129230743.3006978-2-kw@linux.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201129230743.3006978-2-kw@linux.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201206_151657_659236_EFB66798 
X-CRM114-Status: GOOD (  14.72  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, Paul Mackerras <paulus@samba.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Jonathan Chocron <jonnyc@amazon.com>, Toan Le <toan@os.amperecomputing.com>,
 Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Michal Simek <michal.simek@xilinx.com>,
 linux-rockchip@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com,
 Jonathan Derrick <jonathan.derrick@intel.com>, linux-pci@vger.kernel.org,
 Ray Jui <rjui@broadcom.com>, Florian Fainelli <f.fainelli@gmail.com>,
 linux-rpi-kernel@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>,
 Zhou Wang <wangzhou1@hisilicon.com>, Robert Richter <rrichter@marvell.com>,
 linuxppc-dev@lists.ozlabs.org, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Nicolas, Florian and Florian,

[...]
> -/* Configuration space read/write support */
> -static inline int brcm_pcie_cfg_index(int busnr, int devfn, int reg)
> -{
> -	return ((PCI_SLOT(devfn) & 0x1f) << PCIE_EXT_SLOT_SHIFT)
> -		| ((PCI_FUNC(devfn) & 0x07) << PCIE_EXT_FUNC_SHIFT)
> -		| (busnr << PCIE_EXT_BUSNUM_SHIFT)
> -		| (reg & ~3);
> -}
> -
>  static void __iomem *brcm_pcie_map_conf(struct pci_bus *bus, unsigned int devfn,
>  					int where)
>  {
> @@ -716,7 +704,7 @@ static void __iomem *brcm_pcie_map_conf(struct pci_bus *bus, unsigned int devfn,
>  		return PCI_SLOT(devfn) ? NULL : base + where;
>  
>  	/* For devices, write to the config space index register */
> -	idx = brcm_pcie_cfg_index(bus->number, devfn, 0);
> +	idx = PCIE_ECAM_OFFSET(bus->number, devfn, 0);
>  	writel(idx, pcie->base + PCIE_EXT_CFG_INDEX);
>  	return base + PCIE_EXT_CFG_DATA + where;
>  }
[...]

Passing the hard-coded 0 as the "reg" argument here never actually did
anything, thus the 32 bit alignment was never correctly enforced.

My question would be: should this be 32 bit aligned?  It seems like the
intention was to perhaps make the alignment?  I am sadly not intimately
familiar with his hardware, so I am not sure if there is something to
fix here or not.

Also, I wonder whether it would be safe to pass the offset (the "where"
variable) rather than hard-coded 0?

Thank you for help in advance!

Bjorn also asked the same question:
  https://lore.kernel.org/linux-pci/20201120203428.GA272511@bjorn-Precision-5520/

Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
