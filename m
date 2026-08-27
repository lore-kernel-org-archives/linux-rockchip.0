Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB6D5C61DC4
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Aug 2026 13:32:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bre4l9tvvENTqv0fQUmP250lYfeFRvTIo5zBkR0iD7s=; b=dYOxvNmdi5datl
	+G4S/qO3JswdzpdiukKz0l2PMR5lE9ukw6rq7Wfcpzem2Js+zIuU5mcUBc/08bZ3eQ/6AmZNc0Cl6
	B+GgcZgKEddrekQAdd8kOAKu73GibciPGp4ZcqQ6BuW73jCvwZ9FCA9VECGIcozf/Z5SL4mDqxPLj
	tZAQJoSW0pEqsCVkZ/HSE40bKK5hnAB64G+xFmVZmqPVROQHui6WD8/zYemopXoBKSWnQ4SATVHgF
	WwxRP2mkC/NNL5krfokqLky5fhy6DiH6dQhHeeSOymi9+8rVgFZNNF+f/8TuIbLRZUCc3O8ohzrVq
	4XpJ8MjF6z8iHh6vRydA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzaDN-000000043jp-24Nl;
	Thu, 27 Aug 2026 13:32:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzaDL-000000043ix-1iWm
	for linux-rockchip@lists.infradead.org;
	Thu, 27 Aug 2026 13:32:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=8JGwotRkiWHKaCQu9jDkWstXKW98P1ozDtsr5f79/wg=; b=Z7Shld41GBbQhCCHjQgbTvoFJF
	Owu0drTeyDwirLS9U20iq62QKzXBOzCgydW+NadTXkhwPgphoPafXgihX35BMPR3cAUiDXSphWZfj
	/6Fx/At6b4ZPmhb6SiRZ1UrDSwn85ORdc464rSbEPCJASVTwn5SbEICKi747fJMfFAfK9YmsSGBA/
	nCfGBen0n0ttglnA3K2sTBP4KnvDAtoTHnAjHJPQVSMZqUbk7N6Y78bacIxe9eIvK8nGIXBU1jeRd
	ZGMd8F0Dl4TirZiGIW0hCREq/hqlpEt5kdeG8htTfM+NJ30tyFvZ57f/pZ0PwPPVRKiJY1IURD9j9
	94LQNSPQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Maxime Ripard <mripard@kernel.org>
Cc: dri-devel@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>,
 Andy Yan <andy.yan@rock-chips.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 62/70] drm/rockchip: vop2: Convert to atomic_create_state
Date: Thu, 27 Aug 2026 15:32:01 +0200
Message-ID: <14080784.uLZWGnKmhe@phil>
In-Reply-To: <20260821-drm-no-more-crtc-reset-v1-62-fb793475c05a@kernel.org>
References: <20260821-drm-no-more-crtc-reset-v1-0-fb793475c05a@kernel.org>
 <20260821-drm-no-more-crtc-reset-v1-62-fb793475c05a@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260827_063219_507014_6E949D9D 
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

QW0gRnJlaXRhZywgMjEuIEF1Z3VzdCAyMDI2LCAxNjozOTozOCBNaXR0ZWxldXJvcMOkaXNjaGUg
U29tbWVyemVpdCBzY2hyaWViIE1heGltZSBSaXBhcmQ6Cj4gVGhlIHJvY2tjaGlwIHZvcDIgY3J0
YyBpbXBsZW1lbnRhdGlvbiBwcm92aWRlcyBhIGN1c3RvbSByZXNldCBob29rLgo+IEhvd2V2ZXIs
IHRoaXMgaG9vayBvbmx5IGFsbG9jYXRlcyB0aGUgc3RhdGUsIGluaXRpYWxpemVzIGl0IHdpdGgK
PiBfX2RybV9hdG9taWNfaGVscGVyX2NydGNfcmVzZXQoKSwgYW5kIGZyZWVzIHRoZSBwcmV2aW91
cyBzdGF0ZS4gSXQKPiBkb2VzIG5vdCBwZXJmb3JtIGFueSBoYXJkd2FyZSByZXNldC4KPiAKPiBT
aW5jZSB0aGlzIGlzIGV4YWN0bHkgd2hhdCB0aGUgYXRvbWljX2NyZWF0ZV9zdGF0ZSBob29rIGlz
IG1lYW50IHRvCj4gZG8sIG1pbnVzIHRoZSBvbGQgc3RhdGUgY2xlYW51cCB3aGljaCB0aGUgY2Fs
bGVyIGhhbmRsZXMsIGNvbnZlcnQgdGhlCj4gaW1wbGVtZW50YXRpb24gdG8gdXNlIGF0b21pY19j
cmVhdGVfc3RhdGUgd2l0aAo+IF9fZHJtX2F0b21pY19oZWxwZXJfY3J0Y19zdGF0ZV9pbml0KCkg
aW5zdGVhZC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNYXhpbWUgUmlwYXJkIDxtcmlwYXJkQGtlcm5l
bC5vcmc+CgoKUmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
