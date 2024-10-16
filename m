Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A60ED2069D
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Oct 2024 05:33:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=niugEcahS03aJcOf4KN/AckwljLdldARhZPUkDkzAPo=; b=TGYideGoMP/3Dr
	mu+AePde9PRYVd2iXepNqlryRTwehd5bWWBuw4Kp0auO1RGTzdp1ubJcJegrCbNhYmNfUfnXfFl1K
	A+n/2wE+fsiHY4gyY4XSEcUjUCRLF2PtGaLStJK0LE0F3BQgx6GwEm0oQ31XzMe4EHo5s9mX8URrr
	IJF2xHWie/PjZ8Tzn/Ca7YOjecCyMCFjpyMOHzKUd5DSpMbuv7WnYGLFcJNYlIrKs629fwYovQrZu
	DuIjW/RCvjh5MDYgiwOzMuCkxrwYKwfFyzLY5gHQr+5Er3eD8TUycW0ihW4ZWSkhfzqCm3D/6Gpik
	tVyFsvRMktHeVzOGKbTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0wer-0000000AaPU-0EDX;
	Wed, 16 Oct 2024 05:33:17 +0000
Received: from mail-oo1-xc30.google.com ([2607:f8b0:4864:20::c30])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0wen-0000000AaO8-2h2x
	for linux-rockchip@lists.infradead.org;
	Wed, 16 Oct 2024 05:33:15 +0000
Received: by mail-oo1-xc30.google.com with SMTP id 006d021491bc7-5e7ff0f41caso271694eaf.1
        for <linux-rockchip@lists.infradead.org>; Tue, 15 Oct 2024 22:33:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729056792; x=1729661592; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=IKu2Ceh01dypLNi8C+RFdakH7X0Vw/2sggeNZzBLIs0=;
        b=Zcs33pgmhkH0yEUfwwwmfIZydcZv1YHgBVXPbsibAJGUNFaF/CwtfonQ0ROhLjUqXn
         iYnkaBghWBMtw/bid7C/etIhwzOzOjd/z6OStwhOtA8KtQQVIDW4xi0EyJNaRuom9XEk
         Ajc8Rj+Bw+dyMjFE1Hri1ak9xaxPTtOcu9/RvA1pDt1WCuFy3s06fY7ABASdgV2psWWg
         jSJwYfNajvTuw1eR6DbUePUQXuXyXNilcmIdhx2r22dBGg9zOxudpiijE/tdxSuqrUqA
         d5YLJKis0WUZQQMNMkh+nNpgPCYIjSdiRuriamqt3S0P2PtlTAYd4XmeP0kDOudD4bYm
         AwIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729056792; x=1729661592;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IKu2Ceh01dypLNi8C+RFdakH7X0Vw/2sggeNZzBLIs0=;
        b=UfQ0MN7hV+1EW+I6FKMFNvDTUfGBUiSrghyc6fOJVf/y3moabzFi3zkdEYtQ4oSUIM
         HL2NpKDnShg7Q2hdcw+bv4WIKYZGIyR2dhlH9qyXlEPy25NdeFucVjqWva7oaskUgoYe
         EVGFMic6XsFKsVC8CFGETk3SkW09D9ulaChTaAuI0S7eeFbivxI+HVhf3J+OHwvmEO8X
         zttUZfuuiE62VqQGKqpCNFA2gQDFed8zJ2eoCCygdM81qu57dRRaRsQUr1j+CEpzxrhD
         U6VPAxmj52owsT91rVwz9wisysbv+gowloKQTBJEnnSiYQ6xiyffk7cQLHoIPt7Ml03U
         x5eg==
X-Forwarded-Encrypted: i=1; AJvYcCXohL0ygs3Yk6tIAqmryuGEzJ66xR14PED/qfqEBQcv81n+1okJTDGUrIs1pFoz9H1ItK3FVj2COVpTvrwToA==@lists.infradead.org
X-Gm-Message-State: AOJu0YysXEE3DZqgPLYl71fSoxNxUnDRrSjtLz78HuOK8tgIwE732f52
	Kht2dysREt6v3cc8F83nD88eR+J2wdwkVQRB5Ll7dO9yPIOVzbew1EIlMcm9PzjQIS3iHNNf5t/
	6NMsvRBh00N7kgv9uhCaXyJJ4Kd0=
