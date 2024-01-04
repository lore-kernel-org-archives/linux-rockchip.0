Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FD8AC47074
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jan 2024 08:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rMO/d72aXYxWrHh+dZXTjHCQbvIR8pHjh+WqzqHju9Q=; b=EcVTOOLflJO4sFhjt+zXjfuFOE
	XNeVOMuV3D4dp+eFFClmQe24gs4Qw6u5thcZY6QNGALX00Z6S1/FemxiFIceUKijdq686MOd+jdwA
	N4IlRdAIV9HHSkJcSxYfkLrzjcf7UPYBwj4+3fz/ttOyF4VZnCl2xMKTVBLC5emEkZWC0HtlgV3A1
	TP7tWhEA08cuqVK4+NHLb+GimoMKhJ+qaiXpl5VszVJ6QtnNrgJKwOfA1eqMm5pqXIc6vxLKqCAcJ
	Gc3a7+BnE/YmewIlDfCgjci4xY/0Eb0QYRnRfO4wU8GFkUtgI+PCNOsOlgTSO/aF/1tirH0Ad5oWU
	TzfCT+wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLJVt-00DHMF-2X;
	Thu, 04 Jan 2024 08:55:41 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLJVq-00DHLX-1Q;
	Thu, 04 Jan 2024 08:55:39 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1704358536;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=pbNALQpXNCDpGEp9DXfwz7sC6bAlhKRk9rvFEXGRAhA=;
	b=NMc4BmLiSHOfYytOUBp+Yj92EzTSfGqkiB5eJORd8m14T0IOlqtCU3/qsEcOgz7LfvKD1W
	Mnwex3uDFaZ4do0I30D+FA715QAjNv7oIYBktlFArv2W6gsaQtigf6XLg2GeGzURi4WDyG
	A+isAVLqz7G+nfEgT2/UHuh2ZyUs7VyhVIVkYZyfI+jVluv0d9AIVySnrvzwKPBpMRFTT8
	fRxfzeqx2XVPq0G1FKBxy+OuY/fv12GhDPgbH+oZPfXsWV1c00lVSpU5/3wxb0NAETPWYG
	ANTJSUQwKhldoOMFQjjHOdRGYdmbz3AudIEjC5lqBmMFMxcI2Gw5FiWuaEx0qQ==
Date: Thu, 04 Jan 2024 09:55:35 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 Kyle Copperfield <kmcopper@danwin1210.me>
Subject: Re: [PATCH] arm64: dts: rockchip: Add cache information to the SoC
 dtsi for RK3399
In-Reply-To: <0476656a-6d3d-4662-879a-1caf0efb4d9e@linaro.org>
References: <be3cbcae5c40fa72a52845d30dcc66c847a98cfa.1702616304.git.dsimic@manjaro.org>
 <665196c24beafec415e4a3123cc625c8@manjaro.org>
 <0476656a-6d3d-4662-879a-1caf0efb4d9e@linaro.org>
Message-ID: <fc03e6046bba49b6a4b0794412e0bac6@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_005538_650146_682A1F83 
X-CRM114-Status: GOOD (  10.26  )
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

On 2024-01-04 09:51, Krzysztof Kozlowski wrote:
> On 04/01/2024 09:50, Dragan Simic wrote:
>> Hello,
>> 
>> Just checking, is there something preventing this patch from becoming
>> accepted?  I'd appreciate if you'd provide some feedback and let me 
>> know
>> if there's something in the patch that needs adjusting.
> 
> Merge window? Is it a fix? If not, the cutoff is around rc5-rc7,
> depending on your SoC maintainer preferences.

Ah, I see, thanks for the clarification.  It isn't a bugfix, so I'll 
send the patch again during the next merge window.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
