Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D637BCD11C2
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Apr 2024 05:24:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gIT3jIbkl/7HMMKDP39n8GfqT8c+uJI6IiV2X+9Nmsc=; b=PA27DiUyThudz64YfTB+yAcFer
	AouCdULB2JVU/ic02C3c5Rp2zWFl1nfZN2HrLc8yBX+d0viihUqYd9Ck4HbkjEEv6MDkoqRjUK6CY
	ElMVWnbqYIAFuaL5RHVHp3PjWa6YP19NZxS8CL41P+vGMjWfY6Ci2jtbrU7v44nkgjdeNqsyMv3xm
	cFkefxW9bKhfaPhMhmcSietIqainL+neknAXUMhwo/DoGA5KQNFHXQfxs7uAlhraED2aUJUMBi7lj
	RCvMcXDqW2MgmKzM3fVODWRiUyUPfFWBzpcy9ta9+DkbAj9JlJSiFR7Nb3SEnEiOFaMrk7R/buw3e
	b4M3nO0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruQRp-00000005BQp-3fRP;
	Wed, 10 Apr 2024 05:24:37 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruQRl-00000005BPO-167V;
	Wed, 10 Apr 2024 05:24:35 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1712726667;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GRp2XHxjjL0oPdAnwj+GE/FeGz7oZPrX9tVo9HNUQug=;
	b=dRCvWeMQY6aMFslHJzQe1GCqWfIWV8b2DaYBSCtwbeS7i46TIf6kYZ+PSwjRFeVAtDJ7WG
	+pMZ46ViAI2xUWzCyQ2/rZQ5a6T6l8iKp6+vk1v43QU0oGHdH2m57AvgOlAurhMrRJoCqq
	8Mf24+2cSghQGkCpSrgCZQlZWevGTpCqPF1W7N/i+F3W2rXYzatSJdTAprT8VQh+LSTr4b
	+zIsWXDA6BHMdf8wV6UO43Gaio2qZ5WWhgG3a/3KIDzfXv37GWusu0eB2v7qTeb63k8fhW
	QjoIj0KqqWYr5KUGTDSX4QTByEL8wAMxmsiL/h+O/INRNVYpINmrd0u+7knLTQ==
Date: Wed, 10 Apr 2024 07:24:27 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Designate the system power
 controller on QuartzPro64
In-Reply-To: <171272604789.1867483.1717225065687252209.b4-ty@sntech.de>
References: <c602dfb3972a0844f2a87b6245bdc5c3378c5989.1712512497.git.dsimic@manjaro.org>
 <171272604789.1867483.1717225065687252209.b4-ty@sntech.de>
Message-ID: <231f154d66369b5c204684ee9f47b3ce@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240409_222433_880155_5CE02033 
X-CRM114-Status: UNSURE (   6.82  )
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

On 2024-04-10 07:15, Heiko Stuebner wrote:
> On Sun, 7 Apr 2024 19:56:24 +0200, Dragan Simic wrote:
>> Designate the primary RK806 PMIC on the Pine64 QuartzPro64 as the 
>> system
>> power controller, so the board shuts down properly on poweroff(8).
> 
> Applied, thanks!
> 
> [1/1] arm64: dts: rockchip: Designate the system power controller on 
> QuartzPro64
>       commit: c2b6d3a2bbf6352f7cddff2abe81dc4af4887672
> 
> Added a Fixes-tag

Great, thanks!


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
