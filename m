Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79392C0015E
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Jul 2023 14:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8PQjsIDg/lgW+PGnD7CKO7t0G0H24Ws+EN54Gzzp2jY=; b=mNmfxylIV9pf3Z
	WbbHrxcijdw/4/3iSs/G9DkG9XdxMIDfXOKcgwd7ZHI09ZdG706QuPXh3IV/YlvmVAAOBxviyjK8g
	F8ao2OGGi0uq0FvglaZLcFj5GTDRGUZooScHGR7tVZbkP4IHSqL2VqiAdFitcme+I3Eu1EmZgX6SK
	EzZG5MTIok6ffP7iObiVaO9egsUH5S9nQ55ez9i3CvdZtbxxfWQc8n6MJzYy/Lmsy17oPKJdcoKoY
	E4BZOIMSQN4HokKgZ55E/ia8sT3yFUBdQJnrUOh+NrfLHTxwyuEbCfNOzYRF51vATaAAglhU6L5pi
	TG4ZchGGWxo5jnRGirXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJEfg-00FB69-2P;
	Tue, 11 Jul 2023 14:48:56 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJEfe-00FB3w-06;
	Tue, 11 Jul 2023 14:48:55 +0000
Received: from i53875a50.versanet.de ([83.135.90.80] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qJEfY-0000LD-Fs; Tue, 11 Jul 2023 16:48:48 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	=?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>
Cc: Heiko Stuebner <heiko@sntech.de>,
	open list <linux-kernel@vger.kernel.org>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH] soc: rockchip: grf: Fix SDMMC not working on RK3588 with bus-width > 1
Date: Tue, 11 Jul 2023 16:48:44 +0200
Message-Id: <168908688813.1964886.12363086739056642575.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230619011002.2249960-1-megi@xff.cz>
References: <20230619011002.2249960-1-megi@xff.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_074854_068858_0F019309 
X-CRM114-Status: GOOD (  10.16  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gTW9uLCAxOSBKdW4gMjAyMyAwMzowOTo1OCArMDIwMCwgT25kxZllaiBKaXJtYW4gd3JvdGU6
Cj4gRnJvbTogT25kcmVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+Cj4gCj4gUkszNTg4IGhhcyB0aGUg
c2FtZSBpc3N1ZSBhcyBvdGhlciBlYXJsaWVyIFJLIFNvQ3MuIEpUQUcKPiBmdW5jdGlvbmFsaXR5
IG11eGVkIHRvIHNvbWUgU0RNTUMgZGF0YSBwaW5zIGNhdXNlcyBpc3N1ZXMgd2l0aCBTRE1NQwo+
IGludGVyZmFjZS4gV2l0aG91dCB0aGlzIHBhdGNoLCBJIGNhbiBvbmx5IHVzZSBTRE1NQyBpbnRl
ZmFjZQo+IHdpdGggYnVzLXdpZHRoID0gPDE+LiAoSlRBRyBpcyBtdXhlZCB0byBkYXRhIHBpbnMg
RDIgYW5kIEQzKQo+IAo+IFsuLi5dCgpBcHBsaWVkLCB0aGFua3MhCgpbMS8xXSBzb2M6IHJvY2tj
aGlwOiBncmY6IEZpeCBTRE1NQyBub3Qgd29ya2luZyBvbiBSSzM1ODggd2l0aCBidXMtd2lkdGgg
PiAxCiAgICAgIGNvbW1pdDogODgxMzUyMGE4MGVmZTNlN2QyODA2MzdiYjFkNDdhOWQ0NzNmZDI0
ZAoKQmVzdCByZWdhcmRzLAotLSAKSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
