Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C1A9C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Oct 2022 17:10:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OTJ58fNZTr/Ll1aL7diAs5n7a3o0bW757mg360kdCBk=; b=ipBa8xMdxSsztw
	WOadnymc6DdgZx+BJLT25cwA4tPhQzdYe/crybUL13ktX8WuejhSW1Bv+FCcGxUWumZOK2lkLQ29O
	PaEQSuR48XLG1QQ/qkjZDPLwiy149016VYblHBbOqlPiCvpTrwop7W9cp9vqpD2kfWo3g6ui41BLE
	TeF0l2cHaG21Sdt4ZCdtsHVMILwm7ihTLC3QT9yR2nTeMwWfronCwyi9DV4QfUuvwoHyRh9ZRe3sx
	f9KEVR/N3cwJjj8m4/d4RYBKPi25BE8LNoiNFzBbxD8XgEK4/pJXxwhnY9h2rWMPU5w0ZmPAV7rEb
	OuYiHWy8YJRzCHZnhGKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olvXL-0098QD-BV; Fri, 21 Oct 2022 17:10:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olvXA-0098Gj-ST; Fri, 21 Oct 2022 17:10:14 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1olvWv-0007gs-Dp; Fri, 21 Oct 2022 19:09:57 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: ardb@kernel.org, davem@davemloft.net, herbert@gondor.apana.org.au, krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com, robh+dt@kernel.org, sboyd@kernel.org, Corentin LABBE <clabbe@baylibre.com>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v10 00/33] crypto: rockchip: permit to pass self-tests
Date: Fri, 21 Oct 2022 19:09:53 +0200
Message-ID: <4780296.31r3eYUQgx@diego>
In-Reply-To: <Y1KctXMZ1+c5uQqd@Red>
References: <20220927075511.3147847-1-clabbe@baylibre.com> <Y1KctXMZ1+c5uQqd@Red>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221021_101012_961059_968ED914 
X-CRM114-Status: GOOD (  14.59  )
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

Am Freitag, 21. Oktober 2022, 15:20:53 CEST schrieb Corentin LABBE:
> Le Tue, Sep 27, 2022 at 07:54:38AM +0000, Corentin Labbe a =E9crit :
> > Hello
> > =

> > The rockchip crypto driver is broken and do not pass self-tests.
> > This serie's goal is to permit to become usable and pass self-tests.
> > =

> > This whole serie is tested on a rk3328-rock64, rk3288-miqi and
> > rk3399-khadas-edge-v with selftests (with CONFIG_CRYPTO_MANAGER_EXTRA_T=
ESTS=3Dy)
> > =

> > Regards
> > =

> =

> Hello
> =

> Gentle ping since it is a month since this serie was sent and no comment =
was made (except some reviewed-by).
> So I think it is ready to be merged, probably thought the crypto tree.

ideally everything _except_ patches
 26 +27+28
would go through the crypto tree.

So if possible I'd like to pick up those (clock + arm64-dts patches)
after the crypto people are satisfied with the driver changes.


Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
