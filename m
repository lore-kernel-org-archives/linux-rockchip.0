Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5CCFC5CFDB
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Aug 2026 10:53:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DKmw0LoUnD6pSXvAF+EDpIcbePZ0oB7QTcWL+ftiU+g=; b=YkayjDoaoCXaf+
	L3OswWkETZiLi0KFxWRHyFSBpvf8y9J+i7XzK0QORaUzQ0mQgm9rJpPvGEg/HktHluFF6JlTQdQgd
	k6LnEyStZPnQT+Vvb/TYGLnqhHBcaQE4SevSXr2Wx3TVFc2Qb33p45RN9DrZPfI1XEHgPqG8aBJKT
	+gj1FzTdmVguhi5GNjz4K1TF62KCXrJkiSRM0fIW4eUReKHeSt0q7nNP1pItNeqDqUfHsZU+2KuJm
	xxOX45nAqAQKCKYTXXx5Y3ISG9OR6oYYsZXzl1MD0/DYvxxVEqDi4qvDTkAUlk1ekmrlEMqzroaYJ
	eIhmDGv8Nx1xSkKUdM/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu6aj-0000000FyDz-1Kb0;
	Wed, 12 Aug 2026 10:53:49 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu6ah-0000000FyCr-3mmB;
	Wed, 12 Aug 2026 10:53:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2EE2960A85;
	Wed, 12 Aug 2026 10:53:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C36961F00A3A;
	Wed, 12 Aug 2026 10:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786532026;
	bh=XmNobfuMx0pDiDam9efhZOx9BexMksK/K764FtZWuog=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=RBtRE+crRVJnULlydWzSt1Tbm1jQGdY0tHzRCOBkLyoEaej1J1pNMg0Y84gPz78+1
	 jvvglA2Em7xkTR7Z18tKkg17DVoi7POO2PYyQwpWPHaLWgxw+6ddjsjYOxcZzyaZcU
	 JIGz0EJln2WesR/SiQ0f7jDQ0xUV/jdojbEfFxoAddHsSbeUOFNPuwL9v76vZmLi1S
	 ZO5Y4sD6IRG2r7sf86NRSfe7N5eLnHGAl37E7mtqaN6/5c+ejsiB3f1Qkus8MAZ4Pr
	 AJR63jwH2wVHZUI+mbhcufWP25HyaGa1xRvO4bihjj7vETUk45GBVnuS06+wiQKwzF
	 UncEa35Ofw2kA==
Date: Wed, 12 Aug 2026 12:53:37 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jason Yang <jason98166@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Guochun Huang <hero.huang@rock-chips.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Michael Riesch <michael.riesch@collabora.com>, 
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/5] dt-bindings: phy: rockchip,rk3588-mipi-dcphy:
 allow DSI and CSI consumers
Message-ID: <20260812-fast-famous-fulmar-3bde7e@quoll>
References: <20260810-dcphy-rx-v1-v3-0-a2d25c29adfc@gmail.com>
 <20260810-dcphy-rx-v1-v3-2-a2d25c29adfc@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260810-dcphy-rx-v1-v3-2-a2d25c29adfc@gmail.com>
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

On Mon, Aug 10, 2026 at 08:10:10PM +0800, Jason Yang wrote:
> The Samsung MIPI D-/C-PHY block on RK3588 drives a MIPI DSI
> transmitter and, on the same PHY, can receive from a MIPI CSI camera.
> Describing both as independent consumers of one PHY requires the
> devicetree to tell them apart.
> 
> Let the existing single cell also take PHY_TYPE_DSI or PHY_TYPE_CSI,
> selecting the PHY by the protocol the consumer speaks. PHY_TYPE_DPHY
> stays accepted and equivalent to PHY_TYPE_DSI so shipped device trees
> remain valid, and PHY_TYPE_CPHY keeps selecting a C-PHY transmitter.
> The receiver support added by this series is D-PHY only.
> 
> Signed-off-by: Jason Yang <jason98166@gmail.com>
> Assisted-by: Claude:claude-fable-5
> ---
>  .../devicetree/bindings/phy/rockchip,rk3588-mipi-dcphy.yaml   | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-dcphy.yaml b/Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-dcphy.yaml
> index c8ff5ba22a86..1f7c2e2ddfc1 100644
> --- a/Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-dcphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/rockchip,rk3588-mipi-dcphy.yaml
> @@ -22,9 +22,14 @@ properties:
>    "#phy-cells":
>      const: 1
>      description: |
> -      Argument is mode to operate in. Supported modes are:
> -        - PHY_TYPE_DPHY
> -        - PHY_TYPE_CPHY
> +      The block contains a MIPI transmitter and a MIPI receiver, which
> +      can be referenced independently. The argument selects one of
> +      them:
> +        - PHY_TYPE_DSI: the transmitter, for a MIPI DSI host
> +        - PHY_TYPE_CSI: the receiver, for a MIPI CSI-2 host
> +        - PHY_TYPE_DPHY: the transmitter in D-PHY mode; equivalent to
> +          PHY_TYPE_DSI and kept for existing device trees
> +        - PHY_TYPE_CPHY: the transmitter in C-PHY mode

So PHY_TYPE_DSI is the same as PHY_TYPE_DPHY. Why doing this change?
Commit msg did not tell me why we need equivalent code.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
