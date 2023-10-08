Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E706BE95A82
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Oct 2023 10:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/F5IG5SuN61qhtjFpy0w3K3d6bb9Q5oySiasiJyYVtQ=; b=uifpM0vv+3rWYB
	VfrY3Z3PEOlc5HxptR9H0ptBta3QcP1c8P5lqJ/jgLE/CMH5eL/ZHPAol8Bk2RldJWxgbhIvpGEEu
	a1eUE2zXXwSx4bONUdtpG4L1O35WPQNDPXo0EhMh1I+57UX9Qb/CZm6oYwdFzXlygpqI1tBaFld/j
	QhXrmI+4ivHk6QX7QEeRddKPdVsWpnV1+YgNCXk0Sg+AR6VE8dtvf2U9FVHo4puL/Ki71VSkzRzsM
	Qy66EXrcVv9B2IC7bilQHnMYtvQg1/Fy5fS3Q5GTyQaLpxklY2Naku/8pfBFHxMH9OqEg1Z02fAfH
	NhvBtqwNi7iZJ2BHImjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpRUQ-008lkO-0I;
	Sun, 08 Oct 2023 10:58:26 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpRUM-008lk1-2P
	for linux-rockchip@lists.infradead.org;
	Sun, 08 Oct 2023 10:58:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1696762697; bh=qXa/e6dsZkHqTj5+9b+2AVei1x9XTbZ2qUQGrtBvnEU=;
	h=From:To:Cc:Subject:Date:From;
	b=dwGbQbsLJzPpqvpntiNI1HeMG3loOi+yEI9tQrHeF7fxdSzMQ0Oou0j2gqatvXBiN
	 56GY0J2qpGciNqr1rcEalDfkIwjbxdDK47+Nx7ditupOEevfuejBup7PKrNCFdgXw4
	 OD1Jzee3rofXZujURlcnKQrx8lqL2KLbqCMu/TMU=
From: =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>
To: linux-rockchip@lists.infradead.org
Cc: Ondrej Jirman <megi@xff.cz>,
	Andrew Morton <akpm@linux-foundation.org>,
	Jakub Kicinski <kuba@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Mark Brown <broonie@kernel.org>,
	Bjorn Andersson <quic_bjorande@quicinc.com>,
	Jens Axboe <axboe@kernel.dk>,
	Qais Yousef <qyousef@layalina.io>,
	Stephen Hemminger <stephen@networkplumber.org>,
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH] MAINTAINERS: update my email address
Date: Sun,  8 Oct 2023 12:58:07 +0200
Message-ID: <20231008105812.1084226-1-megi@xff.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231008_035823_552698_BCFC8B3B 
X-CRM114-Status: UNSURE (   9.26  )
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

RnJvbTogT25kcmVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+CgpVcGRhdGUgbXkgZW1haWwtYWRkcmVz
cyBpbiBNQUlOVEFJTkVSUyB0byA8bWVnaUB4ZmYuY3o+LiBBbHNvIGFkZAoubWFpbG1hcCBlbnRy
aWVzIHRvIG1hcCBteSBvbGQsIG5vdyBibG9ja2VkLCBlbWFpbCBhZGRyZXNzLgoKU2lnbmVkLW9m
Zi1ieTogT25kcmVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+Ci0tLQogLm1haWxtYXAgICAgfCAxICsK
IE1BSU5UQUlORVJTIHwgMiArLQogMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS8ubWFpbG1hcCBiLy5tYWlsbWFwCmluZGV4IGEwYTZl
ZmU4NzE4Ni4uMjA4NGJmOGVjMmFiIDEwMDY0NAotLS0gYS8ubWFpbG1hcAorKysgYi8ubWFpbG1h
cApAQCAtNDUyLDYgKzQ1Miw3IEBAIE9sZWtzaWogUmVtcGVsIDxsaW51eEByZW1wZWwtcHJpdmF0
LmRlPiA8Zml4ZWQtdGVybS5PbGVrc2lqLlJlbXBlbEBkZS5ib3NjaC5jb20+CiBPbGVrc2lqIFJl
bXBlbCA8bGludXhAcmVtcGVsLXByaXZhdC5kZT4gPG8ucmVtcGVsQHBlbmd1dHJvbml4LmRlPgog
T2xla3NpaiBSZW1wZWwgPGxpbnV4QHJlbXBlbC1wcml2YXQuZGU+IDxvcmVAcGVuZ3V0cm9uaXgu
ZGU+CiBPbGl2ZXIgVXB0b24gPG9saXZlci51cHRvbkBsaW51eC5kZXY+IDxvdXB0b25AZ29vZ2xl
LmNvbT4KK09uZMWZZWogSmlybWFuIDxtZWdpQHhmZi5jej4gPG1lZ291c0BtZWdvdXMuY29tPgog
T3phIFBhd2FuZGVlcCA8cXVpY19wb3phQHF1aWNpbmMuY29tPiA8cG96YUBjb2RlYXVyb3JhLm9y
Zz4KIFBhbGkgUm9ow6FyIDxwYWxpQGtlcm5lbC5vcmc+IDxwYWxpLnJvaGFyQGdtYWlsLmNvbT4K
IFBhb2xvICdCbGFpc29yYmxhZGUnIEdpYXJydXNzbyA8YmxhaXNvcmJsYWRlQHlhaG9vLml0Pgpk
aWZmIC0tZ2l0IGEvTUFJTlRBSU5FUlMgYi9NQUlOVEFJTkVSUwppbmRleCBiZjNlNmNlODZjYmMu
LmM5ZDUzYzRmYjg5ZSAxMDA2NDQKLS0tIGEvTUFJTlRBSU5FUlMKKysrIGIvTUFJTlRBSU5FUlMK
QEAgLTY3NTQsNyArNjc1NCw3IEBAIEY6CWRyaXZlcnMvZ3B1L2RybS9wYW5lbC9wYW5lbC1zaXRy
b25peC1zdDc3MDEuYwogRFJNIERSSVZFUiBGT1IgU0lUUk9OSVggU1Q3NzAzIFBBTkVMUwogTToJ
R3VpZG8gR8O8bnRoZXIgPGFneEBzaWd4Y3B1Lm9yZz4KIFI6CVB1cmlzbSBLZXJuZWwgVGVhbSA8
a2VybmVsQHB1cmkuc20+Ci1SOglPbmRyZWogSmlybWFuIDxtZWdvdXNAbWVnb3VzLmNvbT4KK1I6
CU9uZHJlaiBKaXJtYW4gPG1lZ2lAeGZmLmN6PgogUzoJTWFpbnRhaW5lZAogRjoJRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvcGFuZWwvcm9ja3RlY2gsamgwNTduMDA5
MDAueWFtbAogRjoJZHJpdmVycy9ncHUvZHJtL3BhbmVsL3BhbmVsLXNpdHJvbml4LXN0NzcwMy5j
Ci0tIAoyLjQyLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
