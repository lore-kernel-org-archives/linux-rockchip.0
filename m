Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 044A4CD8C92
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jun 2026 14:39:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DGZe3GyOFfU/SoJkALUAjHEh5UcxxHFXGlI0KSxomLQ=; b=BGwBwi9AoQ695l
	6cMGXNJ1OJcaIuPpIxQWgtzIMC4gBK4Q+71j1B9OuSH/QheM2QQCmQfvO+Vija/ki0r6Cj16vcXwu
	W08BSvA2hcfTSQo/WYNKOVXRKlnrKzs8bS2luJe0ZyT2aoENSOytFSczT8VGR9xS+5FKlNDZAnR4S
	NBJJcNUU9knoW9vGRlWDzRSTNu8l7VyIQ1Mnk0BpgRUa4Ypts4go3xHWQ2rAJ1cVXr2e3VKvFt9X9
	8XqN79i5MpUdr0BeOdiA7Grq6Z3OAYzI1vN4zQCmMGQrpMnTwaXqieHVYg2LqZTfvlQbITgVZ7Zl9
	/euSaH4z3BJpKYS8hlBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWb8O-00000003nKj-4AxB;
	Mon, 08 Jun 2026 14:39:24 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWb8N-00000003nJ2-3xW0;
	Mon, 08 Jun 2026 14:39:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id AE61A40A0E;
	Mon,  8 Jun 2026 14:39:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 217F61F0089B;
	Mon,  8 Jun 2026 14:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780929563;
	bh=m+e14BDat+MUjEfuuLwU2YmrZXyOKxN5Zuv/P5Bg+9k=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=MEGUBPrUEyq75kUQv9n9rw9t69ZBK4r2qUneM42o6P5Pm83ajbNge8U5uBrtPNJlH
	 d31XLL+iVFTes2gwd1TgWMC5rzrA/vmjjsdQChA/y406Sl/d21kCs1+ijPlz3/fSPz
	 Sh64DAAFYw6S7pQoPscM2ZjciCBkhEBAze2V87fSfAgTE6jYTEopk6r2p3SSkJp0ac
	 znyPgeR9jv9pfmrXp1+k5KuED09Ynq4An1+o1STxkvY7FupyZj6QV393xXMp2TEWgr
	 wIfeZEOwPrtsogs2TE23ipO/5zjU07ZJCMUA18jrxtj9tdrIR+JrevkLpFi/y3oBfg
	 Xou/X2OOsbGeg==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 08 Jun 2026 16:36:48 +0200
Subject: [PATCH v2 66/78] drm/rockchip: lvds: Switch to atomic_create_state
MIME-Version: 1.0
Message-Id: <20260608-drm-no-more-bridge-reset-v2-66-0a91018bf886@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1536; i=mripard@kernel.org;
 h=from:subject:message-id; bh=TdGEn/Nph6zclvRJJyS70UnRjDHuOTWgKeHyi9X/fKE=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDFlql5NCZFuuhP8RDjry+0Cs9jN9Jok7QnUOBiZHk5aaN
 DQ67pPsmMrCIMzJICumyPJEJuz08vbFVQ72K3/AzGFlAhnCwMUpABP5aMnYcOfMl/6r9fJc7GyX
 jD7wS16ctYBl97R9WnovOTl2aK26Z8it0LX/SLPd9tjdFvKv+fPMGRs+zTmj4HQz6+GP9FAzp/J
 I1wsTVJY4fg7h1BHwmjrLemHaoVO+hq0T3ObFW2snMETeMwcA
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
cm9ja2NoaXBfbHZkcy5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAx
IGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tj
aGlwX2x2ZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9sdmRzLmMKaW5k
ZXggN2EwYzRmYTI5ZjJmLi4zMWRjMjA2YmVkZWIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9yb2NrY2hpcF9sdmRzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L3JvY2tjaGlwX2x2ZHMuYwpAQCAtMTE3LDExICsxMTcsMTEgQEAgcm9ja2NoaXBfbHZkc19icmlk
Z2VfZ2V0X21vZGVzKHN0cnVjdCBkcm1fYnJpZGdlICpicmlkZ2UsIHN0cnVjdCBkcm1fY29ubmVj
dG9yICoKIAogc3RhdGljIGNvbnN0CiBzdHJ1Y3QgZHJtX2JyaWRnZV9mdW5jcyByb2NrY2hpcF9s
dmRzX2JyaWRnZV9mdW5jcyA9IHsKIAkuYXRvbWljX2R1cGxpY2F0ZV9zdGF0ZSA9IGRybV9hdG9t
aWNfaGVscGVyX2JyaWRnZV9kdXBsaWNhdGVfc3RhdGUsCiAJLmF0b21pY19kZXN0cm95X3N0YXRl
ID0gZHJtX2F0b21pY19oZWxwZXJfYnJpZGdlX2Rlc3Ryb3lfc3RhdGUsCi0JLmF0b21pY19yZXNl
dCA9IGRybV9hdG9taWNfaGVscGVyX2JyaWRnZV9yZXNldCwKKwkuYXRvbWljX2NyZWF0ZV9zdGF0
ZSA9IGRybV9hdG9taWNfaGVscGVyX2JyaWRnZV9jcmVhdGVfc3RhdGUsCiAJLmdldF9tb2RlcyA9
IHJvY2tjaGlwX2x2ZHNfYnJpZGdlX2dldF9tb2RlcywKIH07CiAKIHN0YXRpYyBpbnQKIHJvY2tj
aGlwX2x2ZHNfZW5jb2Rlcl9hdG9taWNfY2hlY2soc3RydWN0IGRybV9lbmNvZGVyICplbmNvZGVy
LAoKLS0gCjIuNTQuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
