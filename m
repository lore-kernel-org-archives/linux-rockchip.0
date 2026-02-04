Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 963BCE95360
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Feb 2026 09:43:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uHlZw821+n4vkIDjCP1uFTsLySn5S7Y6HC6izu+owak=; b=Bx8W4qfTpFQU5/
	HkuiVfeM4P616rMmbqVTkEc7IQTzuFHtqi919gz9tOm2vOgEqshBx72hdVmg9v8wWdbxes5oWwB4a
	vk89YpThsoQ3IrxjOU5UnCSaBLAQAmseqYK7pOv4MGqY4I+w14wykPHebIspbUQpDN91uj6oZoTqt
	BXzj4E2ipNIHxfYLzKuJzGh705YiKW3z3H7DdycBhAHCKH+ZRh+z/bfic5UzKKexCsncCa2dqlJIO
	rbPNNoJ5KDVySTz4CMPSD6U9Kpa3/I4OrnamgyGvgWssJBUVVyTxOpZxrP/aQau9DFUlZU3wXRb96
	VdF6h3yLmZlUjCN3X2JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnZQF-00000008Ekb-20Fq;
	Wed, 04 Feb 2026 09:43:43 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnZQB-00000008Eit-2GTM
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Feb 2026 09:43:41 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 520804E423D9;
	Wed,  4 Feb 2026 09:43:36 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 24DE960745;
	Wed,  4 Feb 2026 09:43:36 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id D1692119A865B;
	Wed,  4 Feb 2026 10:43:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1770198215; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=PWtAsLhTfJ+y5jHsYpWzRsgFbu/hEL4qAn8qo8Aj8hs=;
	b=Cg6QqlH5UgjplYLeJZvheJEIUH49IBNOZnNrsXDS75HuEkWxF+/u5DZjKduBiLw87Iyubm
	PnGEefEDF0WzKfvTR9sEbX1LPxMc/MTt98JHEmYvkZ/IrhNhMN+i1DtyRpS9VIRfpVK0/v
	EM4O+h5Td69BZpCB17TkwIr38kL/7z228stYxvCyrBqmfhqTyIQQHHUYx5Aaedg0hE0ibr
	eXCsYAl1+fK5VrsGUXY+POiVBJGb6HFdpNeRBsF9PJf9xKcI2zG6hTn53/Z8Lp0q7oUMoe
	NgRRYlDP35ZWPlLzcgS+l76RxObvn/sqs5CMdPiWkXqfmEmtlFb0UQCnyB26xA==
Message-ID: <85fe08a2-189f-4740-81e7-81a65e23fab2@bootlin.com>
Date: Wed, 4 Feb 2026 10:43:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next 3/6] net: stmmac: rk: rk3328: gmac2phy only
 supports RMII
To: "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
 Andrew Lunn <andrew@lunn.ch>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Heiko Stuebner <heiko@sntech.de>, Jakub Kicinski <kuba@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, netdev@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>
References: <aYMN2gZMfLPKuukG@shell.armlinux.org.uk>
 <E1vnYxw-00000007hox-0DqH@rmk-PC.armlinux.org.uk>
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
Content-Language: en-US
In-Reply-To: <E1vnYxw-00000007hox-0DqH@rmk-PC.armlinux.org.uk>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_014339_714257_A99961B3 
X-CRM114-Status: UNSURE (   4.58  )
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



On 04/02/2026 10:14, Russell King (Oracle) wrote:
> As detailed in a previous commit ("net: stmmac: rk: convert rk3328 to
> use bsp_priv->id") rk3328 gmac2phy only supports RMII, whereas gmac2io
> supports both RMII and RGMII. Clear supports_rgmii for gmac2phy.
> 
> Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>

Reviewed-by: Maxime Chevallier <maxime.chevallier@bootlin.com>

Maxime


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
