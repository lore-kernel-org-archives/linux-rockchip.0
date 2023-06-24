Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FC33EB64DA
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Jun 2023 14:20:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Krroo8SDLI7eM5Uyxk8c3sAAlPY8ZDbjZDNIQ2VoQkw=; b=p5Ykxq+ajkIXbV
	RMKbQPbSwpcJ6DQWJ6coJxyyl+rGj6JD+HF+ZKTGyo95iitPy48kIjE2HqfCUf8ysp0v8gx5G1Uzy
	VgkNSvHl2+qqDBv52MChoLXrQhk5CwXSnEEwU9LSiAA3I/P754c29c8K5m8UQVy9G9U3xXkE/Asb6
	Vfzi1lGBUaK+a8xGfWK/dyxqso7QqWIsTZRYDFtK7/Av820riMZ7f8KI6szB3W/NSKZvIIEnbtd7k
	DMQnu79ElbbxCW1CWWF98m+mo3LTGvjacLDwnQ3EKNXK12HH4SlwPGwjdfvY7EORjuA8X7hrlf/4f
	3bmXDrFWqF+wSaZiyPJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qD47M-00665x-1k;
	Sat, 24 Jun 2023 14:20:00 +0000
Received: from mail-pg1-f171.google.com ([209.85.215.171])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qD47H-00664w-2e;
	Sat, 24 Jun 2023 14:19:57 +0000
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-53fbf2c42bfso1396326a12.3;
        Sat, 24 Jun 2023 07:19:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687616394; x=1690208394;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4Lt8rVZcLBBLvWmzWUEEsEG7voRn3Ez10TeZpg/RjPk=;
        b=h/i3alZKneQ0EAXMV2x0YaLQiK8G6pzIXZoaTYp1Lc/x94le9OQQEM9FdnE8Bo2tQW
         xme+/DXSQWw243IiP3WRlEJ/Cy67rZFCYj89NCCmsNjzyvvvPqLnitWYne7gKs5IyuZc
         1ma6hfXodx5tVew5Urxa3DwgEaVp6KBqBr1Brcfi7nWkuoRh94DEaoPDbLqJe/XsMT3B
         WSN9WNhAGDHbGKqqnjpLp1M3JfbUB1OgkxtYcSOf1Xceuwj4N58C+uhloc47hkCWYW3m
         B/t344+KUC0mggXxZsIVB+rcTn5CJ0rX8EFdw3heHrdNv4BbE7xxs/pCRPF7w/IvjdLE
         iNQw==
X-Gm-Message-State: AC+VfDx9rVTfSgKpl0XaNiiwNAkOtY7HOQF6uSvTCabkAE4v0K5sMO+W
	1i9X13sC+8hAQ5tFWs9acuc=
X-Google-Smtp-Source: ACHHUZ7V4ur+WjVdxiJp9SMnFICVdY4GzXniERNA4mlZ5oQMqFI4aBU4506d4ioclwCaJARbESzQrw==
X-Received: by 2002:a17:902:c44c:b0:1b0:2d08:eb51 with SMTP id m12-20020a170902c44c00b001b02d08eb51mr1857911plm.12.1687616394388;
        Sat, 24 Jun 2023 07:19:54 -0700 (PDT)
Received: from localhost (fpd11144dd.ap.nuro.jp. [209.17.68.221])
        by smtp.gmail.com with ESMTPSA id bg6-20020a1709028e8600b001b3d0aff88fsm1296336plb.109.2023.06.24.07.19.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Jun 2023 07:19:53 -0700 (PDT)
