Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACCE6C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Nov 2022 18:38:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+uVYnl/ZQPXsMcZ674hcVDcwIUPcoMqheWTEYOgcgtQ=; b=C1LCtRWxfk72dx
	stZQ1/1fW2+1SxfNlvxUFacGxsRBvDKuaiot2dqT+uhDhU4QdVuW6QViMkbJbnWZE8zw+tn7zirG3
	m985B/XYOBg3mwhlGfELTAw0tzaqcN/xbobJqB480aLk/Fg8zbLU+CHHv4Rr70Urm2xjf4Eb2jIhE
	zTxgnojtxpBtv6yp4WMfYgDFBGQiSFepE1psQKnzUQ+7im4+5MoRo5UHatLQuJ82Ebx+S5/soXGfp
	FvoLj0/dMmzqqXqDKEj2VN5t+uBc21K5iublA3qq8zeiSPaJHArGrUnXDfIrCZaWQpfaQBo9aKRqo
	J8TGPi/8DWyFfeJNnE4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0RyP-001fBH-RZ; Wed, 30 Nov 2022 18:38:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0RxS-001ea5-D9; Wed, 30 Nov 2022 18:37:23 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1p0RxI-0003tu-Qw; Wed, 30 Nov 2022 19:37:12 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Thierry Reding <thierry.reding@gmail.com>, Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Conor Dooley <conor.dooley@microchip.com>, linux-pwm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 09/11] pwm: rockchip: Propagate errors in .get_state() to the caller
Date: Wed, 30 Nov 2022 19:37:12 +0100
Message-ID: <23426970.EfDdHjke4D@diego>
In-Reply-To: <20221130152148.2769768-10-u.kleine-koenig@pengutronix.de>
References: <20221130152148.2769768-1-u.kleine-koenig@pengutronix.de> <20221130152148.2769768-10-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221130_103722_485650_D8DB608C 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
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

Am Mittwoch, 30. November 2022, 16:21:46 CET schrieb Uwe Kleine-K=F6nig:
> .get_state() can return an error indication. Make use of it to propagate
> failing hardware accesses.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
