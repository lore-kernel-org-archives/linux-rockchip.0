Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 080CECE7AFD
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 10:02:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Cc:References:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TVkv867LaW2NIw1qRvPPhmKZZqpDhv5YqSa4SI228/0=; b=BQYjeQIDcGwh4t
	Oxq/ZOEQ++e7Gzw1o0ZMsrHoIoNMLAO0x99GTWTkIN6pEj6SRpxQqQcAzQOp3IgUaXKIrUaLDeLK3
	uz119enh87tqjb1X9bVpUwGl9KPrWWqF9K7UneUEgf6UwoMWFUlI078JcpTvCNzfhARbSOZ0EjUvJ
	DbhIgjPg8ZeSXJhi+AQSs73T1pbwpbcOghb2Y4vflIeSItLUSkZF2L6h60t4Nz06NOtKEbl0B3NVR
	c/R2LRYpRRYBV1IgmVJJyiAIyC7t7wY2Gn0ZBtESOeb8O0rz5NbR1vKgZiuO4CyvKib6KvSLGtveQ
	GedpmjD9HOZy/AjARU6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smVni-0000000BfD5-28Na;
	Fri, 06 Sep 2024 10:02:46 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smVVc-0000000BZxC-2929;
	Fri, 06 Sep 2024 09:44:05 +0000
Received: from [192.168.0.160] (unknown [14.155.100.110])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 145BF789FD;
	Fri,  6 Sep 2024 17:44:00 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 145BF789FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1725615842;
	bh=iDtsoB4FhtzTth2ly/Rlt/UP3pyhI3sXe4qSViiTolE=;
	h=Date:Subject:To:References:Cc:From:In-Reply-To:From;
	b=Q8a3zPR7/zQ3WuGKSSNI6EovYNdPYoVsAkSOqIP/eSgLygYYugPgUU+w5Ap1NCWRz
	 aRobA0EoSl8ls8OMdl/KkELuvlnbYDVjkAhwkQquR6BfZs3exz0/iOQQBrcElmf1/f
	 48jsncK9Aq52wCuFqerA4GN9dyA5SHskbILqSugY=
Message-ID: <3d20a67e-c545-4491-b9a6-1a2b1c364a78@classfun.cn>
Date: Fri, 6 Sep 2024 17:45:27 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] dt-bindings: arm: rockchip: Add Ariaboard
 Photonicat RK3568
To: Chukun Pan <amadeus@jmu.edu.cn>
References: <20240906045706.1004813-3-bigfoot@classfun.cn>
 <20240906084005.74239-1-amadeus@jmu.edu.cn>
Content-Language: en-US
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Chukun Pan <amadeus@jmu.edu.cn>,
 FUKAUMI Naoki <naoki@radxa.com>, Dragan Simic <dsimic@manjaro.org>,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Junhao Xie <bigfoot@classfun.cn>
From: Junhao Xie <bigfoot@classfun.cn>
In-Reply-To: <20240906084005.74239-1-amadeus@jmu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_024404_749775_B9FA50D8 
X-CRM114-Status: UNSURE (   7.91  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2024/9/6 16:40, Chukun Pan wrote:
> Hi Junhao,
> 
>> +      - description: Ariaboard Photonicat RK3568
> 
> This should match the model name.
> 
>> +        items:
>> +          - const: ariaboard,photonicat
>> +          - const: rockchip,rk3568
>> +
> 

I will correct it in next version.
Thanks for your review.

Best regards,
Junhao

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
