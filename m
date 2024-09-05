Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CFDACD5BA6
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Sep 2024 11:06:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Cc:From:References:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eaX7QgJ8sCk0rApKGaet57rgEj76SYy9S+m3TVgRC+c=; b=v/RBbLbGryqNK8
	L3sU1DUI60IDoK4XSyHYPVHdsEQwTTuXsdbeC9N1c7ZY8KHCAf1E+2zsuD/PxeG8SEQGT2G1fUhR+
	Azb1aq9qGlxYBQcnV/rJ5EtaYxBdkpGZWGGeRoopXUyEbIKzQ63SojyfqrNWAiX61Z/xQeOIkniSu
	ieq5XQNP/N4pFmd0dASlzSlgVQWgFvuF411OlY1uMV1LZT3KWwHQWlWMg9WPlHJmDuSo04RODlhgW
	JM6DTpVL55AUC32R8s8j+clNSEm90sVyq/jcXBKpqHqeHE6uwo1FNiuvqKfnVPu5dDNdFuL+/hWo/
	3Havw4pQduOt7AcaXHvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smAJt-000000084d1-00I9;
	Thu, 05 Sep 2024 11:06:33 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smAIt-000000084Pm-0GNi;
	Thu, 05 Sep 2024 11:05:32 +0000
Received: from [192.168.0.160] (unknown [14.155.100.110])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 8DB27789EE;
	Thu,  5 Sep 2024 19:05:27 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 8DB27789EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1725534328;
	bh=pJfwzVFsBxD8QgeCLnJpuG01Hv3jSe19yTLA9YcFox4=;
	h=Date:Subject:To:References:From:Cc:In-Reply-To:From;
	b=TUAvXYNdg2ZrNCB9GNG9exshtyxtjwaz1qS6De3IEaR2MCp8GfQaAXr75zrEMRb3y
	 NuPmSkAKHBieMFrdosT8AmUP7XZzW+/S0kDqMezq2ti0NzJfy916AHHNe6G335XLHy
	 bwN3tedJGfx7ZQp8VM4gyLk6lvJIJvjKECDnBwAk=
Message-ID: <61bccef8-8cb1-4224-accd-0468e8892b91@classfun.cn>
Date: Thu, 5 Sep 2024 19:06:53 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: add dts for Ariaboard
 Photonicat RK3568
To: Chukun Pan <amadeus@jmu.edu.cn>
References: <010a9c5e-205b-40b9-9655-9e168b2def97@classfun.cn>
 <20240905100100.348444-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Junhao Xie <bigfoot@classfun.cn>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Chukun Pan <amadeus@jmu.edu.cn>,
 FUKAUMI Naoki <naoki@radxa.com>, Dragan Simic <dsimic@manjaro.org>,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Junhao Xie <bigfoot@classfun.cn>
In-Reply-To: <20240905100100.348444-1-amadeus@jmu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240905_040531_489104_CF9F3D7B 
X-CRM114-Status: GOOD (  11.64  )
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

On 2024/9/5 18:01, Chukun Pan wrote:
> Hi Junhao,
> 
>>>> +	vcc5v0_usb_modem: regulator-5v0-vcc-usb-modem {
>>>
>>> Are you sure this regulator is 5v?
>>>
>>
>> It should actually be 3.3V, I will fix it and rename
>> to vcc3v3_usb_modem
> 
> I prefer vcc3v3_rf or vcc3v3_ngff,
> this is closer to the schematics.
> 

Yes, I changed it to vcc3v3_rf, this is the name used in the schematics.

>>>> +	pinctrl-names = "default";
>>>> +	pinctrl-0 = <&pcie30x2m1_pins>;
>>>
>>> These are actually pcie30x1m0_pins.
>>
>> pcie30x1m0_pins seems to conflict with sdmmc0,
>> I changed it to pcie30x1m1_pins
> 
> This is obviously incorrect. I didn't notice that
> your pinctrl for sdmmc0 is wrong.
> (Because the cd pin are different)

After fixing sdmmc0, using pcie30x1m0_pins can work normally.

Best regards,
Junhao

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
