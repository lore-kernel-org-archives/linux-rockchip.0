Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5ACD6ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Oct 2022 05:02:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RaXgaNnrqPvKPkesZNmBBfWlQ5PcErUNwQuem3wrJ6Y=; b=4pqrfDCxHejGXj
	0znO3LeQseSKjh+u2MEN69imHIU4hJB1xSLMnFOCciPGoNtqb4bMC2YtNoqBrLOd8KM7MuDEw/ru/
	/5iV/Oz7D3MGW41D1CIRcZR95+w/sbCMKTdnfnLWhaUp8sZocupbyHnhQ4bE7wZJUwZ7kBm2u+WeT
	Y9tdtqMkY2xD8bjb2Z02XNy4iMF5WiVe7AoQKIti2tGG4YguUT7pFR5+Un4cLt3KV+0sbnDiTEzBd
	1ZwZgxE/sq8xTsdjxO9FI30eaIeEoHdV3q8mVBJGZTPabXw/iJHly3Zl4nlINDjIjmjzpZ3v9ic8k
	yu7O/IZl0GeDK24AV1ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooHVZ-00FkzQ-9v; Fri, 28 Oct 2022 05:02:17 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=formenos.hmeau.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooHVN-00Fkxy-QY; Fri, 28 Oct 2022 05:02:08 +0000
Received: from loth.rohan.me.apana.org.au ([192.168.167.2])
	by formenos.hmeau.com with smtp (Exim 4.94.2 #2 (Debian))
	id 1ooHUR-007UuU-3C; Fri, 28 Oct 2022 13:01:44 +0800
Received: by loth.rohan.me.apana.org.au (sSMTP sendmail emulation); Fri, 28 Oct 2022 13:01:43 +0800
Date: Fri, 28 Oct 2022 13:01:43 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Corentin Labbe <clabbe@baylibre.com>
Cc: heiko@sntech.de, ardb@kernel.org, davem@davemloft.net,
	krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com,
	robh+dt@kernel.org, sboyd@kernel.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v10 00/33] crypto: rockchip: permit to pass self-tests
Message-ID: <Y1tiN9GSMrudUG6d@gondor.apana.org.au>
References: <20220927075511.3147847-1-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220927075511.3147847-1-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_220205_883840_8B7EFD5B 
X-CRM114-Status: GOOD (  23.23  )
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

On Tue, Sep 27, 2022 at 07:54:38AM +0000, Corentin Labbe wrote:
> Hello
> 
> The rockchip crypto driver is broken and do not pass self-tests.
> This serie's goal is to permit to become usable and pass self-tests.
> 
> This whole serie is tested on a rk3328-rock64, rk3288-miqi and
> rk3399-khadas-edge-v with selftests (with CONFIG_CRYPTO_MANAGER_EXTRA_TESTS=y)
> 
> Regards
> 
> Changes since v1:
> - select CRYPTO_ENGINE
> - forgot to free fallbacks TFMs
> - fixed kernel test robots warning
> - add the PM patch
> 
> Changes since v2:
> - Added DMA clock back to 3288 since it dont work without it
> - fallback needed to select CBC and ECB configs
> - Added support for rk3399
> - Added more patch (style, read_poll_timeout)
> 
> Changes since v3:
> - full rewrite of support for RK3399
> - splited dt-binding patch in two
> 
> Changes since v4:
> - Another full rewrite of support for RK3399
> - Fixed dt-binding from Krzysztof Kozlowski's comments
> - Use readl_poll_timeout() instead of read_poll_timeout()
> - Rewrite the fallback SG tests
> 
> Changes since v5:
> - fixed errors in DT binding patch
> 
> Change since v6:
> - remove quotes around const values in dt-bindings
> 
> Changes since v7:
> - added lot of reviewed/tested by
> - In patch 14: keep initial reset pulse.
> 
> Changes since v8:
> - Removed some useless min/maxitems from dt-binding as reported by dt_binding_check
> 
> Change since v9:
> - removed redundant rst_ from reset-names
> - reworked patch #25 commit message
> 
> Corentin Labbe (33):
>   crypto: rockchip: use dev_err for error message about interrupt
>   crypto: rockchip: do not use uninitialized variable
>   crypto: rockchip: do not do custom power management
>   crypto: rockchip: fix privete/private typo
>   crypto: rockchip: do not store mode globally
>   crypto: rockchip: add fallback for cipher
>   crypto: rockchip: add fallback for ahash
>   crypto: rockchip: better handle cipher key
>   crypto: rockchip: remove non-aligned handling
>   crypto: rockchip: rework by using crypto_engine
>   crypto: rockchip: rewrite type
>   crypto: rockchip: add debugfs
>   crypto: rockchip: introduce PM
>   crypto: rockchip: handle reset also in PM
>   crypto: rockchip: use clk_bulk to simplify clock management
>   crypto: rockchip: add myself as maintainer
>   crypto: rockchip: use read_poll_timeout
>   crypto: rockchip: fix style issue
>   crypto: rockchip: add support for rk3328
>   crypto: rockchip: rename ablk functions to cipher
>   crypto: rockchip: rework rk_handle_req function
>   crypto: rockchip: use a rk_crypto_info variable instead of lot of
>     indirection
>   crypto: rockchip: use the rk_crypto_info given as parameter
>   dt-bindings: crypto: convert rockchip-crypto to YAML
>   dt-bindings: crypto: rockchip: add new compatible
>   clk: rk3399: use proper crypto0 name
>   arm64: dts: rockchip: add rk3328 crypto node
>   arm64: dts: rockchip: rk3399: add crypto node
>   crypto: rockchip: store crypto_info in request context
>   crypto: rockchip: Check for clocks numbers and their frequencies
>   crypto: rockchip: rk_ahash_reg_init use crypto_info from parameter
>   crypto: rockchip: permit to have more than one reset
>   crypto: rockchip: Add support for RK3399
> 
>  .../crypto/rockchip,rk3288-crypto.yaml        | 127 ++++
>  .../bindings/crypto/rockchip-crypto.txt       |  28 -
>  MAINTAINERS                                   |   7 +
>  arch/arm64/boot/dts/rockchip/rk3328.dtsi      |  11 +
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi      |  20 +
>  drivers/crypto/Kconfig                        |  15 +
>  drivers/crypto/rockchip/rk3288_crypto.c       | 506 ++++++++--------
>  drivers/crypto/rockchip/rk3288_crypto.h       | 107 ++--
>  drivers/crypto/rockchip/rk3288_crypto_ahash.c | 267 +++++----
>  .../crypto/rockchip/rk3288_crypto_skcipher.c  | 543 ++++++++++--------
>  include/dt-bindings/clock/rk3399-cru.h        |   6 +-
>  11 files changed, 949 insertions(+), 688 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
>  delete mode 100644 Documentation/devicetree/bindings/crypto/rockchip-crypto.txt
> 
> -- 
> 2.35.1

Patches 1-25,29-33 applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
