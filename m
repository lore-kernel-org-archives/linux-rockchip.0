Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78C98C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 May 2022 21:11:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kDD5O+mXFd5S5LG1ZEa3WvQC72WgZSnOzeJYfL8KZsk=; b=fD36jcDSKrV/1k
	RydDVLu480+BZOfW/Qfj9Ie5NJvMG6KJ9qdlbBNo0pUdnXn14WMV4FqQ2Hl25cAIM1yMYghSWvPak
	QEPMhEmMdr4A3sa50u3gFu40jY8wxiQBTwA0xIe65KMS3z5robI+z1xX0sRnAvlWVYiqu8g11pWBj
	uOBohvBvmRVeZGfN8JFBepZJXBgwXguQICqiLklzQlHPi7dqMcZihSbYtCu0i2+rekaLjGH/9ytHh
	8Zb8a+1UMAEnqQQQEuxIK6U9xjdKFCu5EjbpGRhQ3OLAlfSkJC1yK6HVaLqzfBFH4Wyq5LlmxZBjK
	FJyhKhQPPIGF2O3jfDsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1noX8s-0043rM-Ac; Tue, 10 May 2022 21:11:38 +0000
Received: from mail-yb1-xb32.google.com ([2607:f8b0:4864:20::b32])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1noX8p-0043qe-H9; Tue, 10 May 2022 21:11:36 +0000
Received: by mail-yb1-xb32.google.com with SMTP id e12so195048ybc.11;
 Tue, 10 May 2022 14:11:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ufJz6aadSD6Cn7bOf+6vc8OgcxLYzosePvAp35V0Ho8=;
 b=gvEbdT5lvyZ/rgG0n844WSYG4+ic6WrpFIFnAbQYna20ynqnDf7dUKDaySq7BbXAan
 j7A6qX5KG5z6l13rt7MKCjKBNARdYGEFnBzKVSft6v63wrvYGdODY8N/SdrjHzBP3067
 S5exFJcDqhMeUMICNlu9bLtio1euV37oH7GPmI6WZjtfV7/USw+APrflF9q4Nzy07m20
 d5NmyXPFH4KE/4O9Y8AcRVe0LHdpk1jQcFXDtjnt/FG1y81475YkMZHkPOHUIKplzzo5
 krUutdnfhze9nZfYZ9gte/h20k7ytTUwFYau5z+jCjyK8tAUnheL4p75fXoBrEVgtr22
 x8pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ufJz6aadSD6Cn7bOf+6vc8OgcxLYzosePvAp35V0Ho8=;
 b=Z3jT2Z7Z4/FzdMVfb2XXKASU9WWrQHIMtQCuyOLsEtf6qjVeZOEShvBjGqjkfOv+p4
 huXoNWCzSshqrcOHGi+ac4p5qld8TLiPRXXH6RYpD18iNM9YUpZ9HMH+UQSog5UQcIOu
 0EX9HusScnPk/eR4OYcrVJJKkq5MEmGgz3uKVRUyYJMAtLJgxt5Orx02JxjQBf+t7Jrf
 emjKIJDkXurA3FiakheVBP9o0ROZ4KH74f1M8mkKc2rkK9AusS4anu2hrPzJRtC3HT48
 vY/M4NxfeSA9Ge012m1S9Yc9grrOe1O2rUtaYY7l6VJSRSsl9jnQwT9CPBBKAl0SmGRQ
 tedg==
X-Gm-Message-State: AOAM531o1SoR3o51SUsEwabYorm2eFveXe25yoWA31yTaJcu2FS6ekD3
 DM2RQdOS+0TfcZ2sHsFUNMPG4xj3MliHehquZ7J/6XIf
X-Google-Smtp-Source: ABdhPJzIvAovezZHnpVBEWWtPUXpgZsqqpyeKDzhMu/TUJPhbFbJizZF888IenlZeAIEtlG9TCW3MUh9VWyBqwDkreQ=
X-Received: by 2002:a5b:64c:0:b0:64a:684a:2369 with SMTP id
 o12-20020a5b064c000000b0064a684a2369mr20362900ybq.173.1652217090749; Tue, 10
 May 2022 14:11:30 -0700 (PDT)
