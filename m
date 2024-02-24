Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAE0AC54798
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Feb 2024 00:52:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Nh9Bw5YzYIy7xivlFaue8QWqBSAPNZdx5d9xBSshSo=; b=AABymuQHxkPEmc
	+9DvT3tmjiBvjiaNeJj4EioUsxBkLYqCkoQBsqP7oYZUwD2CX4q2EWxQqd7tzdnQfR74ZcQF3S3nK
	ytDmu2s5eBJKs9eKj6sJw1IEN5WB2bbLN8E1p8vl7/p8fGITtWOPJS3kDwjdaItbAFnErjekELMb3
	VzWqbhW6RAanFtGSBzMehx4iRSmahF6ugQjHIE0SCG8oYmXMesbSupzTgzKCC9sf22DaWZIbn7yag
	GdjaZ69YNos16PAgEEidZMIKL+SQZaq/fkxshsr4VHO+Apz/EnSxUFmkZPIBvnHIqucFVnsMLtDD9
	AN2tZFuw5zbJqjazrC+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdgH0-0000000Biy3-0Uq9;
	Sat, 24 Feb 2024 00:52:14 +0000
Received: from abb.hmeau.com ([144.6.53.87])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdgGx-0000000BiwL-0fTl;
	Sat, 24 Feb 2024 00:52:12 +0000
Received: from loth.rohan.me.apana.org.au ([192.168.167.2])
	by formenos.hmeau.com with smtp (Exim 4.94.2 #2 (Debian))
	id 1rdgGk-00HDzH-FI; Sat, 24 Feb 2024 08:51:59 +0800
Received: by loth.rohan.me.apana.org.au (sSMTP sendmail emulation); Sat, 24 Feb 2024 08:52:13 +0800
Date: Sat, 24 Feb 2024 08:52:13 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Kilian Zinnecker <kilian.zinnecker@mail.de>
Cc: Corentin Labbe <clabbe@baylibre.com>,
	"David S . Miller" <davem@davemloft.net>,
	Heiko Stuebner <heiko@sntech.de>, linux-crypto@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] crypto: rockchip - fix to check return value
Message-ID: <Zdk9vc7OPEPcXA1/@gondor.apana.org.au>
References: <20240218221658.131043-1-kilian.zinnecker@mail.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240218221658.131043-1-kilian.zinnecker@mail.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240223_165211_232656_C859FEAC 
X-CRM114-Status: GOOD (  11.53  )
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

On Sun, Feb 18, 2024 at 11:16:58PM +0100, Kilian Zinnecker wrote:
> crypto_engine_alloc_init may fail, e.g., as result of a fail of
> devm_kzalloc or kthread_create_worker. Other drivers (e.g.,
> amlogic-gxl-core.c, aspeed-acry.c, aspeed-hace.c, jr.c, etc.) check
> crypto_engine_alloc_init's return value and return -ENOMEM in case
> a NULL pointer is returned. This patch inserts a corresponding
> return value check to rk3288_crypto.c.
> 
> Signed-off-by: Kilian Zinnecker <kilian.zinnecker@mail.de>
> ---
>  drivers/crypto/rockchip/rk3288_crypto.c | 5 +++++
>  1 file changed, 5 insertions(+)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
