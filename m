Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 479AAC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jul 2024 23:19:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iWLPw0mw3u+2j/sQKY6ZbY84nZ8Uz9yyI/K/uoy/7+Y=; b=pLMdgPUvQ3UJlS
	QCnGaWHkS2qjluk0e4PCCRBY/v01R3hML+xQpNWYuYVLqcLUAOPS6UPS1GxM33ufC2L+9Bkm3v3G7
	uTOlSfPmWfa2vIb/02gpJ5rDgETU26WNszwBPF0hmcWNChpX5U7ifGM0dbPllzyfpqJQee+9a2hlL
	LJigiUf8ExGsBJh6cor+4s2lkIosv25XHNRefc6tSEYExwS13uFzZEIsVK+bKN4m9mkBCCHN4KvfC
	Ifwb/3dCwVVDNofQaHISFA9WkyeRtcvumgn6B8HO7pbA7ZPUrU4KuJGmkGfk5gjTJrrJDFyZWK3AD
	MQ0STBTynTQxAoYBKgzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYZdu-0000000Czpq-1Kiq;
	Mon, 29 Jul 2024 23:19:02 +0000
Received: from pidgin.makrotopia.org ([2a07:2ec0:3002::65])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYZdq-0000000Czos-2LaM;
	Mon, 29 Jul 2024 23:19:01 +0000
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	 (Exim 4.98)
	(envelope-from <daniel@makrotopia.org>)
	id 1sYZdZ-000000006Q5-0COe;
	Mon, 29 Jul 2024 23:18:41 +0000
Date: Tue, 30 Jul 2024 00:18:37 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: Dragan Simic <dsimic@manjaro.org>
Cc: Diederik de Haas <didi.debian@cknow.org>,
	Chen-Yu Tsai <wens@kernel.org>, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Martin Kaiser <martin@kaiser.cx>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@debian.org>,
	devicetree@vger.kernel.org, linux-crypto@vger.kernel.org,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Olivia Mackall <olivia@selenic.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Aurelien Jarno <aurelien@aurel32.net>,
	Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v7 0/3] hwrng: add hwrng support for Rockchip RK3568
Message-ID: <ZqgjTQMgWZO2FjaC@makrotopia.org>
References: <cover.1720969799.git.daniel@makrotopia.org>
 <3190961.CRkYR5qTbq@bagend>
 <CAGb2v64Dx7XaJOu0HHzFxYYY2ddUZao5Tar8-s1R_miVZqWcXA@mail.gmail.com>
 <4406786.zLnsZ2vfAB@bagend>
 <faa0baebabd3c31adf1afa7efbbdf608@manjaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <faa0baebabd3c31adf1afa7efbbdf608@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_161858_619108_C1E38327 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Jul 24, 2024 at 08:07:51AM +0200, Dragan Simic wrote:
> Thanks a lot for the testing.  Though, such wildly different test results
> can, regrettably, lead to only one conclusion:  the HWRNG found in RK3566
> is unusable. :/

The results on RK3568 look much better and the series right now also
only enabled the RNG on RK3568 systems. However, we have only seen few
boards with RK3568 up to now, and I only got a couple of NanoPi R5C
here to test, all with good hwrng results.

Do you think it would be agreeable to only enable the HWRNG for RK3568
as suggested in this series? Or are we expecting quality to also vary
as much as it (sadly) does for RK3566?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
