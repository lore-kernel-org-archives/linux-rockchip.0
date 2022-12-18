Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A783C4332F
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Dec 2022 16:20:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ueeH8zvzutu/kJTuhqGZd+q9SX9vuLlyOgTkABPiAaA=; b=MOYuIUABxzExQR
	tcwLbpNblA452cXD3yfLi2WePu82lTQiYNYHBzYUfX3tZpmTSYw6x8U5kmuxwNVpNeJoFUPX51NIh
	dS0uYRPt69W0JSgpHzBSZXtepFXjzoP/CmFomkQZ2D1odG/2tBwmwAnzmuNgSwCxhcNQxAtYDLPwz
	nhCLpvIlxOQajGcaHArKGiSD1f1Fc5S0akDyVacEIVC5BzZviQr+BVBF0sS3QE/yni+sI1I071a8j
	/phKfVemIza5/1BXjf7D7zTFlTKiQwe1Als5xfif489WupRuvA13+m3V5NmektDPJnwhhLVuI5FTx
	gGKOSRrQnj/8rAY9mVyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p6wOI-002wea-3V; Sun, 18 Dec 2022 16:19:54 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p6wLs-002vIK-EE; Sun, 18 Dec 2022 16:17:33 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 13EA9B80BED;
	Sun, 18 Dec 2022 16:17:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 912B0C433D2;
	Sun, 18 Dec 2022 16:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671380242;
	bh=HpqRo2m/xWnVMgEWQ20uf5kiNscaU84sX6khynGzbyM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=LJ6A8lfqtkvSRxN4k8RAaZU0wiGmH36VStNA2oEpW2LgDlKnQwTZn3u2a0QQeSbM0
	 yOtqTgTCWagd0PoBuVMygO+Y2Tinc2wV9IUSKLjLRa5MhzU2c04b6WQXog5Mfoxfih
	 YDG3jHopWUIb5lXihS8s5W9ibj4Btz7Cw2F97LbDs3Tf1bD9wEqXORFC1MLRQvxK0N
	 WJnw4F5x9QhqdTDOcGQP541yDU0uKS87jbtp5XbIKh8i83V2jznQMPq2xGy6l+CycH
	 /C8IY3L/SZ9tv08slui/WDOLBqtV26R6Q/DMDolUjpEWmItgFixTpPa/Jd+npUKLLr
	 2LiQGVzwCTIjw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	Sasha Levin <sashal@kernel.org>,
	airlied@gmail.com,
	daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org
