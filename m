Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BBA0C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 May 2022 07:29:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V4tx8d/bFLdClTSGxtHo1PcuHdAey9erq8Ooy6B/oN0=; b=pKyNYAgX1VjfWc
	CU72p5rIq6xLOaRFl8jHZ0GAN/E1BgFG00NnFfxROtXkee9z7G2PBrGpMTEanY3+FneZpT8QZenqP
	EW0E4khhP52kpH5tj/q81AYsh6kfQyKcPMAhZdUFlZQpyywZD2x7JBdQZfmRHaX8AXCNi96NXMhbE
	BcnVjSH1vDvfV0HR7uQqA1Yt+GK5bKjz8sEdPBc70xc+k4XKwi54tHwCarRvk54hJ+DZTMOWg6Ls6
	AHHNfaMGblypXdUvoo7zUMPf9J9yYEVXYfW5BUxba0OrmH8B3l31i1Oe3jVxp26CHWFma0eRrU8x5
	JTe7WRz9YWnV1NXfslAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1noKJL-000MS6-RM; Tue, 10 May 2022 07:29:35 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1noKJA-000MNw-Pa; Tue, 10 May 2022 07:29:26 +0000
Received: by mail-lf1-x133.google.com with SMTP id w19so27733338lfu.11;
 Tue, 10 May 2022 00:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=VSqxzZ29hbc10inJEDBipg5Dn8Q2IgbVBIfcAZuWFlc=;
 b=ZpYGnuztQW0iA1l4+RIZIihgQVuuvVmdcZwAdtEMwooAUiC0fu376dlSygjE8O0mwP
 Un7c+sHOg0wOmMwO9X3VZ5bJImTWXQDt4H+g/6l2K6SyjxdvvVuBcJFuTrTIwRKmNY+w
 +N174UAnqR55Gt87Kf2jwomaCpAia42vtxPOqGYvGSuVo1dmvtQyCLQfnjxlE/eBpFxJ
 e8HycjhiLJtATq/gLyrUAyVeAudl5qOh6Oyj1YhshYUZq8RaTRJu8wKj3izgSiGcD330
 7C+Rqxh5C4QcmK9CIEm7JpQb0LQsQq76viDK4vVSRHLI0CQbOnVbwiIfscZMuMJIn5BQ
 EfVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=VSqxzZ29hbc10inJEDBipg5Dn8Q2IgbVBIfcAZuWFlc=;
 b=HONroD+WrcJn5tIZ6ZItXtCo2e63WNWkUbvig+0QX465qZItbjanx2mLb87rxPO//+
 DGyC6wjABzq9nRxL+QWM3BM9lq6hXOviCya2aMbJiVBlNVzUpRYBmRkWdjjougcCu4U7
 tr4mRYnh4XYgt9eyTPD833TELGH9SfXeigT/9aXxPEqbWgbFh6PziEjvPcaNSizCGCUl
 oc9FslZgl3A0f5qiRH4BigkmgmHmGrGxJKJxq863W97ys7uyyBGbje8ieYIKFvH99DMq
 4o6AJa18wjrkOkNawoJxiIC2p6IYjg+0aR63Z9eFYaySdtvli7WTIdZ9e/97PcaRFmJV
 enTw==
X-Gm-Message-State: AOAM533AldVXB3oEMfUQ1iuxkBu5os8Udx+V2HtUaiWI9e8JwBus0/H1
 VBWLBBlrRwaxNvPvgp/srr8=
