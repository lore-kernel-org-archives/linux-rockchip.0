Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE086C54E64
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 17:57:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A3sxn7NrwguZpJ70Zgvz1mHPh9NMwk/UmNm4mP3Pj6w=; b=JE2RY1A3DYVyqZrKWxavPS3Fl/
	zuCk8A5u1yk85DyFSJIrzmS0XU2ARbcOQp5cWtN3fvBh8JkvFc0Q0bv+mRyVD2l2YRd3//KqA3Fib
	L/+rUkecOkFVRLGnpZRdx/CSLgZqsZpFYRdbEPfargUJRJx/HBEHe9zdjOyAxMs6kxuyVDPSCTuqx
	kRNM64BI7HP1/15W9rkK6yXkwBpra9e/xOLJri996ZHDNvLtI8IyAq7VJFc1pwpEmm/V6YNWqHy8w
	0qR2V+JGYNYhS8LnxZ3LyHFDXpxdfxuE87GP5oLXIQC6yGUgk1rwRIP5dVr6fqO6su/eFVm9CVLK/
	OdNfSC7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rooZV-00000001Cjj-2ns5;
	Mon, 25 Mar 2024 17:57:21 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rooZM-00000001Ca6-0t7Y
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Mar 2024 17:57:19 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1711389428;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=waaJ45N0q1+yX+tLJelt959hvtyr4Lfyhzr93KV2zDE=;
	b=M+2amJJyWysc4f0raGcDCL8SHeCmJC80IfA3dE3SbyLKAcnGSK0IxSmJQmK/xgRzFOyhe0
	jFOldt6Y+kSsLUEqcg1JU1IqfX/kFQyU6A9TFC+b1cxAGAa2n7WRR8VRp33k1dArjxtSlv
	EIgtqGiQpzUENN0uYkpDWcm1nD7JCSxhiGr9RXofCs410dpipoPQNidsPZtSuN4VDKnf7r
	s+t2VXJJEtjxQ1eHyVc8nnykMjAQFFB98gluoFZOCznmJj1rOUqllTxCzLFDlsqObWJt0D
	2PZ0+FoapNgwIIjTN1UPQar6RjjmcQQ1DYuPHeHl8BwkSQhj7tiXBRDTkfdowQ==
Date: Mon, 25 Mar 2024 18:57:06 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 robh@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 0/4] User Requested Fixes for Powkiddy RK3566 Devices
In-Reply-To: <20240325175133.19393-1-macroalpha82@gmail.com>
References: <20240325175133.19393-1-macroalpha82@gmail.com>
Message-ID: <5e2f0da3fc066cf1faddda71bb6ea2e7@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_105712_886034_9B17FD0F 
X-CRM114-Status: GOOD (  12.10  )
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

Hello Chris,

On 2024-03-25 18:51, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Users have requested fixes for Powkiddy devices to help with some
> intermittent WiFi issues by adding additional properties to the
> SDMMC2 node. They have also requested that the model name be
> represented consistently with both the manufacturer name and model
> name. Lastly, there exists a second configuration of the RGB30 with
> a slightly different regulator layout we need to describe.
> 
> I have added the new/additional property of "chasis-type" as well.

Shouldn't this series be labeled as v2?

By the way, regarding renaming the mmcX aliases, maybe that would
actually be doable, but only if you have full control over software
that runs on these devices.

> Chris Morgan (4):
>   dts: rockchip: Add chasis-type for Powkiddy rk3566 devices
>   arm64: dts: rockchip: Update sdmmc node for wifi on powkiddy rk3566
>   arm64: dts: rockchip: Correct model name for Powkiddy RK3566 Devices
>   arm64: dts: rockchip: Describe Alternate Regulator Config on RGB30
> 
>  .../dts/rockchip/rk3566-powkiddy-rgb30.dts    | 30 ++++++++++++++++++-
>  .../dts/rockchip/rk3566-powkiddy-rk2023.dts   |  6 +++-
>  .../dts/rockchip/rk3566-powkiddy-rk2023.dtsi  |  4 +++
>  .../boot/dts/rockchip/rk3566-powkiddy-x55.dts |  4 +++
>  4 files changed, 42 insertions(+), 2 deletions(-)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
