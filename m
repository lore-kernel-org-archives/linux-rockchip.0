Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1727E7716A
	for <linux-rockchip@archiver.kernel.org>; Sun, 15 Dec 2024 02:10:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IAKf+qJIaELR/BNhl/ea9MkpNJuApOAJPFkNGw/uayA=; b=sa862ChcqKMfjg
	Kq9CUsaz/8z4DdS91O4eifg9NKbnPBfahfeURYJ+pLY9/C2DyNq7NxfmEqk0BAiPb5YptLNcPAUqB
	Ea04fv650WODHhDaUQgtXhOOe3W7/lpomy2MNOswVhk5mKgOABdq9rBNHGei34diKp0p+0qnymZrN
	JE5YRYv4qkfGpZxVsOYbXcwRzaJvydg+tTeaDPKWw8hBYKH4RY/EcLRFWlPQvf4977tuQVTKz8w0p
	W1QcSRFPv9by0xObmpD0J6qPE5G7V5/NTxA95Su93wUXdL4y/xu6E930rDaF9IxWiz/c2O3A5Uhhl
	Ov5jhkIVEFTKAahOMnCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tMe4z-00000007F38-2LW8;
	Sun, 15 Dec 2024 02:09:57 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tMe4w-00000007F2Z-1Vjs
	for linux-rockchip@lists.infradead.org;
	Sun, 15 Dec 2024 02:09:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 1B05CA40185;
	Sun, 15 Dec 2024 02:08:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71473C4CED1;
	Sun, 15 Dec 2024 02:09:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734228592;
	bh=AnUjQngOmObm+Df0ucitlnHpXQSa+tKYhKijlSRANgo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=HGTkSeMTVYJUTMjZdazPa7rlP1Z7bECigdjamULP6SI0MePGQ1XXsg+lOOfGoVioQ
	 WY4BPczqsjW/uKHWCkRsuyuNUw03x1rGBQftYX1CrplPFiBTM6gsy353jp9uWnG9LG
	 K3/fCSN9lspPboGpiYrcnhKSvH0rZLJSCA6LlIvcp9gqpvAeN8rrgZr7a0cX4o1iV0
	 FwjhFvrVeCVglrXdjLdSk7fUpf6Xl8ZxHEMFgBE0f73AvQZ0rj8D4BEJ6kGqKJ5Pe+
	 F5f+m8BEJ9JNYC7FjLrcPpniMedMc84U03Q/g2+gAl8QIZMQL/YMeXxe7zOuSnC/1G
	 BSnK0RhUwXqdA==
Message-ID: <35282804-9a4a-4272-9f39-e5ba443a0cbb@kernel.org>
Date: Sun, 15 Dec 2024 11:09:49 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 13/14] PCI: rockchip-ep: Handle PERST# signal in
 endpoint mode
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?=
 <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>,
 linux-pci@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rick Wertenbroek <rick.wertenbroek@gmail.com>,
 Niklas Cassel <cassel@kernel.org>
References: <20241215001313.GA3482864@bhelgaas>
From: Damien Le Moal <dlemoal@kernel.org>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20241215001313.GA3482864@bhelgaas>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241214_180954_498696_D0D3D602 
X-CRM114-Status: GOOD (  10.43  )
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

On 12/15/24 09:13, Bjorn Helgaas wrote:
> On Thu, Oct 17, 2024 at 10:58:48AM +0900, Damien Le Moal wrote:
>> Currently, the Rockchip PCIe endpoint controller driver does not handle
>> the PERST# signal, which prevents detecting when link training should
>> actually be started or if the host resets the device. This however can
>> be supported using the controller reset_gpios property set as an input
>> GPIO for endpoint mode.
> 
>> @@ -50,6 +51,9 @@ struct rockchip_pcie_ep {
>>  	u64			irq_pci_addr;
>>  	u8			irq_pci_fn;
>>  	u8			irq_pending;
>> +	int			perst_irq;
>> +	bool			perst_asserted;
>> +	bool			link_up;
>>  	struct delayed_work	link_training;
>>  };
> 
> I should have caught this last cycle, but just noticed this:
> 
>   $ make W=1 -k drivers/pci/ drivers/misc/pci_*
>   ...
>     CC      drivers/pci/controller/pcie-rockchip-ep.o
>   drivers/pci/controller/pcie-rockchip-ep.c:59: warning: Function parameter or struct member 'perst_irq' not described in 'rockchip_pcie_ep'
>   drivers/pci/controller/pcie-rockchip-ep.c:59: warning: Function parameter or struct member 'perst_asserted' not described in 'rockchip_pcie_ep'
>   drivers/pci/controller/pcie-rockchip-ep.c:59: warning: Function parameter or struct member 'link_up' not described in 'rockchip_pcie_ep'
>   drivers/pci/controller/pcie-rockchip-ep.c:59: warning: Function parameter or struct member 'link_training' not described in 'rockchip_pcie_ep'

Oops... Sending a fix.

-- 
Damien Le Moal
Western Digital Research

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
