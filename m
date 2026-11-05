Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BE61606EEA0
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2026 14:10:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=EjPsAIB3;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=U6Y5ArE4
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=HVeCnac/cachuISmkn+4Yrv+u6eYC7GQmq+sAGgjhPM=; b=EjPsAIB3U+OI1p5vYm4ZRqt+eM
	0LaLjE3Pk+0MaiV355elweAfO9nfhKUgTW/aUcczivHRQQVXIxUlVcAWEZ4ERszYTKDu+DHyIqX7V
	3H/1EM+Kz9aL831vicqYcrJ6oM+728rs0HTpPAHT7FQKEnAQNfBfxeSGHlluY17fz15n0RFgsGYau
	/fzpFtISCrkVzNzQNYHWM2PLOjtY4+9MW1mtAuXEiNCmAIG2SWuPiAlsotdeRNkPMIvR4KCOxbab7
	jAxwKVWGbmfVfYOukDF2BiVT3iq7ddAzYlwuNC3nTTNEMrA/i09yd9+KhBJU06Ueg1uJgGqx1ElB8
	cstSccoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOyAZ-00000009DWy-2n4d;
	Thu, 05 Nov 2026 14:10:23 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOyAY-00000009DWr-2POk
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Nov 2026 14:10:22 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5772843E63;
	Thu,  5 Nov 2026 14:10:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BAD741F00A1C;
	Thu,  5 Nov 2026 14:10:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793887822;
	bh=MTZqhm0aGJreZPGGbuUZEYlXZJP51jJf8Z0bzy30p1U=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=U6Y5ArE48X6AS0ezYl38zhQXOalEtjQsl88u/DU9nVwKUsw2md5g+NM5WaFSKn9DL
	 ODSVF6ZtzOnyVDZiZ25+tPzCDwlAPLzMFfdkroTcYmCk/s1CbMjPgwYE6ccs0p4nMy
	 gZWfOBlvZTQTIS7EEHviXZmAk3djdXjhjFQxuNsikrg17rVeSdKn43Ewnj6PdMDd8n
	 wtV0QS1k1CB0JOLKnrgzqi/LxchYIULN558cwCrK90dfK/hYnRV6AJ5mmL3ocbw7sk
	 bNsv/YjB7Lr7l0bm/PMG5iTg+Em6wJ2I48V2StQHpqQF29r6yt50KTghIJgOxZYLBR
	 p5K+xBMC8afeA==
From: Maxime Ripard <mripard@kernel.org>
Date: Thu, 05 Nov 2026 15:07:55 +0100
Subject: [PATCH 38/83] drm/rockchip: Switch to
 drm_mode_config_create_initial_state
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261105-drm-no-more-config-reset-v1-38-763560c2cc3f@kernel.org>
References: <20261105-drm-no-more-config-reset-v1-0-763560c2cc3f@kernel.org>
In-Reply-To: <20261105-drm-no-more-config-reset-v1-0-763560c2cc3f@kernel.org>
To: Maxime Ripard <mripard@kernel.org>
Cc: =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org, 
 Andy Yan <andyshrk@163.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1324; i=mripard@kernel.org;
 h=from:subject:message-id; bh=u+F3Q/slyAJ4WB/81jUsRNlDARO7Uo/iUhGPQMLGiXk=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDFlvetcYZBud+aioY72t/caG32wvol3/rLz/Ku1PmaaZG
 N+U2ii5jqksDMKcDLJiiixPZMJOL29fXOVgv/IHzBxWJpAhDFycAjARk2rGhkNyPc31ZmrFbxLc
 2c6eEWp9UyO0g21fkuF881n7I8xqLXmUBN7qfa1NfzhrzRnlxtIDjPVeSsbc3iKrznLJ87ote5w
 own++aOnh6a8eCsVf13C68sycc+vSUuedLR/eCXcuWS/DUQcA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

ZHJtX21vZGVfY29uZmlnX3Jlc2V0KCkgaGFzIGEgZHVhbCByb2xlOiBpdCBjcmVhdGVzIHRoZSBp
bml0aWFsIEtNUwpzdGF0ZSBhdCBwcm9iZSB0aW1lLCBhbmQgcmVzZXRzIGhhcmR3YXJlIGFuZCBz
b2Z0d2FyZSBzdGF0ZSBkdXJpbmcKc3VzcGVuZC9yZXN1bWUgY3ljbGVzLgoKU2luY2UgdGhlIHR3
byByb2xlcyBuZWVkIGRpZmZlcmVudCBiZWhhdmlvcnMgKG5vdGFibHkgZm9yIG9iamVjdHMgbGlr
ZQpkcm1fcHJpdmF0ZV9vYmogdGhhdCBtdXN0IHBlcnNpc3QgYWNyb3NzIHN1c3BlbmQvcmVzdW1l
KSwKZHJtX21vZGVfY29uZmlnX2NyZWF0ZV9pbml0aWFsX3N0YXRlKCkgd2FzIGludHJvZHVjZWQg
dG8gaGFuZGxlIG9ubHkKdGhlIGluaXRpYWwgc3RhdGUgY3JlYXRpb24gYXQgcHJvYmUgdGltZS4K
ClN3aXRjaCB0byBkcm1fbW9kZV9jb25maWdfY3JlYXRlX2luaXRpYWxfc3RhdGUoKS4KClNpZ25l
ZC1vZmYtYnk6IE1heGltZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4KLS0tCkNjOiAiSGVp
a28gU3TDvGJuZXIiIDxoZWlrb0BzbnRlY2guZGU+CkNjOiBBbmR5IFlhbiA8YW5keS55YW5Acm9j
ay1jaGlwcy5jb20+CkNjOiBTYW5keSBIdWFuZyA8aGpjQHJvY2stY2hpcHMuY29tPgpDYzogbGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwotLS0KIGRyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMgfCA0ICsrKy0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9j
a2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tj
aGlwX2RybV9kcnYuYwppbmRleCAzMDk5NDA4ZTlkMDUuLjFmYzYxMzRmNjkwMCAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9kcnYuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jCkBAIC0xOTEsNSArMTkxLDcg
QEAgc3RhdGljIGludCByb2NrY2hpcF9kcm1fYmluZChzdHJ1Y3QgZGV2aWNlICpkZXYpCiAJCWdv
dG8gZXJyX2lvbW11X2NsZWFudXA7CiAKLQlkcm1fbW9kZV9jb25maWdfcmVzZXQoZHJtX2Rldik7
CisJcmV0ID0gZHJtX21vZGVfY29uZmlnX2NyZWF0ZV9pbml0aWFsX3N0YXRlKGRybV9kZXYpOwor
CWlmIChyZXQpCisJCWdvdG8gZXJyX2lvbW11X2NsZWFudXA7CiAKIAkvKiBpbml0IGttcyBwb2xs
IGZvciBoYW5kbGluZyBocGQgKi8KCi0tIAoyLjU1LjAKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
