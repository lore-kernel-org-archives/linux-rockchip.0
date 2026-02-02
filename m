Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD075E7DEF7
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Feb 2026 15:59:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:References:In-Reply-To:
	Message-Id:Cc:To:From:Date:MIME-Version:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IO/0vTzU1df1wVkD0vIzMrhDhbGFSmzGkm6m87qHQ2Q=; b=Li8721+HwK4vqPvoUxJKC+cR3W
	HqIqFFb+QzGoR89Dmk1U9u5nad6k8fph8GLze/oPY8PWIY/dxRJ9D9N5i2L3MKmjAi24t6vhH5wVY
	bAlzQtRSBBKC5l5+4Te8k+s2yD/c7ErNI8NUrDUfrBCyDuaPy1XLcRsQVhNCSF1WZ3SyzjOjpB1H+
	ATPYzhle+PrUNf0UcDI4ofAdJ6AXpOGCB8Y5c8Cmu0m6TiS2iGrQF4sORDQf6p/t7G05BNqYC7BA0
	4w4PaGGYNNevugxRxzW8QAKW5DJ1OAQR01n29flsubigcEeeyj1g0Z7Qn3w7RSwFhgdRXNbZJ9TbI
	3wdouh8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmwKv-00000005FRe-1dgQ;
	Mon, 02 Feb 2026 15:59:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmwKt-00000005FQ3-0g66;
	Mon, 02 Feb 2026 15:59:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Subject:References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=CFuW6+SYNh7gkCorL0UhMyQbcABqAcuxQVYw4LykYQU=; b=MI45/1NJi5RFjkT562cU961Rdl
	4XFkoTk48KHt3plWSsvkgMz/7yMVLskBdb9AMv+QlFg5OHbXbX1ZWpJVIOQHV1JfqhfvVvGoCWLZO
	K0diZlxOgAVZrATfjVvJRUIWlqqiyIA4V0642g6jSgoyI4GHA+WTEiWBpU0+u5SaGwpUH7ySZh/h2
	eZriloiH9TSoLHIiRLB4Db64ZbNa74moX1LfaTVGIGMoGvj0Gl7pbz8EQwcv4mpOFdcLCxl1Jy/ca
	bgQMK0RJfDw74eChkqMJ0FtZCuQbL+VngDHwQtUo8BsWRHF6N1F/tGU1XS6s+It5BhwYkpHqcort/
	ZYzxA1gg==;
Received: from fhigh-b7-smtp.messagingengine.com ([202.12.124.158])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmwKo-0000000EmL2-3cSB;
	Mon, 02 Feb 2026 15:59:33 +0000
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 7E5457A0068;
	Mon,  2 Feb 2026 10:59:27 -0500 (EST)
Received: from phl-imap-02 ([10.202.2.81])
  by phl-compute-04.internal (MEProxy); Mon, 02 Feb 2026 10:59:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1770047967;
	 x=1770134367; bh=CFuW6+SYNh7gkCorL0UhMyQbcABqAcuxQVYw4LykYQU=; b=
	orEsDRtU1gDGHSbdC5hdMI8RLoa1hDSnwJ594ntuXcpHjbfSFbvTWWiGYsP7SOW2
	1xJFklUbN9F1reQLTNpRX8WVvy5EOSIqatqlsZ0jbs6TDMB1P7gbwy3+GU7ZSgCH
	bwGcaCDcoChT8wVHuDBBF+RnqKFguVHScgKzuyEgsuAZ3jUfqeTAX366/q85JdoO
	od0CvrJBgLy1TRsBk2Ez2i7csMmBE6iVpiSjeNJvDh7jhleLSpLZxYNnGnfzqvnJ
	KsAdu3NdMoDCYbGaaR23nno1dxDEnaKzbclTuqO5bPKxh5bgtZOM36omeYQLAsfa
	A0cwDZaVYyZSVIWb4lMecg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1770047967; x=
	1770134367; bh=CFuW6+SYNh7gkCorL0UhMyQbcABqAcuxQVYw4LykYQU=; b=U
	m6RrgXROEiISQIivZw8LODtYS7lSVOO4jz/w5k2cgunNYxvrORvxkfVX1/Pa9pwV
	DDGtEkDuiT6IY3BnprS0TZcSMHwYl1TCml59W1vwNc16zJxgx+yIjpElQ2qIBNhM
	tmrT3wnQ6Wi0ERg75mY8cWP7YxD4lNlcnDxMWfxk5B6Sp398xPpyqWkYWbBvqPuF
	eg4V8xm7iqhbtjuyD7XUNybNynv+hKXV60sff0Rgw2uVIjtUIMnOMvLT6+4Nw4QE
	zRFuxMgW5V0Czz7f7uER7YrXgWHoaNvxjNFNtOsrt3hKMM96YMFL6WL6ip855KZi
	6YtsjV94hz8TCjkrrzikw==
