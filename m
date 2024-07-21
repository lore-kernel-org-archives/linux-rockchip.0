Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C313C3DA59
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Jul 2024 00:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2dAwlywRCxTsqoU67flhI6MqZAOeNZzNtJDwxpGVA9o=; b=yKKBN/9eQNp2Yw
	L9xyb5eAIgy51DxxdDHy/9/s3TzOnP/ioy0lsBVC62G/C/gXV4R66Ka5TXe9Zk81SnXBHmTms0B6I
	XAwN8TOO41JqlZ9WoukC7DqUXx2UfRp70NVzG7fHGGlDYoQAAlkPoT7Q4+jbO6EzdyAU3sH9mm1Bf
	0HVltWBEccN95W7MUvrz/XvSVB5ul+TJWnIUiWC+tWZiVkpOrlEWT5gIZ4VcYaGjpAXLZrJtOqEDu
	TSZVE9HiWKJs7jDmSYyUAk9o8g2qL92xalTdP94reQuTz3eii0S0DrQpKRm2AuqrXqnVN7UajiUS0
	rnC2xzkh+X0sJnQqeJzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVKQ1-00000005uEz-29iB;
	Sun, 21 Jul 2024 00:27:17 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVKPd-00000005uAi-2fQY;
	Sun, 21 Jul 2024 00:26:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 5C18ECE09FC;
	Sun, 21 Jul 2024 00:26:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D312C2BD10;
	Sun, 21 Jul 2024 00:26:46 +0000 (UTC)
Authentication-Results: smtp.kernel.org;
	dkim=pass (1024-bit key) header.d=zx2c4.com header.i=@zx2c4.com header.b="Ofoz6UP3"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zx2c4.com; s=20210105;
	t=1721521604;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=94FH1yeLhYBAH1oy+kJ20vtAV9HFB221cCBm9BA0Y7A=;
	b=Ofoz6UP3L2rYYQH6xpyv5+l3QzmBz2DqzvtyQRdg0I5jCeLGXesg2U3vIwij0bYuMW6qCI
	ZNiNA2P7D9i/D9QhhHqK/3V0pVmuRhMTdrpi71gIrXXXCdKnm0K38ac5w05FbuGtgiS481
	HiX89vVGR/i+0MON2fj7Dx418V6Dwgo=
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 6afbfb1c (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Sun, 21 Jul 2024 00:26:44 +0000 (UTC)
Date: Sun, 21 Jul 2024 02:26:40 +0200
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: Daniel Golle <daniel@makrotopia.org>
Subject: Re: [PATCH v7 2/3] hwrng: add hwrng driver for Rockchip RK3568 SoC
Message-ID: <ZpxVwFdIZxLw3R_l@zx2c4.com>
References: <cover.1720969799.git.daniel@makrotopia.org>
 <f606403145588d28dda14a55ba3afef85720a4dc.1720969799.git.daniel@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f606403145588d28dda14a55ba3afef85720a4dc.1720969799.git.daniel@makrotopia.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240720_172654_091965_5E162928 
X-CRM114-Status: UNSURE (   9.72  )
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
Cc: linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, Herbert Xu <herbert@gondor.apana.org.au>, devicetree@vger.kernel.org, Martin Kaiser <martin@kaiser.cx>, Sascha Hauer <s.hauer@pengutronix.de>, Sebastian Reichel <sebastian.reichel@collabora.com>, Ard Biesheuvel <ardb@kernel.org>, Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <ukleinek@debian.org>, linux-crypto@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>, Olivia Mackall <olivia@selenic.com>, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>, Dragan Simic <dsimic@manjaro.org>, Aurelien Jarno <aurelien@aurel32.net>, Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sun, Jul 14, 2024 at 04:16:17PM +0100, Daniel Golle wrote:
> +	rk_rng->rng.quality = 900;

This is out of 1024, not 1000.

https://elixir.bootlin.com/linux/v6.10/source/include/linux/hw_random.h#L35

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
