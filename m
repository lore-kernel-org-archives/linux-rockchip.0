Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26217C4167B
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Dec 2022 15:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IbBgbaSz6gRvlfqPW0399UlS9d0Ni2+a5WsfahNnmCU=; b=csINZgrnpTqlox
	JLfmfAwWWUSi7nDYKOpEfzZvi0p4xlZZ3fgxgYTTgQKZY56TrQP5j+/3imVvQuldNKVc10zUqW/95
	KCqT5PdcA2M9xzPARkEBqTFp3vYVqOvKsONP+OZbOgZWxkc6vgg+RA42t6LK/Zaqp+LrGH1L9po6C
	COSTTQvTyvZjMnstjnToh+ClSftEzstG8XHl3Nz+fATV5hlVgOMT2+cKCQJgwPzG2s1/AwihKH4LE
	KhQibWC4b9A42e7vbK96EalvYqEEH1aCL44s9Ld4RtKaKuYIeO/Ey70ATKOYkzOVqOnAZJGTN5sK/
	OWdY/mYL+7xBVW82KYUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAYkV-0066eC-Go; Wed, 28 Dec 2022 15:53:47 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAYkJ-0066Zd-Md; Wed, 28 Dec 2022 15:53:37 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1F910613E9;
	Wed, 28 Dec 2022 15:53:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9513DC433F0;
	Wed, 28 Dec 2022 15:53:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1672242814;
	bh=35osr+OEI3kdIDPyeBIqzrkyNTESyWqL06yEem9qi40=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=W4CrXlxtEC/qILcPAojqER+nB5wXPAIqISyzdZHoRbm+5Y+byfhgnWWuvziPWpQN9
	 zu+qG4QSowFaxHw31IFqmU5clhK8llgOFPDga97NXOelUDQeqgu8KD7vYrMv8kaBqA
	 miwgciwAZ3SgW29fDiFG5+5WCbUn3sSBrrt0oxZ8=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: stable@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	patches@lists.linux.dev,
	=?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Daniel Vetter <daniel.vetter@ffwll.ch>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH 5.15 650/731] drm/rockchip: Use drm_mode_copy()
Date: Wed, 28 Dec 2022 15:42:37 +0100
Message-Id: <20221228144315.349305790@linuxfoundation.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221228144256.536395940@linuxfoundation.org>
References: <20221228144256.536395940@linuxfoundation.org>
User-Agent: quilt/0.67
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221228_075335_899716_08544BCF 
X-CRM114-Status: GOOD (  18.32  )
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
LmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvY2RuLWRwLWNvcmUuYwppbmRleCA2YjVkMDcy
MmFmYTYuLjIwZTYzY2FkZWM4YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L2Nkbi1kcC1jb3JlLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1jb3Jl
LmMKQEAgLTU2NSw3ICs1NjUsNyBAQCBzdGF0aWMgdm9pZCBjZG5fZHBfZW5jb2Rlcl9tb2RlX3Nl
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
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
