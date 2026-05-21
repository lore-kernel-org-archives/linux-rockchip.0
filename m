Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FC2FCD5BAC
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 May 2026 09:41:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yGbQnNdrIP7hg5Z6EsluqcOGxe0fj5SddZNcqX5+6mQ=; b=CSXk3RfiGoaYVE
	vUZHR+3jEk/UGpb5N1RLqTfqF43piE3lIPVOhOLkLZhs9u7RHRqbdrXjHqAWCbrO7068bWGyf+A/r
	ck/ctWaWWEChXKn6bm3P8UUxpZZgPJwOujjViKOp1Pwzp/F/N0yPT1z5lXeeFuCSKKm6hVV6BUwHr
	EYT97ufsSJKGSs5Qe+eOfIjVqAtDaRhDMhzso00u06rRhlLA5aLnCQj6BDy8j8jgO0Loqjj/ukJoj
	F1tLOqRRqc4Rb1Y1hyCsJx0CIo2+DK/QdsXoJFlDH6S5stgJgiD0s07rT3bJKk9uqanfgPblIapd/
	qhqaqB9wvUhGw5Redt/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPztk-00000007L0t-0979;
	Thu, 21 May 2026 09:41:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPzti-00000007L02-19Zd;
	Thu, 21 May 2026 09:40:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=FVUeWlKKpdLIZvOOLJnl3h9BUHCCwQDUhwgZkOAnPCw=; b=egc7+pmFKxo9bXuGpGKaODVu3c
	mInxx6dPQ5IWFQ5XLFIMeAvngzaZwCRkpWjbw4o0Vbr84YasEymd02U5+/aenR1B7qNm1ozn/294+
	7xX9kzv9kJcE1QgREU7dUHnDu+aO5shFIN/vyUl0PAVRh/losQwesRsQF+4Z8vHy79tusnVCe4KCn
	jryUgY8KouDTZAhJKHpRWtlre4uIcYbBog+8gsgAyAH0zF+KjS3b5HDdEYus5x9nhHVjyXT2ZwCqg
	LgPmP1CmSK04D/2jnqNMsSK8JatYzo2bfhiPhdB0Csca4gn1bd7s6ptPPqY/R5DsVhzdkXVMgIc+A
	XeujQ25w==;
From: Heiko Stuebner <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Jonas Karlman <jonas@kwiboo.se>, Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH v2 00/11] drm/rockchip: dw_hdmi: Misc cleanup and propagate bus
 format
Date: Thu, 21 May 2026 11:40:48 +0200
Message-ID: <5220966.G96rZvMJ2N@phil>
In-Reply-To: <20260518193748.2482823-1-jonas@kwiboo.se>
References: <20260518193748.2482823-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_024058_310546_A604A67D 
X-CRM114-Status: UNSURE (   9.60  )
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

QW0gTW9udGFnLCAxOC4gTWFpIDIwMjYsIDIxOjM3OjM0IE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21t
ZXJ6ZWl0IHNjaHJpZWIgSm9uYXMgS2FybG1hbjoKPiBUaGlzIHNlcmllcyBpbmNsdWRlIG1pc2Mg
Y2xlYW51cCBvZiB0aGUgZHdoZG1pLXJvY2tjaGlwIGRyaXZlciBhbmQKPiBwcmVwYXJlcyBmb3Ig
ZnV0dXJlIHN1cHBvcnQgb2YgWUNiQ3Igb3V0cHV0IGFuZCBEZWVwIENvbG9yIG1vZGVzLgo+IAo+
IFBhdGNoIDEtNyBjbGVhbnVwIGFuZCBjaGFuZ2VzIHRvIHVzZSBkcm1yZXMgaGVscGVycyBmb3Ig
dGhlIGVuY29kZXIuCj4gUGF0Y2ggOCBwcmVwYXJlIGZvciB1c2Ugb2YgYSBkaXNwbGF5LWNvbm5l
Y3RvciBicmlkZ2UgZm9yIFJLMzU2OC9SSzM1NjYuCj4gUGF0Y2ggOS0xMCBwcmVwYXJlcyBmb3Ig
ZnV0dXJlIHN1cHBvcnQgb2YgWUNiQ3IgYW5kIERlZXAgQ29sb3IgbW9kZXMuCj4gUGF0Y2ggMTEg
Y2hhbmdlcyB0byB1c2UgcmVzdW1lX2Vhcmx5IHBtIG9wcyBmb3Igc3lzdGVtIHN1c3BlbmQuCj4g
Cj4gVGhpcyBzZXJpZXMgZGVwZW5kcyBvbiB0aGUgcGF0Y2ggImRybS9yb2NrY2hpcDogZHdfaGRt
aTogYXZvaWQgZGlyZWN0Cj4gZGVyZWZlcmVuY2Ugb2YgcGh5LT5kZXYub2Zfbm9kZSIgWzFdIGZy
b20gdGhlIHNlcmllcyAiU3BsaXQgR2VuZXJpYyBQSFkKPiBjb25zdW1lciBhbmQgcHJvdmlkZXIg
QVBJIiBbMl0uCj4gCj4gWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXBoeS8yMDI2
MDUwNTEwMDUyMy4xOTIyMzg4LTE2LXZsYWRpbWlyLm9sdGVhbkBueHAuY29tLwo+IFsyXSBodHRw
czovL2xvcmUua2VybmVsLm9yZy9saW51eC1waHkvMjAyNjA1MDUxMDA1MjMuMTkyMjM4OC0xLXZs
YWRpbWlyLm9sdGVhbkBueHAuY29tLwoKV2l0aCBWbGFkaW1pcidzIGFncmVlbWVudCwgSSd2ZSBw
dWxsZWQgdGhhdCBwYXRjaCBvdXQgb2YgdGhlIHBoeS1zZXJpZXMKYW5kIGFwcGxpZWQgaXQgdG8g
ZHJtLW1pc2MtbmV4dCAtIGFzIGl0J3MgYSBjaGFuZ2UgdGhhdCBjYW4gc3RhbmQgb24KaXRzIG93
bi4KClNlcmllczoKVGVzdGVkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPiAj
cmszMzI4CgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
