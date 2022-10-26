Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 875C8C38A2D
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Oct 2022 10:25:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wm/HkCPdItMU0WGhT2h4LNp0D0skP/oLLuTDjmiuYuA=; b=UqkMEun7dA2Fm9
	icEJR0/pKg1YQi7A8zftgObOgEj/gcCeOGc733ldQwJhwpo9an6/FVTFldCFEWQE5B3NjDcokcm6z
	LZbOkoH4Sv+PlKFuZYWJf2tgqr2i8MmeBQUAmpoygvlwzf1uSaVT0gGPdJaan0Ymc4+3g1Jo3XaqK
	C9OW6FmMegUTHbbw/mHbUuo6u9JYnLHj41DswMMD5HQRVdeyBsxajjRcQSBCgZ5kMUM3MCNGuKGcz
	M8UZ7OGjOnGof3yd9LsFBXqRMBIRyAes7V+yZ8whmXelZU2CzufSQO5UUtRCH3e6UnwjcMBWUzMYN
	ps6CFCIthKzNY1QC9EUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ondbV-008v9o-3B; Wed, 26 Oct 2022 10:25:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ondbK-008v7I-IX; Wed, 26 Oct 2022 10:25:35 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ondb2-0007gM-4m; Wed, 26 Oct 2022 12:25:16 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Corentin LABBE <clabbe@baylibre.com>, Herbert Xu <herbert@gondor.apana.org.au>
Cc: ardb@kernel.org, krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com, robh+dt@kernel.org, sboyd@kernel.org, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v10 00/33] crypto: rockchip: permit to pass self-tests
Date: Wed, 26 Oct 2022 12:25:14 +0200
Message-ID: <6031281.lOV4Wx5bFT@diego>
In-Reply-To: <Y1kGdWyYPtcgQPtd@gondor.apana.org.au>
References: <20220927075511.3147847-1-clabbe@baylibre.com> <Y1jkqiYjXT30/hk5@Red> <Y1kGdWyYPtcgQPtd@gondor.apana.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221026_032534_628490_3A3EC287 
X-CRM114-Status: GOOD (  11.81  )
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

Hi Herbert,

Am Mittwoch, 26. Oktober 2022, 12:05:41 CEST schrieb Herbert Xu:
> On Wed, Oct 26, 2022 at 09:41:30AM +0200, Corentin LABBE wrote:
> >
> > Herbert any thought ?
> 
> Please let me know exactly which patches you want me to apply.

it would be great if you could apply:
- patches 01 - 25
- patches 29 - 33

They all start with either
	"crypto: rockchip: ..."
or
	"dt-bindings: crypto: ..."

Regards
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