X-ME-Sender: <xms:3smAaVsA-DXhM0iN7KEj0HUttcdIp49754Nlk3PB_jXz83lQ6uCXnQ>
    <xme:3smAaZS8XOQmdYSdzrV7ZvToN3NJfONYprIUhw_P4aMKOlu2JS3YADOO-k3hyE594
    bvdcVtQpsStjb4R2bu1VQ-o8slAtHRkGLteyJ1xWpHrVLBxqIEbmsid>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddujeektdeiucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepofggfffhvfevkfgjfhfutgfgsehtqhertdertdejnecuhfhrohhmpedftehrnhgu
    uceuvghrghhmrghnnhdfuceorghrnhgusegrrhhnuggsrdguvgeqnecuggftrfgrthhtvg
    hrnhepvdfhvdekueduveffffetgfdvveefvdelhedvvdegjedvfeehtdeggeevheefleej
    necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheprghrnh
    gusegrrhhnuggsrdguvgdpnhgspghrtghpthhtohepudeipdhmohguvgepshhmthhpohhu
    thdprhgtphhtthhopeguvghtlhgvvhdrtggrshgrnhhovhgrsegtohhllhgrsghorhgrrd
    gtohhmpdhrtghpthhtohepnhhitgholhgrshdrughufhhrvghsnhgvsegtohhllhgrsgho
    rhgrrdgtohhmpdhrtghpthhtohepnhhitghkrdguvghsrghulhhnihgvrhhsodhlkhhmlh
    esghhmrghilhdrtghomhdprhgtphhtthhopehjuhhsthhinhhsthhithhtsehgohhoghhl
    vgdrtghomhdprhgtphhtthhopehmohhrsghosehgohhoghhlvgdrtghomhdprhgtphhtth
    hopegrrhhnugeskhgvrhhnvghlrdhorhhgpdhrtghpthhtohephhhvvghrkhhuihhlodgt
    ihhstghosehkvghrnhgvlhdrohhrghdprhgtphhtthhopehmtghhvghhrggssehkvghrnh
    gvlhdrohhrghdprhgtphhtthhopehnrghthhgrnheskhgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:38mAadPIQbkXVjhXUP6FVvG4qEX1nPzoObNfxbzLSyO6ZtoP8qn6hQ>
    <xmx:38mAacTddcWAcNjiYKqE7C8scRY_xtifCm_6kW6212CPazmRqIFmtA>
    <xmx:38mAad4mExsk0iZ-3UNId6lpI-EVjYRdfv0Uyu8ViW3b2XNE0I7qng>
    <xmx:38mAaW2__12zEA63PN0Lk2eLwD0b3oEdC95Tm2xhB1dXNEHSbwJ-tA>
    <xmx:38mAaV4weXH7dTtfTqrQZdBXEgbLv2B6P6WsCwSk36Z0IwmLu_jeYjcJ>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id DE73E700065; Mon,  2 Feb 2026 10:59:26 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: Ad03WE3-YZeR
Date: Mon, 02 Feb 2026 16:59:05 +0100
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Nicolas Dufresne" <nicolas.dufresne@collabora.com>,
 "Arnd Bergmann" <arnd@kernel.org>,
 "Detlev Casanova" <detlev.casanova@collabora.com>,
 "Ezequiel Garcia" <ezequiel@vanguardiasur.com.ar>,
 "Mauro Carvalho Chehab" <mchehab@kernel.org>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 "Nathan Chancellor" <nathan@kernel.org>,
 "Hans Verkuil" <hverkuil+cisco@kernel.org>
Cc: "Nick Desaulniers" <nick.desaulniers+lkml@gmail.com>,
 "Bill Wendling" <morbo@google.com>, "Justin Stitt" <justinstitt@google.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 llvm@lists.linux.dev
Message-Id: <070cebc8-3cab-4f32-a203-9456506dfcc5@app.fastmail.com>
In-Reply-To: <da9f044152383cacd50989b025fdce08a654bbe3.camel@collabora.com>
References: <20260202094804.1231706-1-arnd@kernel.org>
 <16baade123f563ea92e6117bf78c56e8617daf14.camel@collabora.com>
 <3b89635f-1c1c-4e4e-b0a9-2bbd0f21bc90@app.fastmail.com>
 <da9f044152383cacd50989b025fdce08a654bbe3.camel@collabora.com>
