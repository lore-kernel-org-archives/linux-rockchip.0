Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF7D2C4829E
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Feb 2024 15:09:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w6ON1UTZcOeMzTPw4boY491bQhUZzI7vagL7GMLAAuQ=; b=iUb48E9XfRRiPF
	NUKDbkItLNfySwMNW9HNlOOe7hHfP/eEucwKJO0b1aPsdCJsSLlM2Fu2f6GGmepD+vnzqNxPeNPCs
	sVGkG8adOZhCorJ93rlDaUAaACRnVUJnQY6JFoGIC86j7bt/As12YqCSH3NDL6cSed89sFpOqnrJn
	QYzHYawnbOSeeCrz72q7kjgDnWz0wcWpLw+fAaucM5Q+UXl8pTrOk0RnUs1HAkk2mGG40oZ2ZUSTw
	ASz3HnZ+v0I+q+thvb9Ens7lpusp6Ynj5QnBSz7sAarRLF7ftToaitxO56l2xb5AxdItBkJTViuhr
	TRqhN7nERZklh5YYWHDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1radMZ-0000000Gfit-06SK;
	Thu, 15 Feb 2024 15:09:23 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1radMU-0000000GfgS-489U;
	Thu, 15 Feb 2024 15:09:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 713DA61766;
	Thu, 15 Feb 2024 15:09:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E65A5C433C7;
	Thu, 15 Feb 2024 15:09:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708009758;
	bh=UmSuqy1e0KO55/hZOC+tsKy7sIDZ/d3eWv4j//O/vCY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bDsd+9ytV2t0oeK9R4hYEdsx/hmlcomT2jY59gJpUmDpc60AbobevxuClshAPLyvT
	 tELy6AjllNsZhEC68tNhjuFUc4XLMs59lveBLL2RTsAanxA5YyE5E2iHHzla/4Pvl/
	 HqbjmReVWf8pCaqV7V3oNGaW58rIx2pOU6g3YgzI10c81H2ixm87461zanqunnwmo3
	 Gvo1PhOY9adhiNvBmQcNNXS54C8wpq0eSuoCVvz01Dg+RWuaV3XYxorDQqnyNXBMk8
	 Lgkk+JoE/Jde48PFX1xeg3YazCDfS/8JU+zvu6prGGClRKKkwX1W07hFh6rDyETk94
	 k/8lU7NvR9jZA==
Date: Thu, 15 Feb 2024 09:09:15 -0600
From: Rob Herring <robh@kernel.org>
To: Tim Lunn <tim@feathertop.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Tianling Shen <cnsztl@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
	Ondrej Jirman <megi@xff.cz>, Andy Yan <andyshrk@163.com>,
	linux-rockchip@lists.infradead.org, Jagan Teki <jagan@edgeble.ai>,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: arm: rockchip: Correct vendor for
 Orange Pi RK3399 board
Message-ID: <170800975373.77965.10834715351049347685.robh@kernel.org>
References: <20240214040731.3069111-1-tim@feathertop.org>
 <20240214040731.3069111-2-tim@feathertop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240214040731.3069111-2-tim@feathertop.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_070919_086693_367EE9E3 
X-CRM114-Status: GOOD (  12.05  )
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


On Wed, 14 Feb 2024 15:07:28 +1100, Tim Lunn wrote:
> The vendor for this board was incorrectly listed as Rockchip. Fix this
> now while they are not used anywhere, in the future they may be used by
> bootloader to select dts.
> 
> Update the vendor to Xunlong.
> 
> Signed-off-by: Tim Lunn <tim@feathertop.org>
> ---
> 
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
