Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51F1FE7717F
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Dec 2024 01:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a+6d3fTICZ/de7Q9hKC+htuBTp5ZaVDErE57LHWX0tc=; b=wFqlgsQNOGDgTd
	mji6C0qdthQgIVUDOuSdLKavIaq3HQ3TNDRhcSzho2xTC4O4DnEdV2COY8lSkUcy0cxfafiIpFwpE
	ply3Pu7GCQ5S2dkw3CPhduMLIdigPnWRkeM9GPVcSeyWd6nEkyVLMVOIWjFc3jH+k88ubv6wGqptC
	JbABtgx6r9u3hC2yiw5M0YOX3kSYOvWaefS9okxwa6akRIUWNTWxPLb9svZg8sdH1k7QHOwiKZlI9
	qPCTi6Xo8iYqR7HyYweGWqY0XgmKf/cFfMS7kJP4l4xl+c7v9FNBrbpO3X+aZvZo0S+KktVUdQhrE
	kVBtNmSbbCxgh5MCqtAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNM81-0000000BqMh-3ufd;
	Tue, 17 Dec 2024 01:12:01 +0000
Received: from smtpbgau1.qq.com ([54.206.16.166])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNM7y-0000000BqLh-2ex4
	for linux-rockchip@lists.infradead.org;
	Tue, 17 Dec 2024 01:12:01 +0000
X-QQ-mid: bizesmtpip2t1734397880t7frbfl
X-QQ-Originating-IP: nzE4y3/Pr5QG2slSJITReEI1AXS8a0jTP5zD1xzVETU=
Received: from [IPV6:240f:10b:7440:1:1e5c:5a5f ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 17 Dec 2024 09:11:16 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 18083944749719747068
Message-ID: <47B1D9F5B9EC2A94+55e35302-64c6-4651-8f27-416723b8218b@radxa.com>
Date: Tue, 17 Dec 2024 10:11:16 +0900
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
X-QQ-XMAILINFO: NRkWGnbnkwTmexKZhjCDgicqwzkNDSygwsjmxKTrRsDS+EsaswtYOfDQ
	96NaqTlnw0AjfwocNvokYKPtxPp7Jr0mgQfyZdWgK103/lKV7PCfJnjlq29Ki/O+EyhwQcH
	xrcCOBS7kVq3tQ7UAl6oQ+xKWfIwMTHqo4aKkrP54UDStEAlzAOiuFLeEFBYW7mm0Z46OiU
	RoW77sCAIa762GuhLuZh4c7L14pKp5lwqw0jdhmrVaKG0fU2vf80zraRmAyuBrKebPkIUtk
	McQdWKHWfNm+K7JR+DaB+hb0HxwybozpdssnBLYn4hJAUgk1ooW9SvIarHEaL+Z+qiX6Htu
	PyCUgGxaEPLOs2JvFUg+W3bXGT1ElviSvxD9vCQZGRFpqp4hEWF2xvA8J4o5j3Vr1Yz91PS
	C0qdJ7/gz+OZE/Qcs/gfKm004YTKAZMzB1um7slNEAh2JsB0T5BZ7Jw2C97RD5THJWQP/yc
	KOVVGbR67HmRmSpMla9JgSmg4xAr6xokao8LZpYVMmIZRDya2hNE8krwan6vFjTu0gEzm5d
	UBnOrKFl6grAFDUMG1wWirlHrzjxnHWYwPHTiWLgcKULt1OO3u1fHU7Wa9CbTDr83D92TGc
	1A+jPAwB4vXFXLlO63W6QdW0+B2is2MvhQxI+aL+w0ftshrxgqVm2+nSA2CBDoFPe9kzjk3
	RnN2EY+r2lBMgQ8htyA/LEOVfBsyxunX/H8CmNTedzVYp45j4LHEctGUUzd/ck2wVfk1X+n
	1uflTGfGE0mvvQlSbb/SmS67yWVVpHUm9VSqEHb4KVZ2uzN7HVu9Ph1n1Yt7KfMYCYMUXk6
	wEGNQ6iBGV9RVj0i1ajpSBVOHc6mngBY8++RmgXV4bFZzezTFWyt+JyZ45mYAZYIBNPOSPW
	c8p+ofyScTbNdJNHEi8qMm/0GAOB+Mkzr7gaYL5FpkVdPOLbJ+nhXN7V2kGYKm+2
X-QQ-XMRINFO: NS+P29fieYNw95Bth2bWPxk=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_171159_135953_541DDA08 
X-CRM114-Status: GOOD (  10.62  )
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

'regulator-[0-9]v[0-9]' is preferred, but 'regulator-[0-9a-z-]+' is also 
permitted, right?

i.e. regulator-vcc3v3_pcie2x1l2 should be regulator-vcc3v3-pcie2x1l2


Or, should we revert below patch and use 'regulator-[0-9]v[0-9]'?

  https://lore.kernel.org/all/0ae40493-93e9-40cd-9ca9-990ae064f21a@gmail.com/

Is 'regulator-0v0' valid?
Is 'regulator-12v0' invalid?

How should we handle multiple 1v8/3v3/5v0 regulators?

Are examples in fixed-regulator.yaml valid?
'regulator-name' should be '[0-9]v[0-9]' even if there is same name?

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
