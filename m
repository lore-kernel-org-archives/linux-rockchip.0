Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBA8EC4452B
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Jul 2026 20:26:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FclV5knJB/GgIylJx6laz4Ta5tqSIF+krLkiZ2vGIls=; b=o2+TNEg0lLq/Z+
	Mb7vrMjV1Ml2fW9VqEgm7mmQubEO1e2wgj2/kLZ3pCUUDa+a9GGHajt5L31PR8T9c09uDZwg6/Org
	yRgqczhhIIFOQa6oRg9L8EIF3xQJ1k1XlyPC2F4l6kpAein4sggNx8ccM5IAZs81uL/Gz2i6GUSbd
	+23EDzOQeRZu7RgfVZ09uF9GMl5ayiSlWWZj4TrTeg+fTs6fsSxSkxYtmQIr5t8qacEFPKj8y13+p
	AAhofnBaWA3G0cO+sehAw9yiPmXqZYgByHXx3B0ag7q8riXVjQhccnY1fBYDVeVjicqQ5gfoGytGy
	ZrmCNeNPYBi5Y0mTe5vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmH2s-0000000ANSz-2aws;
	Tue, 21 Jul 2026 20:26:30 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmH2r-0000000ANSq-3e3A
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Jul 2026 20:26:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 50B4360A8C;
	Tue, 21 Jul 2026 20:26:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 886EB1F000E9;
	Tue, 21 Jul 2026 20:26:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linuxfoundation.org;
	s=korg; t=1784665589;
	bh=uwke3nhMpNklieQA0Pz5mf7UuQLL47Ab7Qxeok8s8Uk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=KS995PjaY0tBMO//rPXcAjok87FUkkWxivhm1uFs17ieGEjFn/ZZ6gD8e7szYAeil
	 4pGs4JPAhILwCb3tjITnWAhRCUoG6EJ6IEXEoOTzb/axG6u8u3RVFMc4wgFaCO7oxW
	 6W2D3ikOgPo7Xpobop8Gm/2uCwmuRRZ4Qc2fapCs=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: stable@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	patches@lists.linux.dev,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH 6.6 0359/1266] drm/rockchip: Test for imported buffers with drm_gem_is_imported()
Date: Tue, 21 Jul 2026 17:13:16 +0200
Message-ID: <20260721152449.862072126@linuxfoundation.org>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260721152441.786066624@linuxfoundation.org>
References: <20260721152441.786066624@linuxfoundation.org>
User-Agent: quilt/0.69
X-stable: review
X-Patchwork-Hint: ignore
MIME-Version: 1.0
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

Ni42LXN0YWJsZSByZXZpZXcgcGF0Y2guICBJZiBhbnlvbmUgaGFzIGFueSBvYmplY3Rpb25zLCBw
bGVhc2UgbGV0IG1lIGtub3cuCgotLS0tLS0tLS0tLS0tLS0tLS0KCkZyb206IFRob21hcyBaaW1t
ZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPgoKWyBVcHN0cmVhbSBjb21taXQgOWZjMGRhODE5
MTYyNTBmMzQzNTk5YTRkZDI1OWYwOTcxOTZiZjBmYiBdCgpJbnN0ZWFkIG9mIHRlc3RpbmcgaW1w
b3J0X2F0dGFjaCBmb3IgaW1wb3J0ZWQgR0VNIGJ1ZmZlcnMsIGludm9rZQpkcm1fZ2VtX2lzX2lt
cG9ydGVkKCkgdG8gZG8gdGhlIHRlc3QuIFRoZSB0ZXN0IGl0c2VsZiBkb2VzIG5vdCBjaGFuZ2Uu
CgpTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4K
Q2M6IFNhbmR5IEh1YW5nIDxoamNAcm9jay1jaGlwcy5jb20+CkNjOiBIZWlrbyBTdMO8Ym5lciA8
aGVpa29Ac250ZWNoLmRlPgpDYzogQW5keSBZYW4gPGFuZHkueWFuQHJvY2stY2hpcHMuY29tPgpD
YzogbGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpGaXhlczogYjU3YWE0N2QzOWU5
ICgiZHJtL2dlbTogVGVzdCBmb3IgaW1wb3J0ZWQgR0VNIGJ1ZmZlcnMgd2l0aCBoZWxwZXIiKQpD
bG9zZXM6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2RyaS1kZXZlbC8zOGQwOWQzNC40MzU0LjE5
NjM3OWFhNTYwLkNvcmVtYWlsLmFuZHlzaHJrQDE2My5jb20vClNpZ25lZC1vZmYtYnk6IEhlaWtv
IFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Ckxpbms6IGh0dHBzOi8vcGF0Y2gubXNnaWQubGlu
ay8yMDI2MDIyNzEzMzExMy4yMzU5NDAtMTEtdHppbW1lcm1hbm5Ac3VzZS5kZQpTaWduZWQtb2Zm
LWJ5OiBTYXNoYSBMZXZpbiA8c2FzaGFsQGtlcm5lbC5vcmc+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L3JvY2tjaGlwL3JvY2tjaGlwX2RybV9nZW0uYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9y
b2NrY2hpcC9yb2NrY2hpcF9kcm1fZ2VtLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9j
a2NoaXBfZHJtX2dlbS5jCmluZGV4IDkzZWQ4NDFmNWRjZWFlLi4wNDg3OWUyMzc5N2ZiNyAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9nZW0uYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2dlbS5jCkBAIC0zMzIsNyAr
MzMyLDcgQEAgdm9pZCByb2NrY2hpcF9nZW1fZnJlZV9vYmplY3Qoc3RydWN0IGRybV9nZW1fb2Jq
ZWN0ICpvYmopCiAJc3RydWN0IHJvY2tjaGlwX2RybV9wcml2YXRlICpwcml2YXRlID0gZHJtLT5k
ZXZfcHJpdmF0ZTsKIAlzdHJ1Y3Qgcm9ja2NoaXBfZ2VtX29iamVjdCAqcmtfb2JqID0gdG9fcm9j
a2NoaXBfb2JqKG9iaik7CiAKLQlpZiAob2JqLT5pbXBvcnRfYXR0YWNoKSB7CisJaWYgKGRybV9n
ZW1faXNfaW1wb3J0ZWQob2JqKSkgewogCQlpZiAocHJpdmF0ZS0+ZG9tYWluKSB7CiAJCQlyb2Nr
Y2hpcF9nZW1faW9tbXVfdW5tYXAocmtfb2JqKTsKIAkJfSBlbHNlIHsKLS0gCjIuNTMuMAoKCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
