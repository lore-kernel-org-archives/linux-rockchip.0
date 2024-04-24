Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D13FC10F16
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Apr 2024 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/p/ootG1T39z8qPeOREh3QtImeRh1puXnrDGFRe+2tw=; b=Sthkc9jDiahkSb6yQUDTOceHmU
	wOjt06kMkHuqCTlb2xnLSoAUuIiU0sT0ruraaAJD+Gr3jEyeB+ntqQcZFHOgNJ6v4tPHTtXE8dkh6
	OCgO3n/2FutRaTX13ksGdX427Q4uDFJYOo9YXWP1VBmUqbrR2+AqtltJboFZHxlX5d173eZ1ixF3s
	7+WjyGOegW1RKQdjjL+KjpeChAWtWrNMWRmbe9ANAKEuRJassO241iOypE+CnSufPGxi0xdJTnJBl
	QmLttWsjG/wjR5nP3NBB0wQTQoLfeGU4+Dpj9PJw3UzXNhYKHMeOQUSw4qG6tofVTCyFfmEXtyVD2
	8M8KH6GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWIH-00000002uDP-0FOg;
	Wed, 24 Apr 2024 06:39:49 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWIB-00000002u8b-2SRB;
	Wed, 24 Apr 2024 06:39:45 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1713940782;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sU6Lg3T730x67q5TNnFx9GR4FQZTeQCJKcEZaJjZkgE=;
	b=CsKs7IrQD0Y/5BV+OjWhOGmKH6JgniVl71Rphd1nvbXLX57PYJye0aTD2UXGjP5GYE7dCw
	32QWo0/fFmw0fo9ZSXq/fzWzLtC9BN/E3wewWFWtwRwmoschgwReHSGR/qF4fsoyYNZEny
	RRfvTw3b6WtOBrFGTXEn6L7df6xfVttRR1qAgtr4rVXs7iEvObwGCRmV9tT9EIy1wiNbLJ
	racgozgOqfVBpGdqtTqXKGC+0B/IVUTi5M0k8WvA/zC8g4AHSZquwk2G9HLAqSyQi5fWzP
	jk1uifOb2M84QK8KrfcA26zFPMJ7ro7qU70/s6Yg06FPD13gif/8N/XtqWmp+g==
Date: Wed, 24 Apr 2024 08:39:40 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, krzk+dt@kernel.org,
 amadeus@jmu.edu.cn, linux-arm-kernel@lists.infradead.org, FUKAUMI Naoki
 <naoki@radxa.com>, robh+dt@kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, conor+dt@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Correct the descriptions
 for Radxa boards
In-Reply-To: <171388532520.2652222.16202058595399007422.b4-ty@sntech.de>
References: <1e148d6cd4486b31b5e7f3824cf6bccf536b74c0.1713457260.git.dsimic@manjaro.org>
 <171388532520.2652222.16202058595399007422.b4-ty@sntech.de>
Message-ID: <c5617f5eff7c057f8ad7d591d148f20e@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_233943_835061_5EA36C93 
X-CRM114-Status: UNSURE (   7.28  )
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

On 2024-04-23 17:15, Heiko Stuebner wrote:
> On Thu, 18 Apr 2024 18:26:19 +0200, Dragan Simic wrote:
>> Correct the descriptions of a few Radxa boards, according to the 
>> up-to-date
>> documentation from Radxa and the detailed explanation from Naoki. [1]  
>> To sum
>> it up, the short naming, as specified by Radxa, is preferred.
>> 
>> [1] 
>> https://lore.kernel.org/linux-rockchip/B26C732A4DCEA9B3+282b8775-601b-4d4a-a513-4924b7940076@radxa.com/
>> 
>> 
>> [...]
> 
> Applied, thanks!
> 
> [1/2] dt-bindings: arm: rockchip: Correct the descriptions for Radxa 
> boards
>       commit: d78084cdb5a959a5759efed9b3bc3182d005073c
> [2/2] arm64: dts: rockchip: Correct the model names for Radxa ROCK 5 
> boards
>       commit: 45e831033f7a00a14f64afa1e34c476a9ff0f9f0

Thanks!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
