Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9EBBC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Apr 2022 11:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U6eZtddJnYKnG5NObSlihuK+yxTNkUufXqQ4KIY/3OU=; b=Vofz0iXoT1mjyl
	6/ROkU/vRukkqm6o7SKeAo0Pm7F+EshvoREgt6iLKSl/VUXGXpeiLXFuE7J4jFzsGkVykmxW3i1Tz
	3IZsgGuVrEpcuypEqp7w2Wqy0RaU2yfRnOi+AeghgQz0AfF8kaVsA2rI90BheG1EQEiTepjeLLMNx
	xFUQwKyCCLwh8Ta5Jd6gna4JHEUvbrgvQO1iSFuG8hZ+Q/8ohxM0edpG2HcqTP3RL/k9UNf4J6EgB
	xiimWpZftdnyMdgDw8Y8DpUd0IC6C8aa5nPQ0IQzkH8KH01dvCi7p2F463iqJexMHPIvWTQnUPClh
	hGYfqu1e7r8YFVm3yOBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbKvo-00EiLC-45; Mon, 04 Apr 2022 11:31:36 +0000
Received: from [2001:8b0:1628:5005::111] (helo=metanate.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbKvW-00EiD0-Db; Mon, 04 Apr 2022 11:31:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=metanate.com; s=stronger; h=In-Reply-To:Content-Type:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description; bh=g+Na3FfqSbBs+NfGy8udHP+G0PkiZ0hNm5glhWAuBtw=; b=b8g/9
 mY+QVzpPzjxxdP2dH/gVChi9dXExZcQzbGEr6id4eHIu733ysAaJZ/FxXSceFhCf536aHA13rR3Yz
 U/QTqOfxh0WlNPwOqaoCrczym16P+qOmWQAI79Lkx+9Fa413PvawThzreFuTUQqwxyiXB1kC0Fpc3
 0BrjD898MnrqjY4brIAoQGPWPEf54jyN34iem6Sjn93XVeILkET1QHxiZvFCdYqE2yjwG2KHQucQf
 xuTvKf7lR3eAi+OlgrMqhZsYiaIGyzh/GetT5kKSA3gUyNFIViUZCF03pqwyr07+LhxMLq/0QdVhr
 kMaI4C44AlRYQSuhpg5qRt/gjXHYg==;
Received: from [81.174.171.191] (helo=donbot)
 by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <john@metanate.com>)
 id 1nbKvQ-00051Q-N6; Mon, 04 Apr 2022 12:31:12 +0100
Date: Mon, 4 Apr 2022 12:31:11 +0100
From: John Keeping <john@metanate.com>
To: Corentin Labbe <clabbe@baylibre.com>
Cc: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 robh+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 08/33] crypto: rockchip: better handle cipher key
Message-ID: <YkrW/+DX5vN8W5cF@donbot>
References: <20220401201804.2867154-1-clabbe@baylibre.com>
 <20220401201804.2867154-9-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220401201804.2867154-9-clabbe@baylibre.com>
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220404_043118_517350_E8191CED 
X-CRM114-Status: GOOD (  16.66  )
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

On Fri, Apr 01, 2022 at 08:17:39PM +0000, Corentin Labbe wrote:
> The key should not be set in hardware too much in advance, this will
> fail it 2 TFM with different keys generate alternative requests.
> The key should be stored and used just before doing cipher operations.
> 
> Fixes: ce0183cb6464b ("crypto: rockchip - switch to skcipher API")
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  drivers/crypto/rockchip/rk3288_crypto.h          |  1 +
>  drivers/crypto/rockchip/rk3288_crypto_skcipher.c | 10 +++++++---
>  2 files changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/crypto/rockchip/rk3288_crypto.h b/drivers/crypto/rockchip/rk3288_crypto.h
> index 8b1e15d8ddc6..826508e4a0c3 100644
> --- a/drivers/crypto/rockchip/rk3288_crypto.h
> +++ b/drivers/crypto/rockchip/rk3288_crypto.h
> @@ -245,6 +245,7 @@ struct rk_ahash_rctx {
>  struct rk_cipher_ctx {
>  	struct rk_crypto_info		*dev;
>  	unsigned int			keylen;
> +	u32 key[AES_MAX_KEY_SIZE / 4];

Should this be u8?  It's only ever memcpy'd so the fact the registers
are 32-bit is irrelevant.

(Also a very minor nit: this should probably be aligned in the same was
as the above two variables.)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
