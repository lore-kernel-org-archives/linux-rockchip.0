Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC48DC3DA49
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jul 2024 04:47:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2EZE1XrUgqvnMjH++8XpSLcUTyYmE6MncAvnxPwrV+8=; b=T6P9ME/Yrbi2+ei/ri17/vXdlI
	udwBW0GM3rtp+x5s4go1xJl98iokvoZqpN9TS8G8cDZeX+wojIIej7k7kK+1bKo7RpKIOcmNPr8ND
	XIlZuTh6MxLnKurqfY6HqY4/UmnOKiHYeEV+1OplHLsl6BkqK69YDam3bS9S5pRl5adMB0HZF7fzU
	1wnORDdHDRzXiVMO776+BRoK1eDjpB3Uma35aIaRw7KTTOykSd7Cmz4LmipqZdZ9i313lRFXYFpea
	VF/3jDFSHxwqUY6SenEfFaIIYuMrb9URE2XiV6v5UCddTg3yAruTeQKhnx+Y9gnosqLrh2wZav23K
	zji4nT+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUJ2q-0000000FlT5-2wvz;
	Thu, 18 Jul 2024 04:47:08 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUJ2J-0000000FlNM-0i8O;
	Thu, 18 Jul 2024 04:46:46 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1721277993;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qd3uHQf3ElXbQbEOOq3qPy+xGLH85gFnWLBiiNOzwi0=;
	b=KDxGFgBLIktO9TmU0MLoT1Yqxmgp6n858buuI5q1lkjj+dtBQzBAUitCnF/9JYqsLsP5nh
	w0Bz1Kl81ntxf0XZMFbymfgj39Y23K4CBaF7xxaQ5XOKWAuxfpVfAJaZUtaiNKq7q5e8kG
	Brkwxshj99m8NYBdzeXPxLXr1BCmEjwA0D5bxytrTNf/tSSV1THDKQdG4+SI8zIjZegI1C
	sbHchyLT3mKlQTyIyrCiTrIb9VNqATBUHtnUggMGhmABh1RjysshnavvKSxze50GIKHFhy
	iJc/hzHak6lFk13RpBEwzM1gRKdMSr9mTW9GxiTUeVLxUNllH5j//pctkCLYAg==
Date: Thu, 18 Jul 2024 06:46:32 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Conor Dooley <conor@kernel.org>
Cc: linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>,
 Dinh Nguyen <dinguyen@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko
 Stuebner <heiko@sntech.de>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Huacai Chen <chenhuacai@kernel.org>,
 WANG Xuerui <kernel@xen0n.name>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 imx@lists.linux.dev, loongarch@lists.linux.dev
Subject: Re: [PATCH v1 2/4] ARM: dts: rockchip: remove unlikly-to-exist DAC
 from elgin-r1
In-Reply-To: <9a492f785e0851a828e0864c33204920@manjaro.org>
References: <20240717-anvil-ashy-544e80a1317c@spud>
 <20240717-parrot-malt-83cc04bf6b36@spud>
 <9a492f785e0851a828e0864c33204920@manjaro.org>
Message-ID: <b63ca795e5155dff13b3afa571869ea8@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240717_214635_532095_23CE1F24 
X-CRM114-Status: GOOD (  18.09  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2024-07-18 06:20, Dragan Simic wrote:
> Hello Conor,
> 
> On 2024-07-17 11:37, Conor Dooley wrote:
>> From: Conor Dooley <conor.dooley@microchip.com>
>> 
>> The Rohm dh2228fv (really the bh2228fv, the compatible in the kernel 
>> has
>> a typo) does not support frequencies above 10 MHz, nor per the
>> datasheet appear to use either CPOL or CPHA. I suspect that this
>> devicetree is abusing the compatible in order to bind the spidev 
>> driver
>> in Linux. Pretending to have devices on a board for this purpose is 
>> not
>> acceptable, so remove it.
>> 
>> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> 
> There's a small typo in the patch subject:
> s/unlikly/unlikely/

Ah, sorry for the noise, I see now it's been pointed out already.

>> ---
>> I could not find any documentation for this board online, and it does
>> not blatantly say that the device is a "spidev" like other [ab]users, 
>> so
>> it is possible there's actually a DAC here - but I doubt it is a
>> bh2228fv given the other incompatibilities.
>> ---
>>  arch/arm/boot/dts/rockchip/rv1108-elgin-r1.dts | 8 --------
>>  1 file changed, 8 deletions(-)
>> 
>> diff --git a/arch/arm/boot/dts/rockchip/rv1108-elgin-r1.dts
>> b/arch/arm/boot/dts/rockchip/rv1108-elgin-r1.dts
>> index 2d9994379eb2..9df1cef406c5 100644
>> --- a/arch/arm/boot/dts/rockchip/rv1108-elgin-r1.dts
>> +++ b/arch/arm/boot/dts/rockchip/rv1108-elgin-r1.dts
>> @@ -167,14 +167,6 @@ &spi {
>>  	pinctrl-names = "default";
>>  	pinctrl-0 = <&spim1_clk &spim1_cs0 &spim1_tx &spim1_rx>;
>>  	status = "okay";
>> -
>> -	dh2228fv: dac@0 {
>> -		compatible = "rohm,dh2228fv";
>> -		reg = <0>;
>> -		spi-max-frequency = <24000000>;
>> -		spi-cpha;
>> -		spi-cpol;
>> -	};
>>  };
>> 
>>  &u2phy {
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
