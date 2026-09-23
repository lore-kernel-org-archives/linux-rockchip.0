Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09A0EC98302
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2026 02:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0+++7kpzQZ62Q3IBiKiK28CHlOviCgHT0ul5liD8JwI=; b=LNSGTLXwL3Ks0w
	uXjQoJ4GSe+eLNUoBajlVlvqTScINWaGI5bBiJUACRIe3Ctqs/Dn/dRXhxMxyuHS5H8SxqsIN8pAK
	G265XQfm9JwIreOvXUWbwrvFMLF4bSKjkk1xH1kXAOdQeK6SRkJxsC2dBlamnNxHPzSgr5/eAMDDt
	1WJIuG7i6pdfNhUUydxDqmZpgBdav2XD6L06azWWpN+MqkfArxKeUHh0n6O8Inn4N8NPFWVOHAcJm
	eo7UEAhWTI/YG58bnfdSZTjFTKBJqKKL9wW/K280jPvn8ONA7vo+qzeLV3nYv1VedUT7Xm4Xb6k0j
	nvDPYcTwAAaBI1qNUZxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9CYd-00000006uuE-0iAu;
	Wed, 23 Sep 2026 02:18:03 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9CYb-00000006utm-3dbA;
	Wed, 23 Sep 2026 02:18:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 8FD77601F0;
	Wed, 23 Sep 2026 02:17:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DBA991F000FF;
	Wed, 23 Sep 2026 02:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790129879;
	bh=xfghmcIazzNv+3k9/mq2kvL7Hc7x+3J369UsPLCYc6o=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=n3LkZo0NI7Oht1VGLYECVSR95ONoTSv/9T9ypWYwO6Uypn/cjianMl+7utFKTXFAv
	 JdxrHiIM9FrMgeIAoPguIH0gyo4e72jMq0VghBR8inkEsIkdxZLpi18yvs4JTxL2Hp
	 oAfjmANneH9uTiBFWBHpiWu50JNDF+1w4iU1uLvXDUB94jbo3eH9NUOe161Z+a3jwO
	 nn+QGvF90dn3T7wsP/K/TFUV5XTfjFf81r1bFAHtmcEjzWzIVp5o3H/ycNghbl/H2s
	 tAqW43gymhSGLEEPcQtaqw4VUzPuG3cVw8SahVneGGbrWyr66iFlW/ICqpax3Ov0jI
	 vSSZu+7Z6yxCQ==
Date: Tue, 22 Sep 2026 19:17:58 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Coia Prant <coiaprant@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Maxime Chevallier
 <maxime.chevallier@bootlin.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Sebastian Reichel
 <sebastian.reichel@collabora.com>, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH net] net: ethernet: stmmac: dwmac-rk: fix bulk clock
 leak when the PHY clock fails
Message-ID: <20260922191758.2730da7a@kernel.org>
In-Reply-To: <20260919174223.2356964-1-coiaprant@gmail.com>
References: <20260919174223.2356964-1-coiaprant@gmail.com>
MIME-Version: 1.0
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

On Sun, 20 Sep 2026 01:42:23 +0800 Coia Prant wrote:
>  			if (ret)
> +				clk_bulk_disable_unprepare(bsp_priv->num_clks,
> +							   bsp_priv->clks);
>  				return ret;
> +			}

Missing a bracket, EBUILD. I almost appreciate seeing a human error like
this these days :)
-- 
pw-bot: cr

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
