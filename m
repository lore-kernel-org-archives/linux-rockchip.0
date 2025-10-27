Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C0D2CCF9E5
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Oct 2025 19:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YrfMAsnIQOJHZ/L9DaZk+feRC33ua3tnVhSAxd3VhK8=; b=Sira0HpmUNnmZX
	T9n7++dAJeIOqDvVjkEmRrg1tTPqKIsKiMDY2Sv8FMF+KNjQphS+H7guTcny6IxWep1H+iUEeU40p
	AfV0gb38iwllkWTKCI8r6vtFH58YnZsmiB3kaR6stML3iar9VUZiO5ByUq4qeMyb+HT54zYuahJOa
	twEeruCqEwQfEI3aS+KdMaZnuxU3z/rJR0fe2fEhQ8BBjQ0jvrL7BTMV25T0jiOoaJiwGaq72BqiI
	RC8UDFezV6mpbPSB+uziXyX7YyXEcLpgfaLcxSUbPM8/7vFNi/9+zpceurF9rBZtHGXv48vDfAQOj
	JipIx8mkpOeuBveX2MRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDSya-0000000EgGw-3JIC;
	Mon, 27 Oct 2025 19:33:56 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDSyZ-0000000EgGG-2Gxq;
	Mon, 27 Oct 2025 19:33:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id BF71662079;
	Mon, 27 Oct 2025 19:33:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 065A5C4CEFD;
	Mon, 27 Oct 2025 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761593634;
	bh=GBuTHku0HZy+N4bLq8h+zIHugchhObZYaWI/ZaqLViI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CB2wAqAXCd/BB8/BunSqi7t8cuGIdnwMtSgaxpuj9p59XOiO31MeOL5zM6ifVnaV4
	 iuefubtyNvSxYAwTvkUqis4tKHehdEQQrq+lrA9ebAKQdR35IBWt8ReFf2UUAiJQGj
	 ykqic2i6CR6itbn9zTBbYqjLO4YJAQkAxTVw8ao39GzzAJXGIh/WajnI7x7A9REZNd
	 tXcFYm6NoY7SrLpu6wXXdPoUle/k9xXO+mnqaHpYAgHVsKzApXvfeGA59TAaKiGiAw
	 fIOLe7G557DyFoPl/tLx/MjdFdN0SF6i+nu8D9igcCv4lxbqmyyYLlAAJMQQlG9QEc
	 xxXSDeMBK008A==
Date: Mon, 27 Oct 2025 14:33:52 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Coia Prant <coiaprant@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
	Dragan Simic <dsimic@manjaro.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 2/3] dt-bindings: arm: rockchip: Add NineTripod X3568
 series
Message-ID: <176159363059.1460567.9335053361524523986.robh@kernel.org>
References: <20251026150358.1078453-1-coiaprant@gmail.com>
 <20251026150358.1078453-2-coiaprant@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251026150358.1078453-2-coiaprant@gmail.com>
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


On Sun, 26 Oct 2025 23:03:57 +0800, Coia Prant wrote:
> This documents NineTripod X3568 v4 which is a SBC based on RK3568 SoC.
> 
> Link: http://www.9tripod.com/showpro.php?id=117
> Link: https://appletsapi.52solution.com/media/X3568V4%E5%BC%80%E5%8F%91%E6%9D%BF%E7%A1%AC%E4%BB%B6%E6%89%8B%E5%86%8C.pdf
> 
> Signed-off-by: Coia Prant <coiaprant@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
