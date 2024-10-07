Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17E98CFB447
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 08:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fj5tWr56umWT64kd/TNHBLbcQDINT6VMXOm9UTDA1kI=; b=fncr7yft9hhlru
	otd8QckclPI+91NVek9gPBrny1DU1CiE2uVDVES8Ps3QxHdL8auppgL3VEzrfXn6zNSaprshnOaqh
	RBC+k+saaGAc475Hnh6iKvjZ6w3kL2ijim0XUUr4OjQw4kHIoQ4tnrZ39RVlBU0i9ee9RinStuX8R
	Hq9GtrkzVaA5iQARkKKRprKHnM7QV0UC9E8waOgttxe8bDXov8Nba5BWL6QkdwdAmagnvcC8lu/tj
	nGNBlBulIhz/y6HWi2MnLsb1FjHZuNR06zPFFXcWhP6RzhovMJyXRuSqIgRAaClsn5AYFOmBc5V5r
	He7WPIESORsknCsKOP1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxiy5-00000001isn-33SR;
	Mon, 07 Oct 2024 08:19:49 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxi4T-00000001aA0-3l7j
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Oct 2024 07:22:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 91C2EA4169A;
	Mon,  7 Oct 2024 07:22:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8F19C4CEC6;
	Mon,  7 Oct 2024 07:22:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728285740;
	bh=iVxdQvEmWNL3nXloUOyOwrqXBICnS72BJpw+hrB3JJU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=YiX8jzr8MJKDsuWAVgwInPjqnUUPgBil/VOpc0wGNhFNmpn5LF71Q0XiB22Hcxoih
	 VuiBdDCOqE0/qhogG/bbIWJOlqfF1LXFO8TPmbxw//kJZpAoBLPFWJav7N/2Gyjuyk
	 u5esNr78tLea5DHP7TzZe+GTrknkshn1e5FjIoLtJ41yW2pGkgnE3Yu1NSTGFxJF4C
	 MwbkBoa6eaAfYoml2I3jIhCW3UMU/MET/f18nSqY1DeaVrGdEOk/UfuPAt8EXQaiJ2
	 r7WxKi6y9l8qjT2aAb3Ze1WiEZ9rb/vy34l8GmZfR9fQWnDnp7tFVJAhC6rNGi+gX2
	 IBOWxTDgmcZXw==
Message-ID: <1e85bd5c-a733-40e7-9606-b655c4ff3b6e@kernel.org>
Date: Mon, 7 Oct 2024 16:22:17 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 11/12] dt-bindings: pci: rockchip,rk3399-pcie-ep: Add
 ep-gpios property
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
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
 <20241007041218.157516-12-dlemoal@kernel.org>
 <o42ki5dwipmldcpnthpfoaltpmu7ffheq627ersrvjj73xkm6x@vkqjomiznstg>
 <179ed297-1d06-480d-8095-7212cbde2ab1@kernel.org>
 <64421c0c-1d48-421d-8841-859695b5046d@kernel.org>
 <ec728ac4-ef63-47a2-9058-5c038003418e@kernel.org>
 <e1e2c852-ff59-4450-9236-d954d7dc86f3@kernel.org>
From: Damien Le Moal <dlemoal@kernel.org>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <e1e2c852-ff59-4450-9236-d954d7dc86f3@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_002222_599865_8FD222B8 
X-CRM114-Status: UNSURE (   8.47  )
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

On 10/7/24 16:00, Krzysztof Kozlowski wrote:
>> I do not see reset-gpios being defined in the bindings (common, host and ep).
>> resets and reset-names are defined though but these have nothing to do with
>> #PERST control.
> 
> Bindings for all PCI devices. See pci-bus-common.yaml

Got it. But in this case, since ep-gpios is already defined for the RC host mode
controller, isn't it simpler to simply move that property to
rockchip,rk3399-pcie-common.yaml ?

I can of course instead re-use the reset-gpios property for the endpoint mode,
but that will need a bit more code in the driver.

Which way do you recommend ?

-- 
Damien Le Moal
Western Digital Research

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
