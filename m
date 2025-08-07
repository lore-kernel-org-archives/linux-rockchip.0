Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D93BC87FCF
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Aug 2025 07:57:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=buJr0AutRzSCe4fufWf5/JmQWgaFcosMpUTZWsm+M8A=; b=NOCd43YJr2l7sX
	BmdgFvjDV6EoEZ1Hn3By2zF7Qx7XH/Xd2d0E/fkHZ0vgRao85HMPA4jHVNNVP9KuE5tmYB2qmqKvx
	Hw/g9HCaOTBSKG0D/m5eIsMv30cElE837u8rgDMzn86lF9vIydL2jdM+n21ZWAGEW/cdzU/ED4EN/
	VCRG99QGM9T5+yCXJCDUR6BRlphMAQ7RxW2obr83wNfZuJJcj6+ut2Fa8ZiTb99VgE6cAinaZQbDV
	TgYy3WJygTtruq1Ak8pKcKRzkGtVZfTcYUrgjS02TcBMszRnZNeKEVZinAaKyC9Pcar+8MY+0x1pI
	zIKtYrmQXdWnCuFLvtwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujvVY-0000000HWp8-11RI;
	Thu, 07 Aug 2025 07:57:52 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujvSe-0000000HWKd-2uOW;
	Thu, 07 Aug 2025 07:54:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id EE9EEA5580A;
	Thu,  7 Aug 2025 07:54:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 063BFC4CEEB;
	Thu,  7 Aug 2025 07:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754553291;
	bh=UDjX5P2i0+5VBmpt0BakLkDuU7c4ejIdGwCkBnB5Kws=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IKwdCxeCGn1c/t/KwbfMscwvKAczuiqx86CJW35IduP32RJ60oYcXJw5+suSgG44s
	 KL5mCu0dvGt6du3sKfJJEn9sv7nAZWydO3Ie5av2X5c+1kCuS9+5FX4aPQC6W46f/9
	 XXmUaGgedp9kmAVeKad31hZyrrpNsntiloefusMmmjUFQSaaxILGZbjE5Bym7RBXsC
	 ROfZAERid55SRLI7wuisiQkYXQK/+JcUQ+TDyrk9RQSq6HHjUZrHo52XzwkA3N8l8s
	 mT/ppOHao3mwLxZ82pX661j/DDNUX4fEvbF1HHIGS4yEAVW6ft/rAo/6v43MagP/vQ
	 pQI+z7Z6fTjAA==
Date: Thu, 7 Aug 2025 09:54:48 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Cc: rick.wertenbroek@heig-vd.ch, dlemoal@kernel.org, 
	alberto.dassatti@heig-vd.ch, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] dt-bindings: phy: rockchip,pcie3-phy: add
 rockchip,phy-ref-use-pad
Message-ID: <20250807-inquisitive-speedy-rooster-0a8488@kuoka>
References: <20250806133824.525871-1-rick.wertenbroek@gmail.com>
 <20250806133824.525871-4-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250806133824.525871-4-rick.wertenbroek@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250807_005452_794822_608EAFB4 
X-CRM114-Status: GOOD (  13.35  )
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

On Wed, Aug 06, 2025 at 03:38:23PM +0200, Rick Wertenbroek wrote:
> >From the RK3588 Technical Reference Manual, Part1,
> section 6.19 PCIe3PHY_GRF Register Description: "ref_use_pad"
> 
> "Select reference clock connected to ref_pad_clk_p/ref_pad_clk_m.
> Selects the external ref_pad_clk_p and ref_pad_clk_m inputs as the
> reference clock source when asserted. When de-asserted, ref_alt_clk_p
> and ref_alt_clk_m are the sources of the reference clock."
> 
> The hardware reset value for this field is 0x1 (enabled).
> Note that this register field is only available on RK3588, not on RK3568.

Then you miss restricting it (:false) in one of if:then: blocks.

Also, binding cannot be after the user. You need to reorder patches.

...

>  
> +  rockchip,phy-ref-use-pad:
> +    description: which PHY should use the external pad as PCIe reference clock.
> +      1 means use pad (default), 0 means use internal clock (PLL_PPLL).

Can't you deduce it from the presence of clock inputs? IOW, if the
clocks are physically connected, is it even reasonable or possible to
use internal clock?

> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    minItems: 2
> +    maxItems: 2
> +    items:
> +      minimum: 0
> +      maximum: 1

More precise:

items:
  - description: PHY0 reference clock config
  - description: PHY1 reference clock config
  enum: [ 0, 1 ]
default: [ 1, 1 ]

Anyway, default 1, 1 is pretty non-obvious, so this should be just
non-unique-string-array (and property should be like
rockchip,phy-ref-clk-source/sel).


Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
