Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B375EC4451C
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Jul 2026 17:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z0PGnLgsFJDrd16ZWzpdDSHdKt5jr2e/X5LDdyCK8XI=; b=KNsKd+hThLOlxP
	9riP0xq811SpJ3JRol4SeF0xpYs9B0N3RPbNn3BbXiQrCSA4ryvEzuT6KME6/xslKvBkyhyd3pVCs
	5Im6ihjq10FDuMurnk+G/FU1PbNIM8O8LDUCUnCBxoaBAq1cKqTbrqxWSerx+br07SUMLo/MIj6L8
	jLuDhvQUQgIhboaA34hw4I+Of8WblP+vQmIYglmIvjh68EEzvRQqe+xL57pFAOjv2E79oyhOCuqWY
	XbuHuJEjZd4Lc1Nd7p8L5OzAGbOWj2rbLa7KUU4ZFWKf6jttPPRMDI4mU0AcE62l7YDk+hFdNZwMV
	O+Y9pyayBzHAPb7gBwVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmERM-0000000A4nl-3CkL;
	Tue, 21 Jul 2026 17:39:36 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmERL-0000000A4nf-45Yv
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Jul 2026 17:39:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id AD16143462;
	Tue, 21 Jul 2026 17:39:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23ACE1F00A3A;
	Tue, 21 Jul 2026 17:39:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linuxfoundation.org;
	s=korg; t=1784655575;
	bh=GlbGvjMibPj32McD7/YiBxAzyx1fK+eJ0ZlcnZttDtE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=jpa9fVRZoiSxyLGWA1YCtu9pTtihfQhJuOJYt1ZtqJndj3hQr6qdeRdP0TajYRTcq
	 N3Oug4GXQuvjOPgnU3pKUCjdteGcTSSHS/2TxcvpadQrJZhT7TIkfaIlcBtN7aiY8N
	 2botSi4qp7jS8e8W1stNPL4Rys6rEXskhUzm1qLQ=
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
Subject: [PATCH 6.18 0062/1611] drm/rockchip: Test for imported buffers with drm_gem_is_imported()
Date: Tue, 21 Jul 2026 17:02:58 +0200
Message-ID: <20260721152516.225613125@linuxfoundation.org>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260721152514.750365251@linuxfoundation.org>
References: <20260721152514.750365251@linuxfoundation.org>
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

Ni4xOC1zdGFibGUgcmV2aWV3IHBhdGNoLiAgSWYgYW55b25lIGhhcyBhbnkgb2JqZWN0aW9ucywg
cGxlYXNlIGxldCBtZSBrbm93LgoKLS0tLS0tLS0tLS0tLS0tLS0tCgpGcm9tOiBUaG9tYXMgWmlt
bWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4KClsgVXBzdHJlYW0gY29tbWl0IDlmYzBkYTgx
OTE2MjUwZjM0MzU5OWE0ZGQyNTlmMDk3MTk2YmYwZmIgXQoKSW5zdGVhZCBvZiB0ZXN0aW5nIGlt
cG9ydF9hdHRhY2ggZm9yIGltcG9ydGVkIEdFTSBidWZmZXJzLCBpbnZva2UKZHJtX2dlbV9pc19p
bXBvcnRlZCgpIHRvIGRvIHRoZSB0ZXN0LiBUaGUgdGVzdCBpdHNlbGYgZG9lcyBub3QgY2hhbmdl
LgoKU2lnbmVkLW9mZi1ieTogVGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+
CkNjOiBTYW5keSBIdWFuZyA8aGpjQHJvY2stY2hpcHMuY29tPgpDYzogSGVpa28gU3TDvGJuZXIg
PGhlaWtvQHNudGVjaC5kZT4KQ2M6IEFuZHkgWWFuIDxhbmR5LnlhbkByb2NrLWNoaXBzLmNvbT4K
Q2M6IGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKRml4ZXM6IGI1N2FhNDdkMzll
OSAoImRybS9nZW06IFRlc3QgZm9yIGltcG9ydGVkIEdFTSBidWZmZXJzIHdpdGggaGVscGVyIikK
Q2xvc2VzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9kcmktZGV2ZWwvMzhkMDlkMzQuNDM1NC4x
OTYzNzlhYTU2MC5Db3JlbWFpbC5hbmR5c2hya0AxNjMuY29tLwpTaWduZWQtb2ZmLWJ5OiBIZWlr
byBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgpMaW5rOiBodHRwczovL3BhdGNoLm1zZ2lkLmxp
bmsvMjAyNjAyMjcxMzMxMTMuMjM1OTQwLTExLXR6aW1tZXJtYW5uQHN1c2UuZGUKU2lnbmVkLW9m
Zi1ieTogU2FzaGEgTGV2aW4gPHNhc2hhbEBrZXJuZWwub3JnPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZ2VtLmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvcm9ja2NoaXBfZHJtX2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3Jv
Y2tjaGlwX2RybV9nZW0uYwppbmRleCA2MzMwYjg4M2VmYzM1ZC4uZTQ0Mzk2ZDQ2ZGMxZjYgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZ2VtLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9nZW0uYwpAQCAtMzMyLDcg
KzMzMiw3IEBAIHZvaWQgcm9ja2NoaXBfZ2VtX2ZyZWVfb2JqZWN0KHN0cnVjdCBkcm1fZ2VtX29i
amVjdCAqb2JqKQogCXN0cnVjdCByb2NrY2hpcF9kcm1fcHJpdmF0ZSAqcHJpdmF0ZSA9IGRybS0+
ZGV2X3ByaXZhdGU7CiAJc3RydWN0IHJvY2tjaGlwX2dlbV9vYmplY3QgKnJrX29iaiA9IHRvX3Jv
Y2tjaGlwX29iaihvYmopOwogCi0JaWYgKG9iai0+aW1wb3J0X2F0dGFjaCkgeworCWlmIChkcm1f
Z2VtX2lzX2ltcG9ydGVkKG9iaikpIHsKIAkJaWYgKHByaXZhdGUtPmRvbWFpbikgewogCQkJcm9j
a2NoaXBfZ2VtX2lvbW11X3VubWFwKHJrX29iaik7CiAJCX0gZWxzZSB7Ci0tIAoyLjUzLjAKCgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
