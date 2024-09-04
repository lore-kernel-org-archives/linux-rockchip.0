Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 646A6CA0ED3
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Sep 2024 09:26:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7VNX+DB6UhTclXbP2aniPBzJ34GmXcxkWghYwKlqGR4=; b=vfeglxBq+6VQD/
	TrqvNy2l2+okKiGFVvGSk+agqNX173JfLaS4MSPGZy8+WRiZohrF6UMlKGn3vuc5ds4+Gd37GKOkK
	XlAQk+RUuzgn1yn2Z5Q5iKVRFYIsHtHv/G8GCYl2Ic/PR0I3sJyxSzNVAhTpdm8d4mvz9Hsh763tt
	ZcZJJEHmzsZjfc/8W/tGKgRRwIy493ADbH+y7UBP+5jzrUdUIUtAvKEsA5XmeJbCO5uN+htprukh/
	VAiq0Ah9bP4V6XLoJ0BOcewBVVhf4ILfyny0OkFfMH2sBcp/OMoM3BbWdOcnVCndLQyRFmQtwRUm+
	U5ZdgUoDuGvWm0MkEDUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slmHs-00000003fbo-1ToX;
	Wed, 04 Sep 2024 09:26:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slllq-00000003X9I-1vCY;
	Wed, 04 Sep 2024 08:53:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=9PwaYbaAsjGodOj3kkWc4OgSwCX03oGVeuMglgQqXjg=; b=GgfuF/Qp4Y58HFKKkPnDohJ68c
	K+xNOcFJFpXLdHbQTyUma8NIMfCmHTgaqhXY6itFYE6Sml2zgt4dsSlUgm+J4/PFp7lUi4y+44ilU
	tLKy1ybsxi3uWRbYU0rOp5P0x6sS3u22nZXFgV9rgqzBv0OxT6FMR670dm2C2mj5rS8awYfQnSHsQ
	xXswXRgc9l9YQAepWNfwlS95arLruzSXp29VbABCj4EIZopPGYBM+NUk7HnX1CWMgR3AiZUzsORcR
	g0dExD9rp2u4sAtgNVF9DfpkSGOB8ANV/0DNm7d5zkrROF7kReZf2iD6GBZrige4/csy1pyjXkG9Y
	AyCHc5ZA==;
Received: from i5e860d0f.versanet.de ([94.134.13.15] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1slllh-0006c2-C9; Wed, 04 Sep 2024 10:53:37 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: kernel@pengutronix.de, Alibek Omarov <a1ba.omarov@gmail.com>,
 Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 David Jander <david.jander@protonic.nl>,
 Marc Kleine-Budde <mkl@pengutronix.de>
Cc: Simon Horman <horms@kernel.org>, linux-can@vger.kernel.org,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Marc Kleine-Budde <mkl@pengutronix.de>,
 David Jander <david@protonic.nl>
Subject: Re: [PATCH can-next v5 00/20] can: rockchip_canfd: add support for CAN-FD IP
 core found on Rockchip RK3568
Date: Wed, 04 Sep 2024 10:55:21 +0200
Message-ID: <86274585.BzKH3j3Lxt@diego>
In-Reply-To: <20240904-rockchip-canfd-v5-0-8ae22bcb27cc@pengutronix.de>
References: <20240904-rockchip-canfd-v5-0-8ae22bcb27cc@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_015346_535585_258FBFB7 
X-CRM114-Status: GOOD (  18.86  )
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

Hi Marc,

Am Mittwoch, 4. September 2024, 10:12:44 CEST schrieb Marc Kleine-Budde:
> This series adds support for the CAN-FD IP core found on the Rockchip
> RK3568.
> 
> The IP core is a bit complicated and has several documented errata.
> The driver is added in several stages, first the base driver including
> the RX-path. Then several workarounds for errata and the TX-path, and
> finally features like hardware time stamping, loop-back mode and
> bus error reporting.
> 
> regards,
> Marc
> 
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>

I have neither CAN knowledge, nor hardware to test, but the integration
itself looks pretty easy and straight-forward.

Not sure how much it helps, but at this moment I assume you know what
you're doing with respect to the CAN controller ;-)

Rest of the series (that hasn't got a Rb):

Acked-by: Heiko Stuebner <heiko@sntech.de>


How/when are you planning on applying stuff?

I.e. if you're going to apply things still for 6.12, you could simply take
the whole series if the dts patches still apply to your tree ;-)


Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
