Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C2BBCD342E
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 13:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nSwZcVFZisMFlqhFee8sQFAEQKRe/ZJr4ifjsRY8yMk=; b=FGs9NKAZWksTX2
	tFcSgr9rFpyIqClxv6fizA1CQjfj/v5IhWa4RMKDpOAuLersOPdVCH7mHaFS8mwua0xcDu6qslqSx
	FuhQ1QPdTudkcWzttN4s0J8oGe8ZpzNGsvcHzG6TZu2z6dDAbyV5H1hDEjaKRpIyfCZ3L9u6VhuPc
	dazPtV2rG48VpVSbcsq76w4R/YDVgR2zFE30CDVPi3rUFtDeuJpry4Z5QXt5K/K7o6viTlGW3GpC+
	YqUxflWDz0W7iDA1QTfBcqU1O0hyfQT4kLQ5e2WiZtTzuqVEMevufdidLJqNMw8DtQJNq0fU528jb
	uJ724RrPDyUIzEJ4DzGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slTbU-00000000Mpx-3Cfl;
	Tue, 03 Sep 2024 13:29:52 +0000
Received: from omta38.uswest2.a.cloudfilter.net ([35.89.44.37])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slTbI-00000000Mna-1xiD
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Sep 2024 13:29:51 +0000
Received: from eig-obgw-6009a.ext.cloudfilter.net ([10.0.30.184])
	by cmsmtp with ESMTPS
	id lSsZsZaRKumtXlTbHsIjuJ; Tue, 03 Sep 2024 13:29:39 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id lTbDsZjTSJxsOlTbFscKAN; Tue, 03 Sep 2024 13:29:38 +0000
X-Authority-Analysis: v=2.4 cv=LsmUyGdc c=1 sm=1 tr=0 ts=66d70f42
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=EaEq8P2WXUwA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8
 a=P-IC7800AAAA:8 a=HSDmG33uGC2uzMr5-wEA:9 a=QEXdDO2ut3YA:10
 a=rsP06fVo5MYu2ilr0aT5:22 a=d3PnA9EDa4IxuAV0gXij:22 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=EjfaqFqF+XmogTpsGQkFuU8JUSJBnI7pUXSKmfynpwM=; b=OpBi4fYXDVLm0dvEsGWGdc3T6p
	hRQh5liMUUNo5hOBsz/2Cj7JJMDgYTsRrMRkgSOUP+w3K6p3iedTqLQ38rHqyUbEfsy96WGpNsiYr
	jrXPATJ+oOwe45v6GvbdC5pu8f/Fik3npp3nXw0CsZ4iqt7vl4LCtVxcWLxhHfnatvls21gIjV77h
	qju6o2emyvn5z6lULd9qvk1G5liL3Ogu/9Hu47fWCzltVpQAmdPGqu6dC+uLPfSMfOecTnydLOUjn
	OvrcUnSbO6VYA04LwEvN8zlFEqi9/xkd+HFocDdu2B3uOtsJY4Q5VO/6MWuH9eW/HjuJTA6zBxA0X
	37ZE9kjg==;
Received: from [122.165.245.213] (port=37192 helo=[192.168.1.106])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1slTbC-00282Z-1y;
	Tue, 03 Sep 2024 18:59:34 +0530
Message-ID: <2374e41a-0ba2-4a99-906d-8c165baa6344@linumiz.com>
Date: Tue, 3 Sep 2024 18:59:31 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/8] dt-bindings: rtc: microcrystal,rv3028: add
 clock-cells property
To: Krzysztof Kozlowski <krzk@kernel.org>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
 alexandre.belloni@bootlin.com
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rtc@vger.kernel.org
References: <20240903105245.715899-1-karthikeyan@linumiz.com>
 <20240903105245.715899-6-karthikeyan@linumiz.com>
 <e1513eb7-4ac5-4703-b4ff-2791908f1ec8@kernel.org>
Content-Language: en-US
From: karthikeyan <karthikeyan@linumiz.com>
In-Reply-To: <e1513eb7-4ac5-4703-b4ff-2791908f1ec8@kernel.org>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1slTbC-00282Z-1y
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.1.106]) [122.165.245.213]:37192
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 3
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfNbX2r0ILdcKwfMFy08L6Sttu1a/yLFEiOjpLf+MacQ7x8kwgC1i2U2jxlyzAQYl0SuCESFxRnglTvvXCUEfdSv0j3mtjIiTld4FgYRwTx1u1vc1OAZm
 8nMFecoZk/zlFyKGrszehBa5eAsh++axaQY6Ff5L/4Bw6uhjPIuq70yVxr0mHfsE7XLaQbz8Qnlv1W+78ebscuFC47DUDeJ8rUTNhCewgECaZutRTiFgpjt2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_062940_568249_7253ED98 
X-CRM114-Status: GOOD (  14.73  )
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



On 9/3/24 18:21, Krzysztof Kozlowski wrote:
> On 03/09/2024 12:52, Karthikeyan Krishnasamy wrote:
>> consume clkout from rv3028 rtc which is able to provide
>> different clock frequency upon configuration
>>
>> Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
>> ---
>>
>> Notes:
>>      v2:
>>      - fix commit message subject
> 
> <form letter>
> This is a friendly reminder during the review process.
> 
> It looks like you received a tag and forgot to add it.
> 
> If you do not know the process, here is a short explanation:
> Please add Acked-by/Reviewed-by/Tested-by tags when posting new
> versions, under or above your Signed-off-by tag. Tag is "received", when
> provided in a message replied to you on the mailing list. Tools like b4
> can help here. However, there's no need to repost patches *only* to add
> the tags. The upstream maintainer will do that for tags received on the
> version they apply.
> 
> https://elixir.bootlin.com/linux/v6.5-rc3/source/Documentation/process/submitting-patches.rst#L577
> 
> If a tag was not added on purpose, please state why and what changed.
> </form letter>
> 
> Best regards,
> Krzysztof
> 

Apologies. I'm new to the process, somewhat i'm missing this 
information. I will change it in the future patches.

Thanks for suggesting b4, i will look into it.

Best regards,
Karthikeyan

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
