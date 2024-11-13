Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B299D637BD
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Nov 2024 20:49:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VMptd+WE8TxDIF2nlhbb2qN68uDMLZeVjmHJOL0mYKY=; b=mnvfEZgGq20NWC
	hThsrKYIczYigyaKu6fRxtMfoFgrL90hpIYIRZ2ulKkWOj6+1UT2VYamdjWlm7d4c7FKWX6KvLfC+
	lOcPqm3Cw5lMCNnu7j2VPZGxRPy7fvlQj7T8weLcBJmEnr7VW2gbRO6ClM6CQ5QkhsWyKT0TvmWOb
	a2sP6ZQ3dlFoh720MpbeKP50k8xgAhTxK7IsLErwzg+glC7Q9e3VFaXewhOaKZ9+WKG4XARXV2Nb9
	A7heC9AD46as28ISHvHiBEgGHxkfCrRTm2zGrOmaTenpG1nfwUYBJo9+RCHe5ENuh/qcWXW97Xtk3
	UzxQbZUDI3S1lH5oxTEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBKIj-0000000801d-3OlV;
	Wed, 13 Nov 2024 20:49:21 +0000
Received: from mail-pl1-f174.google.com ([209.85.214.174])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBKIg-0000000800n-3x09
	for linux-rockchip@lists.infradead.org;
	Wed, 13 Nov 2024 20:49:20 +0000
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-20cbca51687so73555375ad.1
        for <linux-rockchip@lists.infradead.org>; Wed, 13 Nov 2024 12:49:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731530956; x=1732135756;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wqNOaupW4D7Pl4LWUGNngmSlFCvL3mz4QGohqjhdbv4=;
        b=weB1GP8winuIO0JIdsGkV544gd8/C5jHsRTQkNtNoLB4GGcj+wiH1k6gxQcthRKB3r
         v1K4WtQ2sw5W758lyiO/FkzLgSC3MOKDpDbDeeYwaxGNWTjweTvY5qc5ttPFcq9oP6yf
         k6ENPqBspW5+LRE7CW+UHhJleKUc6uaaUElkkecie13zBbM+u0AfIWuj3IYVg1e2E5Ij
         x9EMkkN79lTGytLmxJx+GU8sPcxlQepGjRqxMNf43tk6muwYRCSP8mbxxZlWXT1WYWQk
         q2OC+D6xDjwiIu4SMJE5/l0zKWXI/TBZcV16/tdjH6VQQQ+q340A7nxBfoTzNdVG0T80
         WBPw==
X-Forwarded-Encrypted: i=1; AJvYcCWxo2RXigQqi3VrU7mzwIe/3BASgo78OE4fcSemENGieES9NCty5DkGEGJMuxF2QTXRq+wwwgJ07W+3DNtTag==@lists.infradead.org
X-Gm-Message-State: AOJu0YyfAGG9HIucDiL279Ja+eOq7FKiExWj49OIsVLNChCWZwOJbxQU
	Kmo6QS86QS8dpZrJtn67oaKDf+gqZYBsRW+Wrv/f3e2gqdnJuh1n
X-Google-Smtp-Source: AGHT+IFhARDykGkT1c5RI/jZUxfJHdsS1B+MRLUP6BKDimJayPAMAWNWa7MPqjHfFlzmP7pHA6i8VA==
X-Received: by 2002:a17:902:ce90:b0:20c:8907:902 with SMTP id d9443c01a7336-211835b08a4mr279429435ad.49.1731530956214;
        Wed, 13 Nov 2024 12:49:16 -0800 (PST)
Received: from localhost (fpd11144dd.ap.nuro.jp. [209.17.68.221])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21177dc8073sm114604295ad.5.2024.11.13.12.49.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Nov 2024 12:49:15 -0800 (PST)
Date: Thu, 14 Nov 2024 05:49:13 +0900
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v5 00/14] Fix and improve the Rockchip endpoint driver
Message-ID: <20241113204913.GC1138879@rocinante>
References: <20241017015849.190271-1-dlemoal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241017015849.190271-1-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241113_124919_003230_D24BBA6F 
X-CRM114-Status: GOOD (  13.80  )
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

> This patch series fix the PCI address mapping handling of the Rockchip
> PCI endpoint driver, refactor some of its code, improves link training
> and adds handling of the PERST# signal.
> 
> This series is organized as follows:
>  - Patch 1 fixes the rockchip ATU programming
>  - Patch 2, 3 and 4 introduce small code improvments
>  - Patch 5 implements the .align_addr() operation to make the RK3399
>    endpoint controller driver fully functional with the new
>    pci_epc_mem_map() function
>  - Patch 6 uses the new align_addr operation function to fix the ATU
>    programming for MSI IRQ data mapping
>  - Patch 7, 8, 9 and 10 refactor the driver code to make it more
>    readable
>  - Patch 11 introduces the .stop() endpoint controller operation to
>    correctly disable the endpopint controller after use
>  - Patch 12 improves link training
>  - Patch 13 implements handling of the #PERST signal
>  - Patch 14 adds a DT overlay file to enable EP mode and define the
>    PERST# GPIO (reset-gpios) property.
> 
> These patches were tested using a Pine Rockpro64 board used as an
> endpoint with the test endpoint function driver and a prototype nvme
> endpoint function driver.

Applied to controller/rockchip, thank you!

[01/13] PCI: rockchip-ep: Fix address translation unit programming
        https://git.kernel.org/pci/pci/c/289cd5c0db35

[02/13] PCI: rockchip-ep: Use a macro to define EP controller .align feature
        https://git.kernel.org/pci/pci/c/8ba3b41eb7ec

[03/13] PCI: rockchip-ep: Improve rockchip_pcie_ep_unmap_addr()
        https://git.kernel.org/pci/pci/c/db68baa5d884

[04/13] PCI: rockchip-ep: Improve rockchip_pcie_ep_map_addr()
        https://git.kernel.org/pci/pci/c/c5b097d2a295

[05/13] PCI: rockchip-ep: Implement the pci_epc_ops::align_addr() operation
        https://git.kernel.org/pci/pci/c/75b011d9006e

[06/13] PCI: rockchip-ep: Fix MSI IRQ data mapping
        https://git.kernel.org/pci/pci/c/42c55124c3b2

[07/13] PCI: rockchip-ep: Rename rockchip_pcie_parse_ep_dt()
        https://git.kernel.org/pci/pci/c/c8b915ec5338

[08/13] PCI: rockchip-ep: Refactor rockchip_pcie_ep_probe() memory allocations
        https://git.kernel.org/pci/pci/c/c0473caa87f1

[09/13] PCI: rockchip-ep: Refactor rockchip_pcie_ep_probe() MSI-X hiding
        https://git.kernel.org/pci/pci/c/48e848c8727c

[10/13] PCI: rockchip-ep: Refactor endpoint link training enable
        https://git.kernel.org/pci/pci/c/c6de5dd3fd0c

[11/13] PCI: rockship-ep: Implement the pci_epc_ops::stop_link() operation
        https://git.kernel.org/pci/pci/c/8a9424d83e20

	Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
