Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0165BC5DF94
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Aug 2026 14:42:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kwa30VrmIQEzPWn/ZusiCWQFzxJNR96RNzrbL6d1YZ4=; b=bFKUd+CPC0x3bG
	mg+SmDtL624A4UU8QNSn2azdSSbYr75kMJtpIlmTn1NVgDt5zm4z5JVHxn74xYIkvQsl17C+Cd5HC
	TqaaPUvMC/rrlA2n/wx7iNyYFe25s1fsRBBgcSBQq42rpsvyHFZsP2JMv+JAKkfp5i7kksRQGnYi2
	lI0oWXld7mLlP4tPDpgJ61yYLrtZklNON24iaP3d2npztIrjVD+pRPHicWdxdLt/8mBNXF/aThyTj
	k2J1beuOPwEnOw2CTaEyaxbcpq1/cfq2lZ7x+TsuAm2QAedAGpjSZCZE5VTBa8SzdTFrDnCNPhUyv
	DSkEVhCtNaUdEHw3SCpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxQRN-0000000Da5H-2zms;
	Fri, 21 Aug 2026 14:41:53 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxQRM-0000000Da4s-37Ij
	for linux-rockchip@lists.infradead.org;
	Fri, 21 Aug 2026 14:41:52 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 0C5556187C;
	Fri, 21 Aug 2026 14:41:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39FB11F000E9;
	Fri, 21 Aug 2026 14:41:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787323311;
	bh=SQV0RhKI0HjCxVM0ccESERvchiiNLBUT39W/zgICvGw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=XW5AnUnHi/JEFCOEzVvcBOnRRipMHBKbz35bNX42JWhIH21bKpzf6W18mp2ffn2Y+
	 u3sEoHLzh6limfq9g9KsSFuTZAKiXXRvfvDYBrxoaYW/h31EfUQganCHqQgxt1TvyL
	 ed2xVJ9Y9WoZDirU6m4PlicjjqeW6bEHIlj1YxMg0Cyt6DH8kotCKPSimxHvvwxRVT
	 rDJJzcJLn/IWm7DmXmLJOsNgUAH/8xuVgu6QHeeLKt44LOdnbKlTAqkyb4NzRRa3W1
	 Ba/ufRdE+Dw8GEW7Kv224/Bo885zhiIedxWj/O+plac8chJYGytklu4n6bHBFuYwgY
	 yCZb13GxMtzEw==
From: Maxime Ripard <mripard@kernel.org>
Date: Fri, 21 Aug 2026 16:39:38 +0200
Subject: [PATCH 62/70] drm/rockchip: vop2: Convert to atomic_create_state
MIME-Version: 1.0
Message-Id: <20260821-drm-no-more-crtc-reset-v1-62-fb793475c05a@kernel.org>
References: <20260821-drm-no-more-crtc-reset-v1-0-fb793475c05a@kernel.org>
In-Reply-To: <20260821-drm-no-more-crtc-reset-v1-0-fb793475c05a@kernel.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Sandy Huang <hjc@rock-chips.com>, 
 linux-rockchip@lists.infradead.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2389; i=mripard@kernel.org;
 h=from:subject:message-id; bh=tIQAUDVM3QuR+HEdoF0CNR//Y7qOtSSSYkp0Z+DU4eA=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDFkdycLcxot59Msy1v0/N3dST8+VhGSXs1etz3z9M+1B+
 vkfj1OcOqayMAhzMsiKKbI8kQk7vbx9cZWD/cofMHNYmUCGMHBxCsBEuHIZG6apr0tPMuzYcWKH
 letyp5M9vPmRPGvn7P105cGSp+ZdK10fy9kqr27zmOX4UXDNpFuR0ox1BiyRO6MCNf84q3EEXYn
 cE64+K2XfhUeJk//xv/N5uazIKtrbv3JRUNb7yuOsDu1zN20GAA==
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
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

