Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 882E0CEBF93
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Nov 2025 08:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QXrq4YeKCvO2ghmyQorX2pMCjHxQSMzT49Us5SG4ibA=; b=Zz5hSKvGI6ItFA
	s6jJs10MYJEODAsQgl8+to71sde0t3+8dNHbqzygQ/bmpZaU5qzrVuSthmPgaUtd4fjRGvVvANWgY
	fYXQXGzxDACgf6RtRIq5qQySXLMSyxqGGSByFrqZFfu7vrqs8Um9UPNWFpO7DrU0Cb58h9cznj8zI
	YnDWJvTpg7SjvnFIWHO0fEkyOjRlILNQH5GnRg52BoAW7oAtgmf5N1/LZa6pusYSU0wSslG81/rdW
	+m0/ZMAj1oJorxlvq3Z7niPr9GxcpWC/XqZVPBvrrByle5ari9/LE7vcIS03iLPuzdAXgZQ4W1Hfo
	Eldj4dKCAlLzWRlV8+rQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLHLt-000000004mH-2VCH;
	Tue, 18 Nov 2025 08:46:17 +0000
Received: from mail1.manjaro.org ([142.132.176.110])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLFTQ-0000000HVdp-1IPR;
	Tue, 18 Nov 2025 06:45:58 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 714004103E;
	Tue, 18 Nov 2025 07:45:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763448350; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=oza7QOE7STENTsJELxhbxHGoxqd5ZR6iMq7QEFYudIk=;
	b=li9ou6xrplD4MYbzDfkTc1D7NTfJU2VUnP4HVmRY9YIr05y8/wiiH+UWnmjQywITY3UrrD
	i90LEN67mmU7jeDZeMqnDA6fo/5ejlzI8RPO6cmxn+JLcZAE5I86t+poXikES4Ccxh+E+p
	+3yQVS+vkClHN2T6s2Xh1mpe64KIsBM+ZEU+eYHJtrVw11OVX/IokCW2kNK3DGIWd5QFIB
	mGeG/C+oEYFyTNahUOol0r2k8GTPVRNmzMQGRMHhx789UuvC16teo+la/AReO+yfXTMWNv
	HPXtqeMaJI92lm9gq/nFI9dZ3q71ESg5X8RMpC4KMuWF+Z7rx7RvEjVlZo5M0g==
From: "Dragan Simic" <dsimic@manjaro.org>
Date: Tue, 18 Nov 2025 07:45:45 +0100
Cc: "Shawn Lin" <shawn.lin@rock-chips.com>, "Lorenzo Pieralisi" <lpieralisi@kernel.org>, =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, "Manivannan Sadhasivam" <mani@kernel.org>, "Rob Herring" <robh@kernel.org>, "Bjorn Helgaas" <bhelgaas@google.com>, "Heiko Stuebner" <heiko@sntech.de>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Johan Jonker" <jbx6244@gmail.com>, linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
To: "Geraldo Nascimento" <geraldogabriel@gmail.com>
MIME-Version: 1.0
Message-ID: <e5d5c0dc-81d6-ae0e-7552-c2e4fb39bb0a@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v2 0/4] =?utf-8?q?PCI=3A?==?utf-8?q?_rockchip=3A?=
 =?utf-8?q?_5=2E0?= GT/s speed may be dangerous
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_224556_606278_428CC7E4 
X-CRM114-Status: GOOD (  14.29  )
X-Mailman-Approved-At: Tue, 18 Nov 2025 00:46:11 -0800
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

Hello Geraldo,

Thanks a lot for the v2!  Please, see some comments below.

On Monday, November 17, 2025 22:46 CET, Geraldo Nascimento <geraldogabriel@gmail.com> wrote:
> Dragan Simic already had warned me of potential issues with 5.0 GT/s
> speed operation in Rockchip PCIe. However, in recent interactions
> with Shawn Lin from Rockchip it came to my attention there's grave
> danger in the unknown errata regarding 5.0 GT/s operational speed
> of their PCIe core. Even if the odds are low, to contain any damage,
> let's cover the remaining corner-cases where the default would lead
> to 5.0 GT/s operation as well as add a comment to Root Complex driver
> core, documenting this danger. Furthermore, remove redundant
> declaration of max-link-speed from rk3399-nanopi-r4s.dtsi
> 
> Signed-off-by: Geraldo Nascimento <geraldogabriel@gmail.com>

As a note, Signed-off-by tags are redundant in cover letters, because
there's no source code in them that can actually be signed off.

> Changes in v2:
> - hard limit to 2.5 GT/s, not just warn
> - add Reported-by: and Reviewed-by: Dragan Simic
> - remove redundant declaration of max-link-speed from helios64 dts
> - fix Link: of helios64 patch
> - simplify RC mode comment
> - Link to v1: https://lore.kernel.org/all/aRhR79u5BPtRRFw3@geday/

Technically, you shouldn't have included my Reviewed-by tags in some
of the patches in the v2 of this series, because the patches were
either modified significantly since I gave my Reviewed-by for them
in the v1, or they were actually introduced in the v2.

However, I checked all four patches in the v2 again and everything
is still fine, so just to make sure, please feel free to include for
the entire series:

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> Geraldo Nascimento (4):
>   PCI: rockchip: limit RK3399 to 2.5 GT/s to prevent damage
>   PCI: rockchip-host: comment danger of 5.0 GT/s speed
>   arm64: dts: rockchip: remove dangerous max-link-speed from helios64
>   arm64: dts: rockchip: remove redundant max-link-speed from nanopi-r4s
> 
>  arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts |  1 -
>  arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtsi    |  1 -
>  drivers/pci/controller/pcie-rockchip-host.c            |  3 +++
>  drivers/pci/controller/pcie-rockchip.c                 | 10 ++++++++--
>  4 files changed, 11 insertions(+), 4 deletions(-)



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