X-Google-Smtp-Source: ABdhPJzuUZxd81Xg7d+yaJFS9q6e43uMHj3m7T3kM3PY0/JUhTO2qkFChHbG5NwyadTcS6MMwjtvHQ==
X-Received: by 2002:a05:6512:1189:b0:473:b9ee:30cf with SMTP id
 g9-20020a056512118900b00473b9ee30cfmr15797805lfr.282.1652167760971; 
 Tue, 10 May 2022 00:29:20 -0700 (PDT)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl.
 [31.178.191.245]) by smtp.gmail.com with ESMTPSA id
 r10-20020a19da0a000000b0047255d211c1sm2189757lfg.240.2022.05.10.00.29.19
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 10 May 2022 00:29:20 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v11 20/24] arm64: dts: rockchip: enable vop2 and hdmi tx
 on rock-3a
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <CAMdYzYozewYUbM=Q+iJ2wdM5TrB6dGrjS6zh0qmVgWD4XPVR+Q@mail.gmail.com>
Date: Tue, 10 May 2022 09:29:14 +0200
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 dri-devel@lists.freedesktop.org,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Sandy Huang <hjc@rock-chips.com>,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 kernel test robot <lkp@intel.com>
Message-Id: <ABC61229-B851-4BB7-8B55-688F8A8D841A@gmail.com>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-21-s.hauer@pengutronix.de>
 <A86359EC-5291-41BD-966E-EB7890644731@gmail.com>
 <CAMdYzYoFG3wCQaWXQNJd7mE20OMCj=ZeuewwZfaCJyoCBT-kQQ@mail.gmail.com>
 <0E6FE020-C95E-47CF-A9D6-AC3F2B2D334F@gmail.com>
 <CAMdYzYobfJ7WGN+UQ7t5e1Zy9knjfHLse8KzrGrHPfeMkkG0gw@mail.gmail.com>
 <9F2D8CFF-1EAE-4586-9EE9-82A9D67840BB@gmail.com>
 <CAMdYzYrz7DRj7F9hGaAPaTSiZkQ4eMNujAp8uPuE9geL6kAz4g@mail.gmail.com>
 <812AC0DB-A6D0-4DA3-BCDC-7743E8F61821@gmail.com>
 <CAMdYzYozewYUbM=Q+iJ2wdM5TrB6dGrjS6zh0qmVgWD4XPVR+Q@mail.gmail.com>
To: Peter Geis <pgwipeout@gmail.com>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220510_002924_883888_8F12A354 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IFBldGVyIEdlaXMgPHBnd2lwZW91dEBnbWFp
bC5jb20+IHcgZG5pdSAxMC4wNS4yMDIyLCBvIGdvZHouIDAzOjM1Ogo+IAo+IENvdWxkIHlvdSBn
cmFiIHRoZSBjbG9jayB0cmVlIGZyb20gL3N5cy9rZXJuZWwvZGVidWcvY2xrL2Nsa19zdW1tYXJ5
Cj4gZm9yIHRoZSBjbGtfaGRtaV9jZWMgdHJlZT8KCkhlcmUgaXQgaXM6CiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgZW5hYmxlICBwcmVwYXJlICBwcm90ZWN0ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBkdXR5ICBoYXJkd2FyZQogICBjbG9jayAgICAgICAgICAgICAgICAg
ICAgICAgICAgY291bnQgICAgY291bnQgICAgY291bnQgICAgICAgIHJhdGUgICBhY2N1cmFjeSBw
aGFzZSAgY3ljbGUgICAgZW5hYmxlCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0KICAgY2xrX3J0YzMya19mcmFjICAgICAgICAgICAgICAgICAgIDEgICAgICAg
IDEgICAgICAgIDAgICAgICAgMzI3NjggICAgICAgICAgMCAgICAgMCAgNTAwMDAgICAgICAgICBZ
CiAgICAgICBjbGtfcnRjXzMyayAgICAgICAgICAgICAgICAgICAgMSAgICAgICAgMSAgICAgICAg
MCAgICAgICAzMjc2OCAgICAgICAgICAwICAgICAwICA1MDAwMCAgICAgICAgIFkKICAgICAgICAg
IGNsa19oZG1pX2NlYyAgICAgICAgICAgICAgICAxICAgICAgICAyICAgICAgICAwICAgICAgIDMy
NzY4ICAgICAgICAgIDAgICAgIDAgIDUwMDAwICAgICAgICAgWQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
