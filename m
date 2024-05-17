Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D41BC04FFE
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 May 2024 11:13:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bl6sGeuXaFesufBhU3trGhncAYVKuYOy6DwbIITqCaM=; b=QHNE+ncevGB2WQ
	zEBNrMUnYPXinWeNjpSmO7eP6d7MhzDiB7TLO/NhcgjyvdL0Ln4KJ3TUaxwA0nZIvrnKIIgZyt4mY
	9PHr/TNCJbSuwP+qvIS2Y7RTYtmYHtYRwv/3ADoCzKgqYrxnDKfe87Hl1eARXtN2nMVzpiUh3pi4j
	FQWZOI9QYjPc75oYDuQls0QR7AEnnxR9jezZkG2t1NU2r5vwmUNZRmZxOUTakaKR7ea8ovCK1DGp2
	J+xe+0Ygqky6Nh5eng1YHGK0zd8tFJphSgDdeaYazKOYNkTaFjUPNBiBCaA1MnSzig92Jr9O/MYE9
	Ex+p6FkIMTjjiTIF/r+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7vWO-00000007bqz-2hlT;
	Fri, 17 May 2024 11:13:08 +0000
Received: from mail-il1-f173.google.com ([209.85.166.173])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7vWL-00000007bor-0di2;
	Fri, 17 May 2024 11:13:06 +0000
Received: by mail-il1-f173.google.com with SMTP id e9e14a558f8ab-36c9c603b1dso6694885ab.1;
        Fri, 17 May 2024 04:12:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715944375; x=1716549175;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/eHjitQqyqxkdwddMgK+syMYj+ckIZ7XvdRdxqO+nwA=;
        b=q8lnOgLejcQT5uV+Q+uL2+QkKDten6loTRRS3vrpVXpiESiU/gYr+SRUlK1Z+raC8a
         RRQQ1ytT5RrlSRecY3CC/1H9kitIvdZNeIoCg6UnEAB9irWal/EF7Rovg3BKTNoqUAkm
         z4YTVPSUzgW4LCVMIhOmHhPksAdy+SgM8ZU+MYCUmAeRupdLqflvdrF2cJSCis1jj/Xe
         xCR4RFIRRq3raOIP55o9m89yqSCbkxVXdb5p25SSbpysorfdBDO9+Qpw3nKRdKVrss5S
         FclzxtVRhoUF6Pj0+54N6LOg5QhQ+hNFPYOOvge7P0T6UAtc7/9EyU4y8fTd36pVjdq9
         wC/w==
X-Forwarded-Encrypted: i=1; AJvYcCXckwwkTBUyNphSJpPQhJ0HA03i7EKS9pC9qQEtYz8migTYjpIk1ga2v8g+EWGgjEIZoIUNrC9xUQjYqZJ5udaKc30aUixYSmtkOxBFNV5IzVF9qeHPIspKgLujAG/BKiWEXhWPN4nkidXZwalQVQk0pF8GpmmCqIg=
X-Gm-Message-State: AOJu0YxK5ppT9Zg3O0+2OqnrXyyj1S+TZ5R2k1Q0xLk9SkvM8tnuDV/h
	b8sYqnYvlLF4+tFxFER5bA3lhNnYgF1QGA7e4hqSMNH670PDKKIr
X-Google-Smtp-Source: AGHT+IFh7zapzrWdJbKFo1EKEJxjYaG/QR+RjVCvwVxJ2x+NE3Fd7xt0ctaolpGz4+C75fzUHqjaVQ==
X-Received: by 2002:a05:6e02:1546:b0:36b:80d:b90f with SMTP id e9e14a558f8ab-36cc14c0b62mr264039485ab.26.1715944374806;
        Fri, 17 May 2024 04:12:54 -0700 (PDT)
Received: from localhost (fpd11144dd.ap.nuro.jp. [209.17.68.221])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-6340b862572sm13065196a12.37.2024.05.17.04.12.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 May 2024 04:12:54 -0700 (PDT)
Date: Fri, 17 May 2024 20:12:53 +0900
From: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
To: Niklas Cassel <cassel@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shradha Todi <shradha.t@samsung.com>,
	Damien Le Moal <dlemoal@kernel.org>, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 0/7] minor PCI endpoint cleanups
Message-ID: <20240517111253.GO202520@rocinante>
References: <20240320113157.322695-1-cassel@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240320113157.322695-1-cassel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240517_041305_214423_BDD7F118 
X-CRM114-Status: GOOD (  10.04  )
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

> This series used to be called:
> "PCI: endpoint: set prefetchable bit for 64-bit BARs"
> 
> However, since after discussions with Arnd and Mani, that patch has been
> dropped, however, the other cleanups are still worth including IMO, thus
> the series has been renamed.
[...]
>   PCI: endpoint: pci-epf-test: Simplify pci_epf_test_alloc_space() loop
>   PCI: endpoint: Allocate a 64-bit BAR if that is the only option
>   PCI: endpoint: pci-epf-test: Remove superfluous code
>   PCI: endpoint: pci-epf-test: Simplify pci_epf_test_set_bar() loop
>   PCI: endpoint: pci-epf-test: Clean up pci_epf_test_unbind()

Applied to endpoint, thank you!

[01/05] PCI: endpoint: pci-epf-test: Simplify pci_epf_test_alloc_space() loop
        https://git.kernel.org/pci/pci/c/417660525d6f
[02/05] PCI: endpoint: Allocate a 64-bit BAR if that is the only option
        https://git.kernel.org/pci/pci/c/29a025b6fbf3
[03/05] PCI: endpoint: pci-epf-test: Remove superfluous code
        https://git.kernel.org/pci/pci/c/828e870431aa
[04/05] PCI: endpoint: pci-epf-test: Simplify pci_epf_test_set_bar() loop
        https://git.kernel.org/pci/pci/c/e49eab944cfb
[05/05] PCI: endpoint: pci-epf-test: Clean up pci_epf_test_unbind()
        https://git.kernel.org/pci/pci/c/597ac0fa37b8

>   PCI: cadence: Set a 64-bit BAR if requested

Applied to controller/cadence, thank you!

[1/1] PCI: cadence: Set a 64-bit BAR if requested
      https://git.kernel.org/pci/pci/c/07db0fa80cf3

>   PCI: rockchip-ep: Set a 64-bit BAR if requested

Applied to controller/rockchip, thank you!

[1/1] PCI: rockchip-ep: Set a 64-bit BAR if requested
      https://git.kernel.org/pci/pci/c/de66b37a174f

	Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
