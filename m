Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D133C61DB2
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jun 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kCvq2Hc+K3nqo4KYu7i1SbtqvMWmOnKr7bh75htOjhs=; b=DIh2l89s2vyHew
	pInkToM8xWQVHHc7a9nzRsp0RbajD9MK6yT9o+u1L+5wOqe3kP2RafZlStazf5gRn+lw7W8/nBl+V
	ckf5yJlU1tCLLhExMa95+ilkGqLWDBXQXw3biMslaD9XwpMKKrh42n+1g0pOBckqSvtbHgFGkyKm8
	aaA4AnuWY3weZvssCoLlT70Yilo+HxQacI7HNOiSaWYkZq1EpKchgGHKS0e4McdhT+8vQ1Cyb59aC
	/ngBxGHTbU3qM207/n6rgjriWdglignBsHThuPN8QlWyKA7pblBZhR+8r+gOJ+rTDTQwbHpNTuRMG
	sF9SJBQ6uoK67Oyuu6uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP7mv-00000008Hi7-3HjF;
	Tue, 10 Jun 2025 22:49:49 +0000
Received: from mail-vs1-xe30.google.com ([2607:f8b0:4864:20::e30])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP5I2-000000080Uu-406o;
	Tue, 10 Jun 2025 20:09:48 +0000
Received: by mail-vs1-xe30.google.com with SMTP id ada2fe7eead31-4e7949d9753so938651137.2;
        Tue, 10 Jun 2025 13:09:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749586186; x=1750190986; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=onIW15zIgWh9y4m8I19gLR8x0h7nD9fwx7MT+3ezukQ=;
        b=OUOtGNARv1Hn+0eJ5WE1RJ66Hu45fhWe8sXVQxdl2j9KRIngULY+u3mu7o+WfDABct
         84su2ub6Bd9Om6uO5B85BY84hySMTIdnNOJLYq7gtibk5iep24ynFzaYH2rMvu84yHR7
         PXI/Co+jNRmWju4ElO23utJgkUAIOEhGObW1Rcm0JODdT87q8v83GvgIIPiLgEuyHUsH
         PHMgZACLBta4/0joK8WlTf1t5fB1tzsZ3w+t92QQUu2o9ZZuE1RNP2q7hvyFGK7cULWe
         YrwkVXYOFbxBmSH9KNfZjAirZn0IQcsJA40/VjgE0YdFYuf3pG6PEAxm5jGtV7ebgBCG
         NnGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749586186; x=1750190986;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=onIW15zIgWh9y4m8I19gLR8x0h7nD9fwx7MT+3ezukQ=;
        b=LV4BIXRl5HFeSwC1QKp2wRrbkSwyv1MNLiDqWS0G7+vWW6L0nFhG31S69wYr4wBLUk
         zfgGAWRpk7VcBgo4Bg86G59eevn3q4BSuxXCN2ER/6cA2FzQLF3X2I3yApmrqBWnDQ9J
         1XYzj1FqIMbBWjYLqgntIuBe0y4VoqQ1Sk/RE+6jaORI2i7+eYach/zObuXv3IaZyOEa
         v1vDXVyAxPPts1dwAktMQhHe1eVWrDPnm0/OuAh4KfHG1LZc7PXYYmJJsF1mvUii47KC
         36MuIOKUe5LnQmcAVLLBovyF62Ry4B8GGGQDxkwG8ktyN0p1qkrQHxhisyACwuEj5FYU
         ijwg==
X-Forwarded-Encrypted: i=1; AJvYcCWnzarHsVbgCMKbP4g215WiJj6Vtou4HkVcalvyMpcsDdDoVFdfNLREA0hl9zMLpcyPHloGdJauF1AN@lists.infradead.org, AJvYcCXhfa5iQ3nMlsBwP+PqPNBE8BeFrq0mNnFIcSfQxKEFsqcpMIsv4XeH/nlR7KBCjMomdlzsDVLGjlibnjO0qiZA@lists.infradead.org
X-Gm-Message-State: AOJu0YzsdDZ4j7BSLUYKvIm33FvZDYyn9tusPXoWP0x984TSj3SpAQDn
	rP+Zy/Ji2eA/RBIUcpR6J11envGctZMNspFNRfC6SMdZ+zBOkUPu9N5B
