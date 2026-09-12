Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CDB1C79FB6
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Sep 2026 12:33:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k1coKe7z+F+tByRd9378duBeYBC6Ey5zUBMowL+z3as=; b=hYqMK/Je9qQqub
	mCwXGmeT6a36XoMTvJgnGZwfl1/Y4bAAXewCkqoEFS8RvFUFb9M/4KY+nM80b2eaX64wCNz8+X5wL
	TiAJMsxQ5M3Zcr4X2wbNqKB/919pAaPzmQFwx5ANkv6JIK2BK1BqwzUAIv1zL8B4s8YjX6sxdTv/x
	uemWf+hLvIvo9Uaj96fTA4XFAP5pjZn02k31LGyMIiBfuhIcA5a19z6qlzKog4XNA6b49BTizz5HS
	zZuLzrqcHRFc7Ly82Fy4HUowYUaGgz7RIiUhfKvdu6wpkieUvwUfkhWMSt8h/0Ql2NqjanEG4sVhz
	Mq8dyrWjla8woyEoAXDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5Mv3-00000000rl1-1lez;
	Sat, 12 Sep 2026 12:33:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5Mv0-00000000riE-3iYI;
	Sat, 12 Sep 2026 12:33:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Fv7tj6aG8jAawVe8iLzkv+Y6H9ZiYdHzOwXKk3pLt+A=; b=0nwgTC0r4UbwJjdY6W4Hyd3tO6
	s62DWq4AZit8moZw4HOICLlyD6ZEVDDksbgZo5P2q/U0SP/8CvkfXVSjKjsE+gMTVF9UyyT67Ur0C
	x8rYYoNDyk3ahNVczWODpy4kvCBC2XuxQVCrcsY5eC5AFI7lr9lXTj4kB09gcv5cpXKG8t/GzDdpj
	6N4uU6vmWI1N/MgkdGvI1ziSMQ8umzZIF0FzM1lIs56EYkvM8TMDvWAny/GQBVni8XuLaeFQ5dNnn
	/6w6DJd6jPLBt1KpmXiACZ0qMJbPMCXZy7MOapqqyMZEtYrQvspHn0iLJ9FeSYuuySQ0OjuN+WSm0
	MJWif9Bw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Chaoyi Chen <kernel@airkyi.com>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>
Subject: Re: [PATCH v4 1/3] drm/rockchip: dsi: Add maximum per lane bit rate
 calculation
Date: Sat, 12 Sep 2026 14:32:56 +0200
Message-ID: <9674763.CDJkKcVGEf@phil>
In-Reply-To: <20260812073002.328-2-kernel@airkyi.com>
References: <20260812073002.328-1-kernel@airkyi.com>
 <20260812073002.328-2-kernel@airkyi.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260912_053318_986253_DD667CC7 
X-CRM114-Status: UNSURE (   9.68  )
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

QW0gTWl0dHdvY2gsIDEyLiBBdWd1c3QgMjAyNiwgMDk6MzA6MDAgTWl0dGVsZXVyb3DDpGlzY2hl
IFNvbW1lcnplaXQgc2NocmllYiBDaGFveWkgQ2hlbjoKPiBGcm9tOiBDaGFveWkgQ2hlbiA8Y2hh
b3lpLmNoZW5Acm9jay1jaGlwcy5jb20+Cj4gCj4gRGlmZmVyZW50IGNoaXBzIGhhdmUgdmFyeWlu
ZyBzdXBwb3J0IGZvciB0aGUgbWF4aW11bSBiaXQgcmF0ZSBwZXIgbGFuZS4KPiAKPiBBZGQgY2Fs
Y3VsYXRpb24gZm9yIHRoZSBtYXhpbXVtIHBlciBsYW5lIGJpdCByYXRlIGZvciB2YXJpb3VzIGNo
aXAKPiBwbGF0Zm9ybXMuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hhb3lpIENoZW4gPGNoYW95aS5j
aGVuQHJvY2stY2hpcHMuY29tPgoKWy4uLl0KCj4gQEAgLTU3Myw2ICs1NzQsNyBAQCBkd19taXBp
X2RzaV9nZXRfbGFuZV9tYnBzKHZvaWQgKnByaXZfZGF0YSwgY29uc3Qgc3RydWN0IGRybV9kaXNw
bGF5X21vZGUgKm1vZGUsCj4gIAl1bnNpZ25lZCBsb25nIF9mYmRpdiwgYmVzdF9mYmRpdjsKPiAg
CXVuc2lnbmVkIGxvbmcgbWluX2RlbHRhID0gVUxPTkdfTUFYOwo+ICAKPiArCW1heF9tYnBzID0g
ZHNpLT5jZGF0YS0+bWF4X2JpdF9yYXRlX3Blcl9sYW5lIC8gVVNFQ19QRVJfU0VDOwoKQXMgdGhl
IHZhbHVlIGlzIGNhbGxlZCBtYXhfYml0X3JhdGVfcGVyX2xhbmUsIEkgZ3Vlc3MgU2FzaGlrbwpp
cyBjb3JyZWN0IGluIHRoYXQgdGhlIG1heF9tYnBzIGNoZWNrIHNob3VsZCB1c2UgIjw9IiA/CgoK
SGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
