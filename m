Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3879BC25B78
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 May 2024 11:22:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=asBKxA9zJA3Acx3iqugzve12351pZjmO9xdj0h0yTY8=; b=b/PUSIY6MYPRoP
	bbj5vAe6V2dSCQKFt/Vu1o1wui06gT1DuLYhWXckdMNviHGMwNnIrI+qrDavyQ96ka9CKhiddfNj8
	TheK0hdxby+pd8T9qUcyHf2T6rQAaJi9TvK5fuU0ltokWr1RJ9s0i8rHa4zYIFBalo7pp2cUF5rVZ
	tPhGA+wz8HvoZUaMnm5SulZeAZNH1k+vHa/1eO/MnrM5OrZYGSJDCziA+dc95hlEmehFJVRRMxHl0
	iWWi5VN5heS9N+wpILTL3IL1FZxRnOwmNGF1+66cZJf7uV9XVn3y2xo4oj+4pWpX/ZDd9ZaVXyRi/
	cQvVJjhhDv6POL9go+QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7vfj-00000007dnb-3Mmu;
	Fri, 17 May 2024 11:22:47 +0000
Received: from mail-pl1-f173.google.com ([209.85.214.173])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7vff-00000007dmE-1Qqn;
	Fri, 17 May 2024 11:22:44 +0000
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-1ec486198b6so4496975ad.1;
        Fri, 17 May 2024 04:22:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715944962; x=1716549762;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G2dvI+vZE8pCZhViJyMM66y2U5LdOWJJxNSUxl+PGww=;
        b=nMvQd15oBO9z+kk8uOLWdb0pMKeDjQndKJTFCcwZU2Djq4DBvwfQ/b1OBlv9/GUHQJ
         aa6UgUFYaeJf2xGpihG2ApTFSSvaTITCUdBmwApIbdl/XAID3NbTqycHiZmIlfNCfAum
         WVQvbSPuBYT16vpkJbbpdLGM4JtMZd84jjiInfpbcAUxA71Q7wiVKgic45is6IyNVvp/
         5szIZd8nznwgoPGDTifaZgF5q2EV6tKeGuBi7mNvvf/o04hsDzsFnOC8R6rgJYeKdpN0
         k+Sx4S5R7P+vYs/4U6UZ+9u441aFZnwwnmFIIVep8QhdpWpDnDvEMQ2djjxep2h8sqYz
         SclA==
X-Forwarded-Encrypted: i=1; AJvYcCWsXRAhLusk/iigryFMikgROR8RxeNf0FG2vr6iZngC23EGaUvfD+J05iSL1t/Cw5l0Ug6r8ZShNQWclF4EY52RVn6eVsvYCLQtrLmp4TQgOn1gZKxJb/KMkJ3oyFxkoVtFqbCypEnoUtp8yYP14UPPg9JRMDc3/HQ=
X-Gm-Message-State: AOJu0YzKFQYYNxyCGHsca6pQH/FNtBTPAf4Z93JaOWgMqNs3M3b3NfPb
	sGY6uNmESud4J5KhFBQEFJ35xruSZTR0UOEIVfRYTW5GjCzmT+jO
X-Google-Smtp-Source: AGHT+IHeIMz2gvttVbu8YvoQNX0R+DpY+pIkhaL/+tyli1VVIoZ7xusCcFeOVbaL7QVaVkzkH6ZC4g==
X-Received: by 2002:a17:903:245:b0:1e4:4ade:f504 with SMTP id d9443c01a7336-1ef44161e45mr231310545ad.46.1715944962575;
        Fri, 17 May 2024 04:22:42 -0700 (PDT)
Received: from localhost (fpd11144dd.ap.nuro.jp. [209.17.68.221])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1ef0bad9d22sm155932115ad.72.2024.05.17.04.22.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 May 2024 04:22:41 -0700 (PDT)
Date: Fri, 17 May 2024 20:22:39 +0900
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Niklas Cassel <cassel@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, Simon Xue <xxm@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Jianfeng Liu <liujianfeng1994@gmail.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	stable@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3] PCI: dw-rockchip: Fix initial PERST# GPIO value
Message-ID: <20240517112239.GU202520@rocinante>
References: <20240417164227.398901-1-cassel@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240417164227.398901-1-cassel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240517_042243_402325_BD403DFE 
X-CRM114-Status: GOOD (  14.25  )
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

Hello,

> PERST# is active low according to the PCIe specification.
> 
> However, the existing pcie-dw-rockchip.c driver does:
> gpiod_set_value(..., 0); msleep(100); gpiod_set_value(..., 1);
> When asserting + deasserting PERST#.
> 
> This is of course wrong, but because all the device trees for this
> compatible string have also incorrectly marked this GPIO as ACTIVE_HIGH:
> $ git grep -B 10 reset-gpios arch/arm64/boot/dts/rockchip/rk3568*
> $ git grep -B 10 reset-gpios arch/arm64/boot/dts/rockchip/rk3588*
> 
> The actual toggling of PERST# is correct.
> (And we cannot change it anyway, since that would break device tree
> compatibility.)
> 
> However, this driver does request the GPIO to be initialized as
> GPIOD_OUT_HIGH, which does cause a silly sequence where PERST# gets
> toggled back and forth for no good reason.
> 
> Fix this by requesting the GPIO to be initialized as GPIOD_OUT_LOW
> (which for this driver means PERST# asserted).
> 
> This will avoid an unnecessary signal change where PERST# gets deasserted
> (by devm_gpiod_get_optional()) and then gets asserted
> (by rockchip_pcie_start_link()) just a few instructions later.
> 
> Before patch, debug prints on EP side, when booting RC:
> [  845.606810] pci: PERST# asserted by host!
> [  852.483985] pci: PERST# de-asserted by host!
> [  852.503041] pci: PERST# asserted by host!
> [  852.610318] pci: PERST# de-asserted by host!
> 
> After patch, debug prints on EP side, when booting RC:
> [  125.107921] pci: PERST# asserted by host!
> [  132.111429] pci: PERST# de-asserted by host!
> 
> This extra, very short, PERST# assertion + deassertion has been reported
> to cause issues with certain WLAN controllers, e.g. RTL8822CE.

Applied to controller/rockchip, thank you!

[1/1] PCI: dw-rockchip: Fix initial PERST# GPIO value
      https://git.kernel.org/pci/pci/c/b00c483a1075

	Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
