Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EE0FC61DC2
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Aug 2026 13:32:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7FOkRPZC6Lu/eNWHk4hPiEJnsn+n7ZoAJQlW5/arCag=; b=0oaajM79zDqq9y
	zSgwWI1blYsagNF5JcWCEG1amNIOw0H/bNgm+l4LdRn3pWLB/ddsgz0RyD0W6AnZjNgv1WdaajwH1
	3BQ5PDarq5HuCopuloOo4bCZC96iig+Ddg4+giZXaOm25pob/z/JJZ4MtzaWBPvj9sNn37Q6viu0/
	JcB7DDdmd6yuftQ/U3wjuOnB8IaSE1M+367TxJUNghzAPS+HDLHLPtkPF+d+tVSEOHr0CMYl4ChX7
	ayJlbevmHJxHCyDPqk/HA1+9L4+GO+wOVRpDi9tNPeg3qW1Z/M3LsVAygLUtNWYciioh7UmYTxGhV
	CepWLpoEyPGpTEjeogOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzaDN-000000043jj-1nYH;
	Thu, 27 Aug 2026 13:32:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzaDK-000000043it-2M1U
	for linux-rockchip@lists.infradead.org;
	Thu, 27 Aug 2026 13:32:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=vJotwYLVTTd7E25BPLW3hIqQUafjuUGEm5hC3B0d5Y0=; b=rOivDsENxxv4zLEMzxJjXX9P9+
	hiwqwXFl0kDa+K6pC1wCGYNr8h7aOiZCKsXlZwnOerdbEH15ezeV/bC0Qmr2E5kdBqf7Ml9VhCRgW
	ALVBoo9/O2KknxkKt0N/ndrLEzmP65Ah+vGVIWKlSYBMZ0fUI53xXZ7NUQQ1rOyyW3OKcKX+1dqOk
	XfIL+/AhQqNqzqKxvancYUVSzlRe93ypIG3KbihC0GlsSE1JArYVeZgDqYqPiwOj1hUJIjOS8vUVF
	ozU5JiFr1tg1rv7V3P1aqLxdaKQQ0B1viZDhNEcv+se1lzMPC4masLU+CFROZKOIscZmMggvhzvjm
	RTOyBbeA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Maxime Ripard <mripard@kernel.org>
Cc: dri-devel@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>,
 Andy Yan <andy.yan@rock-chips.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 61/70] drm/rockchip: vop: Convert to atomic_create_state
Date: Thu, 27 Aug 2026 15:32:06 +0200
Message-ID: <3059456.e9J7NaK4W3@phil>
In-Reply-To: <20260821-drm-no-more-crtc-reset-v1-61-fb793475c05a@kernel.org>
References: <20260821-drm-no-more-crtc-reset-v1-0-fb793475c05a@kernel.org>
 <20260821-drm-no-more-crtc-reset-v1-61-fb793475c05a@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260827_063218_602062_A9B41989 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
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

QW0gRnJlaXRhZywgMjEuIEF1Z3VzdCAyMDI2LCAxNjozOTozNyBNaXR0ZWxldXJvcMOkaXNjaGUg
U29tbWVyemVpdCBzY2hyaWViIE1heGltZSBSaXBhcmQ6Cj4gVGhlIHJvY2tjaGlwIHZvcCBjcnRj
IGltcGxlbWVudGF0aW9uIHByb3ZpZGVzIGEgY3VzdG9tIHJlc2V0IGhvb2suCj4gSG93ZXZlciwg
dGhpcyBob29rIG9ubHkgYWxsb2NhdGVzIHRoZSBzdGF0ZSwgaW5pdGlhbGl6ZXMgaXQgd2l0aAo+
IF9fZHJtX2F0b21pY19oZWxwZXJfY3J0Y19yZXNldCgpLCBhbmQgZnJlZXMgdGhlIHByZXZpb3Vz
IHN0YXRlLiBJdAo+IGRvZXMgbm90IHBlcmZvcm0gYW55IGhhcmR3YXJlIHJlc2V0Lgo+IAo+IFNp
bmNlIHRoaXMgaXMgZXhhY3RseSB3aGF0IHRoZSBhdG9taWNfY3JlYXRlX3N0YXRlIGhvb2sgaXMg
bWVhbnQgdG8KPiBkbywgbWludXMgdGhlIG9sZCBzdGF0ZSBjbGVhbnVwIHdoaWNoIHRoZSBjYWxs
ZXIgaGFuZGxlcywgY29udmVydCB0aGUKPiBpbXBsZW1lbnRhdGlvbiB0byB1c2UgYXRvbWljX2Ny
ZWF0ZV9zdGF0ZSB3aXRoCj4gX19kcm1fYXRvbWljX2hlbHBlcl9jcnRjX3N0YXRlX2luaXQoKSBp
bnN0ZWFkLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE1heGltZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVs
Lm9yZz4KClJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
