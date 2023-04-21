Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A594C77B76
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Apr 2023 23:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5yrZ8a+H4gM2WkwosxS6BMJ5R3aBmT6SRT6hLYZWmMU=; b=KEPUxi5qnn7zt0
	RKC0epqHGSalguX8nFIoMNd71FlfNT3BVKA+pC47FF7okZu33cgH85+bDRaFMYf9TSQanFtc7LQdf
	cjAUFgrrpAcuMo6xAvnDkv1i7/wlIFhpO8khiav9YUtgfdkRoaXNSiGNL1FK4AHzuOSgW7HLCBtlD
	wC5AS7sXcpS4eXRSph46fQbbfjX3N9LrKJUKM6cop1X+0oyxFvpLQZPN5i4WpRIer9sXR9+W0cYh5
	Rrn9skDdJiVXxcyX15rf3Sm+0rkHC9+KmuUpd2VRBwfw4wUjG95cNGj0IH9j3g1Zjc6tB/G0QGXn7
	u+nQNKnSYKY45tEcNGPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppzxz-00C34P-0i;
	Fri, 21 Apr 2023 23:14:59 +0000
Received: from smtpbguseast2.qq.com ([54.204.34.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppzxv-00C2wu-2l
	for linux-rockchip@lists.infradead.org;
	Fri, 21 Apr 2023 23:14:58 +0000
X-QQ-mid: bizesmtp65t1682118861tmo6nky7
Received: from [192.168.30.129] ( [106.150.157.219])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sat, 22 Apr 2023 07:14:19 +0800 (CST)
X-QQ-SSF: 01100000000000B0F000000A0000000
X-QQ-FEAT: +ynUkgUhZJm9MO0hB0Dc/uruRhQTpGsFJzR0DW3Mcxi3ED8A4/bDsIWLXK3aP
	ex2OhRjAYlXALpdfzH5zGPQejMWk+X+SDTpbvNygk2VWe4D1VamwDHYmFIIgq4Z/EIGVkAP
	7JIvS6k+O8Um3ijyyhIIcR31CH6yBIE4FdWPWWBH1CZHYBEC/SHZXktM6QKWV6BN27VXLB9
	d8zQAY1gkzA06ahyS0bcfIORSjSvvuo9WziMGMlYI4nuzd/9YepkQHRVvQBmpP08vcWjm80
	gHfSRN1wuZ9KwdOAb9WgZk5Dt9gi4SiJs2jzjkldcUXxvdAVV+1+KlQ5wDuebpP6HoETvEX
	TBNLneMgdpNi6t771EevNY+ZpKJ5aM/zvmW+yNoBBx5D0eSwj69nVCiW62hxQ==
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 8451665007315853366
Message-ID: <289455C2138BA5B6+73e871df-8467-718a-6b39-cb4b87c4caef@radxa.com>
Date: Sat, 22 Apr 2023 08:14:19 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH] arm64: dts: rockchip: radxa-e25: fix typo in
 vcc3v3-pi6c-05-regulator
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org
References: <20230420101555.2980-1-naoki@radxa.com> <9785919.DvuYhMxLoT@phil>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <9785919.DvuYhMxLoT@phil>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz6a-0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230421_161456_377356_1F3D3D36 
X-CRM114-Status: GOOD (  14.24  )
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

hi,

On 4/21/23 20:48, Heiko Stuebner wrote:
> Hi,
> 
> Am Donnerstag, 20. April 2023, 12:15:55 CEST schrieb FUKAUMI Naoki:
>> "gpios" should be "gpio"
> 
> I don't see this.
> 
> The fixed-regulator binding does specify both "gpios" and "gpio" as valid.
> And the code also tries both [0].
> 
> So this change really isn't necessary.

I see. it seems I referred old document... sorry for bothering you.

--
FUKAUMI Naoki

> Heiko
> 
> [0] https://elixir.bootlin.com/linux/latest/source/drivers/gpio/gpiolib.h#L86
> 
>> Fixes: 2bf2f4d9f673 ("arm64: dts: rockchip: Add Radxa CM3I E25")
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
>> index 63c4bd873188..bde43c4a5bb1 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
>> @@ -89,7 +89,7 @@ vcc3v3_pcie30x1: vcc3v3-pcie30x1-regulator {
>>   	vcc3v3_pi6c_05: vcc3v3-pi6c-05-regulator {
>>   		compatible = "regulator-fixed";
>>   		enable-active-high;
>> -		gpios = <&gpio0 RK_PC7 GPIO_ACTIVE_HIGH>;
>> +		gpio = <&gpio0 RK_PC7 GPIO_ACTIVE_HIGH>;
>>   		pinctrl-names = "default";
>>   		pinctrl-0 = <&pcie_enable_h>;
>>   		regulator-name = "vcc3v3_pcie";
>>
> 
> 
> 
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