MIME-Version: 1.0
References: <20220429123832.2376381-1-pgwipeout@gmail.com>
In-Reply-To: <20220429123832.2376381-1-pgwipeout@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Tue, 10 May 2022 17:11:18 -0400
Message-ID: <CAMdYzYrzq5C61T2NYmHr0g_P7Mm25TUfaDV3iz2LkV8-jpV4kA@mail.gmail.com>
Subject: Re: [PATCH v9 0/5] Enable rk356x PCIe controller
To: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: Heiko Stuebner <heiko@sntech.de>, Marc Zyngier <maz@kernel.org>,
 PCI <linux-pci@vger.kernel.org>, devicetree <devicetree@vger.kernel.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220510_141135_625051_3D1371C5 
X-CRM114-Status: GOOD (  23.20  )
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

On Fri, Apr 29, 2022 at 8:38 AM Peter Geis <pgwipeout@gmail.com> wrote:
>
> This series enables the DesignWare based PCIe controller on the rk356x
> series of chips. We drop the fallback to the core driver due to
> compatibility issues. We reset the PCIe controller at driver probe to
> prevent issues in the future when firmware / kexec leaves the controller
> in an unknown state. We add support for legacy interrupts for cards that
> lack MSI support (which is partially broken currently). We then add the
> device tree nodes to enable PCIe on the Quartz64 Model A.

Good Evening,

Just a gentle ping to see if there's anything outstanding here.

Very Respectfully,
Peter Geis

>
> Patch 1 drops the snps,dw,pcie fallback from the dt-binding
> Patch 2 resets the PCIe controller to prevent configuration bugs
> Patch 3 adds legacy interrupt support to the driver
> Patch 4 adds the device tree binding to the rk356x.dtsi
> Patch 5 enables the PCIe controller on the Quartz64-A
>
> Changelog:
> v9:
> - move reset_control_assert out of rockchip_pcie_resource_get
> - fix various formatting mistakes
> - fix a checkpatch warning
>
> v8:
> - add core reset patch
> - simplify IRQ enable/disable functions
> - drop spinlock
> - only enable/disable IRQ requested
> - only pass the IRQ register bits used to irq functions
>
> v7:
> - drop assigned-clocks
>
> v6:
> - fix a ranges issue
> - point to GIC instead of ITS
>
> v5:
> - fix incorrect series (apologies for the v4 spam)
>
> v4:
> - drop the ITS modification, poor compatibility is better than
>   completely broken
>
> v3:
> - drop select node from dt-binding
> - convert to for_each_set_bit
> - convert to generic_handle_domain_irq
> - drop unncessary dev_err
> - reorder irq_chip items
> - change to level_irq
> - install the handler after initializing the domain
>
> v2:
> - Define PCIE_CLIENT_INTR_STATUS_LEGACY
> - Fix PCIE_LEGACY_INT_ENABLE to only enable the RC interrupts
> - Add legacy interrupt enable/disable support
>
>
> Peter Geis (5):
>   dt-bindings: PCI: Remove fallback from Rockchip DesignWare binding
>   PCI: rockchip-dwc: Reset core at driver probe
>   PCI: rockchip-dwc: Add legacy interrupt support
>   arm64: dts: rockchip: Add rk3568 PCIe2x1 controller
>   arm64: dts: rockchip: Enable PCIe controller on quartz64-a
>
>  .../bindings/pci/rockchip-dw-pcie.yaml        |  12 +-
>  .../boot/dts/rockchip/rk3566-quartz64-a.dts   |  34 +++++
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  52 ++++++++
>  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 119 +++++++++++++++---
>  4 files changed, 191 insertions(+), 26 deletions(-)
>
> --
> 2.25.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
