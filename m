Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36E32C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Nov 2022 17:52:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6YT7F/No4I9LI8z2N+QZST5o00aQ23Ho6BeQKVB3avA=; b=eothSq+QvvaGFZ
	rSZRi/HCtT6e2h7e6Ayfy5cNWcYV/dorP233uvgtJlr8SXcBe9aBD1Hj89qj5jcCo1IoJ0lVc8X5w
	9O/LJyZG9+Mwq9N8DjtSZNhioAuAAWV+EeZxwk3sg+CB7Y+aa5ZbMPXUrHCjZfnKGyqxCKxb2hKn4
	GdVw1vn2UnhT5CapYIPCRiMj8PleIa7LC0TFxy5xZsCApRoXR5KAdVrfwi1g/FAswRKgKOeSEsN4B
	1WP8YvAunBPMTZQ7I39p9X5UlcP7K9xqT+bO8wRk6UQ4IiGaZiIRuK+BBYmSQ3vWv4g+RY0tr3LHe
	6k0cSZoky5QIuepUnULQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os6Hu-00GvBQ-6L; Mon, 07 Nov 2022 17:51:58 +0000
Received: from aposti.net ([89.234.176.197])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1os6HV-00GuyJ-Ex; Mon, 07 Nov 2022 17:51:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crapouillou.net;
	s=mail; t=1667843475; h=from:from:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dlaW9Vtj6RHmjIYO+oE+UbK6k4avV8WMAFCPj+ba7lA=;
	b=Kq4dVRJp0YG7tZIogHozX1GK3+Z2jMHh9Og4VXG+WqhBUF/62BLn2/OlEKbWOIBHHkHcin
	toDThWaV+y8YDSm3zZ1AvFrDlQyX40DhI8AJUAULWET6/9PEZ9/IbB7OpZXQITzS7ZY/Lz
	IGTdIq1PTAHmRc38OOmdIS0jyrgoy/w=
From: Paul Cercueil <paul@crapouillou.net>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	Paul Cercueil <paul@crapouillou.net>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 04/26] drm: rockchip: Use the dev_pm_ops provided by modeset helper
Date: Mon,  7 Nov 2022 17:50:44 +0000
Message-Id: <20221107175106.360578-5-paul@crapouillou.net>
In-Reply-To: <20221107175106.360578-1-paul@crapouillou.net>
References: <20221107175106.360578-1-paul@crapouillou.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_095133_680573_9CEBA49F 
X-CRM114-Status: GOOD (  10.85  )
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

VXNlIHRoZSBkcm1fbW9kZV9jb25maWdfcG1fb3BzIHN0cnVjdHVyZSBleHBvcnRlZCBieQpkcm1f
bW9kZXNldF9oZWxwZXIuYywgd2hpY2ggcHJvdmlkZXMgdGhlIGV4YWN0IHNhbWUgUE0gY2FsbGJh
Y2tzLgoKU2lnbmVkLW9mZi1ieTogUGF1bCBDZXJjdWVpbCA8cGF1bEBjcmFwb3VpbGxvdS5uZXQ+
Ci0tLQpDYzogU2FuZHkgSHVhbmcgPGhqY0Byb2NrLWNoaXBzLmNvbT4KQ2M6ICJIZWlrbyBTdMO8
Ym5lciIgPGhlaWtvQHNudGVjaC5kZT4KQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpDYzogbGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwotLS0KIGRyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMgfCAyMyArLS0tLS0tLS0tLS0t
LS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMjIgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9kcnYu
YyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMKaW5kZXggODEz
ZjlmOGM4Njk4Li5jNzY1OTNiM2Y4ZWIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3Jv
Y2tjaGlwX2RybV9kcnYuYwpAQCAtMjM2LDI3ICsyMzYsNiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0
IGRybV9kcml2ZXIgcm9ja2NoaXBfZHJtX2RyaXZlciA9IHsKIAkubWlub3IJPSBEUklWRVJfTUlO
T1IsCiB9OwogCi0jaWZkZWYgQ09ORklHX1BNX1NMRUVQCi1zdGF0aWMgaW50IHJvY2tjaGlwX2Ry
bV9zeXNfc3VzcGVuZChzdHJ1Y3QgZGV2aWNlICpkZXYpCi17Ci0Jc3RydWN0IGRybV9kZXZpY2Ug
KmRybSA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwotCi0JcmV0dXJuIGRybV9tb2RlX2NvbmZpZ19o
ZWxwZXJfc3VzcGVuZChkcm0pOwotfQotCi1zdGF0aWMgaW50IHJvY2tjaGlwX2RybV9zeXNfcmVz
dW1lKHN0cnVjdCBkZXZpY2UgKmRldikKLXsKLQlzdHJ1Y3QgZHJtX2RldmljZSAqZHJtID0gZGV2
X2dldF9kcnZkYXRhKGRldik7Ci0KLQlyZXR1cm4gZHJtX21vZGVfY29uZmlnX2hlbHBlcl9yZXN1
bWUoZHJtKTsKLX0KLSNlbmRpZgotCi1zdGF0aWMgY29uc3Qgc3RydWN0IGRldl9wbV9vcHMgcm9j
a2NoaXBfZHJtX3BtX29wcyA9IHsKLQlTRVRfU1lTVEVNX1NMRUVQX1BNX09QUyhyb2NrY2hpcF9k
cm1fc3lzX3N1c3BlbmQsCi0JCQkJcm9ja2NoaXBfZHJtX3N5c19yZXN1bWUpCi19OwotCiAjZGVm
aW5lIE1BWF9ST0NLQ0hJUF9TVUJfRFJJVkVSUyAxNgogc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9k
cml2ZXIgKnJvY2tjaGlwX3N1Yl9kcml2ZXJzW01BWF9ST0NLQ0hJUF9TVUJfRFJJVkVSU107CiBz
dGF0aWMgaW50IG51bV9yb2NrY2hpcF9zdWJfZHJpdmVyczsKQEAgLTQ4MCw3ICs0NTksNyBAQCBz
dGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciByb2NrY2hpcF9kcm1fcGxhdGZvcm1fZHJpdmVy
ID0gewogCS5kcml2ZXIgPSB7CiAJCS5uYW1lID0gInJvY2tjaGlwLWRybSIsCiAJCS5vZl9tYXRj
aF90YWJsZSA9IHJvY2tjaGlwX2RybV9kdF9pZHMsCi0JCS5wbSA9ICZyb2NrY2hpcF9kcm1fcG1f
b3BzLAorCQkucG0gPSBwbV9zbGVlcF9wdHIoJmRybV9tb2RlX2NvbmZpZ19wbV9vcHMpLAogCX0s
CiB9OwogCi0tIAoyLjM1LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
