Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06F4FC4167B
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Dec 2023 01:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i9678e2lgRbJp+93dFcRG6tyautNUPKc6LE4n/qBNtQ=; b=l2oNrByvuPkYxR
	XBWfggFl6NrC3Hvsa50U0u/oBfiJr29LXUYZVOki7+QF3HUwQSisNsQ/PiJbTB7alWeOpj58GPOyZ
	s1ZSvmJTzFcwhDZOwqCCb/9MsryU6OPOyvzL+FmlMQhzEPr9IHxGF+jg7wp1X9x7wyUQ2l3GWYfbi
	QL+ZlR9eobKpBxD12x83jxaUWUt6IcDIWYJ0rjC6sfQ8DpjJVOGElX9EDmqwELQT0irKdlOHF6t1W
	YjjdO2CLryuqY5umuJBEKR+wCYY8AA5xbQ+zTfIDsfPiJxg1+TI/dL3Ad4wLGSsk4LBEMVXJP4jth
	np7NJrWLXw0mt+ILnCqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBmBF-00Gu6J-32;
	Sat, 09 Dec 2023 01:30:57 +0000
Received: from mail-m1284.netease.com ([103.209.128.4])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBmBC-00Gu5f-0S
	for linux-rockchip@lists.infradead.org;
	Sat, 09 Dec 2023 01:30:55 +0000
DKIM-Signature: a=rsa-sha256;
	b=U1A4+o27k8BpDm6vFDm5SLrPKgl34qoVXMOQvOQXRouyshE2USxFMrKUjLBvZqvahaN1PDUCU9HgM8uXSy5TDh1x+LvZ8qX0ywxXkpfTKNVHxQ+uRjDBsoVLKkvr0UTUWJ/zfKU6kxJF2fJr5Yq6Q7h8DxbwtRVqxybgTYz2VTM=;
	s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=3ZfnCGij/I8m1TiIlexdEuiMXvToZHxbD5kG64olyL0=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by mail-m12779.qiye.163.com (Hmail) with ESMTPA id E461F78018D;
	Sat,  9 Dec 2023 09:30:30 +0800 (CST)
Message-ID: <e0181a1a-b649-4f38-b4f8-f5ee22bcb356@rock-chips.com>
Date: Sat, 9 Dec 2023 09:30:30 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 10/17] dt-bindings: display: vop2: Add rk3588 support
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Andy Yan <andyshrk@163.com>, heiko@sntech.de
Cc: hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 kever.yang@rock-chips.com, chris.obbard@collabora.com
References: <20231207075906.651771-1-andyshrk@163.com>
 <20231207080133.652417-1-andyshrk@163.com>
 <0915b94c-596e-4a19-925c-1a5b1d0a3531@linaro.org>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <0915b94c-596e-4a19-925c-1a5b1d0a3531@linaro.org>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkhPHlYZHh9JQhoZTElMHk9VEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5JVUpLS1VKQl
	kG
X-HM-Tid: 0a8c4c328fdbb24fkuuue461f78018d
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Kz46USo5Hjw1Gk46LB4pSwoO
	DkJPCx1VSlVKTEtJS0NOT0hKQ0lIVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSE1DSDcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231208_173054_357466_921C7503 
X-CRM114-Status: GOOD (  19.30  )
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

HI Krzysztof:

On 12/9/23 01:46, Krzysztof Kozlowski wrote:
> On 07/12/2023 09:01, Andy Yan wrote:
>> From: Andy Yan <andy.yan@rock-chips.com>
>>
>> The vop2 on rk3588 is similar to which on rk356x
>> but with 4 video ports and need to reference
>> more grf modules.
>>
>> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
>>
>> ---
>>
>> Changes in v4:
>> - drop redundant description.
>> - use full stop at all the description's end.
>> - address Krzysztof's review in v3
> 
> What changed? Please list specific changes, not just generic "address
> review".
> 

Sorry, I will keep this in mind in the future.

>>
>> Changes in v3:
>> - constrain properties in allOf:if:then
>> - some description updates
>>
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> This is an automated instruction, just in case, because many review tags
> are being ignored. If you know the process, you can skip it (please do
> not feel offended by me posting it here - no bad intentions intended).
> If you do not know the process, here is a short explanation:
> 
> Please add Acked-by/Reviewed-by/Tested-by tags when posting new
> versions, under or above your Signed-off-by tag. Tag is "received", when
> provided in a message replied to you on the mailing list. Tools like b4
> can help here. However, there's no need to repost patches *only* to add
> the tags. The upstream maintainer will do that for tags received on the
> version they apply.
> 
> https://elixir.bootlin.com/linux/v6.5-rc3/source/Documentation/process/submitting-patches.rst#L577
> 
> Best regards,
> Krzysztof
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
