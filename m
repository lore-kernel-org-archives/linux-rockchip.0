Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7725AC55822
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Aug 2026 07:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KmyahS64J3forhOfEofjNh6tDqohzpdqKHyPd65fb2o=; b=oW9svPWnj5Nt6X
	CxcEIoCOLD338tgc0+6BDCIYbaGiVbWEx0VIxgDoDtBdVHmYzDLSYwVqyU5VhnvRTXPJ4JSdo3oSh
	AhuzdCaMOZcZTjRY+M3L5Ij+1RmAYoRoCQV7HjUrFnhm6UpzFOEAa5p5OOcqOaIE+iPXngVAiWq5h
	KNyVU7suo73fJ1E8a9UWFmbbOm9HNFVnQamU7+tWg9iFRwdWkrlYmbghJozquoQfeJ3lHfkajcT9d
	PFz6IFDUT88MmUleC18U6/5bhgLxPzvZiTY1kza1Ox0cR8J+fwGOcnlw31KqKjYQoBQ+FNmtATGK9
	EA106ciLrZTUN3lkNc5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrVx1-00000003Oo1-0sro;
	Wed, 05 Aug 2026 07:22:07 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrVwz-00000003Ona-03yf;
	Wed, 05 Aug 2026 07:22:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 10DBD40BB0;
	Wed,  5 Aug 2026 07:22:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E99271F000E9;
	Wed,  5 Aug 2026 07:22:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785914523;
	bh=UhXMBPrI6xyKgwv/Cdo64nXosd6ylTy7jcgGsAbM7IE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=SNMtOmDbcY5mDj06AJKz04vBSa77xPwy4HZWGPMClSs/iir58R6wqDPN/LmG4l252
	 sPz9uBSokG6Rn7lZisDEiakQnZzyxGMg2cVHUb8IcvmeRj3knUq0nlmGmfTZMKTOQ7
	 fnH4Xu4HNnZyPj6u2rCAQw2YWmKGbRWfZv/4YklC9Nr5Y6kzZo5rWiYN9LcqxnrEQ0
	 gAaC3c9NqgNnkPeWtDUZUBAZT344cefJAXdxq0TUTaY1Qm3HXpHstIPGa4VM13ZdtL
	 67/nC2zP1AOhxBMVZAaamr8Yrbzm7e700pubrRPsLb4q/j4WtdtVlWux4Ia8UE/W9m
	 C/RHp8pHPqZMw==
Date: Wed, 5 Aug 2026 09:22:00 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add MangoPi M28K
Message-ID: <20260805-robust-holistic-bullmastiff-63cc58@quoll>
References: <20260801080018.3220034-1-amadeus@jmu.edu.cn>
 <20260801080018.3220034-2-amadeus@jmu.edu.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260801080018.3220034-2-amadeus@jmu.edu.cn>
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

On Sat, Aug 01, 2026 at 04:00:17PM +0800, Chukun Pan wrote:
> The MangoPi M28K is a dual-gigabit SBC developed by Widora based
> on the RK3528 SoC. Add devicetree binding documentation for it.
> 
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
