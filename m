Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5B6ACD8C9D
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jun 2026 14:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dDUbSlnciR5VWQSmLdQ1FuIzhxigPvF9UfoOk+PZkt8=; b=ydyd9sR6yyh+nV
	fFEi/d/XzuwIbG1tal6xReaAJVmj/xL62t6vWrULV6QU3LrSj+f6lOIJexi4Baow3hK8N3UbUOvGw
	Nmg5t5iL3w44gQD7BrGf5wdQp4FhUDxgCKXsQwhxcsdYQNnp/KZ/PTSsz4NuqlMVYxlmCr3W4eFvb
	LKZN67U2YxMQXa08LooQr5A/HvP1UUnrV8ac94MyRcatU3jC/k99RdG6WU8Pq7jDvRB6bN0FOElaH
	wtHv1gnN3XSiuybhb9LHbe6mpLadGzZtjbp4Q5PNwEOdhRbKr37qBik4pSsCJF9useQfAbnGfeMb9
	eFGZiHas4pngl4ArO+GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWb8K-00000003nEn-1a8G;
	Mon, 08 Jun 2026 14:39:20 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWb8J-00000003nDk-0WTQ;
	Mon, 08 Jun 2026 14:39:19 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 9092B601E2;
	Mon,  8 Jun 2026 14:39:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C92071F00893;
	Mon,  8 Jun 2026 14:39:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780929558;
	bh=PmFg1F7stkBZtAn0NWj/38h1CH75VRKu7DzE/r76fNA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=QRC/iym0cxPG+CIWus2OU7OpnT9rV/2TjfCIiHGgC84KTAYGtucS8icr8n2Z3vBGD
	 dVWvly5OT0glAg1R+52qEYw5qZYTTY/Gk03JIIH2cpFpfcC+xd1YZtw26GmKYOCRzX
	 kYSAJyiigBvwQmnJmHuD+ZFdyvWOAO839RdkO/mK9OYkBGwjj6gcHI9w0qFhXoXqwO
	 KEagvHGB65m5/b5TtynmgKWFjc+2NVj2EcNGzI+vZENUhqyl6EtNtw85NJiYk2qdQn
	 6woh7I5mogwzFP9Hj5yg9M6f9ci1zo+A1X7kMfpIemwam1s+upIwJ6HugEhJa8K5Sl
	 YeUfT85+SLNLw==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 08 Jun 2026 16:36:46 +0200
Subject: [PATCH v2 64/78] drm/rockchip: cdn-dp: Switch to
 atomic_create_state
MIME-Version: 1.0
Message-Id: <20260608-drm-no-more-bridge-reset-v2-64-0a91018bf886@kernel.org>
References: <20260608-drm-no-more-bridge-reset-v2-0-0a91018bf886@kernel.org>
In-Reply-To: <20260608-drm-no-more-bridge-reset-v2-0-0a91018bf886@kernel.org>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>
Cc: Dmitry Baryshkov <lumag@kernel.org>, dri-devel@lists.freedesktop.org, 
 Maxime Ripard <mripard@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1587; i=mripard@kernel.org;
 h=from:subject:message-id; bh=mH6AkWs35KuBQWOVkh00AHkgGCpu8OjsSiyDjardA9A=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDFlqlxOv/FfYxJmZvnFKR3Vv6l/dWvZp538Llsm12G6K6
 JT5WarbMZWFQZiTQVZMkeWJTNjp5e2LqxzsV/6AmcPKBDKEgYtTACZi4svY8OFk4NppMfKrEr8c
 L9ywyp2brUm/onjBi4tz1HY7n3DpMFvxZ3n9XzdjoXnbrmZ/0Yo0Ymx48tbvpPSNh0J1gor/5ty
 TvB5gnJx45UUFx4TbXUJJWgfnaZcdmiy3LkRg1TfD1VvN71kAAA==
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

