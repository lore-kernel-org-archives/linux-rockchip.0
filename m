Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BED4C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Feb 2022 02:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uFXrgG9LiVMrRoiC4ZtDVNpT6FaF1rpWoyQc6JDz2po=; b=eoxEgcdDS/ZjtJ
	427g4DFcJ/rYmuJSoKaO4xEJnAkynAIf+xdc3/UcOVpAYigpoWvQzxvZ9bM4g8YJGoSWzjQi6j7Z1
	rOzCPZPVCtHkLGhJuhHpeVbneqLBpNPmOKan6QaMCRztu2SbRYW6vpHUVHxgFyj5q9ZzUypl9EoSd
	i1m4Po5bLa7ckk9QggRqqHosMf6vESrugMKRRZGqJgHua4M0BArJEXBzoBdMzejCKPiypw8mOzUzA
	RuRSivLSd7gJg9/eO+iElp2gtUdy1NBLAdwWikBN69YyIvn0n4CAdsBB8xDP/Od2H+W/dvnNOp3mY
	a0LErMvPKsTa4BQ2R2PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMhf6-00CPLb-I2; Wed, 23 Feb 2022 02:45:52 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=fornost.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMheT-00CP7N-On; Wed, 23 Feb 2022 02:45:15 +0000
Received: from gwarestrin.arnor.me.apana.org.au ([192.168.103.7])
 by fornost.hmeau.com with smtp (Exim 4.92 #5 (Debian))
 id 1nMheF-000602-EC; Wed, 23 Feb 2022 13:45:00 +1100
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation);
 Wed, 23 Feb 2022 14:44:59 +1200
Date: Wed, 23 Feb 2022 14:44:59 +1200
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Corentin Labbe <clabbe@baylibre.com>
Cc: heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] crypto: rockchip: ECB does not need IV
Message-ID: <YhWfq9CAdo73gka5@gondor.apana.org.au>
References: <20220211121617.3393068-1-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220211121617.3393068-1-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220222_184513_825738_179F9349 
X-CRM114-Status: GOOD (  10.08  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Fri, Feb 11, 2022 at 12:16:17PM +0000, Corentin Labbe wrote:
> When loading rockchip crypto module, testmgr complains that ivsize of ecb-des3-ede-rk
> is not the same than generic implementation.
> In fact ECB does not use an IV.
> 
> Fixes: ce0183cb6464b ("crypto: rockchip - switch to skcipher API")
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  drivers/crypto/rockchip/rk3288_crypto_skcipher.c | 1 -
>  1 file changed, 1 deletion(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
