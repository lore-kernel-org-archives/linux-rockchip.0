Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5BBFC282D1
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 21:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NCv8Fkd8haRXRnonYnm7IuVE9bclltA+LVjHS0oOt6c=; b=Pu3rUET2DXKWpilp2vxIJZjube
	UN6CebiFSF2RJQrlqhUzDv5e/Mf5TtCfcMDlVUXuM9anpnXfnQKUmWFjMI7iJStQwD6sX5MTLZ9Yt
	ZabPTTJN0um4GHM763j7Y//VZIC5+48CPEaVxAkXibhc0uJ7iETXP9mCXgaSFC274UIAphYBYm9U5
	ioBivuPxCHjoIPjrZzPgm/kX34GmYKxlIQjszQYOY7Houou7oZSYTpSEUEyzEw4FWr90nLJqQ+b/Y
	dth5rZ1jltyMrqaE8HNU/IdSCPIe8/eu2kPEJyMaxoTD3KOZopKEDP7uhFA1Q9XtETt2CZCSlegry
	pvfEk1FA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqIzQ-0000000CIYD-04yB;
	Thu, 06 Mar 2025 21:42:48 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqIxl-0000000CINZ-2sJV;
	Thu, 06 Mar 2025 21:41:07 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1741297263;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ogLZAuYeTK3/4DxQxKpS5NhtK0uL51zVQoxAkrY1bR8=;
	b=mWBugUuD92cKAZA0g1fWhmejy6D+0gx+j1JkJJNyP7AZqdfO+gC1rD6xbKped/eNbIufKf
	rEv8Ou+aL2CUSWmiKN5mrd0No3l4TVFv7UwCMH/pJ8josaFzXztiiuWwGxEWgpeSgNtsbV
	DNAq0m4+EzHbCMT4CUNoysz7LNDrSyFo3RhVtpy5hkP3HskAuDzJFyYXXxEtAe7xKtgBUv
	8bh84TgqT65ytOhqqfTBOfV9CwvMx6A2tZ4V42WlQJst30nkG3pyp3XOWv0pD8u/rhLzS6
	CDE3Ah/+COdJw3ETzBPp3221mqy6DXbuWjdmlTe+/oOO7hqaGbYwBQaSa5TGeA==
Date: Thu, 06 Mar 2025 22:41:03 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/3] Use DELAY_ENABLE macro for RK3328, RK3566/RK3568 and
 RK3588
In-Reply-To: <20250306203858.1677595-1-jonas@kwiboo.se>
References: <20250306203858.1677595-1-jonas@kwiboo.se>
Message-ID: <41bb2c8d963e890768bceb477488250e@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_134105_868396_367A94B7 
X-CRM114-Status: GOOD (  15.00  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Jonas,

On 2025-03-06 21:38, Jonas Karlman wrote:
> Almost all Rockchip GMAC variants use the DELAY_ENABLE macro to help
> enable or disable use of MAC rx/tx delay. However, RK3328, 
> RK3566/RK3568
> and RK3588 GMAC driver does not.
> 
> Use of the DELAY_ENABLE macro help ensure the MAC rx/tx delay is
> disabled, instead of being enabled and using a zero delay, when
> RGMII_ID/RXID/TXID is used.
> 
> RK3328 driver was merged around the same time as when DELAY_ENABLE was
> introduced so it is understandable why it was missed. Both 
> RK3566/RK3568
> and RK3588 support were introduced much later yet they also missed 
> using
> the DELAY_ENABLE macro (so did vendor kernel at that time).
> 
> This series fixes all these cases to unify how GMAC delay feature is
> enabled or disabled across the different GMAC variants.
> 
> Jonas Karlman (3):
>   net: stmmac: dwmac-rk: Use DELAY_ENABLE macro for RK3328
>   net: stmmac: dwmac-rk: Use DELAY_ENABLE macro for RK3566/RK3568
>   net: stmmac: dwmac-rk: Use DELAY_ENABLE macro for RK3588
> 
>  .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 19 ++++++++++---------
>  1 file changed, 10 insertions(+), 9 deletions(-)

As far as I can tell, the RV1126 GMAC should also be converted to use
the DELAY_ENABLE macro, which the vendor kernel already does. [*]  
Perhaps
that could be performed in new patch 4/4 in this series?

BTW, it would be quite neat to introduce the DELAY_VALUE macro, which
makes the function calls a bit more compact. [*]

[*] 
https://raw.githubusercontent.com/rockchip-linux/kernel/refs/heads/develop-5.10/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
