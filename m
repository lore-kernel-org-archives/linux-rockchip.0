Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DE20CCFA04
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Nov 2025 01:38:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6dbMpgAbzBMmIJ1cSQTu7ZO2dyOSYbXodsBFZeA/vW4=; b=nMOcyyXJuVB4R2
	d7Iwx3zA5tEguIJYIpnJSsSZIrqs3T8oTRk5SHak3KcJhjvfAzNVLAmnHGgmSTeUY+GGt7E3UZw9H
	6lPqSkn5/8gvKwpLmtLg3KTH2apWWAFG1bJ+HtXl5T7L4Fvgera+vPZ69TRn+Pq9LC++gqSc8rrog
	yq047OB4/gnLz1M0CzTaLdNLLgxhX1sT3xrRconWqk6NGzSjgakqBw0+C9CnkPnlN7yLDePq0tWd5
	rRCqvRXxCCuVEqYHn1uiA10CtFSlonYNFrvsdVbK0rQvGgSwTCreZGNxM5TwmUTr7vKQ7zO6z4O29
	oq6q9qN4Hqd6ADANtcAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGSTQ-0000000Cr6F-2Mfo;
	Wed, 05 Nov 2025 01:38:08 +0000
Received: from smtpbguseast2.qq.com ([54.204.34.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGSTO-0000000Cr05-1neY
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Nov 2025 01:38:08 +0000
X-QQ-mid: zesmtpip4t1762306630t3b0bf014
X-QQ-Originating-IP: LEOhJM1wjXR0L56oUOvPO9eX5/YWmI/H/x0kiWmXvYo=
Received: from [IPV6:240f:10b:7440:1:a426:813: ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 05 Nov 2025 09:37:07 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 18274207698754061509
Message-ID: <E04572034CE4DC35+005c7dd7-cb2f-4f82-9889-ac14733a7647@radxa.com>
Date: Wed, 5 Nov 2025 10:37:07 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] dt-bindings: arm: rockchip: Add Radxa CM5 IO board
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Joseph Kogut <joseph.kogut@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Steve deRosier <derosier@cal-sierra.com>
References: <174735136138.1544989.11909422896170025756.robh@kernel.org>
 <20250528221823.2974653-1-joseph.kogut@gmail.com>
 <20250528221823.2974653-2-joseph.kogut@gmail.com>
 <20250529-impressive-real-monkey-a7818b@kuoka>
 <6443BD03B4C4F1FE+d20c3903-e2dc-4c2b-8f6e-fac38f242898@radxa.com>
 <2f4e7f94-2921-493c-94fa-45749a060bc0@kernel.org>
 <870075785A1ED2B9+6fb5238e-dc57-406b-acf9-b88b237d8e5b@radxa.com>
 <f12bc562-b5bb-4bdd-b274-23582df8f2d4@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <f12bc562-b5bb-4bdd-b274-23582df8f2d4@kernel.org>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: OUC5DGN0mB58iE0K75bNuDvOgg3uPRgFEj0dqmhrwbtv6Fy3973MDXcu
	HdfAmWW+XHmoZ3s7iWLCfk7aiwqGE1DD5v7kRauh4nuZhQszRNYy9CFyWg+bOyzxI0T/ZYk
	da6j2VFdF4djF616W1PxseEVKBI0uNxsi+i4jfcg+u5E17aVJgZcvatGOGXEqjMT6YH0uQX
	rQD3kAuFdKmaTgZrOE3Us0AsWJBSZ27OjAWZBLW+n8ov/a8DjQOT0XIh1w81ivlnoMzukvO
	DSwqLNR4wzy8H4QpRdaQMNRJ9rRez83rG5wR9dsq+IcjwlL9QlJRD3ZaXkTcLxpAwmjq6tU
	IjdHez5Tb6e75cfHVNWkT+6/f46IMnI3BCxN6n84MNZ4gv5F8UyEVcNPdKocRtrv9yrLzqW
	xWIG2EPyFeJhJE4MdhajrMnxeCUAjf3AN9C3+1EvDQCOUx3Zx+oQsqELIvKX+v+m/Wp9fQt
	Utb50VK+/6c4k5958GcGwoBNLyjTK3SiH0sjHgLMyOkPsVxjaIpTS0ORcfPnefseCfXvI+1
	ArwC9oZPclZmZdEqQQ9H6lVkeBHXAvmTTXckO5NvMDqvaaPXOKjX/3BU+R1bZfj9hM27AmV
	PPzRTs5p9Eq+IgSwIUfRqVH1dvqxtUsyTIz7NbieaH8qB5VBYkNXiwdv7Og3R3jHfdzvjYI
	OYrq1SV0apdjbd2eOauMFwSLS59b+UXcjyZF48uvADO5pK7t7wh5vMZYCrJ1X/JHitOc0oS
	OpiPUev+uaHhdxC4aZutElZQZd5C0gdX1qJPMrJMpdKJHaQUI2gHEGkR86FpBbyyjMKWJCv
	YncFDb/lYk/xFwNTlRvS2Ncew+WfD7JL+C7NbSNl7H7zOcsBiIhtZb2OzpSXSYtxd8BuN2L
	ccCLoGjUgwzqer1RHynBi07KDO5j3kuLL3UVUxE6DfXG+TwLaGTyhRM6I/dt/yv5Yoqk6lT
	5bOApqrXfuChZV3dxSePDDmgCm0Atr5dvGIpu9LqbxUyPXiXOKS4AFoiabL4CiDVux58=
X-QQ-XMRINFO: MSVp+SPm3vtS1Vd6Y4Mggwc=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251104_173806_967989_1C699888 
X-CRM114-Status: GOOD (  12.81  )
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

Hi Krzysztof

On 10/28/25 19:41, Krzysztof Kozlowski wrote:
> On 28/10/2025 10:44, FUKAUMI Naoki wrote:
>> Hi Joseph
>>
>> Your patch seems to be NAKed.
>> I will submit new patch soon.
> 
> Sorry, what? Don't hijack other people's work.

I have Joseph's permission to post my patch.

Furthermore, this is not the first time, to my knowledge, that someone 
else has posted another patch for the same board. (See below)

  https://lore.kernel.org/linux-rockchip/20241226005845.46473-1-naoki@radxa.com/T/#u
  https://lore.kernel.org/linux-rockchip/20250324-rock5bp-for-upstream-v1-0-6217edf15b19@kernel.org/T/#u

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

>>
>> Best regards,
>>
>> --
>> FUKAUMI Naoki
>> Radxa Computer (Shenzhen) Co., Ltd.
>>
>> On 10/28/25 18:37, Krzysztof Kozlowski wrote:
>>> On 28/10/2025 10:33, FUKAUMI Naoki wrote:
>>>> Hi Krzysztof,
>>>>
>>>> https://patchwork.kernel.org/project/linux-rockchip/patch/20250528221823.2974653-2-joseph.kogut@gmail.com/
>>>>
>>>> On 5/29/25 18:19, Krzysztof Kozlowski wrote:
>>>>> On Wed, May 28, 2025 at 03:18:21PM GMT, Joseph Kogut wrote:
>>>>>> Add device tree binding for the Radxa CM5 IO board.
>>>>>>
>>>>>> This board is based on the rk3588s.
>>>>>
>>>>> Do not attach (thread) your patchsets to some other threads (unrelated
>>>>> or older versions). This buries them deep in the mailbox and might
>>>>> interfere with applying entire sets.
>>>>>
>>>>>
>>>>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>> Please explain the sorting rule used for this file. You must have known
>>>> the sorting rule; otherwise, how can you be sure this patch is correct?
>>>
>>> Huh? I don't have a clue about sorting rule but if you mock my review
>>> let's make it different:
>>>
>>> NAK
> 
> 
> Ah, you were poking around other patch? I should have ignored that :/
> 
> 
> Best regards,
> Krzysztof
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
