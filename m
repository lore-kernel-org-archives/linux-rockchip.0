Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41B88E65263
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Feb 2026 13:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vQvH6QKTMdTlYY7+CP6S/O2RwIOMEOnjtToCoPJCm60=; b=KjBirMolLgc8y3
	/PT6VJVdYd8McKaPIRyXXKYnAcYx9JHihxMkOweSvgKm5xZJvmONdAkzfzzKSJivPjOV662SUmxWE
	+Ls70wYgulwDP5adjRk79TqOq9Rvr1XlzM9vVd75w0/yxmCiaTuFvCz1gLOv5tBqBEl3EmABfvAF+
	6pgkCJd4iWO4IUIKs3zUSrinsJpxGdLNXcPpJ3pwUUxINBQ0yeFwslHlILF0GK8KB1XcUrn2YFviN
	eLqgro41r4AvNcJuU4vZ/1+UBA+KclHsuTsBxeIuSMKB8TU8f9wLkYCsTUyQ6+H8JJASjQS6qKPjd
	dp9EGk0W01rJm/Pz7ajA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmXbi-00000003tCM-0S1h;
	Sun, 01 Feb 2026 13:35:18 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmXI1-00000003eQb-3AAp
	for linux-rockchip@lists.infradead.org;
	Sun, 01 Feb 2026 13:14:58 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-2a09d981507so25815695ad.1
        for <linux-rockchip@lists.infradead.org>; Sun, 01 Feb 2026 05:14:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769951696; x=1770556496; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LQFUULeH+fy8L9eOXKB3k7qBdbSqID9Bg3DoUQYdSfE=;
        b=ZdwK6/Y9JkNUC4Ia8J7xln0kpgdpRu3w0hWA+tosFlkG+SD1LJi5GrBqTXLZ9abobG
         MkAH0CvucxvtzNjQqcP6RAKcGr1KwTXOihB5FL+MoBqp+Nl3wI/Gjmo/DHTD3aY43fYZ
         8Y87v0MVkbQFKdSlQ5ognxIp9AL2f04ZqRy0uVi1SmAfuIXPzxCjSysV9w5WSO5AyIb+
         NLWfS/dmhkHqSnmrwf/RYUBUdJw8pbLN5MG79t/NqmVMTYseQKXu6HYpEob7gr1/pvg4
         NOKXvsKnyNxjGz7PKMEqV2eV1GbPO8V0wqLAvLXavTlJUVueKtQX2+CFl0yuUkBp2jpu
         U3NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769951696; x=1770556496;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LQFUULeH+fy8L9eOXKB3k7qBdbSqID9Bg3DoUQYdSfE=;
        b=AtArcAmd+PrsxbngM80yfQlYue4GNdO6MSE+qxA1TqrMIcNE+4K94tJqNCypjejonM
         jhRcQLmIa+b1A9bdSysx6udrP3OsI31WhWw/48GPJ66+BiM7ufRck+AInyilMOvzVfbq
         qriF4wjJRBeWRd9sCCKicA3JERp9egZAC5S6ut80zYmEEVPEZfi9FUnLDBvN7f3/agd8
         y0Xo71GDt/3Fqk3DVG77kTx+IzbC5IN10aqdlVq+Ul3ZrJoqnyBj0wv/VC+9Su5ClUEX
         duMRZBI8eV/T+GzXczg19/U5QHgJJVgSX0xlQts5ZIvO0DumO/OvxJqshQ7Pco6pq14A
         jvmw==
X-Forwarded-Encrypted: i=1; AJvYcCUXwBnSOKs1OXtTSQe5NzdJ0hRNSxTLwB2GxpFWooeU+67+sV1FM9VMUZLoTubFwUN1oabIrhIbGeWeVvBJmg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxCCsRlnvuCfycETR/OAvGO/dZCecjhh7jC0dFOw5OLh25TbWGK
	0TOrjTIIwTY1KlZeeM2gOvAkJJdH6WLPi46zaMbCmRlq0TIfq60Icgqz
X-Gm-Gg: AZuq6aK+nepj4cm/iL89/w2yy800Nwy8zXzjh0nEHVc8J8CgMiv9RsLPUfxvyXiabpt
	CNsLsQ52vqSa0JUdyRk1eBwobLAP/nIHM+z/8EYDzY7vfPF+09JZwd72Fe+72uxwGnaswP1udy8
	p46G8ZETLIkVjOB0rIKzDOgYAumkQArZCG7Ug8KgVF5UJh3XR1yyBffpStdAUIQdEM27u1R8sWB
	qArUGrhu3UDZuvLB04ZtE1Ra2oHZjTBgDJlAX+pM79eChZZ746eWKR5f8dE9Gb2YzMsXVZu6Yye
	fwx4nMvAfbQdaM0vMXU1xfh8dQWHFnjVYKXobZNNWUQA32VPBAyeNAUXlAyd7iQQDLnT3O4eGv3
	M21CjnfS62IcVIHwgR0/72Uu8GkqEPcY2E+s467n8H+v9L4K4FrPaW02MF2B31JpT7QCtEro7zx
	G0Zlx+ycu8fQNRuGpmOHw=
