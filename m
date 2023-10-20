Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DF09C004C0
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Oct 2023 08:13:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+mOsfDK5F+0c5IMzGS4fjB+qdyy12vWW5zEX1UFKxFE=; b=CZB0mg5inBi0bx
	PjdX6kGFbREWfqXECxJaibLaFu2SVkfmfQ9utqVjKQrz7LA+m0JUwFn4CdfQSEr2LkYu+T/zCYGmX
	OeJ6zKproFPS0Jcf/8wn5kmPkieF9oYkEo8szMSO8IC59NlI+MbNSoPLd529ckFOfrc8SLaIGw8rV
	0sdbMVCNNxUqPBtwOmmzSK4CisoNhNZ7GtwL7BXNeKY/jqYw4RetkV+2Q2T5wE8pcDTt0aH3KmyHm
	OrD8y4la76GPxNJowVq50YQGyHenevHozxxQCCiCJ2dkdDQ7pKVJmmgWZNRdPF9se68Xx9MMBEJZ6
	CKlNe8tGk3lTkyrvZleQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtkdg-001Wez-1i;
	Fri, 20 Oct 2023 08:13:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtkdc-001Wcp-0Q;
	Fri, 20 Oct 2023 08:13:45 +0000
Received: from i53875b5b.versanet.de ([83.135.91.91] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qtkdU-0002Tm-Nq; Fri, 20 Oct 2023 10:13:36 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Herbert Xu <herbert@gondor.apana.org.au>,
 "David S. Miller" <davem@davemloft.net>,
 Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Corentin Labbe <clabbe@baylibre.com>, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel@pengutronix.de
Subject: Re: [PATCH 34/42] crypto: rockchip/rk3288 - Convert to platform remove
 callback returning void
Date: Fri, 20 Oct 2023 10:13:35 +0200
Message-ID: <9703959.ag9G3TJQzC@diego>
In-Reply-To: <20231020075521.2121571-78-u.kleine-koenig@pengutronix.de>
References: <20231020075521.2121571-44-u.kleine-koenig@pengutronix.de>
 <20231020075521.2121571-78-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231020_011344_185634_564D55D2 
X-CRM114-Status: GOOD (  13.24  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Freitag, 20. Oktober 2023, 09:55:56 CEST schrieb Uwe Kleine-K=F6nig:
> The .remove() callback for a platform driver returns an int which makes
> many driver authors wrongly assume it's possible to do error handling by
> returning an error code. However the value returned is ignored (apart
> from emitting a warning) and this typically results in resource leaks.
> =

> To improve here there is a quest to make the remove callback return
> void. In the first step of this quest all drivers are converted to
> .remove_new(), which already returns void. Eventually after all drivers
> are converted, .remove_new() will be renamed to .remove().
> =

> Trivially convert this driver from always returning zero in the remove
> callback to the void returning variant.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
