Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05795E7717F
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Dec 2024 14:42:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ks0elE1k1dy0roNR7sTyxqtE2wF534HpeYD00k7fSf0=; b=yH+RIMwjvKf1A8
	6g1VKyhLLhjXW2Vp4BPJHRIePQL2Q9nrMgFvuemqESBOD5Jdo+s/n/JEtZOYrZFbyh4z1RXeU205g
	5CWDzSjZCC1RBDZqise9vMZyf8UCaWNwPn1GvsBMA5VQ57n797M/PBJm7OlyCoutOAk6jIPfkmy2d
	olf4at+f3wwQc3fCyV2bRfQdk92u/j7jI69x5sejeyNu0BW0y80D8blWWlDE4E/5grKGAY/0qwM29
	1rh8S6GJS2BMIaXTOSzbkzmhSYXwUmGLDC4fKvbCSLQj/78iW1MGJaeIE/EJpnahDQmeaoFuipEHu
	vHowADwosKdNxWsJyFmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNCIm-0000000AI9n-0w5y;
	Mon, 16 Dec 2024 14:42:28 +0000
Received: from smtpbgeu1.qq.com ([52.59.177.22])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNCFK-0000000AHq7-1lyw
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Dec 2024 14:38:59 +0000
X-QQ-mid: bizesmtpip3t1734359898tkzofy1
X-QQ-Originating-IP: BzQh8AwljBxeAZzdp8E+hSshgItJvrBw9+dK6a04pUo=
Received: from [IPV6:240f:10b:7440:1:f7da:fd82 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 16 Dec 2024 22:38:14 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 2013801449498387670
Message-ID: <E3B9E510C4F8D95A+7a184f12-902b-47ea-894c-4552e189d19b@radxa.com>
Date: Mon, 16 Dec 2024 23:38:13 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 02/12] arm64: dts: rockchip: Change node name for
 pwm-fan for Radxa ROCK 5C
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dsimic@manjaro.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20241216113052.15696-1-naoki@radxa.com>
 <20241216113052.15696-3-naoki@radxa.com>
 <0b0efc1d-2340-4ec5-a46e-62a6cebbc2b6@kernel.org>
 <5707EE9715A7E332+f33721f1-8b50-4262-bdaa-468ad2c79ecc@radxa.com>
 <281bce4e-cec5-4ad8-940a-c9ef16202a43@kernel.org>
 <C6FD94DDF2E16CAE+22e3003e-0d66-4092-a9a2-def5daa6c202@radxa.com>
 <feec46a1-76b9-4479-b364-b09cd79b3d69@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
Organization: Radxa Computer (Shenzhen) Co., Ltd.
In-Reply-To: <feec46a1-76b9-4479-b364-b09cd79b3d69@kernel.org>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: OWhN4QRntHSGlq7whYQmpOJhZYPEdZK4YhXYLycPTehwFwuz5Jt6fB06
	eaEwq/9z+GTbFkov0N41QyPpPt05EMaqQPbvulxZF3tcCsImKM3d3HyfoD+zQZkt5darHHD
	zzLyYq3AB4tbb7JCjNcs7aITdPt6bEQ0YI9w0OyzIKsa1ozEynbglkK3o6T7rC6MANjySWy
	OhQYQLcFJL4iRRVgtyaRdam3CwR/7o65VoO8wVTe2TLztZb56yjfVDf1ZLClBg0nbaHpcvM
	fehSS1T4IqqBq4BVpco7Y2mVljmfARqToUPde67iSRPRUSQrEs+1igvz1ayLYRVjRDKF26g
	d7bBoX5TJGhLZijkY5PsYa7E6XKyNVcw40f85VNJsXjKZJlT6fmXiyFir8whWyM/RbL/rOf
	hdJIF0OIN3e5b0F7oYduRvU2G0a8sUe36ZANDvAoE8ta/AJPJL0ysMDAc04uaDCrEcoaF1l
	ae4Abjta/+HkftPmLwOlzIGzB9y+1pFc2z2qPq2K4n8ASR3IUoQiVssp3kUcUWXm8wHylIZ
	ZYcKLAi5hedlWFWbJHGZtf+h+/PP6QJPt/aG1IlKwDE/Iw1f7sQFCG1Rjbz4qlBCxV9rqk5
	dxZHZPRWxnKzHFe/9vPkmFgGnEa9FJ2MaiYCDO2isJQw+3kjVUldqB6LFb4OBpnBy+M1Gyi
	213FAAonKGsyOdLjv+Xt7XV+ZXuykZZPcNc4z0jK+GneqkEjGaB4TzFGc+G0aS5gU55V2JM
	DkgYAGLViYkVN7yKYLcKQSfzQvFhTGqIDZ0UzLPQt4puaxGp9TyPV2XgGZof5OU/AuztzdH
	SIEJVjDQE9maL7uaBTJQKn75g6UVSxOmN9DX+uEH7QbypA+Y3h1ksdHPiyzeKjcYW/6sKRH
	7RaNwhpEanKUxBXS4bW6G1cidDeYwm5Vi02Gq2gEIVbEc0gp+2GUHRoqbnrpoxHGQgVyIQC
	k+EO+mp2wurhsZq4MxvOJ3+rNaMna1EHMSrai9FUuWYozNUHfxtgCWZZNhafVz69zS84=
X-QQ-XMRINFO: OD9hHCdaPRBwq3WW+NvGbIU=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_063854_963535_CA1E9F43 
X-CRM114-Status: UNSURE (   6.19  )
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

On 12/16/24 23:27, Krzysztof Kozlowski wrote:
> On 16/12/2024 15:19, FUKAUMI Naoki wrote:
>> On 12/16/24 22:56, Krzysztof Kozlowski wrote:
>>> On 16/12/2024 14:48, FUKAUMI Naoki wrote:
>>>> On 12/16/24 22:37, Krzysztof Kozlowski wrote:
>>>>> On 16/12/2024 12:30, FUKAUMI Naoki wrote:
>>>>>> Use more common name "pwm-fan" for pwm-fan node. No functinal change.
>>>>>
>>>>> No, generic name is fan.
>>>>
>>>>     https://lore.kernel.org/all/71aa84af7a030e66487076e0976c8cad@manjaro.org/
>>>>
>>> And? That's incorrect advice.  There is no such device as "pwm-fan".
>>> There is a "fan" and whether it is pwm or gpio it does not matter.
>>>
>>> See DT spec and generic names recommendation.
>>
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/hwmon/pwm-fan.yaml#n67
>>
>> Is it wrong?
> Yes.

Okay, please fix it.

Feel free to use:

Reported-by: FUKAUMI Naoki <naoki@radxa.com>

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
