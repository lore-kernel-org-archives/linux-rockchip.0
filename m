Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45A0FCDB47E
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Oct 2023 21:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mN5TrK/3XaVUXEt7UU2ogqoyqVdIefL8JBYUsdRpxMw=; b=C7zKOFsAhuUMf0
	QAn0yyVEvuUV2xgYBi/vzOsAmhlPLrHUz/gON1p+4qizSMZFkFmn5qoK+cY9Gkuw0IYZxOu5VUbpP
	fVsFJnbr6IwuG55daqrxUYDNKQADfQw2/SUMdmcm6ltxD+9a5An4qop45divfuB9g/f8BQYZnLuRY
	iF7ruZrdB7dvine8mse2gqRUjXeSxOEfbGuMmWlxmrXdVsDGx73/3u6QXpKBctv2vA1EJ6gxE3zhF
	BueoeIt/kN2y40VyNuj4fz+ytohwvZF9F9F1rdU2oXeSXPZA9vPrBt9bNf2xHog3e4ttqd0O0V+Cd
	nDCRQemZ3Amw/mT9HdqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqhEZ-00GnTo-0a;
	Wed, 11 Oct 2023 21:59:15 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqhET-00GnPz-2C;
	Wed, 11 Oct 2023 21:59:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1697061541; bh=KbH2UqL5Mw2DaM0t8hbR9+M4YCGdx1V6vRdWjgihY6U=;
	h=From:To:Cc:Subject:Date:From;
	b=AJArDmKAuk2M5SJOFYHjrqFmvosIDKD3ckQD0LyGpYCgpWbpX9ydCFYSL0ZnxWeHM
	 +dLEH+deWk+ZOLCLGE5n9J1EXl6wqCwZl1aik0v0ptnBjR9JTJx0PAQpWLL4rmMh1k
	 ePUwqvqhBwmBz3iPx5ivEDBy0yHZhvGg1rBB1Ryc=
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
Subject: [PATCH v2 0/2] Add support for Pine64 QuartzPro64
Date: Wed, 11 Oct 2023 23:58:43 +0200
Message-ID: <20231011215856.2082241-1-megi@xff.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231011_145910_171444_C59AB492 
X-CRM114-Status: GOOD (  11.67  )
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
IHRlc3RlZCBhZ2FpbnN0IExpbnV4IDYuNi1yYzQuCgpQbGVhc2UgdGFrZSBhIGxvb2suCgpGb3Ig
djIsIEkgcHJvYWN0aXZlbHkgd2VudCB0aHJvdWdoIGNoYW5nZXMgbWFkZSBieSBIZWlrbyB3aGVu
IG1lcmdpbmcgbXkKb3RoZXIgcGF0Y2hzZXQgZm9yIE9yYW5nZSBQaSA1IFBsdXMsIGFuZCBtYWRl
IHRoZSBzYW1lIGNoYW5nZXMgdG8gdGhpcwpwYXRjaHNldCwgd2hpY2ggaGFkIHNvbWUgc2ltaWxh
ciBpc3N1ZXM6CgotIG9yZGVyIHJlZ3VsYXRvci1uYW1lIGluc2lkZSBwbWljIG5vZGVzIGFzIHRo
ZSBmaXJzdCBwcm9wZXJ0eQotIHJlLW9yZWRlciBzb21lIG90aGVyIHByb3BlcnRpZXMgYWxwaGFi
ZXRpY2FsbHkgKGluIHJ0YyBub2RlIGFuZCBpbgogIHNvbWUgcmVndWxhdG9ycyB1bmRlciAvKQot
IGRyb3Agcm9ja2NoaXAsc3lzdGVtLXBvd2VyLWNvbnRyb2xsZXIgKHdpbGwgcmUtYWRkIGxhdGVy
IHdpdGhvdXQgcHJlZml4IG9uY2UKICBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzIwMjMx
MDEwMTc0MTM4LjE4ODgzOTYtMS1tZWdpQHhmZi5jei8gZ2V0cyBtZXJnZWQpCi0gZHJvcCBtZW0t
c3VwcGx5IGZyb20gY3B1IG5vZGVzICh0aGlzIHdpbGwgYWxzbyBiZSByZS1hZGRlZCBsYXRlcgog
IG9uY2UgY3B1ZnJlcSBzdXBwb3J0IGlzIHVwc3RyZWFtZWQpCi0gc29ydCBub2RlcyB1bmRlciBw
aW5jdHJsIGFscGhhYmV0aWNhbGx5Ci0gYWRkZWQgYWNrZWQtYnkgdGFnIGZvciBEVCBiaW5kaW5n
cyBwYXRjaAoKVGhhbmsgeW91LAoJT25kxZllaiBKaXJtYW4KCk9uZHJlaiBKaXJtYW4gKDIpOgog
IGR0LWJpbmRpbmdzOiBhcm06IHJvY2tjaGlwOiBBZGQgUGluZTY0IFF1YXJ6UHJvNjQKICBhcm02
NDogZHRzOiByazM1ODgtcXVhcnR6cHJvNjQ6IEFkZCBRdWFydHpQcm82NCBTQkMgZGV2aWNlIHRy
ZWUKCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbCAgICAgfCAgICA1
ICsKIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUgICAgICAgICB8ICAgIDEg
KwogLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1xdWFydHpwcm82NC5kdHMgIHwgMTEzNyAr
KysrKysrKysrKysrKysrKwogMyBmaWxlcyBjaGFuZ2VkLCAxMTQzIGluc2VydGlvbnMoKykKIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1xdWFy
dHpwcm82NC5kdHMKCi0tIAoyLjQyLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
