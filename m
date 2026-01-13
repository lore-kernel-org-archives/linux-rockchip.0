Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 270F4D29DC3
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 06:42:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2vBWAqAVoj/GtThQ/jVKVcZq7jfpyw6cc+8LopgIJeM=; b=yI5nFXYKRDvwlT
	ICYnE+eQaZIKh/Kh9YX3lvKJNf5PHCY4BiXzj6Mbuu3MIq5cS0+TOxFm0NDGe3fTDrJEcUJ3vSACc
	Gtl4VS0ZWJHpMderBwteTBCL/ZLvhME8A9TKdBT/VglR314jyv9yB1/84BZGLrpICi1wVIyyiDxEo
	Fyh5zUgBNiFlFtC8tve2JC1cnK8rcLa28D6TB7FvJYklxQH1iG/53OSJkzD6AvBK8yRSioHKnyNSF
	ScoZ3p2ghdPubhp+idk7iMq72wtw8UWzvWzMZz38Lq2ZDFT2m4T7qCErHF2u66SB0VWUT81PKRUTJ
	KssD1Ntv5d26soQCNXRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfY6n-00000006bfY-3WAt;
	Tue, 13 Jan 2026 06:42:29 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfY6l-00000006bdU-1AhY;
	Tue, 13 Jan 2026 06:42:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 38048600B0;
	Tue, 13 Jan 2026 06:42:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD381C19422;
	Tue, 13 Jan 2026 06:42:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768286545;
	bh=mWrwJnOeRgEO6bZMfF2f2PPydNykNaiqT+Cf+jwnAHo=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=sIcmLKmdrQdddoInVxvmz048vQnrtpYGM2efLLp3hutIhqSlMJcU8duxoMvi5IpKi
	 2X/jGdvC+4e0+UoezK76cY8ZDSYsicNKiLCOauHRMr1oJl6OuzRpJz7K5wAn7hb/x3
	 8to9jOzkVyCGzHDl4XkFxQKUCI0vYi9DWebC6CKAa5VLBOnzltCHE38yh9y1KBeNGO
	 BujdCdpBZHLYt24NaTAIkmltcHCBlzcsIPUFa3cJlpVlOFW4dS4fb7Nyi/RXzoPnW1
	 yb5qWOQfH4fdb2IuEwpt/4XW+Go18WxYXGXwq/G4iwfbopBYt1+xF/5Q7nEqLDSlWu
	 vaSBpuOWewZMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C09F4D29DDD;
	Tue, 13 Jan 2026 06:42:25 +0000 (UTC)
From: Rudraksha Gupta via B4 Relay <devnull+guptarud.gmail.com@kernel.org>
Date: Mon, 12 Jan 2026 22:42:25 -0800
Subject: [PATCH 2/3] mfd: rk8xx-core: Configure `rk808-clkout2` function
MIME-Version: 1.0
Message-Id: <20260112-ppp_connectivity-v1-2-284d6e83b212@gmail.com>
References: <20260112-ppp_connectivity-v1-0-284d6e83b212@gmail.com>
In-Reply-To: <20260112-ppp_connectivity-v1-0-284d6e83b212@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Lee Jones <lee@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Rudraksha Gupta <guptarud@gmail.com>, 
 =?utf-8?q?Kamil_Trzci=C5=84ski?= <ayufan@ayufan.eu>, 
 Martijn Braam <martijn@brixit.nl>, Ondrej Jirman <megi@xff.cz>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768286545; l=1504;
 i=guptarud@gmail.com; s=20240916; h=from:subject:message-id;
 bh=ySfNjI6t8Mnuq2/ifE0ZjoFXQgOPGkiy/R6d0iMEMgg=;
 b=RYIUKOvuwbl5bNrcjJRBKCvN4zR/uEWENYzfyCgtOLKTGNhHcD6wgIPpYaUDMVU+2EzN4GNLR
 mVb3zHI1nmvCzdRUtIDJ4jN4KmqqTvgyiFD50giORdpGvKrZrMSfPzG
X-Developer-Key: i=guptarud@gmail.com; a=ed25519;
 pk=ETrudRugWAtOpr0OhRiheQ1lXM4Kk4KGFnBySlKDi2I=
X-Endpoint-Received: by B4 Relay for guptarud@gmail.com/20240916 with
 auth_id=211