VGhlIGRybV9icmlkZ2VfZnVuY3MuYXRvbWljX3Jlc2V0IGNhbGxiYWNrIGFuZCBpdHMKZHJtX2F0
b21pY19oZWxwZXJfYnJpZGdlX3Jlc2V0KCkgaGVscGVyIGFyZSBkZXByZWNhdGVkLgoKU3dpdGNo
IHRvIHRoZSBhdG9taWNfY3JlYXRlX3N0YXRlIGNhbGxiYWNrIGFuZCBpdHMKZHJtX2F0b21pY19o
ZWxwZXJfYnJpZGdlX2NyZWF0ZV9zdGF0ZSgpIGNvdW50ZXJwYXJ0LgoKUmV2aWV3ZWQtYnk6IEhl
aWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+ClJldmlld2VkLWJ5OiBUaG9tYXMgWmltbWVy
bWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4KU2lnbmVkLW9mZi1ieTogTWF4aW1lIFJpcGFyZCA8
bXJpcGFyZEBrZXJuZWwub3JnPgotLS0KVG86IFNhbmR5IEh1YW5nIDxoamNAcm9jay1jaGlwcy5j
b20+ClRvOiAiSGVpa28gU3TDvGJuZXIiIDxoZWlrb0BzbnRlY2guZGU+ClRvOiBBbmR5IFlhbiA8
YW5keS55YW5Acm9jay1jaGlwcy5jb20+CkNjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCkNjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKQ2M6IGxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKLS0tCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAv
Y2RuLWRwLWNvcmUuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9jZG4tZHAt
Y29yZS5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1jb3JlLmMKaW5kZXggMTkw
Y2NlOTUzMGM4Li5lMTU5ZTE2MjdmM2MgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9jZG4tZHAtY29yZS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9jZG4tZHAt
Y29yZS5jCkBAIC04MjMsMTEgKzgyMywxMSBAQCBzdGF0aWMgaW50IGNkbl9kcF9hdWRpb19tdXRl
X3N0cmVhbShzdHJ1Y3QgZHJtX2JyaWRnZSAqYnJpZGdlLAogfQogCiBzdGF0aWMgY29uc3Qgc3Ry
dWN0IGRybV9icmlkZ2VfZnVuY3MgY2RuX2RwX2JyaWRnZV9mdW5jcyA9IHsKIAkuYXRvbWljX2R1
cGxpY2F0ZV9zdGF0ZSA9IGRybV9hdG9taWNfaGVscGVyX2JyaWRnZV9kdXBsaWNhdGVfc3RhdGUs
CiAJLmF0b21pY19kZXN0cm95X3N0YXRlID0gZHJtX2F0b21pY19oZWxwZXJfYnJpZGdlX2Rlc3Ry
b3lfc3RhdGUsCi0JLmF0b21pY19yZXNldCA9IGRybV9hdG9taWNfaGVscGVyX2JyaWRnZV9yZXNl
dCwKKwkuYXRvbWljX2NyZWF0ZV9zdGF0ZSA9IGRybV9hdG9taWNfaGVscGVyX2JyaWRnZV9jcmVh
dGVfc3RhdGUsCiAJLmRldGVjdCA9IGNkbl9kcF9icmlkZ2VfZGV0ZWN0LAogCS5lZGlkX3JlYWQg
PSBjZG5fZHBfYnJpZGdlX2VkaWRfcmVhZCwKIAkuYXRvbWljX2VuYWJsZSA9IGNkbl9kcF9icmlk
Z2VfYXRvbWljX2VuYWJsZSwKIAkuYXRvbWljX2Rpc2FibGUgPSBjZG5fZHBfYnJpZGdlX2F0b21p
Y19kaXNhYmxlLAogCS5tb2RlX3ZhbGlkID0gY2RuX2RwX2JyaWRnZV9tb2RlX3ZhbGlkLAoKLS0g
CjIuNTQuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
