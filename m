Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2915EE9B252
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Feb 2026 11:19:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uDprFCBOd44Rcj66NUrSuu2Icax0vtoSJ37/YRGJYcY=; b=MM2fssmL0LK0Ko
	F4NVWPGcw0OlH8z0k9HbcY2OCdrv+z7hccherozU6QSfvMiMfdstQ2nVQRTkqmpKIupM2yssjhhpu
	7Gu2dR+7GBSi1pw6SAjZrT0vr4pAgT6K5S2b77j/y6m3qtoSxxKjV30GqxQXMcRyoAUgM2zXmdwPk
	O43bXMzRX89PUH+KmaP7/VqNy1RlPZSm119ZKO80a1GzO4rr1fcQeWa/RHJUJfPodZwIqEysYdAz1
	c16cFwLO5kBrK6NMnJJdQIYU87ec3JwPcrzg2BSqb+CxSffC9+Q3rmtPk/xPpKs+9KHYlr66VoV48
	usg19CB3qk9cWNkd+dvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuqRm-00000001xsX-2R1B;
	Tue, 24 Feb 2026 11:19:22 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuqRl-00000001xrc-0OCI
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Feb 2026 11:19:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 255426183D
	for <linux-rockchip@lists.infradead.org>; Tue, 24 Feb 2026 11:19:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC1E7C2BCB1
	for <linux-rockchip@lists.infradead.org>; Tue, 24 Feb 2026 11:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771931959;
	bh=B5BzWRm+eShin5kvq4aIMD1wYheUUZDI+gvled/jh1k=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=ec1Ad9rBGzW4ziKtYVy9VgteB4iquKM5tiiK76ayw7TSXjyfZqSM984jZYB+hudq3
	 4erjiwp9x0G29uYKomhukDaq52V8ENp3Ovj+DXBJPABve4u5c61ycvUxQJ806cbJKU
	 VI4jAUp3pHXtV7FAczbZFyWoB+iucpnPf+BKDMfRy40CE735aUY1/RVSGJJx983Pjg
	 qPn/BfL6zmsJys0v1fTUJAoX+PdhmHpmajUUYj5fy59Bp/gDgnWtmby8+Sm82OApUu
	 WUon+WH9alNLSf3Ig0ngIs8Ub1nLZIQm3yNfrW3h9KwLRLvYEk4y/pTF076Y2AI74M
	 t9I7T49Q2tgdw==
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-5a0fb5ef6e9so367277e87.0
        for <linux-rockchip@lists.infradead.org>; Tue, 24 Feb 2026 03:19:19 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWHaqED/hR44vokss8gIKPTw5GdqZ1GjfcTSQ6X5yro42Gd1q1Cr0iuWI6QwS6uX8hf+35bRqQHsadqp4wfTA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxYwU4KtqC0TiWHENk1ooaNyqL3Jx9xwRD/NtF8Fj+9sJOB9Bw1
	BfWoJVqV7Mu7uvIbhgVY6Mi4gSh79d2VMpmZycqVsYrHATaA95qez3ToGMetpEBJH8bXBAddkD6
	qGHHkSfFdH7YNH7D807SIzbK/SWLq0NA=
X-Received: by 2002:a05:6512:334b:b0:59e:5fc4:26b2 with SMTP id
 2adb3069b0e04-5a0ed83e246mr3961609e87.0.1771931958134; Tue, 24 Feb 2026
 03:19:18 -0800 (PST)