Subject: [PATCH AUTOSEL 5.10 20/39] drm/rockchip: Use drm_mode_copy()
Date: Sun, 18 Dec 2022 11:15:40 -0500
Message-Id: <20221218161559.932604-20-sashal@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221218161559.932604-1-sashal@kernel.org>
References: <20221218161559.932604-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221218_081724_804857_682E2F0D 
X-CRM114-Status: GOOD (  17.50  )
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClsg
VXBzdHJlYW0gY29tbWl0IDJiZmFhMjgwMDBkMjgzMGQzMjA5MTYxYTQ1NDFjY2UwNjYwZTFiODQg
XQoKc3RydWN0IGRybV9kaXNwbGF5X21vZGUgZW1iZWRzIGEgbGlzdCBoZWFkLCBzbyBvdmVyd3Jp
dGluZwp0aGUgZnVsbCBzdHJ1Y3Qgd2l0aCBhbm90aGVyIG9uZSB3aWxsIGNvcnJ1cHQgdGhlIGxp
c3QKKGlmIHRoZSBkZXN0aW5hdGlvbiBtb2RlIGlzIG9uIGEgbGlzdCkuIFVzZSBkcm1fbW9kZV9j
b3B5KCkKaW5zdGVhZCB3aGljaCBleHBsaWNpdGx5IHByZXNlcnZlcyB0aGUgbGlzdCBoZWFkIG9m
CnRoZSBkZXN0aW5hdGlvbiBtb2RlLgoKRXZlbiBpZiB3ZSBrbm93IHRoZSBkZXN0aW5hdGlvbiBt
b2RlIGlzIG5vdCBvbiBhbnkgbGlzdAp1c2luZyBkcm1fbW9kZV9jb3B5KCkgc2VlbXMgZGVjZW50
IGFzIGl0IHNldHMgYSBnb29kCmV4YW1wbGUuIEJhZCBleGFtcGxlcyBvZiBub3QgdXNpbmcgaXQg
bWlnaHQgZXZlbnR1YWxseQpnZXQgY29waWVkIGludG8gY29kZSB3aGVyZSBwcmVzZXJ2aW5nIHRo
ZSBsaXN0IGhlYWQKYWN0dWFsbHkgbWF0dGVycy4KCk9idmlvdXNseSBvbmUgY2FzZSBub3QgY292
ZXJlZCBoZXJlIGlzIHdoZW4gdGhlIG1vZGUKaXRzZWxmIGlzIGVtYmVkZGVkIGluIGEgbGFyZ2Vy
IHN0cnVjdHVyZSBhbmQgdGhlIHdob2xlCnN0cnVjdHVyZSBpcyBjb3BpZWQuIEJ1dCBpZiB3ZSBh
cmUgY2FyZWZ1bCB3aGVuIGNvcHlpbmcKaW50byBtb2RlcyBlbWJlZGRlZCBpbiBzdHJ1Y3R1cmVz
IEkgdGhpbmsgd2UgY2FuIGJlIGEKbGl0dGxlIG1vcmUgcmVhc3N1cmVkIHRoYXQgYm9ndXMgbGlz
dCBoZWFkcyBoYXZlbid0IGJlZW4KcHJvcGFnYXRlZCBpbi4KCkBpc19tb2RlX2NvcHlACkBACmRy
bV9tb2RlX2NvcHkoLi4uKQp7Ci4uLgp9CgpAZGVwZW5kcyBvbiAhaXNfbW9kZV9jb3B5QApzdHJ1
Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZTsKZXhwcmVzc2lvbiBFLCBTOwpAQAooCi0gKm1vZGUg
PSBFCisgZHJtX21vZGVfY29weShtb2RlLCAmRSkKfAotIG1lbWNweShtb2RlLCBFLCBTKQorIGRy
bV9tb2RlX2NvcHkobW9kZSwgRSkKKQoKQGRlcGVuZHMgb24gIWlzX21vZGVfY29weUAKc3RydWN0
IGRybV9kaXNwbGF5X21vZGUgbW9kZTsKZXhwcmVzc2lvbiBFOwpAQAooCi0gbW9kZSA9IEUKKyBk
cm1fbW9kZV9jb3B5KCZtb2RlLCAmRSkKfAotIG1lbWNweSgmbW9kZSwgRSwgUykKKyBkcm1fbW9k
ZV9jb3B5KCZtb2RlLCBFKQopCgpAQApzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZTsKQEAK
LSAmKm1vZGUKKyBtb2RlCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogU2FuZHkgSHVhbmcgPGhqY0Byb2NrLWNoaXBzLmNv
bT4KQ2M6ICJIZWlrbyBTdMO8Ym5lciIgPGhlaWtvQHNudGVjaC5kZT4KQ2M6IGxpbnV4LWFybS1r
ZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpDYzogbGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpMaW5rOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvbXNn
aWQvMjAyMjExMDcxOTI1NDUuOTg5Ni03LXZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tClJl
dmlld2VkLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgpTaWduZWQt
b2ZmLWJ5OiBTYXNoYSBMZXZpbiA8c2FzaGFsQGtlcm5lbC5vcmc+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL3JvY2tjaGlwL2Nkbi1kcC1jb3JlLmMgfCAyICstCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvaW5ub19oZG1pLmMgICB8IDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yazMwNjZf
aGRtaS5jIHwgMiArLQogMyBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRp
b25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1jb3Jl
LmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvY2RuLWRwLWNvcmUuYwppbmRleCA4NTdjNDdj
NjllZjEuLmFkZWFhMDE0MGYwZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L2Nkbi1kcC1jb3JlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1jb3Jl
LmMKQEAgLTU2NCw3ICs1NjQsNyBAQCBzdGF0aWMgdm9pZCBjZG5fZHBfZW5jb2Rlcl9tb2RlX3Nl
dChzdHJ1Y3QgZHJtX2VuY29kZXIgKmVuY29kZXIsCiAJdmlkZW8tPnZfc3luY19wb2xhcml0eSA9
ICEhKG1vZGUtPmZsYWdzICYgRFJNX01PREVfRkxBR19OVlNZTkMpOwogCXZpZGVvLT5oX3N5bmNf
cG9sYXJpdHkgPSAhIShtb2RlLT5mbGFncyAmIERSTV9NT0RFX0ZMQUdfTkhTWU5DKTsKIAotCW1l
bWNweSgmZHAtPm1vZGUsIGFkanVzdGVkLCBzaXplb2YoKm1vZGUpKTsKKwlkcm1fbW9kZV9jb3B5
KCZkcC0+bW9kZSwgYWRqdXN0ZWQpOwogfQogCiBzdGF0aWMgYm9vbCBjZG5fZHBfY2hlY2tfbGlu
a19zdGF0dXMoc3RydWN0IGNkbl9kcF9kZXZpY2UgKmRwKQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL2lubm9faGRtaS5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2lu
bm9faGRtaS5jCmluZGV4IDdhZmRjNTRlYjNlYy4uNzgxMjBkYTVlNjNhIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvaW5ub19oZG1pLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L3JvY2tjaGlwL2lubm9faGRtaS5jCkBAIC00ODgsNyArNDg4LDcgQEAgc3RhdGljIHZvaWQgaW5u
b19oZG1pX2VuY29kZXJfbW9kZV9zZXQoc3RydWN0IGRybV9lbmNvZGVyICplbmNvZGVyLAogCWlu
bm9faGRtaV9zZXR1cChoZG1pLCBhZGpfbW9kZSk7CiAKIAkvKiBTdG9yZSB0aGUgZGlzcGxheSBt
b2RlIGZvciBwbHVnaW4vRFBNUyBwb3dlcm9uIGV2ZW50cyAqLwotCW1lbWNweSgmaGRtaS0+cHJl
dmlvdXNfbW9kZSwgYWRqX21vZGUsIHNpemVvZihoZG1pLT5wcmV2aW91c19tb2RlKSk7CisJZHJt
X21vZGVfY29weSgmaGRtaS0+cHJldmlvdXNfbW9kZSwgYWRqX21vZGUpOwogfQogCiBzdGF0aWMg
dm9pZCBpbm5vX2hkbWlfZW5jb2Rlcl9lbmFibGUoc3RydWN0IGRybV9lbmNvZGVyICplbmNvZGVy
KQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JrMzA2Nl9oZG1pLmMgYi9k
cml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcmszMDY2X2hkbWkuYwppbmRleCAxYzU0NmMzYTg5OTgu
LjE3ZTdjNDBhOWU3YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JrMzA2
Nl9oZG1pLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JrMzA2Nl9oZG1pLmMKQEAg
LTM4Myw3ICszODMsNyBAQCByazMwNjZfaGRtaV9lbmNvZGVyX21vZGVfc2V0KHN0cnVjdCBkcm1f
ZW5jb2RlciAqZW5jb2RlciwKIAlzdHJ1Y3QgcmszMDY2X2hkbWkgKmhkbWkgPSB0b19yazMwNjZf
aGRtaShlbmNvZGVyKTsKIAogCS8qIFN0b3JlIHRoZSBkaXNwbGF5IG1vZGUgZm9yIHBsdWdpbi9E
UE1TIHBvd2Vyb24gZXZlbnRzLiAqLwotCW1lbWNweSgmaGRtaS0+cHJldmlvdXNfbW9kZSwgYWRq
X21vZGUsIHNpemVvZihoZG1pLT5wcmV2aW91c19tb2RlKSk7CisJZHJtX21vZGVfY29weSgmaGRt
aS0+cHJldmlvdXNfbW9kZSwgYWRqX21vZGUpOwogfQogCiBzdGF0aWMgdm9pZCByazMwNjZfaGRt
aV9lbmNvZGVyX2VuYWJsZShzdHJ1Y3QgZHJtX2VuY29kZXIgKmVuY29kZXIpCi0tIAoyLjM1LjEK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