X-Received: by 2002:a17:903:380b:b0:29f:1b1f:784 with SMTP id d9443c01a7336-2a8bd3ebfeemr131616705ad.4.1769951696423;
        Sun, 01 Feb 2026 05:14:56 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a52:d2b1::1004])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379b1d024sm13343816b3a.12.2026.02.01.05.14.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Feb 2026 05:14:56 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: dsimic@manjaro.org
Cc: alchark@gmail.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	jerrysteve1101@gmail.com,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add OneThing Edge Cube series
Date: Sun,  1 Feb 2026 21:14:51 +0800
Message-ID: <20260201131451.65452-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <d2005c66-536c-8c0c-658a-fb6ed7b5f3c6@manjaro.org>
References: <d2005c66-536c-8c0c-658a-fb6ed7b5f3c6@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260201_051457_804471_E7115B1D 
X-CRM114-Status: GOOD (  26.22  )
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

> Hello Jun,
> 
> Please, see a quick remark below, for now.
> 
> On Saturday, January 31, 2026 16:31 CET, Jun Yan <jerrysteve1101@gmail.com> wrote:
> > The OneThing Edge Cube (OEC) series features the RK3566 SoC, 8GB
> > eMMC storage, and supports one SATA interface, one Gigabit Ethernet
> > port, and one USB 3.0 port.
> > 
> > Other than the difference in RAM capacity, the OEC and OEC-turbo are
> > identical in all other specifications.
> > 
> >   Specification:
> >     - Rockchip RK3566
> >     - LPDDR4X 2GB (OEC) / 4GB (OEC-turbo)
> >     - eMMC 8GB
> >     - Gigabit Ethernet port x 1
> >     - USB 3.0 port x 1
> >     - USB-C 2.0 port x 1
> >     - 12V DC Power supply
> >     - SATA 3.0 connector x 1
> > 
> > Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/Makefile         |   2 +
> >  .../rockchip/rk3566-onething-oec-turbo.dts    |  10 +
> >  .../boot/dts/rockchip/rk3566-onething-oec.dts |  10 +
> >  .../dts/rockchip/rk3566-onething-oec.dtsi     | 309 ++++++++++++++++++
> >  4 files changed, 331 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-onething-oec-turbo.dts
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-onething-oec.dts
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-onething-oec.dtsi
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> > index 4d384f153c13..ec57719e4573 100644
> > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > @@ -104,6 +104,8 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353v.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353vs.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg503.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-odroid-m1s.dtb
> > +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-onething-oec.dtb
> > +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-onething-oec-turbo.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-orangepi-3b-v1.1.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-orangepi-3b-v2.1.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.1.dtb
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-onething-oec-turbo.dts b/arch/arm64/boot/dts/rockchip/rk3566-onething-oec-turbo.dts
> > new file mode 100644
> > index 000000000000..16d0cd0cf577
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-onething-oec-turbo.dts
> > @@ -0,0 +1,10 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +
> > +/dts-v1/;
> > +
> > +#include "rk3566-onething-oec.dtsi"
> > +
> > +/ {
> > +	model = "OneThing OEC-turbo";
> > +	compatible = "onething,oec-turbo", "rockchip,rk3566";
> > +};
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-onething-oec.dts b/arch/arm64/boot/dts/rockchip/rk3566-onething-oec.dts
> > new file mode 100644
> > index 000000000000..81da771ad63d
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-onething-oec.dts
> > @@ -0,0 +1,10 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +
> > +/dts-v1/;
> > +
> > +#include "rk3566-onething-oec.dtsi"
> > +
> > +/ {
> > +	model = "OneThing OEC";
> > +	compatible = "onething,oec", "rockchip,rk3566";
> > +};
> 
> The only difference between the two OneThing OEC board variants is, as
> far as I can tell, the amount of LPDDR4X DRAM they have, so I don't think
> it's justified to have two separate board dts files that descend from the
> common dtsi ancestor.
> 
> Having different amounts of DRAM on the same board design is present on
> virtually all boards from other manufacturers, and some kind of special
> DT treatment is needed only in some special cases, such as when different
> types of DRAM are used for different capacities.
> 
> The different naming of the two board variants could be solved by having
> something like this is the single board dts file:
> 
>   model = "OneThing OEC/OEC-turbo";

I agree with your suggestion and will implement it in the V3 patch set. 
Thanks for your valuable feedback!

> Having two separate board dts files only makes it harder down the road,
> such as having to build and provide two separate U-Boot builds, with no
> real benefits.  Every user can run free(1) to check the amount of available
> DRAM on their board, which also tells them the board variant.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
