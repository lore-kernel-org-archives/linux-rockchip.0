Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F518E95A67
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Oct 2023 15:27:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DbW+K2sUdK+Y4qwFFCvjpjzNl0rDleu2Suisf0woYZc=; b=ZCoykDonYbQeWc
	IJTLTl0CMIucGYrCjBD5mKJoQfgWEv8nQmFxIJJjJeXaLqQHRpZIm4NKQYka52fbVfGTNhqQAE6Zf
	D9O+pVXcJTN5lpP8WEfMKqPapT7y12OYXk7ntyE3wJYUz4dYR9120FVyjPte9QzOApLa2L+l/0acM
	0AFVL5XZbI1BnEkOxPhVnkuleOj1XDycEYBy0cKr2372DFViR9KehGFE6nQ0tFmnm2IoAG4Ja7nS+
	UqKj79aChe44+MNE6P8ipY+eUEvOHMxd2v9VkbOpMF9brbp5zhDbNqRNcLB7XBsa8YbE7Df5yl0/s
	aFtkR8UlvEgULkVYsV8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpVgc-008zJc-1M;
	Sun, 08 Oct 2023 15:27:18 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpVgW-008zIF-2k;
	Sun, 08 Oct 2023 15:27:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1696778828; bh=0jajswhxJ2xstyOKf9U5EODA+wWJ81yMdH1vbZSVs8g=;
	h=From:To:Cc:Subject:Date:From;
	b=xv2tyj44BnKRtlSXZ4Cnt+HgiVP8JQoubtuE9gILpf4GHYTz2jFwSfHWscjEIF6IA
	 n+hjDCdDMGtonkQ+OIph5eZdqBGisMoWbYS5/EHscMLs7bOCTaZVDrzD7RtXqPXTRM
	 KfdYWJvVv81M5TloOqjREqrdB4OtFuNyE4dIDOLI=
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
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] Add support for Pine64 QuartzPro64
Date: Sun,  8 Oct 2023 17:26:55 +0200
Message-ID: <20231008152703.1196370-1-megi@xff.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231008_082713_666104_395A9C66 
X-CRM114-Status: UNSURE (   8.86  )
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
aXRpYWwgc3VwcG9ydCBmb3IgUGluZTY0IFF1YXJ0elBybzY0IFNCQy4KClRoZSBzZXJpZXMgd2Fz
IHRlc3RlZCBhZ2FpbnN0IExpbnV4IDYuNi1yYzQuCgpQbGVhc2UgdGFrZSBhIGxvb2suCgpUaGFu
ayB5b3UsCglPbmTFmWVqIEppcm1hbgoKKFN1cHBvcnQgZm9yIGEgZmV3IGV4dHJhIHRoaW5ncywg
bm90YWJseSBVU0IgMy4wIGlzIGF2YWlsYWJsZSBhdAogaHR0cHM6Ly94ZmYuY3ovZ2l0L2xpbnV4
L2xvZy8/aD1vcGk1LTYuNikKCk9uZHJlaiBKaXJtYW4gKDIpOgogIGR0LWJpbmRpbmdzOiBhcm06
IHJvY2tjaGlwOiBBZGQgUGluZTY0IFF1YXJ6UHJvNjQKICBhcm02NDogZHRzOiByazM1ODgtcXVh
cnR6cHJvNjQ6IEFkZCBRdWFydHpQcm82NCBTQkMgZGV2aWNlIHRyZWUKCiAuLi4vZGV2aWNldHJl
ZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbCAgICAgfCAgICA1ICsKIGFyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUgICAgICAgICB8ICAgIDEgKwogLi4uL2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU4OC1xdWFydHpwcm82NC5kdHMgIHwgMTE0NiArKysrKysrKysrKysrKysrKwog
MyBmaWxlcyBjaGFuZ2VkLCAxMTUyIGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBh
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1xdWFydHpwcm82NC5kdHMKCi0tIAoy
LjQyLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
