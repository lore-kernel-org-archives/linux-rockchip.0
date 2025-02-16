Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 283B7C02198
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Feb 2025 15:26:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lic1h8cmvapo4SpKH1KUEZHd7F7IIW73NWZ3hJrImj0=; b=Oe3LtUdz/7bGo/
	VuFZEV6yVezD1dtoW/dKlUJAMX77qBI2OGKBTpNhOSyK0Sp5zIoz79AA47gQZa1L2WHMDNKSxQ+AK
	io73TnOsN3rW5zH0t4xfglgfPkoBi+WRXP+YaYIV+usW1KAM/OcoFPpBRd4hZ8htPTs4QC9uM2Jc/
	YEfPUqeJsRjHIGNkGGBTJlqpLQa83rF4p1hsKxHKCSbGaYsGkbJAVFU5kNUjlZNMTxTj9waujUlGH
	oLRQDphfysNXhG4b/Hj13GHmr22Ykwb+y8ozkJnNFsEvHfzAXaYv+D//IgFApWy90JyNL9KdJdC8o
	rWf+BkpuO3NWyC2U5k2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjgXW-000000020zq-2YwP;
	Sun, 16 Feb 2025 15:26:38 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjgXU-000000020zF-0rm0
	for linux-rockchip@lists.infradead.org;
	Sun, 16 Feb 2025 15:26:37 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1739719582; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=lUhEfBRVSo79Huwj+wzJXrPk5x+fk3E/WKGITPucvjJqsA9W28bDmDYVIJV5OtFAzZeiVpgvZPaVBL0jA2EZlDpwAJwHH9YYg2PUUYKyNt01rrEr3hbg9a+dPEq0rW0iyLQDZMJ8tkEy0GxUX31+9P0heIbOShMCEwNL8d5xrfw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1739719582; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=nGRt15avi2VNEMTjVMkiOHeiNiOp/BakzHpL53Qa5IE=; 
	b=U9YsfwGHz31g0HHvFlwd3Ll2mrkoeK5MGiFIJng82FZjicNRTv862tyKmTmh5OhEUNTocN9QrCZIiZh0SGOBfnBzbZx2P/uVVTZnLLccxOmR3hvfnfNaP3x24xhDsBYoGVY/sd+S8hhIHwCCSGhzx+eIOwNA5WZOyeIxZvyUjAo=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1739719582;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=nGRt15avi2VNEMTjVMkiOHeiNiOp/BakzHpL53Qa5IE=;
	b=kgAy8grO7hkyPy96FKPI4UObo/yrWIeiiaBNuy7Tc950wRdugBlFZpr/ZONvD7Ah
	ULiiPIxBSZs4lF8cvqP6J3Jlduftn7FOEMoRpzuwUIvxgREIecs7vZbTc28F07I9i8F
	Nd7mJq4SelsxoZ2nib+Oh6mugQdlM/n37qoawp2M=
Received: by mx.zohomail.com with SMTPS id 1739719580093298.8599431071333;
	Sun, 16 Feb 2025 07:26:20 -0800 (PST)
Message-ID: <68b4a5bb-79df-425a-af66-fa8973866729@collabora.com>
Date: Sun, 16 Feb 2025 18:26:15 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 3/4] arm64: dts: rockchip: rk356x: Add MSI controller
 node
To: Marc Zyngier <maz@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Kever Yang <kever.yang@rock-chips.com>,
 XiaoDong Huang <derrick.huang@rock-chips.com>,
 Peter Geis <pgwipeout@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 kernel@collabora.com
References: <20250215235431.143138-1-dmitry.osipenko@collabora.com>
 <20250215235431.143138-4-dmitry.osipenko@collabora.com>
 <87r03y1a75.wl-maz@kernel.org>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Content-Language: en-US
In-Reply-To: <87r03y1a75.wl-maz@kernel.org>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250216_072636_314469_2E82C3B8 
X-CRM114-Status: GOOD (  14.53  )
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

On 2/16/25 12:59, Marc Zyngier wrote:
> On Sat, 15 Feb 2025 23:54:30 +0000,
> Dmitry Osipenko <dmitry.osipenko@collabora.com> wrote:
>>
>> Rockchip 356x SoC's GIC has two hardware integration issues that
>> affect MSI functionality of the GIC. Previously, both these GIC
>> limitations were worked around by using MBI for MSI instead of ITS
>> because kernel GIC driver didn't have necessary quirks.
>>
>> The first limitation is about RK356x GIC not supporting programmable
>> shareability. Rockchip assigned Errata ID #3568001 for this issue.
>>
>> Second limitation is about GIC AXI master interface addressing only
>> first 4GB of DRAM. Rockchip assigned Errata ID #3568002 for this issue.
>>
>> Now that kernel supports quirks for both of the erratums, add
>> MSI controller node to RK356x device-tree.
>>
>> Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
>> ---
>>  arch/arm64/boot/dts/rockchip/rk356x-base.dtsi | 11 +++++++++++
>>  1 file changed, 11 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
>> index 28be38b7182e..423185686600 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
>> @@ -284,7 +284,18 @@ gic: interrupt-controller@fd400000 {
>>  		mbi-alias = <0x0 0xfd410000>;
>>  		mbi-ranges = <296 24>;
>>  		msi-controller;
>> +		ranges;
>> +		#address-cells = <2>;
>> +		#size-cells = <2>;
>>  		dma-noncoherent;
>> +
>> +		its: msi-controller@fd440000 {
>> +			compatible = "arm,gic-v3-its";
>> +			reg = <0x0 0xfd440000 0 0x20000>;
>> +			dma-noncoherent;
>> +			msi-controller;
>> +			#msi-cells = <1>;
>> +		};
>>  	};
>>  
>>  	usb_host0_ehci: usb@fd800000 {
> 
> You can merge this patch with the previous one. Marking the GIC
> non-coherent is pointless if no ITS is available, because there is no
> point in allocating memory for them.

Ack

-- 
Best regards,
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
