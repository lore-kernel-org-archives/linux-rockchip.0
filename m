Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F826C83F1A
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jul 2025 11:28:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=df5D/IUMdcFW3F067KlP79NxDSiE+OJdKQa8mupOHgE=; b=Uoj2/2QMu4V4b3
	zMsLyt57VMbqSA9xuwRFTBucuqHiXB+BbPipWJo6Bz+Wv0uuogJ62zUvGu3iDDAj6ExIYmzY58hDh
	izUvXbRN8U7J9Mejk0znlvi4cwVf8jDCIl3mdavabLOtTWz78n6SdEgJtHoR3211+JJbM/RIFMlZv
	WfVfmw7+lrCNFXXkVrEv5yQtyDUMzInwsQ+0hwipWStSI1tb8VhdHJgdoEkJSRD6pPxoyzEz1nsQL
	3rvhieL99y0PdMi3bQpkfjh6RS8up/zhQRROKalapBWqCuEQr/ZoK378G/uunjn8gQi1Kf0TVzljc
	oGvpXOmFAEQeF+TuMTCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucjG0-0000000CRNj-1I3Y;
	Fri, 18 Jul 2025 11:28:04 +0000
Received: from abb.hmeau.com ([180.181.231.80])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucioj-0000000CNcl-2QmG;
	Fri, 18 Jul 2025 10:59:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hmeau.com;
	s=formenos; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=ZAzXiiY/YIuQ/9uY0l8462fgPlzoh4f7KxWN0ebvqKE=; b=gl6/Zd5HCQjexfoJQ5QZ7wWbAN
	hbTSGnGqU1GFUKmrbFD5jj5vmYPGtEhp2sd/JvCtZM6Ey182276LgB1rE6/Y4aUV+YP9bKd8D1GaR
	zFO93R0YQ/tC9nTkcRMnuZTdZ9Df6EvDXbhwS0lu+KiAp/tqI1sLtvSsK9OUIfEHv9h1Zgc9fUTSy
	FhsdvvJ9w0SYBxvit/U5QBdoDkz+FyLZGvo+Wpy+Ut0aSr8T8A7G2SLLgJJQxnRDa/M20K8u0rMGO
	zTuIwFdckQDDn1z7Fu0M5YEidFHCWP3HUT1OuutOK5JjiGBlgmO95iGw2o9kaSi+0Jbt6qJZK+hZB
	84nBPNsA==;
Received: from loth.rohan.me.apana.org.au ([192.168.167.2])
	by formenos.hmeau.com with smtp (Exim 4.96 #2 (Debian))
	id 1uciYM-007yZr-27;
	Fri, 18 Jul 2025 18:58:56 +0800
Received: by loth.rohan.me.apana.org.au (sSMTP sendmail emulation); Fri, 18 Jul 2025 20:58:55 +1000
Date: Fri, 18 Jul 2025 20:58:55 +1000
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Subject: Re: [PATCH 05/80] hwrng: Remove redundant
 pm_runtime_mark_last_busy() calls
Message-ID: <aHoo71TbepQD2Nsd@gondor.apana.org.au>
References: <20250704075225.3212486-1-sakari.ailus@linux.intel.com>
 <20250704075359.3217036-1-sakari.ailus@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250704075359.3217036-1-sakari.ailus@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250718_035953_623828_3DAB2CF9 
X-CRM114-Status: GOOD (  12.96  )
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, Tomer Maimon <tmaimon77@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, Olivia Mackall <olivia@selenic.com>, linux-stm32@st-md-mailman.stormreply.com, Heiko Stuebner <heiko@sntech.de>, Marek Vasut <marex@denx.de>, Benjamin Fair <benjaminfair@google.com>, linux-rockchip@lists.infradead.org, openbmc@lists.ozlabs.org, Daniel Golle <daniel@makrotopia.org>, Nancy Yuen <yuenn@google.com>, Hadar Gat <hadar.gat@arm.com>, Sean Wang <sean.wang@mediatek.com>, Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@baylibre.com>, Matthias Brugger <matthias.bgg@gmail.com>, Tali Perry <tali.perry1@gmail.com>, linux-arm-kernel@lists.infradead.org, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Avi Fishman <avifishman70@gmail.com>, Patrick Venture <venture@google.com>, Nicolas Ferre <nicolas.ferre@microchip.com>, linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org, Maxime Coquelin <mcoquelin.stm32@gmail.com>, linux-mediatek@lists.infradead.org, Gatien Chevallier <gatien.chevallier@foss.st.com>, Aurelien Jarno <aurelien@aurel32.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, Jul 04, 2025 at 10:53:59AM +0300, Sakari Ailus wrote:
> pm_runtime_put_autosuspend(), pm_runtime_put_sync_autosuspend(),
> pm_runtime_autosuspend() and pm_request_autosuspend() now include a call
> to pm_runtime_mark_last_busy(). Remove the now-reduntant explicit call to
> pm_runtime_mark_last_busy().
> 
> Signed-off-by: Sakari Ailus <sakari.ailus@linux.intel.com>
> ---
> The cover letter of the set can be found here
> <URL:https://lore.kernel.org/linux-pm/20250704075225.3212486-1-sakari.ailus@linux.intel.com>.
> 
> In brief, this patch depends on PM runtime patches adding marking the last
> busy timestamp in autosuspend related functions. The patches are here, on
> rc2:
> 
>         git://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git \
>                 pm-runtime-6.17-rc1
> 
>  drivers/char/hw_random/atmel-rng.c     | 1 -
>  drivers/char/hw_random/cctrng.c        | 1 -
>  drivers/char/hw_random/mtk-rng.c       | 1 -
>  drivers/char/hw_random/npcm-rng.c      | 1 -
>  drivers/char/hw_random/omap3-rom-rng.c | 1 -
>  drivers/char/hw_random/rockchip-rng.c  | 3 ---
>  drivers/char/hw_random/stm32-rng.c     | 1 -
>  7 files changed, 9 deletions(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