X-Gm-Gg: ASbGnctytnM/HKY7g2WSKuGeRBbPwAmupMOiNZrdEw0mf857GWMzri4zkYjHofLeZzT
	I5rJ3L3v+KUPu8euyhPiDhuLv6fCQcvy+xSOLkvBMPGnwMiAfO8XdSiV14JENWpBXniCmZxBiMI
	DvRx5L9ap5bx9m0k7tviCvE8F2tQUbF3A65R5wjqq1F5/qu0VqvbkMcdbBsXQa+aq30yKpHs/MD
	MA9lF3x3Ups3lIlnvhjgV4eAuVE1/R8ndkwEgybpNCrpappWXc6C8H5+FFXAJKAvbXoCdsJfvdf
	GOQEUhXNy7rval7Y+V3Z0i+MSHDKmlcqXLgKtTipiL5k58a9Dg==
X-Google-Smtp-Source: AGHT+IHUV0h6pUokxy2glzd7NxnrUeGLDfesDcxJume/7YrS3hfExuee3amFE7vpuIxwPxM1+Rw3pw==
X-Received: by 2002:a05:6102:5087:b0:4e5:9149:7cb3 with SMTP id ada2fe7eead31-4e7bbae5e67mr513405137.13.1749586185785;
        Tue, 10 Jun 2025 13:09:45 -0700 (PDT)
Received: from geday ([2804:7f2:800b:5a56::dead:c001])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-87eeaf97af8sm1835615241.33.2025.06.10.13.09.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 13:09:45 -0700 (PDT)
Date: Tue, 10 Jun 2025 17:09:39 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH 1/4] PCI: pcie-rockchip: add bits for Target Link
 Speed in LCS_2
Message-ID: <aEiRA2u3Dh8F6Ie0@geday>
References: <aEQb5kEOCJNQJMin@geday>
 <20250610200744.GA820589@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250610200744.GA820589@bhelgaas>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250610_130946_990387_8061E7E3 
X-CRM114-Status: GOOD (  11.89  )
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

On Tue, Jun 10, 2025 at 03:07:44PM -0500, Bjorn Helgaas wrote:
> This stuff:
> 
>   #define PCIE_RC_CONFIG_DCR              (PCIE_RC_CONFIG_BASE + 0xc4)
>   #define PCIE_RC_CONFIG_DCSR             (PCIE_RC_CONFIG_BASE + 0xc8)
>   #define PCIE_RC_CONFIG_LINK_CAP         (PCIE_RC_CONFIG_BASE + 0xcc)
>   #define PCIE_RC_CONFIG_LCS              (PCIE_RC_CONFIG_BASE + 0xd0)
>   #define PCIE_RC_CONFIG_LCS_2            (PCIE_RC_CONFIG_BASE + 0xf0)
> 
> *Looks* like it might be duplicates of:
> 
>   #define PCI_EXP_DEVCAP          0x04    /* Device capabilities */
>   #define PCI_EXP_DEVCTL          0x08    /* Device Control */
>   #define PCI_EXP_LNKCAP          0x0c    /* Link Capabilities */
>   #define PCI_EXP_LNKCTL          0x10    /* Link Control */
>   #define PCI_EXP_LNKCTL2         0x30    /* Link Control 2 */
> 
> where the PCIe Capability is at (PCIE_RC_CONFIG_BASE + 0xc0).
> 
> If so, can you please rework these to use the existing PCI_EXP_*
> definitions, including the fields inside?

Hi Bjorn,

I'll look into it, good catch indeed.

Thank you for your help!
Geraldo Nascimento

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
