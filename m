Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41686CE7AAA
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Nov 2025 10:21:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2z+Qsw5WaCrkqlkTnMvSa/NT5Ark/hBp4pqHxYm/xgw=; b=rZwTAf+bPRQKlO
	5jlE1Me2ggbyO2Vjcc8STKz+B2vfQEmd6/O87bRTgQBboDx1vAp0Ojd+FM0NHPbReo/YnP+fYwo6G
	A6txflySaegTq3MrwXHnw8q5PggBk9Li1ESwAabjMtRTcP0sRxIHlBC+GsJ0QpDT+iTf/TZISyYX4
	ZhbEWV6HrSsm6rAgk8VprF8CyFqeGK5EFAiUNf+g0BCSNVhmMWHbEkSAO0Xbs2Rpf9QlIkq5oVm8d
	vZLcINg8L2qjtbrZnfuv0DTtwGJHoLQ44ZKdokgeODSXF9pbGHdPRk3wNlc51h25fHeeotpP5Crir
	HbOHK9a2iSDMwmG0i3NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJqvJ-0000000Bzou-2eQ8;
	Fri, 14 Nov 2025 10:20:57 +0000
Received: from abb.hmeau.com ([180.181.231.80])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJqvG-0000000BzoK-2imu
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Nov 2025 10:20:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=gondor.apana.org.au; s=h01; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:cc:to:subject:message-id:date:
	from:content-type:reply-to; bh=uJV7z3H8pAHB1Y7A9KobxquZjedvC3wgafq5gopZbPQ=; 
	b=YjwC4zgo1nhN/4lFBr/MXRIQpBdSE/U70QbRoHsdHbKt5PcUKq3Cj/fzZLcmbdbcH6DND0pk7Wy
	qX/+lkefnckjJSl6RWt2x9WY84iR75OLC3+hrhOGmPChiOxw/NGATFYwUMG20VFDAuTsuaCWFAKH/
	TXdLWYLqcKY07Uc92Yad9O3i5cetu18TcBQFrtKlzxBy1SidOyQ/osETTB2dQopsmg/mM2r0CzLpJ
	NM66FGwKpvrzhO73HjVJbFz9oNlza8iP5Lqw5lqjJ94kma7Wm4TPepXkkJ2btZ4PcWAUzsaYO8NR4
	sOFwLpwYDxoYftJXCYqKRU95muioWi7REGew==;
Received: from loth.rohan.me.apana.org.au ([192.168.167.2])
	by formenos.hmeau.com with smtp (Exim 4.96 #2 (Debian))
	id 1vJquz-002yO9-2n;
	Fri, 14 Nov 2025 18:20:38 +0800
Received: by loth.rohan.me.apana.org.au (sSMTP sendmail emulation); Fri, 14 Nov 2025 18:20:37 +0800
Date: Fri, 14 Nov 2025 18:20:37 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Karina Yankevich <k.yankevich@omp.ru>
Cc: Corentin Labbe <clabbe@baylibre.com>,
	"David S. Miller" <davem@davemloft.net>,
	linux-crypto@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, lvc-project@linuxtesting.org,
	Sergey Shtylyov <s.shtylyov@omp.ru>
Subject: Re: [PATCH] crypto: rockchip - drop redundant
 crypto_skcipher_ivsize() calls
Message-ID: <aRcCdQu-d2byeFLY@gondor.apana.org.au>
References: <20251105145204.2888978-1-k.yankevich@omp.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251105145204.2888978-1-k.yankevich@omp.ru>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_022054_691731_B17CD20E 
X-CRM114-Status: GOOD (  10.44  )
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

On Wed, Nov 05, 2025 at 05:52:04PM +0300, Karina Yankevich wrote:
> The function already initialized the ivsize variable 
> at the point of declaration, let's use it instead of 
> calling crypto_skcipher_ivsize() extra couple times.
> 
> Found by Linux Verification Center (linuxtesting.org) with SVACE.
> 
> Fixes: 57d67c6e8219 ("crypto: rockchip - rework by using crypto_engine")
> Signed-off-by: Karina Yankevich <k.yankevich@omp.ru>
> Reviewed-by: Sergey Shtylyov <s.shtylyov@omp.ru>
> ---
>  drivers/crypto/rockchip/rk3288_crypto_skcipher.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
