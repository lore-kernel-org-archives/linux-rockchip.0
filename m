Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47786E7718B
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Dec 2024 08:58:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RJ52KHhaKrqkx2xMOWvnudwIo608x0f8K3u5MF0qO8s=; b=FdSYsijuJwPqdp
	CY4FFc6mqZXlMMjQqG734tzd+aezhjhMm4S39u6JMF5dGGBjM1ombcOeGPrVZ2GLh7r+lSJDo8xJV
	ABQP4TgkVm71mipMAnqJTUFRXmunjXc6+zGBE6TKzP1i+9z8uam90uoDnvtWUmDkQDCVFAZ9tEpGx
	Pc41RwMZLuSq5lDjqX8tagyFZWnTeHzG49axQHgU0ILhF53GDQhArp8hgNxvkNz4VLUfiombbO1QO
	GACCEh0lT+dYQ+XbaezZj8qupo5cU0Rf1bHBqe1kxuhtbJ6K/T+E7O3Fen4/NT/dHkmOB0LpGlT+G
	7CFiYEajKsiWfXm4HO9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tR6Aa-0000000HQtO-3D0g;
	Fri, 27 Dec 2024 08:58:08 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tR68a-0000000HQXo-086n;
	Fri, 27 Dec 2024 08:56:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 7CFDAA41395;
	Fri, 27 Dec 2024 08:54:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4441FC4CED0;
	Fri, 27 Dec 2024 08:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735289763;
	bh=bUCK5MKJ+rZPzsvb6rQdvPZgK8diuXQSd1E+oQQ1EPo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IdGotcxFGxaQwRtqRJMgy/G5NuvFm+yByE4wjsYbW+d/s6sAxe2GdR5ZnLkuL7utR
	 MmyAAZBZulCevbJibz5AlksDeM3Cp7VuOV06ZPOHvDT4uEdg46uB3xRWzeTzh5p7/r
	 tUjnMNZJ3pfL9sJuRnBn60DV1RdycB90asTSkIdOWeui1CbMDvKM9wpTjtmmDj456c
	 N0z73862Ax4psGr291h7xQofNqbNLUiudy4BDcmKM4sNSzrL5M7NzfDFMr4AXsgwki
	 cmhh2efOQkCUbWRZ/tee/8Y/ggUa6jIOtyI4WfRu3qADO2YZnnEc0tJT0SGtgvLt33
	 jAamby2KGMGvw==
Date: Fri, 27 Dec 2024 09:55:59 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH] dt-bindings: phy: add rk3576 hdptx phy
Message-ID: <hh3zowf257dwwp3uo7al5l5ql7hewy7j5rzjqdt3eqvd653mdj@4tgjm6zdsuyi>
References: <20241224091919.267698-1-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241224091919.267698-1-andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241227_005604_143048_95442BDF 
X-CRM114-Status: GOOD (  11.18  )
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
Cc: kishon@kernel.org, detlev.casanova@collabora.com, heiko@sntech.de, robh@kernel.org, sebastian.reichel@collabora.com, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org, linux-arm-kernel@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>, linux-rockchip@lists.infradead.org, krzk+dt@kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Dec 24, 2024 at 05:19:13PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> The HDPTX PHY on rk3576 is compatible with it on
> rk3588.
> 
> Add compatible for it.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---
> 
>  .../devicetree/bindings/phy/rockchip,rk3588-hdptx-phy.yaml | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)

Also: where are any users of this binding?

We don't take bindings without *UPSTREAM* users.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
