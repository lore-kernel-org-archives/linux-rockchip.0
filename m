Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49FD2E95A8F
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Oct 2023 13:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=COjepvGLGZ2eQPlyq+Z0y7mFlsprUt/bvxCYTEFi800=; b=YjELElcvtOa9L2
	svwNB+TJbXyJyFaYvDtxIyuEGNpVDPahOZJpqU0NddWS96yCmBvRQmVbSLU1qF2jog7GTttawIGX+
	iMbcloRovp6TQpnxB78ongY0sePFnQFfdKPde93FXAAjoTRXYAzSNV3riBhAMfa5AwP4121HkaD4G
	1QUROfCmPwOiHJUiC02lrUJgchPFDd+0w7nM8wzckTm4H1ioHCf39sbqLDwHntHwSOz4gsfyOV7vh
	TFp9reVyyJ9p52aUGWaINXNoplTCQvXrYBjdP0Fc9oKUzJXavMfjGSxuauZo/Li0EnOYHszdBxKtX
	K2nBBhPxsB5mqyFHuy7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpTUE-008sZV-0W;
	Sun, 08 Oct 2023 13:06:22 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpTU9-008sVx-2D;
	Sun, 08 Oct 2023 13:06:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1696770367; bh=iFJPDtUKoP37vIhXRBmqRJjQU1Msnq0cruFbwd9+vtk=;
	h=From:To:Cc:Subject:Date:From;
	b=RB6a8AY9b8cRboJA4kccUHp03BjJII6czvTikm1mJBlGvnyhnpUkfHzlMBKsfFs3W
	 Z2btkDMsP0yTHBlT5UMPnsGZAn+olUZC1M6wSFXA2/Q5ZnLSgL7LDBDZI02Rxl5Esx
	 GYomKpORSYIILZ8Bp10pdrbnEgpkeVb0h3OQWUDo=
From: =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>,
	Jagan Teki <jagan@edgeble.ai>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chris Morgan <macromorgan@hotmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] Add support for Orange Pi 5 Plus
Date: Sun,  8 Oct 2023 15:04:58 +0200
Message-ID: <20231008130515.1155664-1-megi@xff.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231008_060617_876341_07D0138B 
X-CRM114-Status: UNSURE (   9.05  )
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

RnJvbTogT25kcmVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+CgpUaGlzIHNlcmllcyBhZGRzIGFuIGlu
aXRpYWwgc3VwcG9ydCBmb3IgT3JhbmdlIFBpIDUgUGx1cy4gVGhlIG9ubHkKdGhpbmcgbWlzc2lu
ZyB0aGF0IGNhbiBiZSByZWFkaWx5IGFkZGVkIGlzIFVTQiAzLjAgc3VwcG9ydCwgYmVjYXVzZQpy
ZXF1aXJlZCBwYXRjaGVzIHdlcmUgbm90IHlldCBtZXJnZWQuIFN1cHBvcnQgZm9yIFVTQiAzLjAg
aXMgYXZhaWxhYmxlCmF0IGh0dHBzOi8veGZmLmN6L2dpdC9saW51eC9sb2cvP2g9b3BpNS02LjYK
ClRoZSBzZXJpZXMgZGVwZW5kcyBvbiBTRkMgcGF0Y2ggZnJvbToKCiAgaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvbGttbC83MDU1N2I3ODQzOTk0YTU3YzZkMzQyMmUwMDY0M2NiNzVhNjk4ZDBiLjE2
OTI2MzIzNDYuZ2l0LmVmZWN0bkA2dGVsLm5ldC8KClRoZSBzZXJpZXMgd2FzIHRlc3RlZCBhZ2Fp
bnN0IExpbnV4IDYuNi1yYzQuCgpQbGVhc2UgdGFrZSBhIGxvb2suCgpUaGFuayB5b3UsCglPbmTF
mWVqIEppcm1hbgoKT25kcmVqIEppcm1hbiAoNCk6CiAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IHJr
MzU4OHMtcGluY3RybDogQWRkIEkyUzIgTTAgcGluIGRlZmluaXRpb25zCiAgYXJtNjQ6IGR0czog
cm9ja2NoaXA6IHJrMzU4OHMtcGluY3RybDogQWRkIFVBUlQ5IE0wIHBpbiBkZWZpbml0aW9ucwog
IGR0LWJpbmRpbmdzOiBhcm06IHJvY2tjaGlwOiBBZGQgT3JhbmdlIFBpIDUgUGx1cwogIGFybTY0
OiBkdHM6IHJrMzU4OC1vcmFuZ2VwaS01LXBsdXM6IEFkZCBib2FyZCBkZXZpY2UgdHJlZQoKIC4u
Li9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sICAgICB8ICAgNSArCiBhcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlICAgICAgICAgfCAgIDEgKwogLi4uL2R0
cy9yb2NrY2hpcC9yazM1ODgtb3JhbmdlcGktNS1wbHVzLmR0cyAgIHwgODU3ICsrKysrKysrKysr
KysrKysrKwogLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtcGluY3RybC5kdHNpICAgIHwg
IDQ0ICsKIDQgZmlsZXMgY2hhbmdlZCwgOTA3IGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEw
MDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1vcmFuZ2VwaS01LXBsdXMu
ZHRzCgotLSAKMi40Mi4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
