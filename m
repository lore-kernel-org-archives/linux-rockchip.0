Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D65CC53209
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Jul 2026 00:36:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZdbAb1hkWrtBN7+tJ4O7cYp3yZ7PqTxdIme9MekSAV4=; b=rvR8/6nw5FVoko
	kAVOQbzjq2oMYMqSGtYJQlltutLaa+Ww6bgMD5iAx/C175nSNkJj2GONqqWVO1pBSq9tHMx5b+q69
	0EqLG2Tc/+HLTutNsHj/ELwP6+CREBcTGSWV4gymCM1ge41SlTMUC0beayU3fz4m8A6rrPv6OB4z6
	04KfCcVrjaCf1t8GEHuKQUmpwA2lDAIgznVUVPndHR/C36AaRKfPKKQEDHRrdSwzh7GADaHGJYFYe
	2q/R6icAOlZP8vO5b9MQ4GJxi1/TN3aKvDlSxbnN6B9DIUXYpCcivDWSD4Xz2k3TJEuvofQUXteXl
	XJP24AYSczA7qmG4KuUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wo9K1-00000001kAk-0umI;
	Mon, 27 Jul 2026 00:35:57 +0000
Received: from abb.hmeau.com ([180.181.231.80])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wo9Jx-00000001kA4-0K3a;
	Mon, 27 Jul 2026 00:35:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=gondor.apana.org.au; s=h01; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:cc:to:subject:message-id:date:
	from:content-type:reply-to; bh=7A3LFRZ61WV2Y8KMKIOzkO8WcMNetvJNv/MmH+S50Fg=; 
	b=rb9lAWnlFuVHGfjZrw5RIvREO+1IsmUu1niONXWgUM8KCSkTgmtU8hfH1+1t+Qtb4msWXiLnKrj
	cMWuLucHDCMSmoKPJMTmlm7BIgmH49UOS73r8LhYCw9cBlRWwYJKNiVdus1O3JL/DiAPk5wBI8kpe
	XhAiQ9D7jOhqmixltxiXr1qvziPK+amMPN3LXJKBZBXKFfrxQcqo6do5JmwBIyt37ngtZE4eh3RVD
	uORX81jQE/+c5UFRSogVHQkeIJ2TwJFl/ZQGx8aYLOKvXnyDZbCDD9Bu9jyO6jhSSdJaB+WwL6IU3
	Lq/6pF/SB3lxUkiTVtXCwggoReXRXx4mYGrw==;
