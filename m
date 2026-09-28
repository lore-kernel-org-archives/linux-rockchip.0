Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB640CA5FA2
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Sep 2026 12:03:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SwC/BnrPuMnMLTDDC0qrp9Sn+/SX9sEQAFubOFpUO4s=; b=HF1y4l4NyzQFeA
	uHn/6ljVxmfYLUJTzExo/xYdE1Sn2/kExaA4o5BNnyTnrwHD36jF33y+/onamjhsoBN0P3jVBo9y/
	fAJaJpQLFd8imXmIdLnqSqt0JKzwXLTl/s6WjU8cXbaqKSdSLjoAY6oRsLLdkU2mwYiFoq3kU4+31
	iM/UvFSFNnwrbOBtp8UVuJhOuUMdVQVK5hHWCTympzHc6YC/U+jV06nu4W+0Dos2sxQLzu/GIWewD
	JkuR7HfgyQ3JUhwjpGIJKsQBukpPQaKRYnruOFkiLCiuS04VLOMMmP97KNcQVgqvIA2J9zIs5//Jr
	G87LzeZnDNa5lOAg3axA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBA4o-00000000WKs-463g;
	Mon, 28 Sep 2026 12:03:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBA4m-00000000WK6-0bFH;
	Mon, 28 Sep 2026 12:03:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=JS5dd5f9mWNpybqKgfuEd/QJ8IUXo+CpfbvRDEoiIGk=; b=ECHJ3cZwUWSupvEzyzR1mPXOLK
	VK19JixYTDfT7fybYoFw9vuFW0SbnORD4Y9j8GdDG9U0x9ll+cMggmyyksZSibgyPky0jIZd9+52W
	0htIfPxgQIkqF1zy95076+JaRF1wxQO8It9j4Ch+hEUzB/qGtobQbbooz+Of3zfmBVp9BCNTCcS5f
	oZ/fo1tAlJA8vAJQG+hv1+g2hi8sxj6JDQmpbtgP6RN9UCZa2dRfAR4rfB4nuQ/Itfbs3LLphZKk8
	UjHJNwa39/cTltFE+yjkzF6teFeYb8PsICQ/fTQpmq2Zx1djAdWIYGQsCxAErGU/HHsafXnccJO4L
	ocKRP2tA==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jingoo Han <jingoohan1@gmail.com>, Inki Dae <inki.dae@samsung.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Peter Griffin <peter.griffin@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Damon Ding <damon.ding@rock-chips.com>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v3 00/14] Add HPD support for Rockchip Analogix DP
Date: Mon, 28 Sep 2026 14:02:34 +0200
Message-ID: <3772572.AiC22s8V5E@diego>
In-Reply-To: <20260928081418.3605775-1-damon.ding@rock-chips.com>
References: <20260928081418.3605775-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_050320_351369_A3CF2BB6 
X-CRM114-Status: GOOD (  10.41  )
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

SGkgRGFtb24sCgpBbSBNb250YWcsIDI4LiBTZXB0ZW1iZXIgMjAyNiwgMTA6MTQ6MDQgTWl0dGVs
ZXVyb3DDpGlzY2hlIFNvbW1lcnplaXQgc2NocmllYiBEYW1vbiBEaW5nOgo+IFJlYmFzZSBhZnRl
ciB0aGUgZm9sbG93aW5nIHR3byBwYXRjaCBzZXJpZXM6Cj4gWzBdIGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL2FsbC8yMDI2MDkxNS1kcm0tYnJpZGdlLWRybV9wYW5lbC1jbGVhbnVwLXY0LTAtMzA0
MDFkOTQwNmYzQGJvb3RsaW4uY29tLwo+IFsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwv
MjAyNjA5MTYtZHJtLWJyaWRnZS1ldmVyeS1wYW5lbC12My0wLTgzYWZiNGYxYTcwN0Bib290bGlu
LmNvbS8KPiAKPiBUaGlzIHNlcmllcyBpbXByb3ZlcyB0aGUgSFBEIChIb3RwbHVnIERldGVjdCkg
aW50ZXJydXB0IGhhbmRsaW5nIGluCj4gdGhlIEFuYWxvZ2l4IERQIGRyaXZlciB0byBlbmFibGUg
cmVsaWFibGUgbmF0aXZlIEhQRCBwaW4gZGV0ZWN0aW9uIG9uCj4gUm9ja2NoaXAgcGxhdGZvcm1z
LCBhbmQgaW50cm9kdWNlcyBwbGF0Zm9ybS1zcGVjaWZpYyBIUEQgZGV0ZWN0aW9uCj4gc2NoZW1l
cyB3aXRoIGZpbmUtZ3JhaW5lZCBpbnRlcnJ1cHQgY29udHJvbC4KCgpvbiBteSBlRFAgcGFuZWwg
d2l0aCBncGlvLWhvdHBsdWcgdmlhIHRoZSBkcC1jb25uZWN0b3IgYXMgYmVmb3JlLCBJIGdldAph
IHN1Y2Nlc3NmdWwgZGlzcGxheSBvdXRwdXQgZXZlbiBvbiBib290LgoKLSBwbHVnZ2VkIGluIG9u
IGJvb3QgLSBkaXNwbGF5IHdvcmtzIC8gcmVwb3J0ZWQgYXMgY29ubmVjdGVkCiAgICAtIHBsdWdn
ZWQgb3V0IC0gY29ycmVjdGx5IHJlcG9ydGVkIGFzIGRpc2Nvbm5lY3RlZAogICAgLSBwbHVnZ2Vk
IGluIGFnYWluIC0gZGlzcGxheSB3b3JrcyAvIHJlcG9ydGVkIGFzIGNvbm5lY3RlZAoKLSB1bnBs
dWdnZWQgb24gYm9vdCAtIGNvcnJlY3RseSByZXBvcnRlZCBhcyBkaXNjb25uZWN0ZWQKICAgIC0g
cGx1Z2dlZCBpbiAtIGRpc3BsYXkgd29ya3MgLyByZXBvcnRlZCBhcyBjb25uZWN0ZWQKCk11bHRp
cGxlIHBsdWdpbi9wbHVnb3V0IG9wZXJhdGlvbnMgYWZ0ZXJ3YXJkcyBhbHNvIHdvcmtlZCBuaWNl
bHkuCgpTbwpUZXN0ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgpXaWxs
IGRvIHJldmlld2luZyBvZiBwYXRjaGVzIG5vdyA7LSkKCgpUaGFua3MgZm9yIHdvcmtpbmcgb24g
dGhhdApIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
