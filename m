Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBED4C4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Apr 2024 15:09:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wBNNv5erb7uQTrfDCLBM4yvty8KsxYpBS8RdLyh0n0s=; b=N6HKsi92UR3qe6
	aSuxjrNKuIRGYp+jZXzcxA/SJFagU9Bpr0iN1Rwlbwx+3B+Yz5/uOCPTwlOCuCTMYHd2I20L7/6fV
	WvMRIHZGQLOvh7+mcAPZAso++DoqZzU2nvXC4lcI59I3rUs91r68fJS8i6SRjZ8vfOxdYuwQnkslg
	Y/dv6xpX7bmS+QbrrlyZRUgeaX/rqxNGLNa+6FR13R4BWAb7h2SyoiNr8xTtiRSpJLizGH2vJM5fu
	dhXYl2d0/sw66fCDVydFj0ksf5FGo/MMFVYXnzTPqkhrnOuvGyiBsN5anzIplEZykV3asUQdWAi51
	MiUbHByegPzuCN0102DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzHlj-00000000RZE-285h;
	Tue, 23 Apr 2024 15:09:15 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzHlf-00000000RXK-00EC;
	Tue, 23 Apr 2024 15:09:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id D40F6CE106B;
	Tue, 23 Apr 2024 15:09:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1875C116B1;
	Tue, 23 Apr 2024 15:09:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713884944;
	bh=rRRRqOIkU579WOQd5v8DqfCmc5CmMHDhSIUm1G6qzfI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MMv0KDBIUq9wBLISzmCqyOY3mK+yUsGj2VsjrYHsRH1CZeTsHxYtdpHp/WEsKcH57
	 pBknsDNkE+TTjVqOWpBMQytDtRLNcJf4vvVZmdwLy8dIy9QdxPfS7/rPc0AtDZIhW9
	 isuWSHkq8Tk7exmX+B6nO2Cun2gO/pBWx7mZ3V4XEr1ZRsuVC0Asowb469lEb9PAfS
	 R7hUHSQM3HHkJkBhYxqwDf7onKUJZ3EX02IOyMd/WST6+C6xnJNsl4nimXFeuc7SaH
	 8oPI1mk78/eHRSyHWQIfR+7jLK9XIc46GcsnftGfVM7soDy+jx6aMP5bLQGYBSw4oQ
	 nzwb/f9lm5zsw==
Date: Tue, 23 Apr 2024 10:09:01 -0500
From: Rob Herring <robh@kernel.org>
To: Dragan Simic <dsimic@manjaro.org>
Cc: Marek Kraus <gamiee@pine64.org>, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, didi.debian@cknow.org,
	robh+dt@kernel.org, linux-rockchip@lists.infradead.org,
	krzk+dt@kernel.org, heiko@sntech.de
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Correct the descriptions
 for Pine64 boards
Message-ID: <171388492373.250779.3280449198658307048.robh@kernel.org>
References: <ec124dab2b1a8776aa39177ecce34babca3a50e2.1713832790.git.dsimic@manjaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ec124dab2b1a8776aa39177ecce34babca3a50e2.1713832790.git.dsimic@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_080911_277063_633B2462 
X-CRM114-Status: GOOD (  10.86  )
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


On Tue, 23 Apr 2024 02:43:43 +0200, Dragan Simic wrote:
> Correct the descriptions of a few Pine64 boards and devices, according
> to their official names used on the Pine64 wiki.  This ensures consistency
> between the officially used names and the names in the source code.
> 
> Cc: Marek Kraus <gamiee@pine64.org>
> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
> ---
> 
> Notes:
>     This continues the description cleanup started with Radxa boards. [1]
> 
>     [1] https://lore.kernel.org/linux-rockchip/1e148d6cd4486b31b5e7f3824cf6bccf536b74c0.1713457260.git.dsimic@manjaro.org/
> 
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