Subject: Re: [PATCH 1/2] media: rkvdec: reduce excessive stack usage in
 assemble_hw_pps()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260202_155931_670064_7A23405D 
X-CRM114-Status: GOOD (  24.83  )
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

T24gTW9uLCBGZWIgMiwgMjAyNiwgYXQgMTY6MTIsIE5pY29sYXMgRHVmcmVzbmUgd3JvdGU6Cj4g
TGUgbHVuZGkgMDIgZsOpdnJpZXIgMjAyNiDDoCAxNTowOSArMDEwMCwgQXJuZCBCZXJnbWFubiBh
IMOpY3JpdMKgOgo+PiBPbiBNb24sIEZlYiAyLCAyMDI2LCBhdCAxNDo0MiwgTmljb2xhcyBEdWZy
ZXNuZSB3cm90ZToKCj4+IFJpZ2h0LCB0aGlzIHJhbmRjb25maWcgYnVpbGQgbGlrZWx5IGdvdCBj
bG9zZXIgdG8gdGhlIHdhcm5pbmcKPj4gbGltaXQgYmVjYXVzZSBvZiB0aGUgaW5oZXJlbnQgb3Zl
cmhlYWQgaW4gS0FTQU4sIGJ1dCB0aGUgcHJvYmxlbQo+PiB3aXRoIHRoZSB1bmFsaWduZWQgYml0
ZmllbGRzIHdhcyBzb21ldGhpbmcgdGhhdCBJIGNvdWxkIGxhdGVyCj4+IHJlcHJvZHVjZSB3aXRo
b3V0IEtBU0FOLCBvbiBBUk12NSBhbmQgTUlQUzMycjIuCj4+IAo+PiBUaGlzIGlzIHNvbWV0aGlu
ZyB3ZSBzaG91bGQgZml4IGluIGNsYW5nLgo+Cj4gQWxsIGZhaXIgY29tbWVudHMuIEkgcGxhbiB0
byB0YWtlIHRoaXMgaW50byBmaXhlcyAobm8gY2hhbmdlcyBuZWVkZWQpLCBob3BlZnVsbHkKPiBm
b3IgcmMtMi4KPgo+IFBlcmZvcm1hbmNlIHdpc2UsIHRoaXMgY29kZSBpcyB0byByZXBsYWNlIHJl
YWQvbWFzay93cml0ZSBpbnRvIGhhcmR3YXJlCj4gcmVnaXN0ZXJzIHdoaWNoIHdhcyBzaWduaWZp
Y2FudGx5IHNsb3dlciBmb3IgdGhpcyBhbW91bnQgb2YgcmVnaXN0ZXJzICh+MjAwCj4gMzJiaXQg
aW50ZWdlcnMpIGFuZCB0aGlzIHR5cGUgb2YgSVAgKGl0cyBub3Qgc3JhbSkuIFRoaXMgaXMgcnVu
IG9uY2UgcGVyIGZyYW1lLgo+IEluIHByYWN0aWNlLCBpZiB3ZSBoYW5kIGNvZGUgdGhlIHJlYWQv
bWFzay93cml0ZSwgdGhlIHBlcmZvcm1hbmNlIHNob3VsZAo+IGV2ZW50dWFsbHkgY29udmVyZ2Ug
dG8gdXNpbmcgYml0ZmllbGQgYW5kIGxldHRpbmcgdGhlIGNvbXBpbGVyIGRvIHRoaXMgbWFza2lu
ZywKPiBJIHdhcyBiZWluZyBvcHRpbWlzdGljIG9uIGhvdyB0aGUgY29tcGlsZXIgd291bGQgYmVo
YXZlLiBJZiBwZXJmb3JtYW5jZSBvZiB0aGF0Cj4gaXMgdHJ1bHkgYSBwcm9ibGVtLCB3ZSBjYW4g
YWx3YXlzIGp1c3QgcHJlcGFyZSB0aGUgcmFtIHJlZ2lzdGVyIGFoZWFkIG9mIHRoZQo+IG9wZXJh
dGlvbiBxdWV1ZSAoaW5zdGVhZCBvZiBkb2luZyBpdCBpbiB0aGUgZXhlY3V0b3IpLgoKSSB0aGlu
ayB0aGVyZSBhcmUgbXVsdGlwbGUgdGhpbmdzIGdvaW5nIG9uIGhlcmUsIHNvbWUgb2Ygd2hpY2gg
YXJlCm1vcmUgcmVsZXZhbnQgdGhhbiBvdGhlcnM6CgogLSBUaGUgcHJvYmxlbSBJJ20gYWRkcmVz
c2luZyB3aXRoIG15IHBhdGNoIGlzIHB1cmVseSBhIGNsYW5nIGlzc3VlCiAgIGZvciBDUFUgYXJj
aGl0ZWN0dXJlcyB3aXRoIGhpZ2ggcmVnaXN0ZXIgcHJlc3N1cmUgd2hlbiBhc3NlbWJsaW5nCiAg
IHRoZSBzdHJ1Y3R1cmUgaW4gbWVtb3J5LiBBcyBhIGZpcnN0LW9yZGVyIGFwcHJveGltYXRpb24s
IHlvdSBjYW4KICAgc2VlIHRoZSBsaW5lcyBpbiB0aGUgb3V0cHV0IGJlaW5nIDEyLjAwMCB3aXRo
IGNsYW5nLCBidXQgb25seQogICA2MDAgd2l0aCBnY2MgaW4gdGhlIGdvZGJvbHQub3JnIG91dHB1
dC4gVGhlIGdjYyB2ZXJzaW9uIGlzbid0IHRoYXQKICAgZ3JlYXQgZWl0aGVyLCBidXQgaXQgaXMg
b3JkZXJzIG9mIG1hZ25pdHVkZSBmZXdlciBpbnN0cnVjdGlvbnMuCgotICBNTUlPIHJlYWRzIGFy
ZSBjbGVhcmx5IGEgcGVyZm9ybWFuY2Uga2lsbGVyLCBzbyBhc3NlbWJsaW5nIHRoZQogICBzdHJ1
Y3R1cmUgaW4gbWVtb3J5IGFuZCB1c2luZyBtZW1jcHlfdG9pbygpIHRvIGFjY2VzcyB0aGUKICAg
cmVnaXN0ZXJzIGFzIHlvdSBhcHBlYXIgdG8gIGJlIGRvaW5nIGlzIHRoZSByaWdodCBpZGVhLgoK
IC0gdXNpbmcgYml0ZmllbGRzIGZvciBoYXJkd2FyZSBzdHJ1Y3R1cmVzIGlzIG5vbi1wb3J0YWJs
ZS4gSW4KICAgcGFydGljdWxhciwgdGhlIG9yZGVyIG9mIHRoZSBmaWVsZHMgd2l0aGluIGEgd29y
ZCBkZXBlbmRzIG9uCiAgIGJ5dGVvcmRlciAoQ09ORklHX0NQVV9CSUdfRU5ESUFOKSwgYW5kIHRo
ZSBhbGlnbm1lbnQgZGVwZW5kcwogICBvbiB0aGUgYXJjaGl0ZWN0dXJlLCBlLmcuICdzdHJ1Y3Qg
eyB1MzIgYToxNjogdTMyIGI6IDMyOyB1MzIgYzoxNn07CiAgIGhhcyB0aGUgc2Vjb25kIG1lbWJl
ciBjcm9zcyBhIHUzMiBib3VuZGFyeSwgd2hpY2ggbGVhZHMgdG8KICAgcGFkZGluZyBiZXR3ZWVu
IGEgYW5kIGIsIGFzIHdlbGwgYXMgYWZ0ZXIgYyBvbiBzb21lIGFyY2hpdGVjdHVyZXMKICAgYnV0
IG5vdCBvdGhlcnMuIEkgd291bGQgYWx3YXlzIHJlY29tbWVuZCBzcGxpdHRpbmcgdXAgYml0Zmll
bGRzCiAgIG9uIHdvcmQgYm91bmRhcmllcyBhbmQgYWRkaW5nIGV4cGxpY2l0IHBhZGRpbmcgd2hl
cmUgbmVjZXNzYXJ5LgoKIC0gU2luY2UgbW9zdCBvZiB0aGUgZmllbGRzIGFyZSBleGFjdGx5IDYg
Yml0cyBvZmZzZXQgZnJvbSBhIHdvcmQKICAgYm91bmRhcnksIHlvdSBjYW4gdHJ5IGFzc2VtYmxp
bmcgYWxsIHRoZSAgKl9maWVsZF9vcmRlcl9jbnQqCiAgIGZpZWxkcyBpbiBhbiBhcnJheSBmaXJz
dCB0aGF0IGhhcyBhbGwgdGhlIGJpdHMgaW4gdGhlIGNvcnJlY3QKICAgb3JkZXIsIGJ1dCB0aGVu
IHNoaWZ0IHRoZSBlbnRpcmUgYXJyYXkgc2l4IGJpdHMuCgogICAgICBBcm5kCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
