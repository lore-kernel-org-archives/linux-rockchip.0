Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52D9EC3ABC5
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 May 2025 06:47:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l3WcnEakHjxTKof1DgwbDOoQf744f1eno8NY2FG3k+g=; b=u7C/WJw87K0ega
	ASA80QukuwSDBAyrshVY1SQVH5OpnLDVTx1MH442eqRFNIii8SJ/h20kzbCUleKhzk5WYJMm+s1vq
	AR+1CjBeTH9mWQfokQSeWhdW31q0D8fBDOspnLObQuED0HuD9r2Ng6Xqm/mF9AYRBIfqq7Z41TU7z
	RXb2xRyOsqKT1CE8N6Z6n1SqwScIrkZVIYwQvF9WBesiaHQRn7beN2SCnoScHZj7SUXIjx4qervhV
	uptF9C83Dfm73CanEkacH/Xoyx898aAcrmk+syfynGPIx2AcbGYtlXtHAbxaMq3X4xSLcGNfXg4eg
	ZrEtOqZRRert5xwmD5GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uF5kR-0000000EBjL-3oIq;
	Wed, 14 May 2025 06:37:47 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uF5i5-0000000EBOT-1RMZ;
	Wed, 14 May 2025 06:35:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 84BD1443E7;
	Wed, 14 May 2025 06:35:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 70B39C4CEE9;
	Wed, 14 May 2025 06:35:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747204520;
	bh=3HYaE0yEblyTc0/tXc2/SMe0XXjeXvoaNBUMDbiP0Ns=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=FzdGXUz5sn8pggwimVnoZToZXJduzY7CR1FxsPlY9Wu/tcOwmHm7cCydW7UM189G7
	 53jld+YSdar0VXMUTxRcK3Qg4EyipXAv4hhfSaceZJNzanzBZCIWP8vO/Goe6Hm2KD
	 9A2tVeJPSDwd9IPF0hhZl6V1Dc5X9JbrJthQB5tcwvNLzOxOCkwEaZAAQTcBjkEJ/c
	 vm5bS83d6xSE4f66LzTKcN8EsR1uJ0pnnRvVaUcW8KmFNMktiKLNM0fkdiY8rqnG12
	 H/MczNgATS6XC3UrHY9Hz1uUiHpeIl4Bho72u74MDGGbZwigJo14kszdhkVikvkf+z
	 u15ADghnHSOHQ==
Message-ID: <953f3082-2379-40d6-bc1e-0bc0197d531d@kernel.org>
Date: Wed, 14 May 2025 15:35:10 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/6] PCI: endpoint: cleanup get_msi() callback
To: Niklas Cassel <cassel@kernel.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Jingoo Han <jingoohan1@gmail.com>,
 Marek Vasut <marek.vasut+renesas@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Wilfred Mallawa <wilfred.mallawa@wdc.com>, stable+noautosel@kernel.org,
 linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
References: <20250513073055.169486-8-cassel@kernel.org>
 <20250513073055.169486-11-cassel@kernel.org>
From: Damien Le Moal <dlemoal@kernel.org>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20250513073055.169486-11-cassel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250513_233521_414345_029D72C1 
X-CRM114-Status: GOOD (  13.01  )
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

On 5/13/25 16:30, Niklas Cassel wrote:
> The kdoc for pci_epc_get_msi() says:
> "Invoke to get the number of MSI interrupts allocated by the RC"
> the kdoc for the callback pci_epc_ops->get_msi() says:
> "ops to get the number of MSI interrupts allocated by the RC from
> the MSI capability register"
> 
> pci_epc_ops->get_msi() does however return the number of interrupts
> in the encoding as defined by the MME Multiple Message Enable field.
> 
> Nowhere in the kdoc does it say that the returned number of interrupts
> is in MME encoding.
> 
> Thus, it is very confusing that the wrapper function (pci_epc_get_msi())
> and the callback function (pci_epc_ops->get_msi()) don't return the same
> value.
> 
> Cleanup the API so that the wrapper function and the callback function
> will have the same semantics.

Nit: please mention which semantic this patch changes the API to use, that is,
to follow the kdoc and return the number of interrupts, regardless of the
internal encoding of that value.

Other than that, looks good to me.

Reviewed-by: Damien Le Moal <dlemoal@kernel.org>]

-- 
Damien Le Moal
Western Digital Research

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