VGhlIHJvY2tjaGlwIHZvcDIgY3J0YyBpbXBsZW1lbnRhdGlvbiBwcm92aWRlcyBhIGN1c3RvbSBy
ZXNldCBob29rLgpIb3dldmVyLCB0aGlzIGhvb2sgb25seSBhbGxvY2F0ZXMgdGhlIHN0YXRlLCBp
bml0aWFsaXplcyBpdCB3aXRoCl9fZHJtX2F0b21pY19oZWxwZXJfY3J0Y19yZXNldCgpLCBhbmQg
ZnJlZXMgdGhlIHByZXZpb3VzIHN0YXRlLiBJdApkb2VzIG5vdCBwZXJmb3JtIGFueSBoYXJkd2Fy
ZSByZXNldC4KClNpbmNlIHRoaXMgaXMgZXhhY3RseSB3aGF0IHRoZSBhdG9taWNfY3JlYXRlX3N0
YXRlIGhvb2sgaXMgbWVhbnQgdG8KZG8sIG1pbnVzIHRoZSBvbGQgc3RhdGUgY2xlYW51cCB3aGlj
aCB0aGUgY2FsbGVyIGhhbmRsZXMsIGNvbnZlcnQgdGhlCmltcGxlbWVudGF0aW9uIHRvIHVzZSBh
dG9taWNfY3JlYXRlX3N0YXRlIHdpdGgKX19kcm1fYXRvbWljX2hlbHBlcl9jcnRjX3N0YXRlX2lu
aXQoKSBpbnN0ZWFkLgoKU2lnbmVkLW9mZi1ieTogTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJu
ZWwub3JnPgotLS0KQ2M6ICJIZWlrbyBTdMO8Ym5lciIgPGhlaWtvQHNudGVjaC5kZT4KQ2M6IEFu
ZHkgWWFuIDxhbmR5LnlhbkByb2NrLWNoaXBzLmNvbT4KQ2M6IFNhbmR5IEh1YW5nIDxoamNAcm9j
ay1jaGlwcy5jb20+CkNjOiBsaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCi0tLQog
ZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMgfCAxOCArKysrKysr
KystLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92
b3AyLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYwppbmRl
eCA0Y2NlM2UzMzZmNWIuLmIyZjNhNTc5YmJlNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tj
aGlwL3JvY2tjaGlwX2RybV92b3AyLmMKQEAgLTIyOTgsMjggKzIyOTgsMjggQEAgc3RhdGljIHZv
aWQgdm9wMl9jcnRjX2Rlc3Ryb3lfc3RhdGUoc3RydWN0IGRybV9jcnRjICpjcnRjLAogCiAJX19k
cm1fYXRvbWljX2hlbHBlcl9jcnRjX2Rlc3Ryb3lfc3RhdGUoJnZjc3RhdGUtPmJhc2UpOwogCWtm
cmVlKHZjc3RhdGUpOwogfQogCi1zdGF0aWMgdm9pZCB2b3AyX2NydGNfcmVzZXQoc3RydWN0IGRy
bV9jcnRjICpjcnRjKQorc3RhdGljIHN0cnVjdCBkcm1fY3J0Y19zdGF0ZSAqdm9wMl9jcnRjX2Ny
ZWF0ZV9zdGF0ZShzdHJ1Y3QgZHJtX2NydGMgKmNydGMpCiB7Ci0Jc3RydWN0IHJvY2tjaGlwX2Ny
dGNfc3RhdGUgKnZjc3RhdGUgPSBremFsbG9jX29iaigqdmNzdGF0ZSk7CisJc3RydWN0IHJvY2tj
aGlwX2NydGNfc3RhdGUgKnZjc3RhdGU7CiAKLQlpZiAoY3J0Yy0+c3RhdGUpCi0JCXZvcDJfY3J0
Y19kZXN0cm95X3N0YXRlKGNydGMsIGNydGMtPnN0YXRlKTsKKwl2Y3N0YXRlID0ga3phbGxvY19v
YmooKnZjc3RhdGUpOworCWlmICghdmNzdGF0ZSkKKwkJcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7
CiAKLQlpZiAodmNzdGF0ZSkKLQkJX19kcm1fYXRvbWljX2hlbHBlcl9jcnRjX3Jlc2V0KGNydGMs
ICZ2Y3N0YXRlLT5iYXNlKTsKLQllbHNlCi0JCV9fZHJtX2F0b21pY19oZWxwZXJfY3J0Y19yZXNl
dChjcnRjLCBOVUxMKTsKKwlfX2RybV9hdG9taWNfaGVscGVyX2NydGNfc3RhdGVfaW5pdCgmdmNz
dGF0ZS0+YmFzZSwgY3J0Yyk7CisKKwlyZXR1cm4gJnZjc3RhdGUtPmJhc2U7CiB9CiAKIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgZHJtX2NydGNfZnVuY3Mgdm9wMl9jcnRjX2Z1bmNzID0gewogCS5zZXRf
Y29uZmlnID0gZHJtX2F0b21pY19oZWxwZXJfc2V0X2NvbmZpZywKIAkucGFnZV9mbGlwID0gZHJt
X2F0b21pY19oZWxwZXJfcGFnZV9mbGlwLAogCS5kZXN0cm95ID0gZHJtX2NydGNfY2xlYW51cCwK
LQkucmVzZXQgPSB2b3AyX2NydGNfcmVzZXQsCisJLmF0b21pY19jcmVhdGVfc3RhdGUgPSB2b3Ay
X2NydGNfY3JlYXRlX3N0YXRlLAogCS5hdG9taWNfZHVwbGljYXRlX3N0YXRlID0gdm9wMl9jcnRj
X2R1cGxpY2F0ZV9zdGF0ZSwKIAkuYXRvbWljX2Rlc3Ryb3lfc3RhdGUgPSB2b3AyX2NydGNfZGVz
dHJveV9zdGF0ZSwKIAkuZW5hYmxlX3ZibGFuayA9IHZvcDJfY3J0Y19lbmFibGVfdmJsYW5rLAog
CS5kaXNhYmxlX3ZibGFuayA9IHZvcDJfY3J0Y19kaXNhYmxlX3ZibGFuaywKIAkubGF0ZV9yZWdp
c3RlciA9IHZvcDJfY3J0Y19sYXRlX3JlZ2lzdGVyLAoKLS0gCjIuNTUuMAoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
