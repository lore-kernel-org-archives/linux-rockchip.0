Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5DFEE7717F
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Dec 2024 13:56:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LBlcRlMBogEtDiLJzHmTuoJm7rtCH3liGLIoF6Breuo=; b=x9QDTbPYCIvAI4
	/FkcDVvpHQzq3KM+9olGBI+VPY6GoIBUoIB0T+J3ejgXiMH7PKu48/iMUkdZ1q9HQwssQKHQlS8sd
	0BzmIKTHE0M7AvTfxndGeKn4h6gkLm+rIdXGHnP85bEEsETp8w47MwOLR9J93Edjo5yqrXRhYHaII
	lfGIIFbDQIle9TJG+Ja6rEcxCuoDJLDfAIszKyJElqXtujAdCcTcF9flewEpWfCrg3NHUeYdpHc73
	L72BZqZPkxc51HgW8BgVsPxm+6ZIDqyiCL3ROj9TwZP5qxTAoNiWVLgLHoM3LWOwKeeuL9S/7xMr0
	VDoMkSvz4HEdmGIDooFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNBaE-0000000A9mT-2H4B;
	Mon, 16 Dec 2024 13:56:26 +0000
Received: from smtpbgjp3.qq.com ([54.92.39.34])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNBaC-0000000A9lC-0Jx4
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Dec 2024 13:56:25 +0000
X-QQ-mid: bizesmtpip3t1734357341t2o746d
X-QQ-Originating-IP: g3oBOueSh6CIhvzo6qz9bOcs9RHYOmIh2GsD0+FcEo4=
Received: from [IPV6:240f:10b:7440:1:f7da:fd82 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 16 Dec 2024 21:55:35 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 6749853150628244265
Message-ID: <CEBA09BE8EAD762E+d8c828fd-2da7-48ab-ac66-bf3d04d5dc5c@radxa.com>
Date: Mon, 16 Dec 2024 22:55:35 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 04/12] arm64: dts: rockchip: Rename regulator for
 pcie2x1l2 for Radxa ROCK 5C
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dsimic@manjaro.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20241216113052.15696-1-naoki@radxa.com>
 <20241216113052.15696-5-naoki@radxa.com>
 <f525d875-734b-4c41-95ba-be07b11f8e1c@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
Organization: Radxa Computer (Shenzhen) Co., Ltd.
In-Reply-To: <f525d875-734b-4c41-95ba-be07b11f8e1c@kernel.org>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: MX+1SEN3H+wAyRp1SkETiuDQQLEEpagL0NShkp4CDlYAVkVEOGRlZ0Ke
	vHp8tsMr4cBM5RuuCGP0H5ZDj+Ya/aLq3ttj9SQNtbkFUWVAK2+kWcp5IREmIZOsmu9A5tB
	CWb/HYyZjfy+jvFEz+MR8APk27B/VF5M7bfLxme7NIkYQb3vMMgxU4WKraZWfZbLZERntyE
	oy6Bnrt5/dKLjETdfYmP6m4VRW4U3Vesr+XQ7dIS1A0ATazb99GFrq1VW4leM4v7Z5FulbJ
	WkBwMaNeV+YLWfKN9OqjzZdwMprYb4du9DBwzs5m5y0TyVtO7NGzvOK1VFUsW6tnh06FHQM
	csD/vCoaqHRh5UjSgLPVYcKL5duUyE7cExvNEnvlIol8p0vh5LP4wdzeQa1v4Rippwb8IKm
	3tvNVBkDWWEvYHLNFh5e8ucQnMMm8HJAoHMxXbgjMSB7eVULhbYP/8g+edojzyVxwqvYCW1
	gHN9hJp3AJMSyQiKfGOP9KDhQFb0hHy3ZoHapinqs8SnX21FSI0HWDLRgeQV6gz7jzim55K
	l0V+hvrX2yIkQniwQmVFHqT1LDm1Dg+wor98hefKKAjs9nLn2VDTzeoXF08Ro5Zt+LUnlmq
	fQk4/zgg5vMaUzVxYFGOxZQUJwzzrYzRiNsoUCMMtbCvbVeDbEsffXTX597KWbI5s6hrftX
	AkvqjivppCPODrOuaaKdwrKocq5yiYNMMBNBAirK8Cwa0xo0L3Slsi+8F1CKfAc/6RpH0uZ
	CJiysPtattA7f3cjioF33xszX/6yPaxv+wGsSNQDlMycTgqXdp21qLko2EjMPyBPlgEztld
	Oiup5oLK7Mbsc5N49Uv4JP/LNufLREfr9fFHE2nCubAOJvdcNw3K9kTL/6feaXYxNks3gZi
	yaJh9uWTLdvmVQHzOOUGRv6FPbrDYi7AQEiSMltxKhRzjurS7R/A3QMTBvEsTSvP2vRyiR7
	siaQ=
X-QQ-XMRINFO: NI4Ajvh11aEj8Xl/2s1/T8w=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_055624_399258_F79E19DD 
X-CRM114-Status: UNSURE (   9.59  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 12/16/24 22:38, Krzysztof Kozlowski wrote:
> On 16/12/2024 12:30, FUKAUMI Naoki wrote:
>> Use consistent name with other regulators. No functional change.
>>
>> Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> ---
>> Changes in v5:
>> - Reword commit message
>> Changes in v4:
>> - reword commit message
>> Changes in v3:
>> - none
>> Changes in v2:
>> - new
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 6 +++---
>>   1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
>> index 85589d1a6d3b..61d75ab503b2 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
>> @@ -76,13 +76,13 @@ pwm-fan {
>>   		pwms = <&pwm3 0 60000 0>;
>>   	};
>>   
>> -	pcie2x1l2_3v3: regulator-pcie2x1l2-3v3 {
>> +	vcc3v3_pcie2x1l2: regulator-vcc3v3_pcie2x1l2 {
> 
> No, neither explained, nor correct. See DTS coding style.
> 
> Please use name for all fixed regulators which matches current format
> recommendation: 'regulator-[0-9]v[0-9]'
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml?h=v6.11-rc1#n46

Thanks for pointing.
(Please blame other dts too)

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Best regards,
> Krzysztof
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