Received: from loth.rohan.me.apana.org.au ([192.168.167.2])
	by formenos.hmeau.com with smtp (Exim 4.98.2 #2 (Debian))
	id 1wo9JA-0000000Gz1z-1dOl;
	Mon, 27 Jul 2026 08:35:05 +0800
Received: by loth.rohan.me.apana.org.au (sSMTP sendmail emulation); Mon, 27 Jul 2026 10:35:04 +1000
Date: Mon, 27 Jul 2026 10:35:04 +1000
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Pan Chuang <panchuang@vivo.com>
Cc: Corentin Labbe <clabbe.montjoie@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Neal Liu <neal_liu@aspeedtech.com>, Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Horia =?utf-8?Q?Geant=C4=83?= <horia.geanta@nxp.com>,
	Pankaj Gupta <pankaj.gupta@nxp.com>,
	Gaurav Jain <gaurav.jain@nxp.com>,
	Gilad Ben-Yossef <gilad@benyossef.com>,
	Hans Ulli Kroll <ulli.kroll@googlemail.com>,
	Linus Walleij <linusw@kernel.org>,
	Antoine Tenart <atenart@kernel.org>,
	Prabhjot Khurana <prabhjot.khurana@intel.com>,
	Declan Murphy <declan.murphy@intel.com>,
	Srujana Challa <schalla@marvell.com>,
	Bharat Bhushan <bbhushan2@marvell.com>, Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Ovidiu Panait <ovidiu.panait.oss@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, Eric Biggers <ebiggers@kernel.org>,
	Myeonghun Pak <mhun512@gmail.com>, Ijae Kim <ae878000@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	Kees Cook <kees@kernel.org>,
	Thorsten Blum <thorsten.blum@linux.dev>,
	Colin Ian King <colin.i.king@gmail.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	"open list:ALLWINNER CRYPTO DRIVERS" <linux-crypto@vger.kernel.org>,
	"moderated list:ARM/Allwinner sunXi SoC support" <linux-arm-kernel@lists.infradead.org>,
	"open list:ARM/Allwinner sunXi SoC support" <linux-sunxi@lists.linux.dev>,
	open list <linux-kernel@vger.kernel.org>,
	"open list:ARM/Amlogic Meson SoC Crypto Drivers" <linux-amlogic@lists.infradead.org>,
	"moderated list:ASPEED CRYPTO DRIVER" <linux-aspeed@lists.ozlabs.org>,
	"open list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <imx@lists.linux.dev>,
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
	"moderated list:ARM/STM32 ARCHITECTURE" <linux-stm32@st-md-mailman.stormreply.com>
Subject: Re: [PATCH 00/12] crypto: Remove redundant error messages on IRQ
 request failure
Message-ID: <amanuOXfLwXXDuBk@gondor.apana.org.au>
References: <20260717080045.191538-1-panchuang@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260717080045.191538-1-panchuang@vivo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260726_173553_121787_E1B67BE9 
X-CRM114-Status: GOOD (  14.12  )
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

On Fri, Jul 17, 2026 at 04:00:14PM +0800, Pan Chuang wrote:
> Commit 55b48e23f5c4 ("genirq/devres: Add error handling in
> devm_request_*_irq()") added automatic error logging to
> devm_request_threaded_irq() and devm_request_any_context_irq()
> via the new devm_request_result() helper, which prints device
> name, IRQ number, handler functions, and error code on failure.
> 
> Since devm_request_irq() is a static inline wrapper around
> devm_request_threaded_irq(), it also benefits from this
> automatic logging.
> 
> Remove the now-redundant dev_err() and dev_err_probe() calls
> in crypto drivers that follow these devm_request_*_irq()
> functions, as the core now provides more detailed diagnostic
> information on failure.
> 
> Pan Chuang (12):
>   crypto: allwinner - Remove redundant dev_err()
>   crypto: amlogic - Remove redundant dev_err()
>   crypto: aspeed - Remove redundant dev_err()
>   crypto: Remove redundant dev_err()/dev_err_probe()
>   crypto: caam - Remove redundant dev_err()
>   crypto: ccree - Remove redundant dev_err()
>   crypto: sl3516 - Remove redundant dev_err()
>   crypto: safexcel - Remove redundant dev_err()
>   crypto: keembay - Remove redundant dev_err()
>   crypto: octeontx2 - Remove redundant dev_err()
>   crypto: rockchip - Remove redundant dev_err()
>   crypto: stm32 - Remove redundant dev_err()
> 
>  drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c   | 4 +---
>  drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c   | 4 +---
>  drivers/crypto/amlogic/amlogic-gxl-core.c           | 4 +---
>  drivers/crypto/aspeed/aspeed-acry.c                 | 4 +---
>  drivers/crypto/aspeed/aspeed-hace.c                 | 4 +---
>  drivers/crypto/atmel-aes.c                          | 4 +---
>  drivers/crypto/atmel-sha.c                          | 4 +---
>  drivers/crypto/atmel-tdes.c                         | 4 +---
>  drivers/crypto/caam/jr.c                            | 2 --
>  drivers/crypto/ccree/cc_driver.c                    | 4 +---
>  drivers/crypto/gemini/sl3516-ce-core.c              | 4 +---
>  drivers/crypto/img-hash.c                           | 4 +---
>  drivers/crypto/inside-secure/safexcel.c             | 4 +---
>  drivers/crypto/intel/keembay/keembay-ocs-aes-core.c | 4 +---
>  drivers/crypto/intel/keembay/keembay-ocs-ecc.c      | 4 +---
>  drivers/crypto/intel/keembay/keembay-ocs-hcu-core.c | 4 +---
>  drivers/crypto/marvell/octeontx2/otx2_cptpf_main.c  | 5 +----
>  drivers/crypto/mxs-dcp.c                            | 8 ++------
>  drivers/crypto/omap-aes.c                           | 4 +---
>  drivers/crypto/omap-des.c                           | 4 +---
>  drivers/crypto/omap-sham.c                          | 5 +----
>  drivers/crypto/rockchip/rk3288_crypto.c             | 4 +---
>  drivers/crypto/sahara.c                             | 3 +--
>  drivers/crypto/stm32/stm32-cryp.c                   | 4 +---
>  drivers/crypto/stm32/stm32-hash.c                   | 4 +---
>  25 files changed, 25 insertions(+), 78 deletions(-)
> 
> -- 
> 2.34.1

All applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
