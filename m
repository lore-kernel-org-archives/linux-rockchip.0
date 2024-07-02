Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04B3FC30658
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jul 2024 13:36:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Ww69gpdVQ4IAOcFXvRYRrqjFIoT32hrKvBy6nQ0yyw=; b=JtwILaUoxVoleo
	cCFvwgM0cO/VwyKegMcRaxlKoM2PQZlcTtjIwFwFiOgW0LTf6yolNl9q9K41HM8Ndm6Q6LLs1p/DT
	/X7HGRwy/CYqD3WuiZJwMPngkrf0k8HgFaUSkGPlvjp9w3Rov2I5Zv6PUB2UuavSjyw7t3P7EpOis
	YRwaCRk9BdR/02P34Qw8TZz1OjL26pgwK0TwtH3pLBr6KSICE+SB38gX3LN1C7nl+J2FU3cOoug+Z
	wC63K+CZZYCmjxt2JfiqTlvE05WZqgu/q2YIrrM2d245GD1+lHrj471VPOObr5MZ42RlJktBvpwma
	AtJejP/cW2s88+iGf/0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOdfx-00000006sEI-13AF;
	Tue, 02 Jul 2024 13:36:05 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOdfj-00000006sAI-0gMT;
	Tue, 02 Jul 2024 13:35:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 026CC61BD5;
	Tue,  2 Jul 2024 13:35:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DDF3CC116B1;
	Tue,  2 Jul 2024 13:35:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719927349;
	bh=a7AM0KEf+jQoBSJOJWM4gD6fd0KNahIDhF3fxcz0q+g=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=PCxxHH+YzNjda2lF1wB7wkNpdvAkUEXOnigPLRNjqS0sVghPBMK42agzgfg1RXnnF
	 AiR10wkDzCsCfLP4km8ojSpAI3LON6bgNyzzsK9cTZVIVBlrBM2CYZrF0QCATs5efb
	 OhBLaBUcPbidYeudN8T3O4o860J5mC9b2hnNdydIunNgoRzbiwkY2S3xj0Ba0puaLr
	 Ff1L37AFLF9kAJheCXvwll7FOuFweVRAtocq9VpAYO4Inq84+yCEFASkMGHQtTOtMd
	 qaGWFICnbRV7iQBiMIxOgoHkpSkSNZARRENTL+ZQU7eIxXlRzk0EmOBMpLjVUIjgNt
	 2UwsHLQQP0c0w==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240629-rk-hdptx-compile-test-fix-v1-1-c86675ba8070@collabora.com>
References: <20240629-rk-hdptx-compile-test-fix-v1-1-c86675ba8070@collabora.com>
Subject: Re: [PATCH] phy: phy-rockchip-samsung-hdptx: Select
 CONFIG_MFD_SYSCON
Message-Id: <171992734651.699169.10657232164142336775.b4-ty@kernel.org>
Date: Tue, 02 Jul 2024 19:05:46 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240702_063551_348467_1D4740AD 
X-CRM114-Status: UNSURE (   5.73  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Ck9uIFNhdCwgMjkgSnVuIDIwMjQgMDM6MjY6NTggKzAzMDAsIENyaXN0aWFuIENpb2NhbHRlYSB3
cm90ZToKPiBDb21waWxlIHRlc3RpbmcgY29uZmlndXJhdGlvbnMgd2l0aG91dCBSRUdNQVAgc3Vw
cG9ydCBlbmFibGVkIHJlc3VsdHMgaW4KPiBhIGJ1bmNoIG9mIGVycm9ycyBiZWluZyByZXBvcnRl
ZDoKPiAKPiAgIC4uL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1zYW1zdW5nLWhk
cHR4LmM6NTY5OjIxOiBlcnJvcjogdmFyaWFibGUg4oCYcmtfaGRwdHhfcGh5X3JlZ21hcF9jb25m
aWfigJkgaGFzIGluaXRpYWxpemVyIGJ1dCBpbmNvbXBsZXRlIHR5cGUKPiAgICAgNTY5IHwgc3Rh
dGljIGNvbnN0IHN0cnVjdCByZWdtYXBfY29uZmlnIHJrX2hkcHR4X3BoeV9yZWdtYXBfY29uZmln
ID0gewo+ICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn4KPiAgIC4u
L2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1zYW1zdW5nLWhkcHR4LmM6NTcwOjEw
OiBlcnJvcjog4oCYY29uc3Qgc3RydWN0IHJlZ21hcF9jb25maWfigJkgaGFzIG5vIG1lbWJlciBu
YW1lZCDigJhyZWdfYml0c+KAmQo+ICAgICA1NzAgfCAgICAgICAgIC5yZWdfYml0cyA9IDMyLAo+
ICAgICAgICAgfCAgICAgICAgICBefn5+fn5+fgo+IAo+IFsuLi5dCgpBcHBsaWVkLCB0aGFua3Mh
CgpbMS8xXSBwaHk6IHBoeS1yb2NrY2hpcC1zYW1zdW5nLWhkcHR4OiBTZWxlY3QgQ09ORklHX01G
RF9TWVNDT04KICAgICAgY29tbWl0OiBlZGY5ZTA0OTU1ZDIzODcwMzJiZWFjNTRlYmYyMGI0M2Fh
Y2EyYWRmCgpCZXN0IHJlZ2FyZHMsCi0tIApWaW5vZCBLb3VsIDx2a291bEBrZXJuZWwub3JnPgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
