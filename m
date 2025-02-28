Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 422ACC282D0
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Feb 2025 20:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FOYqgKnVRsqADIDbPA1ncr+7+fXSsghVzudEwPhq2eI=; b=T6UQ1GAC9r4jbR
	dzCc1mIYP5GtXgSXV4j+eL6q7rGRAPaktFdVsCAjRf5VX8wOFK/GCUpaej8+MHHCXSSYeOSQBSwMH
	qNGokpWD72qn6CSIn1Kuy/5KneZ1QApCRTulBlr+aya60mElMBse1p65tthx3Rngvt4atYarPp/cs
	Ne+3/r9+azOKxDOMiGETPTfVM5A/M0Aq91XShy0ijwo9xgcXY9KuJ5ooAWdKgfgFCKegg9AyPawGg
	Xy/X2WlRTuGRs8B9/oOQA561qH4zfFCkv2fmmUGD6AIwjR60ID2A8fnOG4uvdAti+StAbQTlA7+3n
	6rGnI7pqoz0j49K+z/gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1to6vp-0000000Cb0O-1tmX;
	Fri, 28 Feb 2025 20:26:01 +0000
Received: from tor.source.kernel.org ([2600:3c04::f03c:95ff:fe5e:7468])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1to6g9-0000000CVyS-0CON;
	Fri, 28 Feb 2025 20:09:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id B2AC861FC4;
	Fri, 28 Feb 2025 20:09:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF4F6C4CED6;
	Fri, 28 Feb 2025 20:09:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740773387;
	bh=CcsjvI4s8nt3qjVDCr68+9sFHV7ptEqC8BGwTZNTugw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=N9B5TJvOntFWEtmuNvKnpa1nHATisyBvmI4Qs41ewlfntfxp2JCcwjx3tu4iWHkoh
	 0VoIasoeEEnHN3k8GYAgUCM0ZfEdAVVo0ol3CdGCPqCTPyniRqyZA1dW+UOoPQOfdm
	 tl1zvyHYzWMICYhVH/h2VXtLKOC44N8nboTEvqh4qtwEUl8HJCf/viUVoW3xdTtCRe
	 8VUtkuf6rZOsGruc5zy+T6PbQEaFP4BCszqT9E4C4TsW/mYm/OTPw+8+U/xetm06gS
	 blEf/0y1CX83XNgT0exFy00jtCFhD9rFO3eJXzlGRtymZySLdm0TwuaU2Dusosirh9
	 TBboOv3trjEOg==
Date: Fri, 28 Feb 2025 14:09:44 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: linux-phy@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, linux-kernel@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: rockchip: Add rk3562
 naneng-combophy compatible
Message-ID: <174077338453.3518826.4750088621864636437.robh@kernel.org>
References: <20250227110836.2343158-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250227110836.2343158-1-kever.yang@rock-chips.com>
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


On Thu, 27 Feb 2025 19:08:35 +0800, Kever Yang wrote:
> rk3562 use the same Naneng Combo Phy driver as rk3568.
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> ---
> 
> Changes in v2:
> - Collect review tag
> 
>  .../devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml     | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
