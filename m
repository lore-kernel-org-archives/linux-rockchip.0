Return-Path: <SRS0=ahIP=CO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3BA83C43461
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Sep 2020 20:44:36 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9446A20796
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Sep 2020 20:44:35 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="mrE+iAWM"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9446A20796
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=linux.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pXgTMDRZRflKw6ARH2/Sel+NAyhdrggFXVL3/QxgjbY=; b=mrE+iAWMFfOofUWkkkBTr+nP2
	X/i6ZtaMXp2hLximY1RsH+1OeCtRdGgl/1/WoNMUsdSMCgTQ0xcdDDgIiBIS0ZYl5j8y67OAl8eIu
	N+0j0SKH/k6Pm54iRb83g1YE0gL1GY2LOaae++qLiauvpaXqhenViR8+fTiJyoqnwEpR/16mQqWMs
	d1Gx4c4E1NF3nPmnrC22mb7ljippgLFkfVeJFXDO519LqerGxKA/j6+KIEtgc3wP0ryJV3vzLxPKF
	IvDvcX8z5XfAm2w6jaCZm8n9t6anlgh4nHBV7tx6LVoNjJFZy3mbvfwyHfxvUGDy05K60XiVpS6ek
	yEQEU7UhQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kEf2u-000252-Sj; Sat, 05 Sep 2020 20:44:24 +0000
Received: from mail-lj1-f196.google.com ([209.85.208.196])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kEf2s-00024P-AS; Sat, 05 Sep 2020 20:44:23 +0000
Received: by mail-lj1-f196.google.com with SMTP id a15so11867750ljk.2;
 Sat, 05 Sep 2020 13:44:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=671tuV+5QYoJp/HkFJ0gD7Y6tBP+J04Z5kQy3jbSXss=;
 b=USIgAJyBEGDC4d5/DkxihZGyvSEOtpd0uT9MDkaMqMaJlMhfKFHr2XIDc6hJ2FVGx/
 8IWzSPtINuL7YHfUc3WXSp8QCrVKyUS3mgZRWp/Vup7widMR5eIgAlYfoPZfZIBIKCTI
 hx84iwfXOX714CBvTjsafNahZOVCXrs8W72bBqXQ6u2W/JeZ7k1n0Nfpc5yjITBZJR3u
 LsE0JbybsVifANWGHdwEVM8WrWryZyVhf3T6aQvT0XLN/iK+YzCaJSN2s1RveziKR63K
 qCQXzhIricY6kQnwrf5ai25jUaDXZqsm/3XGXp808X4u3lUJVEzvixpJHG/ZbSpbGtga
 rk3A==
X-Gm-Message-State: AOAM531oYPuPEBA5VxULVbQaMQ/fau2UZTCO6J3P6APPhDYlnpqRxbMp
 XDycDn51TvyBVwymeGEb7NA=
X-Google-Smtp-Source: ABdhPJyXeuw1d2QUIlbDtbaneQ5+q+irrrq0cJRGJd9l8xSoUw78Y1nTihKLCprWlSBu4qdcF15ScA==
X-Received: by 2002:a2e:889a:: with SMTP id k26mr6578454lji.214.1599338658314; 
 Sat, 05 Sep 2020 13:44:18 -0700 (PDT)
Received: from rocinante ([95.155.85.46])
 by smtp.gmail.com with ESMTPSA id x11sm2709379ljh.106.2020.09.05.13.44.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Sep 2020 13:44:17 -0700 (PDT)
Date: Sat, 5 Sep 2020 22:44:16 +0200
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
Subject: Re: [PATCH] PCI: Unify ECAM constants in native PCI Express drivers
Message-ID: <20200905204416.GA83847@rocinante>
References: <20200827224938.977757-1-kw@linux.com>
 <20200828100843.0000474e@Huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200828100843.0000474e@Huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200905_164422_384911_2C171B20 
X-CRM114-Status: GOOD (  10.91  )
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>, Michal Simek <michal.simek@xilinx.com>,
 linux-rockchip@lists.infradead.org, Zhou Wang <wangzhou1@hisilicon.com>,
 Robert Richter <rrichter@marvell.com>, Jonathan Chocron <jonnyc@amazon.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Jonathan,

Thank you for the review!  Also, apologies for late reply.

On 20-08-28 10:08:43, Jonathan Cameron wrote:
[...]
> 
> Might potentially be worth tidying up the masks as well?
> Or potentially drop them given I suspect that there are no cases
> in which the mask is actually doing anything...

Just to confirm - you have the following constants in mind?

drivers/pci/controller/pcie-rockchip.h:

#define PCIE_ECAM_BUS(x)	(((x) & 0xff) << 20)
#define PCIE_ECAM_DEV(x)	(((x) & 0x1f) << 15)
#define PCIE_ECAM_FUNC(x)	(((x) & 0x7) << 12)

drivers/pci/controller/dwc/pcie-al.c:

#define PCIE_ECAM_DEVFN(x)	(((x) & 0xff) << 12)

I can move PCIE_ECAM_BUS, PCIE_ECAM_DEV and PCIE_ECAM_FUNC (as
PCIE_ECAM_FUN) to the linux/pci-ecam.h file, as these seem useful, but
without the masks, and then update other files to use these.  We could
then leverage these, for example:

 	pci_base_addr = (void __iomem *)((uintptr_t)pp->va_cfg0_base +
-					 (busnr_ecam << 20) +
-					 PCIE_ECAM_DEVFN(devfn));
+					 PCIE_ECAM_BUS(busnr_ecam) +
+					 PCIE_ECAM_FUN(devfn));

What do you think?  Bjorn, would that be acceptable?

Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