Date: Sat, 24 Jun 2023 23:19:52 +0900
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Joyce Ooi <joyce.ooi@intel.com>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Jim Quinlan <jim2101024@gmail.com>,
	Nicolas Saenz Julienne <nsaenz@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tom Joseph <tjoseph@cadence.com>, Shawn Guo <shawn.guo@linaro.org>,
	Rahul Tanwar <rtanwar@maxlinear.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Serge Semin <Sergey.Semin@baikalelectronics.ru>,
	Vidya Sagar <vidyas@nvidia.com>, Jisheng Zhang <jszhang@kernel.org>,
	Miaoqian Lin <linmq006@gmail.com>, Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Ryder Lee <ryder.lee@mediatek.com>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Sergio Paracuellos <sergio.paracuellos@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Toan Le <toan@os.amperecomputing.com>,
	Rob Herring <robh@kernel.org>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	linux-rpi-kernel@lists.infradead.org, linux-omap@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-tegra@vger.kernel.org,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-mediatek@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 00/15] PCI: Convert to platform remove callback returning
 void
Message-ID: <20230624141952.GB2636347@rocinante>
References: <20230321193208.366561-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230321193208.366561-1-u.kleine-koenig@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230624_071955_877190_2E286AFF 
X-CRM114-Status: GOOD (  14.95  )
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

> this series adapts the platform drivers below drivers/pci to use the
> .remove_new() callback. Compared to the traditional .remove() callback
> .remove_new() returns no value. This is a good thing because the driver core
> doesn't (and cannot) cope for errors during remove. The only effect of a
> non-zero return value in .remove() is that the driver core emits a warning. The
> device is removed anyhow and an early return from .remove() usually yields a
> resource leak.
> 
> By changing the remove callback to return void driver authors cannot
> reasonably assume any more that there is some kind of cleanup later.
> 
> All drivers were easy to convert as they all returned zero in their
> remove callback. Only for iproc the conversion wasn't trivial, the other
> were converted using coccinelle.
> 
> There are no interdependencies between these patches. So even if there
> are some concerns for individual patches, I ask you to apply the
> remaining set. Then I only have to care for the review feedback of the
> refused patches. (Having said that I don't expect any serious objection,
> just things like squashing or separating patches, or maybe I picked a
> wrong subject prefix.)

Applied to controller/remove-void-callbacks, thank you!

[01/15] PCI: aardvark: Convert to platform remove callback returning void
        https://git.kernel.org/pci/pci/c/b11c76db97e7
[02/15] PCI: altera: Convert to platform remove callback returning void
        https://git.kernel.org/pci/pci/c/3a610560aa4f
[03/15] PCI: altera-msi: Convert to platform remove callback returning void
        https://git.kernel.org/pci/pci/c/60d03f70455c
[04/15] PCI: brcmstb: Convert to platform remove callback returning void
        https://git.kernel.org/pci/pci/c/b169c576ad0c
[05/15] PCI: j721e: Convert to platform remove callback returning void
        https://git.kernel.org/pci/pci/c/c86f4bd6008e
[06/15] PCI: dwc: Convert to platform remove callback returning void
        https://git.kernel.org/pci/pci/c/221879c98698
[07/15] PCI: hisi-error: Convert to platform remove callback returning void
        https://git.kernel.org/pci/pci/c/9a285fbbb591
[08/15] PCI: iproc: Convert to platform remove callback returning void
        https://git.kernel.org/pci/pci/c/6f1c0a046048
[09/15] PCI: mediatek: Convert to platform remove callback returning void
        https://git.kernel.org/pci/pci/c/5e0005409427
[10/15] PCI: mediatek-gen3: Convert to platform remove callback returning void
        https://git.kernel.org/pci/pci/c/22626c46bb32
[11/15] PCI: mt7621: Convert to platform remove callback returning void
        https://git.kernel.org/pci/pci/c/8c47ac2a66c4
[12/15] PCI: mvebu: Convert to platform remove callback returning void
        https://git.kernel.org/pci/pci/c/4c3bc1b41b8f
[13/15] PCI: rockchip-host: Convert to platform remove callback returning void
        https://git.kernel.org/pci/pci/c/2998efcd8e73
[14/15] PCI: tegra: Convert to platform remove callback returning void
        https://git.kernel.org/pci/pci/c/c7fd95cda648
[15/15] PCI: xgene-msi: Convert to platform remove callback returning void
        https://git.kernel.org/pci/pci/c/afbb9130d2bf

	Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
