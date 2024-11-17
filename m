Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCD8ED68BDD
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Nov 2024 08:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NcRmmsv3R8vl1bwH7VizZ/8aTvi9nV4YC/Ru3oQ8iMs=; b=4ob89kF4gMRGBZ
	5qg/gbOwLDLcmnYEXdkpF2xGkOi/L2W2/oUXJ8fpxoIsKTbDRLMHUderTk8PnJ7w0C76JXnV444YZ
	wQJy9sRIkaex1VTDav7SUhTAqdOEmKnuiYC9aizwUTBdDEknlP5Nj+kl9ZTj7CzCmOKWAYIBAJbly
	mtnwNIe1T1pXiRUODWms7h98b0DjPy3/S5kyVpzDpi+WiQ0RimJKk0Tzcaqu09X2FCZ52GfDhWr7i
	dX0zNTqs3AtX3KXzsi3k+QFhj9jBPUU47SwP3uza8EFdigDWieqa7bpWMvi5EzD6ab7XcrcLXSnRX
	FlXpx199QEr3Ghxus4fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tCaDC-00000006zCE-1O7O;
	Sun, 17 Nov 2024 08:00:50 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tCaD8-00000006zBY-3hCq
	for linux-rockchip@lists.infradead.org;
	Sun, 17 Nov 2024 08:00:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 0C71BA40C2F;
	Sun, 17 Nov 2024 07:58:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7AB0FC4CECD;
	Sun, 17 Nov 2024 08:00:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731830445;
	bh=yG/Prvv2cW4FAbQIxSEqLgZUGZ3kv80l7NsNSnpg53M=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Gqfs5s6yPfPvpIR/sBXHis0a0AI5ejKOd74ZA3OIxcF77rHXSmvJu6tZGO5WjO2sp
	 VI8Ds5IkGhecdxwAIcTLz4Ii1blB06aUeab/Af7dijufr/PetogT+B1f3+IoC9doIP
	 3rBc/91TRUKN/Yysf1UEKuVllyeahSzksv5EiaLsZZhz+9Ly07mlMyl+OsTzRShHm5
	 X8V8KYQUq8Ck4WDOuIses5VrALQ7Vb1T6Gbdf8qWLXCGzJD6jL9tlTlV3bsKx4J4cG
	 gC65Sjr5DkIrvv2vzMS8kW9StasNCjgdW+gZm0GBTokQWSjJwjZBZ87GgML4RsUhhX
	 7CDgY4aUilWUA==
Message-ID: <8393e56d-8ba1-436d-ad97-ec44893d2f6f@kernel.org>
Date: Sun, 17 Nov 2024 17:00:42 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 12/14] PCI: rockchip-ep: Improve link training
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
References: <20241115230319.GA2065576@bhelgaas>
From: Damien Le Moal <dlemoal@kernel.org>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20241115230319.GA2065576@bhelgaas>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241117_000047_004772_5B316351 
X-CRM114-Status: GOOD (  10.15  )
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

On 11/16/24 08:03, Bjorn Helgaas wrote:
> On Thu, Oct 17, 2024 at 10:58:47AM +0900, Damien Le Moal wrote:
>> The Rockchip RK3399 TRM V1.3 Part2, Section 17.5.8.1.2, step 7,
>> describes the endpoint mode link training process clearly and states
>> that:
>>   Insure link training completion and success by observing link_st field
>>   in PCIe Client BASIC_STATUS1 register change to 2'b11. If both side
>>   support PCIe Gen2 speed, re-train can be Initiated by asserting the
>>   Retrain Link field in Link Control and Status Register. The software
>>   should insure the BASIC_STATUS0[negotiated_speed] changes to "1", that
>>   indicates re-train to Gen2 successfully.
> 
> Since this only adds code and doesn't change existing code, I assume
> this hardware doesn't automatically train to gen2 without this new
> software assistance?
> 
> So the effect of this change is to use gen2 speed when supported by
> both partners, when previously we only got gen1?

Yes. The host side has something similar as well.


-- 
Damien Le Moal
Western Digital Research

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
