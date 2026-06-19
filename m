Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2713DCD98F2
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Jun 2026 12:27:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DGZe3GyOFfU/SoJkALUAjHEh5UcxxHFXGlI0KSxomLQ=; b=xz90iR325COXbl
	NlRFKLUYpP0EvtfsCMU+8klHPDkejr/eOq8gQAAycQpFUjgFs6I1MYl4Tu7GKpoALtRpHoFE1qh/c
	5N6MHSheIhokmBIqdEXBB4RqJ+VwyRvx3/b2QLDu+dE5UjR3b5kUAItTTIKotEayB9y4s3owknK0z
	Fzj5zSAa9k5hgEg8MmCD+6xzpUitfcXoIjxWcBC2JrstJw6w4h6rQrrfLvcSo6Kb/V38q/UFevza4
	gQsapWZDk9NaQ+9zwvko8s7pcQAlE7uIMwwrgaNGTmZ1fQqRsR5e7BYVZSPd8c16g8U5mSYdI3ar8
	bg7vTFor6HRwj+MdmORg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waYK3-00000002PCw-1SLl;
	Fri, 19 Jun 2026 12:27:47 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waYK1-00000002P9m-01gK;
	Fri, 19 Jun 2026 12:27:45 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id BB3F4429D8;
	Fri, 19 Jun 2026 12:27:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E5581F000E9;
	Fri, 19 Jun 2026 12:27:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781872064;
	bh=m+e14BDat+MUjEfuuLwU2YmrZXyOKxN5Zuv/P5Bg+9k=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=dQ2sgFPjly5ZAdEzfLlTbCYYKUoOg15F9gauMkAwKtDlbdDt4ukq7xsrF2odUpCP6
	 T+9ZZwUYxZJ57hPCm4kDDvIUiKCWQ/p5Jl1j19FAaTtQJo8nK7F9Sn0KfP6Iyfh4Hp
	 9YWurYSfszrfcXO41XRY8e35POM0en6q5Sz5JMPzjo/bIudXZdl2XXggaQ0eO9r6Ur
	 O3xUt1J/J4lJeObn1FpwB3C1mDg7+4c1HUp1P1if+0e3FNuUbDs3sdPML5DqMumSHJ
	 Acpdq7KawuvljxWXO6pfnPPZyJiU7cuw/NUYNnrrqbPaJh+99T0z6n33u5YjfUeED5
	 UKjcaRRcWywIQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Fri, 19 Jun 2026 14:25:11 +0200
Subject: [PATCH v3 66/78] drm/rockchip: lvds: Switch to atomic_create_state
MIME-Version: 1.0
Message-Id: <20260619-drm-no-more-bridge-reset-v3-66-ff399263111b@kernel.org>
References: <20260619-drm-no-more-bridge-reset-v3-0-ff399263111b@kernel.org>
In-Reply-To: <20260619-drm-no-more-bridge-reset-v3-0-ff399263111b@kernel.org>
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
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDFmmpuzvo+IT5yysXrHLck58acUqndlSSYl747Rfrmj34
 zkXVybaMZWFQZiTQVZMkeWJTNjp5e2LqxzsV/6AmcPKBDKEgYtTACaSuo6xzlh50u6sWOmvmVP4
 BH5OqlfTjpJf2/n08aZkDrZZLiXlx527ry9iq/1dfyG82Lrxz4zVjA0//Pdv+5Qsp8u+9s4qtoc
 FX4Kan0/bv0M+Reve0gLl1Y8fHeA6l7vuWXzoZJddJ02dFrwFAA==
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