X-Google-Smtp-Source: AGHT+IEkQZzBHJtJxHZQGIJvL8lvgTVMwWVTuhLd+8QASyj6hAnhXQVhUnLzaKD51ziHx2eIZC/S2XUZWWBzWkxDaUQ=
X-Received: by 2002:a05:6870:1705:b0:259:8858:a330 with SMTP id
 586e51a60fabf-2886d88a53dmr9215880fac.22.1729056791853; Tue, 15 Oct 2024
 22:33:11 -0700 (PDT)
MIME-Version: 1.0
References: <20241011121408.89890-1-dlemoal@kernel.org>
In-Reply-To: <20241011121408.89890-1-dlemoal@kernel.org>
From: Anand Moon <linux.amoon@gmail.com>
Date: Wed, 16 Oct 2024 11:02:55 +0530
Message-ID: <CANAwSgQ+YmSTqJs3-53nmpmCRKuqfRysT37uHQNGibw5FZhRvg@mail.gmail.com>
Subject: Re: [PATCH v4 00/12] Fix and improve the Rockchip endpoint driver
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Shawn Lin <shawn.lin@rock-chips.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, 
	Rick Wertenbroek <rick.wertenbroek@gmail.com>, Niklas Cassel <cassel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_223313_705892_2C3CD36D 
X-CRM114-Status: GOOD (  23.20  )
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

Hi Damien,

On Fri, 11 Oct 2024 at 17:55, Damien Le Moal <dlemoal@kernel.org> wrote:
>
> This patch series fix the PCI address mapping handling of the Rockchip
> endpoint driver, refactor some of its code, improves link training and
> adds handling of the #PERST signal.
>
> This series is organized as follows:
>  - Patch 1 fixes the rockchip ATU programming
>  - Patch 2, 3 and 4 introduce small code improvments
>  - Patch 5 implements the .get_mem_map() operation to make the RK3399
>    endpoint controller driver fully functional with the new
>    pci_epc_mem_map() function
>  - Patch 6, 7, 8 and 9 refactor the driver code to make it more readable
>  - Patch 10 introduces the .stop() endpoint controller operation to
>    correctly disable the endpopint controller after use
>  - Patch 11 improves link training
>  - Patch 12 implements handling of the #PERST signal
>
> This patch series depends on the PCI endpoint core patches from the
> V5 series "Improve PCI memory mapping API". The patches were tested
> using a Pine Rockpro64 board used as an endpoint with the test endpoint
> function driver and a prototype nvme endpoint function driver.

Can we test this feature on Radxa Rock PI 4b hardware with an external
nvme card?

Thanks
-Anand

>
> Changes from v3:
>  - Addressed Mani's comments (see mailing list for details).
>  - Removed old patch 11 (dt-binding changes) and instead use in patch 12
>    the already defined reset_gpios property.
>  - Added patch 6
>  - Added review tags
>
> Changes from v2:
>  - Split the patch series
>  - Corrected patch 11 to add the missing "maxItem"
>
> Changes from v1:
>  - Changed pci_epc_check_func() to pci_epc_function_is_valid() in patch
>    1.
>  - Removed patch "PCI: endpoint: Improve pci_epc_mem_alloc_addr()"
>    (former patch 2 of v1)
>  - Various typos cleanups all over. Also fixed some blank space
>    indentation.
>  - Added review tags
>
> Damien Le Moal (12):
>   PCI: rockchip-ep: Fix address translation unit programming
>   PCI: rockchip-ep: Use a macro to define EP controller .align feature
>   PCI: rockchip-ep: Improve rockchip_pcie_ep_unmap_addr()
>   PCI: rockchip-ep: Improve rockchip_pcie_ep_map_addr()
>   PCI: rockchip-ep: Implement the pci_epc_ops::get_mem_map() operation
>   PCI: rockchip-ep: Rename rockchip_pcie_parse_ep_dt()
>   PCI: rockchip-ep: Refactor rockchip_pcie_ep_probe() memory allocations
>   PCI: rockchip-ep: Refactor rockchip_pcie_ep_probe() MSI-X hiding
>   PCI: rockchip-ep: Refactor endpoint link training enable
>   PCI: rockship-ep: Implement the pci_epc_ops::stop_link() operation
>   PCI: rockchip-ep: Improve link training
>   PCI: rockchip-ep: Handle PERST# signal in endpoint mode
>
>  drivers/pci/controller/pcie-rockchip-ep.c   | 408 ++++++++++++++++----
>  drivers/pci/controller/pcie-rockchip-host.c |   4 +-
>  drivers/pci/controller/pcie-rockchip.c      |  21 +-
>  drivers/pci/controller/pcie-rockchip.h      |  24 +-
>  4 files changed, 370 insertions(+), 87 deletions(-)
>
> --
> 2.47.0
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
