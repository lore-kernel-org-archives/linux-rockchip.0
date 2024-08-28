Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF52CC54757
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 09:26:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=45UR6rzCOySj03H2EzFzTlF8p2cUjVopFUnLQ14TMbM=; b=Hrg7KF0Y/L/1E3
	ZBXVjQZYKJcAP0K+1okECx8X0ePl0dCgJCIinKZklDOSaGtZYU77QuRgeD7j7GWdYRPnQvMI1z+cK
	0yCWtjZ78SuzDWSNlakQ0nOUI7vgTyrxtDXEGPSjpnw5YdGgGtAkMO8VIt7qDqaiXE36qE5TnnZBL
	d33fqZzmL1Q/MFAEGMoYZ4KIFEneT4CU08e2Gz6u5HFZK4lVbelcwOj336pcmOYpCq8YyTG1qGkus
	Dq5BBcTPD5QfSLERf3c+8A5uo3CUJAsljoVd+hLb6kZruzpHNQX/Km8VzXGSAXqF2qSYJC6U7YXPg
	yafBnjWkTpoiFhxb6FbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjEw8-0000000EhmE-0FuS;
	Wed, 28 Aug 2024 09:25:56 +0000
Received: from omta034.useast.a.cloudfilter.net ([44.202.169.33])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjEti-0000000EhDY-3Syc
	for linux-rockchip@lists.infradead.org;
	Wed, 28 Aug 2024 09:23:28 +0000
Received: from eig-obgw-5008a.ext.cloudfilter.net ([10.0.29.246])
	by cmsmtp with ESMTPS
	id jDIRs6WjS1zuHjEtSsySfS; Wed, 28 Aug 2024 09:23:10 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id jEtNsrIaln7yNjEtPsrLfS; Wed, 28 Aug 2024 09:23:08 +0000
X-Authority-Analysis: v=2.4 cv=ePwVjmp1 c=1 sm=1 tr=0 ts=66ceec7c
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=yoJbH4e0A30A:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8
 a=M-OHScM7UXdo8wPXp2IA:9 a=QEXdDO2ut3YA:10 a=rsP06fVo5MYu2ilr0aT5:22
 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=7MLyh0ZMj/waRkEMqu5NvgdgV0+LWDWuoIenoixpKGw=; b=l2gyZteWv7EYdzX/4or9dLknID
	RGoc9pGyxup2y0WQL0LOCFxAwDcJT6z145RenV3kVY4TT9/cXoQYHu4TztYLqo6wpoFfv8HiLOh2h
	B9bqQoAhbyQWcjwmfIGTfHakVJFKSPNUut76T9i6QxRkPK2ARorZWRyvxrEe0PLSHsCw94eB7Fdbi
	GXdbT0sIeBapRRyJYFn6j+ObD/Yoih/cXdwPJ9A2PQRzngGoczHALepITGf7opJ2MKYTipvdoFJdK
	e6r6STKaBCZWBFCODAblZJAasuSlQ8IdxiDcmm+wlvKRMnUBDH02HARr32cKNXTaKFbUo6OxTEQdb
	gzwgc8BQ==;
Received: from [122.165.245.213] (port=38254 helo=[192.168.1.106])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1sjEtM-002IZN-1L;
	Wed, 28 Aug 2024 14:53:04 +0530
Message-ID: <207109b6-0b07-45dd-8143-f6e07cc427d8@linumiz.com>
Date: Wed, 28 Aug 2024 14:53:01 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/8] dt-bindings: arm: rockchip: Add Relfor Saib
To: Krzysztof Kozlowski <krzk@kernel.org>, Conor Dooley <conor@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 heiko@sntech.de, alexandre.belloni@bootlin.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rtc@vger.kernel.org
References: <20240823153528.3863993-1-karthikeyan@linumiz.com>
 <20240823153528.3863993-8-karthikeyan@linumiz.com>
 <20240823-lark-regime-0d3ab4215d69@spud>
 <a5d4f421-5120-4421-944e-d39d67e482bb@linumiz.com>
 <9537c866-cddc-4958-86a8-d097982067cd@kernel.org>
Content-Language: en-US
From: karthikeyan <karthikeyan@linumiz.com>
In-Reply-To: <9537c866-cddc-4958-86a8-d097982067cd@kernel.org>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1sjEtM-002IZN-1L
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.1.106]) [122.165.245.213]:38254
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 5
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfJppBVYmFSwTPmuK89pJPpvn5HE61MRHRQPc4ofxbrt07eiUUtt+o4VWc8cQwvy4V+ChaLdMfuv8A5H5oKypoPlt0ANEuUBk6GLk+CwVOL9D8HQUjJL8
 kV2dQLdqAgOqO8m39EPBr5pJt0IvmMz8eS+xIbMUF/bNMXvKjP+mLqLUVwjZbt5OFGPzYsb0DmqgCF7EPwCQ7DgABmIAMdBtsrHfOnj2OmqvjkNjC4BYJOYH
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_022326_948254_A6AD0C47 
X-CRM114-Status: GOOD (  13.80  )
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



On 8/26/24 14:03, Krzysztof Kozlowski wrote:
> On 24/08/2024 14:48, karthikeyan wrote:
>> On 8/23/24 21:51, Conor Dooley wrote:
>>> On Fri, Aug 23, 2024 at 09:05:27PM +0530, Karthikeyan Krishnasamy wrote:
>>>> Add devicetree binding documentation for Relfor Saib
>>>> board which uses Rockchip RV1109 SoC
>>>>
>>>> Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
>>>> ---
>>>>    Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
>>>>    1 file changed, 6 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
>>>> index 1ef09fbfdfaf..29f7e09ae443 100644
>>>> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
>>>> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
>>>> @@ -848,6 +848,12 @@ properties:
>>>>                  - radxa,zero-3w
>>>>              - const: rockchip,rk3566
>>>>    
>>>> +      - description: Relfor SAIB board
>>>> +        items:
>>>> +          - const: relfor,saib
>>>> +          - enum:
>>>> +              - rockchip,rv1109
>>>
>>> This does not make sense to me. Why do you have an enum for the SoC
>>> model, implying that this SAIB board would have more than one possible
>>> SoC? I'd expect to see - const: rockvhip,rv1109
>>>
>> There is an upcoming version of SAIB board based on Rockchip RV1103.
> 
> Still wrong form multiple points of view:
> 1. Not logical, we never expect such entry in top level bindings,
> 2. Same board or different? If same, how is it possible to have two
> different SoCs (not modules!) in the same board? These are different
> boards. Or maybe this uses some SoM, but your commit msg explained
> nothing about this.
> 
> You have entire commit msg to explain the hardware. Use it, so you don't
> get such questions.
> 
> The code above: NAK
It's my mistake, previously my understanding about this binding was 
wrong. I will change it in v2 patch.>
> Best regards,
> Krzysztof
> 
Thanks,
Karthikeyan

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
