Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51EAFCAC5AC
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Sep 2024 23:15:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9oeQ50ZvLSSibXIRZH+15klhY6vg9x+lvAOO7m4DkOw=; b=alvfQ88/uDlN0M
	/VWsYdytQlaqH+WhSD/TBuDgQp4htEl6FPYEiDBRBIfSlMfoFBMuId+MktdbDPXlUv5gFx7Tuxgz1
	B2a0WJ+yCSeiBpG6nHmBNgfPmFnLjO0BsjGPyj2cVTzLk6Ca2elrnedrSgCN6DIRMksV7l/eX858A
	g3P38GO/ELm2ig3zYGRNm/LnHSv3HOzEHr5MXO3xFyrtNRT26M8kWxwHFzMFweCxYpXLFrMCFRIu8
	q1Pr8Dj5CVXXcBJ9sVGxtJRMQo7e2FSQQR45foqFufNES4r1ZuDV9EpuWq5dXmiIgUmV1IlHdXoRY
	pgts3LQs+Qh4LA9OPk9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqhPW-000000077Ck-12Nz;
	Tue, 17 Sep 2024 23:15:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqhOO-0000000771v-0MTg;
	Tue, 17 Sep 2024 23:13:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=O0f4fMiSZzhyqnmcGQxhgWk91t8Qt5UtvlepWEOO714=; b=v1pf5bMaWt60Y9OWAVsnZCkuR2
	PTJaC+UN2QUDYr6VI69SdTOUUS0N3+zc6z6bm2fJb6cW6iPGVPZ5CpqEZCvwSyTQzNQFePdMQ5STb
	TV/EG+S96nL4HDnb2m7f70YOM/LfUJsJsBKdPqHDpFTaju4V3gDILPAsuew/qb/eav0BEacukcR5I
	VCDMVdVRx6kTx4GKZO2ISx4B4gBSHeJwzHxiUIuzkilNy8NoEQBSMYsSQuL/tYAxut+kDNabGEMt8
	Cobh3I6p91J3+alOs/8208rgyw2369ATNccsFy21Nh4ucODLS59pFZqAY9EA+ZcI82mhIUb8uJQo1
	axXYtJSg==;
Received: from [213.164.25.30] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sqhNu-000126-HM; Wed, 18 Sep 2024 01:13:26 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Chris Morgan <macromorgan@hotmail.com>,
 Jonas Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>,
 Andy Yan <andyshrk@163.com>, Muhammed Efe Cetin <efectn@protonmail.com>,
 Jagan Teki <jagan@edgeble.ai>, Dragan Simic <dsimic@manjaro.org>,
 Ondrej Jirman <megi@xff.cz>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
 Yao Zi <ziyao@disroot.org>
Cc: Celeste Liu <CoelacanthusHex@gmail.com>
Subject: Re: [PATCH v4 0/4] Add initial support for Rockchip RK3528 SoC
Date: Wed, 18 Sep 2024 01:13:25 +0200
Message-ID: <23655990.6Emhk5qWAg@phil>
In-Reply-To: <ZunjLMQGEcES2zIV@pineapple>
References: <20240829092705.6241-1-ziyao@disroot.org> <ZunjLMQGEcES2zIV@pineapple>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240917_161356_199288_4270625A 
X-CRM114-Status: GOOD (  24.71  )
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

Hey,

Am Dienstag, 17. September 2024, 22:14:36 CEST schrieb Yao Zi:
> On Thu, Aug 29, 2024 at 09:27:01AM +0000, Yao Zi wrote:
> > Rockchip RK3528 is a quad-core ARM Cortex-A53 SoC designed for
> > multimedia application. This series add a basic device tree with CPU,
> > interrupts and UART nodes for it and is able to boot into a kernel with
> > only UART console.
> > 
> > Has been tested on Radxa E20C board[1] with vendor U-boot, successfully
> > booted into initramfs with this log[2].

> Ping on this thread. Is it possible to get this merged in v6.12? Or
> anything else I need to do?

sadly nope. From a timeline point of view things should ideally be in the
Rockchip tree by -rc6 . Which then move to the soc tree and from there
to Linus' tree.

There is this rule that all new development for a -rc1 kernel should be
present in linux-next _before_ the merge-window opens.

The thing we need to figure out for your series is the uart binding,
because that _should_ go through the tree handling serial drivers.
Greg is in your cc list but with the amount of mail he gets, I don't
think he has single-parts of patch series on his radar.

So I guess the easiest way would be to send the uart-binding from patch 1
as a completely separate patch with adapted Cc list, so that it's obvious
this should go through the serial tree.

From talking with Collabora people today at the Open Source Summit, it
seems that's also their plan for the rk3576 that is stuck at a similar
state.


Hope that helps a bit to explain
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
