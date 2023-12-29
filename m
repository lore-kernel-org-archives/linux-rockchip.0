Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBA23C46CD4
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Dec 2023 03:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gZZiAPDTRKd1C8reDmctosGiqBoyfl2W8zOdkN/ycNA=; b=i269NC6eCNQv6i
	bVUBVwhMMIW92Pt/cgpPTFLDY06ZuOulPtccL3w4bCXJKGf5U6u69yYM1meLNILNL4cJfjTZbik4H
	0Np1HhW+sF2Dtm1+GTX8FMGc/DeUAx7Rb8+PwpA6h9D3vuIfq4ApfqkyH+FIiUbZrmhNpVAh0wR++
	bi/pB3waR97oUxgcbb/lh8liCiz+nPguEQ8nY0NXIyoFpiwsAHDGG7vtDL9jQnCc11yvi+81f8/7I
	siwT9z3xEcF7wxB2xvBOXI2WEd2M/PAVGBuhhQF5InFXz6KvFeqvC9dLsPNvkRCiK7D0rfogg9sib
	NWXKjvRABqlt5yKWeY9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJ3YN-0009UU-0K;
	Fri, 29 Dec 2023 03:28:55 +0000
Received: from abb.hmeau.com ([144.6.53.87])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJ3YJ-0009R8-28;
	Fri, 29 Dec 2023 03:28:53 +0000
Received: from loth.rohan.me.apana.org.au ([192.168.167.2])
	by formenos.hmeau.com with smtp (Exim 4.94.2 #2 (Debian))
	id 1rJ3Y0-00FG3R-64; Fri, 29 Dec 2023 11:28:33 +0800
Received: by loth.rohan.me.apana.org.au (sSMTP sendmail emulation); Fri, 29 Dec 2023 11:28:43 +0800
Date: Fri, 29 Dec 2023 11:28:43 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: ovidiu.panait@windriver.com
Cc: linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
	davem@davemloft.net, Heiko Stuebner <heiko@sntech.de>,
	Corentin Labbe <clabbe@baylibre.com>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/7] crypto: rk3288 - Use helper to set reqsize
Message-ID: <ZY486/gwA4o/hmeM@gondor.apana.org.au>
References: <20231218164649.2492465-1-ovidiu.panait@windriver.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231218164649.2492465-1-ovidiu.panait@windriver.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231228_192851_709962_B6C6AB19 
X-CRM114-Status: GOOD (  10.15  )
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

On Mon, Dec 18, 2023 at 06:46:43PM +0200, ovidiu.panait@windriver.com wrote:
> From: Ovidiu Panait <ovidiu.panait@windriver.com>
> 
> The value of reqsize must only be changed through the helper.
> 
> Signed-off-by: Ovidiu Panait <ovidiu.panait@windriver.com>
> ---
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: Corentin Labbe <clabbe@baylibre.com>
> Cc: linux-rockchip@lists.infradead.org
> Cc: linux-arm-kernel@lists.infradead.org
> 
>  drivers/crypto/rockchip/rk3288_crypto_skcipher.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

All applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
