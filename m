Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B8B7C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Aug 2024 16:31:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=U0LzMRL7BUnketf6MhEdnTXRok1zi4FB/FDU8jo9Ooc=; b=KBt7EgHGC3JeFp
	rwyCt0vPwWUYQwq5NLoAjVOXnUhzDn3WpAjqB2Grmi7Ji7+ukp7xNr4iADi5z0YV5rbPlDIonvGrP
	sPb6GaWe/JyONgDMaDe3kvz+RPyTTRh4+kzfBQ3nWI5yFCAoWCD2vYt8wfRK+iaGQCZZqxSDU5HH9
	gvxi7MK7oATwm+uZMOYTp41J66rdELeRi1XWEtTqiXvs1e9mvps7VOcCF2TRlBcXaRpW9ajo1fYwL
	iYGt1wSJ278zyfKSjM95fB0Dd2WdBK59JyJWEKHKwsdLZs8e0SRGBPPiBigZzFWzyq1gWslxxDiQp
	wRU5cPQRE4b3E60jvKIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbjZg-00000005hFC-1SK1;
	Wed, 07 Aug 2024 16:31:44 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbjZ7-00000005h6s-3Wi0;
	Wed, 07 Aug 2024 16:31:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 48265611F9;
	Wed,  7 Aug 2024 16:31:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AEEEBC32781;
	Wed,  7 Aug 2024 16:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723048269;
	bh=2e+tvdvnlJd7UATAhp/GJlLecWbDRVPYL2/x3pyVJ0I=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=keIhy56NccKd3cSYOWoIYBMx0wp5cSwr+5tt3fGWDAvug1H2LN7tiOrQIN0E/3V2w
	 OS/DOKg0R03XxmD7+96PKgCTJdOxCK+k2zSYEpMwb12kSRItPmKS/UQuwT+3W2TUTJ
	 yMi798279uizDzmJPqMJRQgiYOf4Hzk5l62Uo6fR7CD6d+eOspzUZtuW8evLoON/07
	 L9i6IVbJp4jwod2jXyJ7ONwuJYqJrDNDPllpUym44mVN9rGMBmCp0zRadv2v6gO1Hs
	 NNaXB2lQN7LlD2VGkREoAtORj4kF40HPXZ63BqLM7w/3hcVlVy32gTUd5EpXR/imLl
	 2gSWO113S2OnA==
Date: Wed, 7 Aug 2024 11:31:06 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Anand Moon <linux.amoon@gmail.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH linu-next v1] PCI: dw-rockchip: Enable async probe by
 default
Message-ID: <20240807163106.GA101420@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240625155759.132878-1-linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240807_093109_955449_999EDCBA 
X-CRM114-Status: GOOD (  20.79  )
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

On Tue, Jun 25, 2024 at 09:27:57PM +0530, Anand Moon wrote:
> Rockchip PCIe driver lets waits for the combo PHY link like PCIe 3.0,
> PCIe 2.0 and SATA 3.0 controller to be up during the probe this
> consumes several milliseconds during boot.

This needs some wordsmithing.  "driver lets waits" ... I guess "lets"
is not supposed to be there?  I'm not sure what the relevance of "PCIe
3.0, PCIe 2.0, SATA 3.0" is.  I assume the host controller driver
doesn't know what downstream devices might be present, and the async
probing is desirable no matter what they might be?

> Establishing a PCIe link can take a while; allow asynchronous probing so
> that link establishment can happen in the background while other devices
> are being probed.
> 
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
>  drivers/pci/controller/dwc/pcie-dw-rockchip.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> index 61b1acba7182..74a3e9d172a0 100644
> --- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> @@ -367,6 +367,7 @@ static struct platform_driver rockchip_pcie_driver = {
>  		.name	= "rockchip-dw-pcie",
>  		.of_match_table = rockchip_pcie_of_match,
>  		.suppress_bind_attrs = true,
> +		.probe_type = PROBE_PREFER_ASYNCHRONOUS,
>  	},
>  	.probe = rockchip_pcie_probe,
>  };
> -- 
> 2.44.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