MIME-Version: 1.0
References: <20260215100302.136719-1-work@onurozkan.dev>
In-Reply-To: <20260215100302.136719-1-work@onurozkan.dev>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 24 Feb 2026 19:19:04 +0800
X-Gmail-Original-Message-ID: <CAGb2v65ADpZYcwG+nd6sDE3j-wc7v5LEQft9tkbxDh7C-MnziA@mail.gmail.com>
X-Gm-Features: AaiRm51ME-8YiE4AvLn72GWWw2sauxN-ScuBUrDsWnKr42ng_6yKdEudjebdqcE
Message-ID: <CAGb2v65ADpZYcwG+nd6sDE3j-wc7v5LEQft9tkbxDh7C-MnziA@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] arm64: dts: add missing sram-supply to mali gpu nodes
To: =?UTF-8?Q?Onur_=C3=96zkan?= <work@onurozkan.dev>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-renesas-soc@vger.kernel.org, 
	linux-rockchip@lists.infradead.org
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gU3VuLCBGZWIgMTUsIDIwMjYgYXQgNjowNOKAr1BNIE9udXIgw5Z6a2FuIDx3b3JrQG9udXJv
emthbi5kZXY+IHdyb3RlOgo+Cj4gU29tZSBhcm02NCBNYWxpIEdQVSBEVCBub2RlcyBkZWZpbmUg
bWFsaS1zdXBwbHkgYnV0Cj4gYXJlIG1pc3Npbmcgc3JhbS1zdXBwbHkuCj4KPiBBcyBkaXNjdXNz
ZWQgaW4gWzFdLCBzcmFtLXN1cHBseSBzaG91bGQgYmUgZXhwbGljaXRseQo+IGRlZmluZWQgZm9y
IGFsbCByZWxldmFudCBjb21wYXRpYmxlcy4gSWYgdGhlcmUgaXMgbm8KPiBzZXBhcmF0ZSBTUkFN
IHJhaWwsIGl0IGNhbiByZWZlcmVuY2UgdGhlIHNhbWUgcmVndWxhdG9yCj4gYXMgbWFsaS1zdXBw
bHkuCj4KPiBUaGlzIGNoYW5nZSBhZGRzIHRoZSBtaXNzaW5nIHNyYW0tc3VwcGx5IHByb3BlcnRp
ZXMgdG8KPiBhZmZlY3RlZCBEVCBmaWxlcy4gVGhpcyBhbGlnbnMgRFRzIHdpdGggZXhwZWN0ZWQg
cmVndWxhdG9yCj4gbW9kZWxpbmcgYW5kIGF2b2lkcyByZWx5aW5nIG9uIGltcGxpY2l0IGZhbGxi
YWNrIGJlaGF2aW9yLgo+Cj4gWzFdOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNjAy
MTMxNTU5MzcuNmFmNzU3ODZAbmltZGEvCj4KPiBTaWduZWQtb2ZmLWJ5OiBPbnVyIMOWemthbiA8
d29ya0BvbnVyb3prYW4uZGV2Pgo+IC0tLQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5l
ci9zdW41MGktaDMxMy10YW5peC10eDEuZHRzICAgICAgICAgIHwgMSArCj4gIGFyY2gvYXJtNjQv
Ym9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1oMzEzLXg5NnEuZHRzICAgICAgICAgICAgICAgfCAx
ICsKPiAgYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LWJlZWxpbmstZ3Mx
LmR0cyAgICAgICAgICB8IDEgKwo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41
MGktaDYtb3JhbmdlcGktMy5kdHMgICAgICAgICAgIHwgMSArCj4gIGFyY2gvYXJtNjQvYm9vdC9k
dHMvYWxsd2lubmVyL3N1bjUwaS1oNi1vcmFuZ2VwaS5kdHNpICAgICAgICAgICAgfCAxICsKPiAg
YXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2LXBpbmUtaDY0LmR0cyAgICAg
ICAgICAgICB8IDEgKwo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYt
dGFuaXguZHRzaSAgICAgICAgICAgICAgIHwgMSArCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxs
d2lubmVyL3N1bjUwaS1oNjE2LWJpZ3RyZWV0ZWNoLWNiMS5kdHNpICAgfCAxICsKPiAgYXJjaC9h
cm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2MTYtb3JhbmdlcGktemVybzIuZHRzICAg
ICB8IDEgKwo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYxNi14OTYt
bWF0ZS5kdHMgICAgICAgICAgIHwgMSArCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVy
L3N1bjUwaS1oNjE4LWxvbmdhbi1tb2R1bGUtM2guZHRzaSAgfCAxICsKPiAgYXJjaC9hcm02NC9i
b290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWg2MTgtb3JhbmdlcGktemVybzJ3LmR0cyAgICB8IDEg
Kwo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41MGktaDYxOC1vcmFuZ2VwaS16
ZXJvMy5kdHMgICAgIHwgMSArCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUw
aS1oNjE4LXRyYW5zcGVlZC04azYxOC10LmR0cyAgfCAxICsKPiAgLi4uL2Jvb3QvZHRzL2FsbHdp
bm5lci9zdW41MGktaDcwMC1hbmJlcm5pYy1yZzM1eHgtMjAyNC5kdHMgICAgICB8IDEgKwo+ICBh
cmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41NWktYTUyNy1jdWJpZS1hNWUuZHRzICAg
ICAgICAgIHwgMSArCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjU1aS1oNzI4
LXg5NnFwcm8rLmR0cyAgICAgICAgICAgfCAxICsKPiAgYXJjaC9hcm02NC9ib290L2R0cy9hbGx3
aW5uZXIvc3VuNTVpLXQ1MjctYXZhb3RhLWExLmR0cyAgICAgICAgICB8IDEgKwo+ICBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41NWktdDUyNy1vcmFuZ2VwaS00YS5kdHMgICAgICAg
IHwgMSArCgpXZSBkb24ndCBrbm93IHRoZSBpbnRlcm5hbHMgb2YgdGhlc2UgU29DcywgZXZlbiB0
aG91Z2ggc2FpZCBwb3dlciBpcwpsaWtlbHkgZnJvbSB0aGUgc2FtZSByZWd1bGF0b3IsIGFzIHRo
YXQgcmFpbCBwcm92aWRlcyBwb3dlciB0byBtb3N0Cm9mIHRoZSBTb0MuIEJ1dCBJIHdvdWxkIHJh
dGhlciBub3Qgc3BlY3VsYXRlLgoKSSB0aGluayB0aGVzZSBzeXN0ZW1zIGFyZSBhdCB0aGUgb3Ro
ZXIgZW5kIG9mIHRoZSBzcGVjdHJ1bTogdGhlIHBvd2VyCnJhaWwgZm9yIHRoZSBHUFUgYW5kIHRo
ZSByZXN0IG9mIHRoZSBTb0MgaXMgc2ltcGx5IG5ldmVyIHR1cm5lZCBvZmYuCk5laXRoZXIgaXMg
RFZGUyBhdmFpbGFibGUuIEluIHRoZW9yeSB5b3UgY291bGQgbWFrZSBpdCB3b3JrLCBidXQgdGhl
CnZvbHRhZ2UgcmFuZ2UgaXMgZml4ZWQgc28gdGhlcmUgaXMgbGl0dGxlIHNhdmluZ3MgdG8gYmUg
aGFkLgoKCkNoZW5ZdQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
