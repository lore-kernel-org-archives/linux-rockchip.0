Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F693CFD2FD
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Oct 2024 09:30:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6dmmRnyYingFqMjloSeyyndBx3tp/bhFaJhRJJw6WTs=; b=RjxUBbz+rTiN3X
	7/s6QVmVqf3tnjoNLhcyxMUTj3YMmTUP3gykftXs0pI8k+7oa9Y6KxsMMB8dbbPilFY5e9KvkeitV
	oj5721OcNXHK+VcIb4CDjOLIs9/kJZS349d0wXvuCyfDoirvXuEG2X9tTgCWHhuqJuuI60fGs1R9t
	TmPAZHH1pJUphSo2RlWpIG6DIdyOFZCVNUAGh4pbYSYZFb2Nl8MXsPCIzUhHSAkvtE5rAQp9F6lwJ
	70xZInMc/OOAzOTSxkZgB3iqvoV4t9VrKvDydlJV35+xoXNYpeR94LWBtXRJz5n3tzEwdFsGiKJrd
	mujGuzOIaLRh/YVznEHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szBys-0000000Fpxp-26Ck;
	Fri, 11 Oct 2024 09:30:42 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szByp-0000000FpxM-1tlW
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Oct 2024 09:30:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 06D985C031B;
	Fri, 11 Oct 2024 09:30:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1ECBC4CEC3;
	Fri, 11 Oct 2024 09:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728639037;
	bh=xmy/FIF2bNPrHgMiOMzGpFp51iyvrygVT77VNtOhai0=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=LN4F+R+fqKvX3pkQUcFu92iXL+0gwbMLNpqJUBHhNVWXbV3QhxcKoU0YEwm5fkCqY
	 ohsFY8/wISR7m9Fl4rrrJ/v1WWI4bUXTz84N4c8TkTLZhgVU9WK3bnCP/nZ0tc9o+P
	 +gCW9do1QGs61xwBc6Hlu+efy++QKzeBQjTKp31MBtxMgM/hLR6ZXCIF03ABuUotnp
	 xWBkkldGZeO1BDoYW/XMSRkE2bOU6GYHRBRUxeaDt0gxl2RmVpC2iKZuU1VWsgwcEx
	 NjUfEWTWNxbYfxxWykdc1VZNMJbIvrzGwiBKgjpJHJvFm5a/6xN8FVYdHVQemMck+u
	 PmdTQQc3BC6EA==
Message-ID: <b525abc8-4066-4097-9a36-558b84144228@kernel.org>
Date: Fri, 11 Oct 2024 18:30:31 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 12/12] PCI: rockchip-ep: Handle PERST# signal in
 endpoint mode
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?=
 <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Rick Wertenbroek <rick.wertenbroek@gmail.com>,
 Wilfred Mallawa <wilfred.mallawa@wdc.com>, Niklas Cassel <cassel@kernel.org>
References: <20241007041218.157516-1-dlemoal@kernel.org>
 <20241007041218.157516-13-dlemoal@kernel.org>
 <20241010104932.gfrunorhpnhan5wp@thinkpad>
From: Damien Le Moal <dlemoal@kernel.org>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20241010104932.gfrunorhpnhan5wp@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_023039_569782_ED2CD649 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
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

On 10/10/24 19:49, Manivannan Sadhasivam wrote:
>> +static int rockchip_pcie_ep_setup_irq(struct pci_epc *epc)
>> +{
>> +	struct rockchip_pcie_ep *ep = epc_get_drvdata(epc);
>> +	struct rockchip_pcie *rockchip = &ep->rockchip;
>> +	struct device *dev = rockchip->dev;
>> +	int ret;
>> +
>> +	if (!rockchip->ep_gpio)
>> +		return 0;
>> +
>> +	/* PCIe reset interrupt */
>> +	ep->perst_irq = gpiod_to_irq(rockchip->ep_gpio);
>> +	if (ep->perst_irq < 0) {
>> +		dev_err(dev, "No corresponding IRQ for PERST GPIO\n");
>> +		return ep->perst_irq;
>> +	}
>> +
>> +	ep->perst_asserted = true;
> 
> How come?

Yeah, a bit confusing. This is because the gpio active low / inactive high, so
as soon as we enable the IRQ, we are going to get one IRQ even though perst gpio
signal has not changed yet. So to be consistent with this, perst_asserted is
initialized to true so that on the first shot of
rockchip_pcie_ep_perst_irq_thread() we end up calling
rockchip_pcie_ep_perst_assert() as if we got an assert from the host (we have
not yet). I will add a comment clarifying that.



-- 
Damien Le Moal
Western Digital Research

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
