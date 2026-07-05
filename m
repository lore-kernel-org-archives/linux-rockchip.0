Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7104CC43458
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 Jul 2026 08:41:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QIzvhirqxhysm3JP+D3ms51PEwuJNxVNkiw0ZKDzLrI=; b=1Ge2U0qmnew2JW
	sggYqbcoMqsrE0arUCEyQwDdltxBCzkmFHic9Uo+tPEO6dMHTckCcmOcvm46l0Lq2OuK1TZjEynHS
	5Gi6ke7yduwy6EVII9uhwrubB2WU2T525WwOctG10fROiAYezy10USl8f/AvmkSluz8mzgJM1bSzM
	8PQZlL8xaaEmAxx9WcohiubiFCVRp8Lnh8WDCaoGWXk8v94nZikax7hU3O9oumV6bfFZ2ip0PdPTl
	RUm2s3gN8iZ+bSbn+J6/NcKf5d6uZitkPkRpTpXKJlmXSURVgoRywfcAtPKJ0srpVQkU49OV4dDOB
	/C4bxTkDkB1ME4xD7hhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgIPb-000000099iv-28wo;
	Sun, 05 Jul 2026 08:41:15 +0000
Received: from abb.hmeau.com ([180.181.231.80])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgIPX-000000099gx-0Euf;
	Sun, 05 Jul 2026 08:41:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=gondor.apana.org.au; s=h01; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:cc:to:subject:message-id:date:
	from:content-type:reply-to; bh=qA3gP4os8McJ+OFNt7VdQApYAsXAbBxNhE6FHogmy7s=; 
	b=k4/5qTcZKzBCWtbviciE1tIhaLlmL7Mll6xFO6a0fvAz1wVm4nlf4bqF6/kuaM9DlCzvIcOEz0x
	uwcBxf+o8kXBv/l8b8od4idqOKzcNiohTboAgsxNpF7db6Ts/w8qv+lNj18V1w2GAVryJD5/50yvq
	qk5ehtgF+Wmx9bjdS1D26lnscVwXdjdVrb3IqvbpECw346OzIHNxQamsYjlTHpQyJXqRzoe541dwI
	dWjV4P6PMcWgLa4wqVlMd0W+mRYn72KaVym02Odn0YaPlYpEX2l250T9CDv4gHzgiFJq4bz7Cpc0W
	vtCb+9vdBqTFpMRwxzl328Czo8Php1FSDr5g==;
Received: from loth.rohan.me.apana.org.au ([192.168.167.2])
	by formenos.hmeau.com with smtp (Exim 4.98.2 #2 (Debian))
	id 1wgIPO-0000000Al8V-1mDb;
	Sun, 05 Jul 2026 16:41:03 +0800
Received: by loth.rohan.me.apana.org.au (sSMTP sendmail emulation); Sun, 05 Jul 2026 16:41:02 +0800
Date: Sun, 5 Jul 2026 16:41:02 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Pengpeng Hou <pengpeng@iscas.ac.cn>
Cc: Corentin Labbe <clabbe@baylibre.com>,
	"David S. Miller" <davem@davemloft.net>,
	Heiko Stuebner <heiko@sntech.de>, John Keeping <john@keeping.me.uk>,
	linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] crypto: rockchip: fail ahash requests on HASH idle
 timeout
Message-ID: <akoYnu7cfveRDmKc@gondor.apana.org.au>
References: <20260623135528.46115-1-pengpeng@iscas.ac.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260623135528.46115-1-pengpeng@iscas.ac.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260705_014111_096218_A22B8A75 
X-CRM114-Status: GOOD (  11.79  )
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

On Tue, Jun 23, 2026 at 09:55:28PM +0800, Pengpeng Hou wrote:
> rk_hash_run() waits for RK_CRYPTO_HASH_STS to become idle after the
> final DMA transfer, but ignores the poll result. If the hash engine
> never becomes idle, the driver still reads the digest registers and
> finalizes the request with the previous success value.
> 
> Store the poll result and finalize the request with the timeout error
> before reading the digest registers.
> 
> Fixes: 37bc22159c45 ("crypto: rockchip - use read_poll_timeout")
> Signed-off-by: Pengpeng Hou <pengpeng@iscas.ac.cn>
> ---
>  drivers/crypto/rockchip/rk3288_crypto_ahash.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