X-Original-From: Rudraksha Gupta <guptarud@gmail.com>
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
Reply-To: guptarud@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RnJvbTogS2FtaWwgVHJ6Y2nFhHNraSA8YXl1ZmFuQGF5dWZhbi5ldT4KCldoaWxlIHRoZSBXaWZp
IGFuZCBCbHVldG9vdGggY2hpcCBhcmUgZGVmaW5lZCBpbiB0aGUgUGluZXBob25lIFBybydzCkRU
UywgaXQgYWN0dWFsbHkgaXNuJ3QgYWJsZSB0byBiZSB1c2VkLiBMZXQncyBkZWZpbmUgcms4MDgt
Y2xrb3V0MiBzbwp0aGF0IHVzZXJzcGFjZSBjYW4gYWN0dWFsbHkgaW50ZXJhY3Qgd2l0aCBXaWZp
IGFuZCBCbHVldG9vdGgKCkNvLWRldmVsb3BlZC1ieTogTWFydGlqbiBCcmFhbSA8bWFydGlqbkBi
cml4aXQubmw+ClNpZ25lZC1vZmYtYnk6IE1hcnRpam4gQnJhYW0gPG1hcnRpam5AYnJpeGl0Lm5s
PgpTaWduZWQtb2ZmLWJ5OiBLYW1pbCBUcnpjacWEc2tpIDxheXVmYW5AYXl1ZmFuLmV1PgpTaWdu
ZWQtb2ZmLWJ5OiBPbmRyZWogSmlybWFuIDxtZWdpQHhmZi5jej4KU2lnbmVkLW9mZi1ieTogUnVk
cmFrc2hhIEd1cHRhIDxndXB0YXJ1ZEBnbWFpbC5jb20+Ci0tLQogZHJpdmVycy9tZmQvcms4eHgt
Y29yZS5jICB8IDEgKwogaW5jbHVkZS9saW51eC9tZmQvcms4MDguaCB8IDIgKysKIDIgZmlsZXMg
Y2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZmQvcms4eHgt
Y29yZS5jIGIvZHJpdmVycy9tZmQvcms4eHgtY29yZS5jCmluZGV4IGRlZjQ1ODdmZGZiOC4uNjAy
MjE4Njk0MzM0IDEwMDY0NAotLS0gYS9kcml2ZXJzL21mZC9yazh4eC1jb3JlLmMKKysrIGIvZHJp
dmVycy9tZmQvcms4eHgtY29yZS5jCkBAIC0yODIsNiArMjgyLDcgQEAgc3RhdGljIGNvbnN0IHN0
cnVjdCByazgwOF9yZWdfZGF0YSByazgxOF9wcmVfaW5pdF9yZWdbXSA9IHsKIAl7IFJLODE4X0g1
Vl9FTl9SRUcsCSAgQklUKDApLAkgICAgUks4MThfSDVWX0VOIH0sCiAJeyBSSzgwOF9WQl9NT05f
UkVHLAkgIE1BU0tfQUxMLAkgICAgVkJfTE9fQUNUIHwKIAkJCQkJCSAgICBWQl9MT19TRUxfMzUw
ME1WIH0sCisJeyBSSzgwOF9DTEszMk9VVF9SRUcsIENMSzMyS09VVDJfRlVOQ19NQVNLLCBDTEsz
MktPVVQyX0ZVTkMgfSwKIH07CiAKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcmVnbWFwX2lycSByazgw
NV9pcnFzW10gPSB7CmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L21mZC9yazgwOC5oIGIvaW5j
bHVkZS9saW51eC9tZmQvcms4MDguaAppbmRleCAyODE3MGVlMDg4OTguLjA3N2ZlMmUxNWI3OCAx
MDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9tZmQvcms4MDguaAorKysgYi9pbmNsdWRlL2xpbnV4
L21mZC9yazgwOC5oCkBAIC05MzQsNiArOTM0LDggQEAgZW51bSByazgwNl9kdnNfbW9kZSB7CiAK
ICNkZWZpbmUgVk9VVF9MT19JTlQJQklUKDApCiAjZGVmaW5lIENMSzMyS09VVDJfRU4JQklUKDAp
CisjZGVmaW5lIENMSzMyS09VVDJfRlVOQwkJKDAgPDwgMSkKKyNkZWZpbmUgQ0xLMzJLT1VUMl9G
VU5DX01BU0sJQklUKDEpCiAKICNkZWZpbmUgVEVNUDEwNUMJCQkweDA4CiAjZGVmaW5lIFRFTVAx
MTVDCQkJMHgwYwoKLS0gCjIuNTIuMAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
