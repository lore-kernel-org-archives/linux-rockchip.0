Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 839F7C54735
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 11:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WmVo5Dhg//fWf/djgVcsqLTAxZPkp1ceRQI1Sv4Y6bQ=; b=4M1H0mxET0jRpm
	LKClSTm7muTnbVIADpiYI7TLosC+gy8UwPdH8EJJFm/d5xoY1rfY6H+faoEBoMJWSgfP4R+LYeDPy
	j7jypVmiWlkq6+0r+xcWqw7h5W0sWOUzdMgmQEVy/50hcSzuzdxnDbizOmRx7x4nxr7meANgo3EoK
	v8PRbV8+LYxDJ61V1If4UhK/yUTKI6r/2h5kPr3U3BiLO8OtpXcRO3ooM69EG0eg+9ptrnKiN+Los
	Q/ZSK6Hv9/FVlCmOySvhqwan5Vpd6SnTH1Cg+MVWQL22qpjA4r6y48LYkyp+DYOfj5P0SMSECHl5Q
	SKJnpk/qBezhQm33YR4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siuPV-0000000B0Y8-3Nb0;
	Tue, 27 Aug 2024 11:30:53 +0000
Received: from smtp.forwardemail.net ([164.92.70.200])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siuOP-0000000Azwe-3s7n
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Aug 2024 11:29:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1724758181;
 bh=oz/rd4e08jz+p+5PwAy+8XVahhTtzgw1n8icFlOoc84=;
 b=HZhfn8Zh+Fcol542UqY23Mzj3a2wieHtcSJ1wL/6gk5ooOjSpfeWU9UER8wDObRjJJfHGMiii
 YLAO7WEylhlEYKaCZB3a2hnWZupXBq6HY3/nkFgEbTGWXLpzPhJGLWvxtgrodEGyrL3nk95W9oS
 kvbQkeEwCcoBpjrRqFfloU9iQJmxK7UkoIeJsU4ZossLdheANSH7TrbQGWNG0kr/Ro4rD3qIi2s
 gPYB1Kzf43AZccR3zzXKqIpcQzPeDHFp9fRfwyC99pLhG8N5egD03GLj1HH7V41zscLzbjbRRHm
 x9voG4/xfjEo+GcqJ/wLD0EJkyyc6PNP15ZP/Fg+Sg4g==
Message-ID: 1ec02fa5-4b11-424b-a595-c715b62d105e@kwiboo.se
Date: Tue, 27 Aug 2024 13:29:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] dt-bindings: arm: rockchip: Add Hardkernel ODROID-M1S
To: Krzysztof Kozlowski <krzk@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240826205538.1066103-1-jonas@kwiboo.se>
 <66ccebeb.d40a0220.356790.58caSMTPIN_ADDED_BROKEN@mx.google.com>
 <b69e5a0a-acf9-412c-90b4-ebe00c7e07d4@kernel.org>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <b69e5a0a-acf9-412c-90b4-ebe00c7e07d4@kernel.org>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 164.92.70.200
X-ForwardEmail-ID: 66cdb8a4c498660ae9674ece
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_042946_007950_A6168A9C 
X-CRM114-Status: GOOD (  11.91  )
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

Hi Krzysztof,

On 2024-08-27 08:52, Krzysztof Kozlowski wrote:
> On 26/08/2024 22:55, Jonas Karlman wrote:
>> The Hardkernel ODROID-M1S is a single-board computer based on Rockchip
>> RK3566 SoC. It features e.g. 4/8 GB LPDDR4 RAM, 64 GB eMMC, SD-card,
>> GbE LAN, HDMI 2.0, M.2 NVMe and USB 2.0/3.0.
>>
>> Add devicetree binding documentation for the Hardkernel ODROID-M1S board.
>>
>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>> ---
>>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>>  1 file changed, 5 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> index f08e9f2f5dfc..9e29a5ecc94d 100644
>> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
>> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> @@ -598,6 +598,11 @@ properties:
>>            - const: hardkernel,rk3568-odroid-m1
>>            - const: rockchip,rk3568
>>  
>> +      - description: Hardkernel Odroid M1S
>> +        items:
>> +          - const: hardkernel,rk3566-odroid-m1s
> 
> hardkernel,odroid-m1s
> 
> Why adding SoC name to the board? Can it be Odroid M1S with RK3568?

No, the M1S (rk3566) is a variant of the M1 (rk3568) with less features
and the smaller SoC package, fully agree that hardkernel,odroid-m1s is
better, will use it in a v2.

I mainly wanted to keep it consistent to other Hardkernel Odroid boards.
- hardkernel,rk3326-odroid-go2
- hardkernel,rk3326-odroid-go2-v11
- hardkernel,rk3326-odroid-go3
- rockchip,rk3568-odroid-m1 (hardkernel,rk3568-odroid-m1)

If you agree to a vendor prefix change of rockchip,rk3568-odroid-m1,
maybe we can also drop the soc name from that compatible at the same
time? E.g. change it to hardkernel,odroid-m1.

Regards,
Jonas

> 
> 
> Best regards,
> Krzysztof
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
