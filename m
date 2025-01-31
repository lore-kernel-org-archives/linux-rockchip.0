Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2D82C0218D
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Jan 2025 07:44:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jUXBJqA2khgFYPYgr90WJ8dfxEq2dI0LE+GcNqQAa+s=; b=O/7MRt6VQTuHfS
	89lwNQgifvqpg4DMONKE+VHURrAj7AvhwP6B2kmd0kA+cQdt7YTpJPRoG3y6qvuGbVNpL7dPmaKdZ
	0UqP0HCiQeGoLsTwlhHtQ3ntgWj11UF+L6osxUE0y7XPs82nwsAvis0DTYjANrPAMzViMF8jfm3zq
	BTsW1e8q57vkDGrOX7DiqjpqJbDHRmmGIEhsOJWgzMKk6HUIvyLTIF91bczVZZF6UNuoZpDVknwWy
	jfq86sHvn2Wv40+rh9DSd63FULcMiW2l6spL2mwviXo+ppsuODQK7FXvL+pzNvP68yHEvtD++N8ax
	4lWCcVLySzYXoG7fgWlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdlhM-0000000A8cX-0OLg;
	Fri, 31 Jan 2025 07:44:20 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdlg0-0000000A8Y7-1rNO;
	Fri, 31 Jan 2025 07:42:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id CF59AA419D9;
	Fri, 31 Jan 2025 07:41:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41B99C4CED1;
	Fri, 31 Jan 2025 07:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738309375;
	bh=SPBFBpCWkKZSpzr2brYa2XUK8RQPaG01XP0MShmREv8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Nka2Bv5tv1Zjlaxcfu+o/Zy0onHMpD+nc2OsUwyFP6KGvOGeqpxRVy9nLweUoQ1Ia
	 Y5ZUXq9hgEBzUPwD6E22OiweV+BQEkEL7RRmec8SSoPlYUIDG7jC3lMdjJnGcxTGnW
	 26SWC7Jrk0hGPI4LCNSQ3R2lIfWS9EbuwnMZmWtklQM0Z0bdYbKdxMWe8AXZX5FiWp
	 QL6kVlUCvFsyslI1lsfqvmX9aIt9GnKrpH8N8fQo3JojgRrFuuCZIKlJ714TCxCCqG
	 Vbfa2tep9VJn2cWZTuMGkj7W3l1EXMOwDxTkbzVObDi6SjNyTL10GeXoZCAuIP0WRl
	 H/rt1vGeStoDw==
Date: Fri, 31 Jan 2025 08:42:51 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Patrick Wildt <patrick@blueri.se>
Cc: linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	Kever Yang <kever.yang@rock-chips.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add MNT Reform 2 (RCORE)
Message-ID: <20250131-purring-rousing-aardwark-4f1bf0@krzk-bin>
References: <Z5toOecuMiBXM6aF@windev.fritz.box>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Z5toOecuMiBXM6aF@windev.fritz.box>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250130_234256_558040_3069D572 
X-CRM114-Status: UNSURE (   8.58  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Jan 30, 2025 at 12:53:29PM +0100, Patrick Wildt wrote:
> Document board compatible bindings.
> 
> Signed-off-by: Patrick Wildt <patrick@blueri.se>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
