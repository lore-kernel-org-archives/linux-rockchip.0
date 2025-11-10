Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13114CCF9E3
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Nov 2025 07:06:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E2WC8SStdDaYDxBx+ilbcxlylL8zHfePM+WKLylmjig=; b=jzjbCNoav6gqCE
	8cb2Xv+8JdjYorTSQA5q7rXZPilt+RprGIKXYc5yxlhw9UVmOfQCtPB/jjPFOjZ8Mr0hzvSoB7LRo
	PAi7tzQSPk0So3BAdT28vQilav4Lo7mzXijkBMT7p58TGil7jBQzj9LNDc8uaiPmuILXkHOVn8jqD
	Sq47nEDUvRJrgirsereLcnRjf3lEgmfIap8q+Zyoi2Xte3AirL9L1DnmL4HW6xhyz5PnQ1BWZs7Sl
	Stziu08bSYR/B17AlHdlt1YSEzoc94C70qBMxYBsyaKU5AIxkTVE5FFu2goVUEWa5z3O64Bv28NXX
	6KYCYPsCwNH9TwjVfK9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vILz2-00000004sJJ-0xyR;
	Mon, 10 Nov 2025 07:06:38 +0000
Received: from smtpbgbr2.qq.com ([54.207.22.56])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vILyx-00000004sHm-3goE
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Nov 2025 07:06:34 +0000
X-QQ-mid: zesmtpip2t1762758307t170ce2a4
X-QQ-Originating-IP: bdtVB757foOqmjCihvLYgPahZweMunhtqgcvdcDazOw=
Received: from [IPV6:240f:10b:7440:1:64e0:6ba: ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 10 Nov 2025 15:05:03 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 13381450062030274218
Message-ID: <38861A00B4F4BA62+e3221913-43e5-4335-9aaf-9b9eed5834ac@radxa.com>
Date: Mon, 10 Nov 2025 16:05:02 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Make eeprom read-only for Radxa
 ROCK 5A
To: Dragan Simic <dsimic@manjaro.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, jbx6244@gmail.com, pbrobinson@gmail.com,
 kylepzak@projectinitiative.io, damon.ding@rock-chips.com,
 sebastian.reichel@collabora.com, amadeus@jmu.edu.cn,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251110035455.839863-1-naoki@radxa.com>
 <20251110035455.839863-2-naoki@radxa.com>
 <36843804-433a-5c0c-4961-451b44d70bc4@manjaro.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <36843804-433a-5c0c-4961-451b44d70bc4@manjaro.org>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: Nnd5cAEgLcFh7yzxaCgXiacDODDkGd92N3U787sV1y6Q+lfNjloXpmAs
	Ce7m5rod1keOp767khNhF07FIRWEEulsivYLd5olD8q5su4+z7l5Z8WGtMqpz4+Qd2PWZCN
	kcpb28VSYrQyktfnVUgjhzV1KkyW1w07qh4RWitjElfUoSNuJus9e7UrgycBt2qaeGVA5lH
	kPHc+JAqsmpgt/FLx4kiw3qfDSYDwhmVn/ngc0P1Ar5h58wzjCu/kJnzzw2itQbmx8N5Ycv
	zSt+ZxA4oNREWShLhJx6A16Sb8shRbj7EE5cTUL+gnAi0+zWnsz06Tu1EIaI6SmLQHRBcKD
	Cwi2OrHD1wpAuwAnV+Mc+7pO8Sk59RNZyNRtVm6Gz3SsNFe5F0CtM8Q2ox5mzJkkX3JSyj6
	JcrW3OxPbjEZfrUhHEdYIws0IRh7dqiV8YhqTEyS12ZEaGJVpVQreEhSMeY0m1VrNhnt1JI
	5sTj5Tk6WcRl7N01Xi/R9tRKJ1LxipmY7mg+Arf2eqCkv3I+XGa7kVo3zfPP2lbLLJzBBAE
	uDu1m1m+dqD2Uuv0aaUW+MHhLJ413rc0uXGsqkYhUyzVTarFHmY3Zzlx+OgZnQW24N4AsYL
	NiS5472dVwPgEBNz3gd0p2tT7z5EQBMopFiCs/nw6iiwyB7DQuPBkc6vVbDIHK65ToVUcEZ
	7NkXFXO4rjsIvnfUwJUZ9hWR1usjIV0N3FvWvPoV5hlpemZyOGKDpHZlIw1W9KifjWwC3/J
	XycD4AyjVWn8jwOgbhHTraP1hvaE8ZYWAL15WgLSHwb/CHLVSWMsUnU4aQZSvQS3Z5Ni3be
	/VE6cNummpmOEcy0fFDpuB9xNVynCT4Jpgh7wZhfZN0z808H6rNsbpKG/yLq/4S9beVlSj4
	Bmb6hUKEgG69xhDiZVWcapJbzj6CGeVMQ9Xc/JZA2WC+9vPTFCIMIIfc19NXCM7B6RFlN9G
	8DP2xed+imwDSP4oNiayD5diQLu7gIQjCuP+H0avZCf0xpA==
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251109_230632_799939_42020C99 
X-CRM114-Status: GOOD (  18.55  )
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

Hi Dragan,

Thank you very much for your review!

On 11/10/25 14:17, Dragan Simic wrote:
> Hello Naoki,
> 
> On Monday, November 10, 2025 04:54 CET, FUKAUMI Naoki <naoki@radxa.com> wrote:
>> Make EEPROM read-only as it may contain factory-programmed
>> board-specific data.
>>
>> Fixes: 89c880808cff8 ("arm64: dts: rockchip: add I2C EEPROM to rock-5a")
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
>> index 19a08f7794e67..ae7b03488c9e7 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
>> @@ -254,6 +254,7 @@ eeprom: eeprom@50 {
>>   		compatible = "belling,bl24c16a", "atmel,24c16";
>>   		reg = <0x50>;
>>   		pagesize = <16>;
>> +		read-only;
>>   	};
>>   };
> 
> I've checked the board schematic and making this BL24C16 chip
> read-only makes sense to me.  However, I think that the patch
> description should be expanded to contain a better description
> of what might be found in the chip, such as a factory-programmed
> MAC address.  Also, providing a link to the board schematic, as
> a reference, would be a good idea.

----
arm64: dts: rockchip: Make eeprom read-only for Radxa ROCK 3C/5A/5C

Make the EEPROM[1][2][3] read-only. Board-specific data written to the 
EEPROM at the factory includes, but is not limited to, the SKU (~ 
product name), BOM version (~ board version), and MAC address.

[1] 
https://dl.radxa.com/rock3/docs/hw/3c/v1400/radxa_rock_3c_v1400_schematic.pdf 
p.13
[2] https://dl.radxa.com/rock5/5a/docs/hw/radxa_rock5a_V1.1_sch.pdf p.19
[3] 
https://dl.radxa.com/rock5/5c/docs/hw/v1100/radxa_rock_5c_schematic_v1100.pdf 
p.18
----

> With these remarks addressed in a v2, please feel free to include
> 
> Reviewed-by: Dragan Simic <dsimic@manjaro.org>
> 
> Additionally, it would make sense to squash this patch and your
> other patch that addresses the ROCK 5C together.  They're very
> similar and having them together in a single commit might actually
> help the people browsing the repository understand it better.

I'll drop eeprom patch from ROCK 5C v7 patch series, and squash eeprom 
patches for ROCK 3C/5A/5C.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
