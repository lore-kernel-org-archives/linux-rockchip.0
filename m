Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CB36C87FD2
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Aug 2025 09:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DiuE0DaWSGn2BPwJbR3pf3ycdWU95UHaujuamIxP074=; b=vzwWrwFKwp69dR
	L3oahZaeojc8h9LQhA4i8g2GvoKWPXHuMjh0K55ehI7qSDYy8V9ysJ8ClORml4wKURJZUdfPqI/6S
	fVpT7bwKZW8qeOW38xCvVDF08SlSxLb06SokI+S1h2L8T//LrVkFrDcZm2KihVNfTQvqFsmLBq6Vi
	PgEFBhjjrrVBd6NlmfzV4Y+VYqZV8UDsUaPYe21606KPGMpZbmTIyt1v1uSDhHkbhSh/hehyNJxel
	yQOWed5aqDlmOAVAi6W6RRD2+p82m4iwl7DpSz437i2P02qpME7nDjwhn6gvcGlDUTvrUs6iQ5Klu
	IbuL6gs1U8NPgB4tJhSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulPGH-00000007FB7-0yAp;
	Mon, 11 Aug 2025 09:56:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulPGB-00000007F9Z-2QkY;
	Mon, 11 Aug 2025 09:56:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Xdzi6B8uhEDOjcvSLgClkb9Tis7D4GnuKNk7eRpcdEE=; b=S+j3TNnDepfKpc5RHT5HClyO0C
	cCSH2YmsWGanIkopeLLLkp0ShOHzxQx8IfLHUcz/EOgnHVAaC96bSTouLa2SsLbtl8N3wzBXFZUkU
	Wd/QHZKQkbgt8yx5xFEJ73aGqbrfo/PoOUjfsXABqV66uq8DjtjO6T3jUGNxQS0s2vW8wF4EuWS9T
	8yoVS9Xc48BN8Q0U745K8yzX4fIA397RvihK2z8VxHCTEG/GWqXpVwZ//jl4m91etWMPNqmirxjxk
	8U1gAGMRG5NF5wxNiJMUbXtz7ndq3QQ/vnz/Zo4ZUV8hj7OR5JUAUyZ/Xu31neZtS2Q+palkdFA4h
	9wSiwbWw==;
Received: from i53875a0c.versanet.de ([83.135.90.12] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ulPG5-0008OT-Hr; Mon, 11 Aug 2025 11:56:01 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: linux-kernel@vger.kernel.org,
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: Detlev Casanova <detlev.casanova@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 kernel@collabora.com
Subject: Re: [PATCH v2 00/12] media: rkvdec: Add support for VDPU381 and VDPU383
Date: Mon, 11 Aug 2025 11:56:00 +0200
Message-ID: <11040209.aFP6jjVeTY@diego>
In-Reply-To: <20250808200340.156393-1-detlev.casanova@collabora.com>
References: <20250808200340.156393-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_025607_638798_0ED76580 
X-CRM114-Status: GOOD (  19.95  )
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

SGkgRGV0bGV2LAoKQW0gRnJlaXRhZywgOC4gQXVndXN0IDIwMjUsIDIyOjAzOjIyIE1pdHRlbGV1
cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgRGV0bGV2IENhc2Fub3ZhOgo+IFRoZXNlIHZh
cmlhbnRzIGFyZSBmb3VuZCByZXNwZWN0aXZlbHkgaW4gdGhlIFJLMzU4OCBhbmQgUkszNTc2IFNv
Q3MuCj4gVGhpcyBwYXRjaCBvbmx5IGFkZHMgc3VwcG9ydCBmb3IgSDI2NCBhbmQgSDI2NSBpbiBi
b3RoIHZhcmlhbnRzLgo+IAo+IEFzIHRoZXJlIGlzIGEgY29uc2lkZXJhYmxlIHBhcnQgb2YgdGhl
IGNvZGUgdGhhdCBjYW4gYmUgc2hhcmVkIHdpdGggdGhlCj4gYWxyZWFkeSBzdXBwb3J0ZWQgcmt2
ZGVjIGRlY29kZXIgZHJpdmVyLCB0aGUgc3VwcG9ydCBmb3IgdGhlc2UgdmFyaWFudHMKPiBpcyBh
ZGRlZCBoZXJlIHJhdGhlciB0aGFuIHdyaXRpbmcgYSBuZXcgZHJpdmVyLgo+IAo+IFRoaXMgcGF0
Y2ggc2V0IHVzZXMgdGhlIG5ld2x5IGludHJvZHVjZWQgaGV2Y19leHRfc3BzX1tsc110X3JwcyB2
NGwyCj4gY29udHJvbHMgZm9yIEhFVkMgWzFdLgo+IFRoZXJlZm9yZSwgYSBwYXRjaGVkIHZlcnNp
b24gb2YgdXNlcnBhY2UgdG9vbHMgaXMgbmVlZGVkIGZvciBIRVZDCj4gc3VwcG9ydCAoYWRkZWQg
Zm9yIEdTdHJlYW1lclsyXSBhbmQgaW4gYW4gZWFybHkgc3RhZ2UgZm9yIEZGbXBlZ1szXSkuCj4g
Cj4gVGhpcyBwYXRjaCBzZXQgYWxzbyBkZXBlbmRzIG9uIHRoZSBwcmVwYXJhdGlvbiBwYXRjaCBz
ZXQgc2VudCBlYXJsaWVyIFs0XQo+IGFzIHdlbGwgYXMgdGhlIGlvbW11IHJlc3RvcmUgZml4IFs1
XSAoYWxyZWFkeSBtZXJnZWQgaW4gbGludXgtbWVkaWEpIGFuZAo+IE5pY29sYXMgRnJhdHRhcm9s
aSdzIGJpdG1hcCBwYXRjaCBbNl0gdG8gc3VwcG9ydCBzZXR0aW5nIHJlZ2lzdGVycyB0aGF0Cj4g
dXNlcyB1cHBlciAxNiBiaXRzIGFzIG1hc2tzLgo+IAo+IFsxXTogaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvYWxsLzIwMjUwODA3MTk0MzI3LjY5OTAwLTEtZGV0bGV2LmNhc2Fub3ZhQGNvbGxhYm9y
YS5jb20vCj4gWzJdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZ3N0cmVhbWVyL2dz
dHJlYW1lci8tL21lcmdlX3JlcXVlc3RzLzkzNTUKPiBbM106IGh0dHBzOi8vZ2l0bGFiLmNvbGxh
Ym9yYS5jb20vZGV0bGV2L2ZmbXBlZwo+IFs0XTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxs
LzIwMjUwNjIzMTYwNzIyLjU1OTM4LTEtZGV0bGV2LmNhc2Fub3ZhQGNvbGxhYm9yYS5jb20vCj4g
WzVdOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNTA1MDgtcmt2ZGVjLWlvbW11LXJl
c2V0LXYxLTEtYzQ2YjZlZmE2ZTliQGNvbGxhYm9yYS5jb20vCj4gWzZdOiBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9hbGwvMjAyNTA2MjMtYnlld29yZC11cGRhdGUtdjItMS1jZjFmYzA4YTJlMWZA
Y29sbGFib3JhLmNvbS8KPiAKPiBDaGFuZ2VzIHNpbmNlIHYxOgo+ICAtIEFkZCBwYXJzaW5nIG9m
IHRoZSBzaG9ydCBhbmQgbG9uZyB0ZXJtIHJlZiBmcmFtZSBzZXRzIGZyb20gdGhlIG5ldyB2NGwy
Cj4gICAgY29udHJvbHMKPiAgLSBBZGQgUlBTIGNhY2hlIHRvIGF2b2lkIHBhcnNpbmcgdGhlIHNh
bWUgZGF0YSBhZ2Fpbgo+ICAtIEZpeCBIRVZDIHBpeGVsIGZvcm1hdHMgc2VsZWN0aW9uCj4gIC0g
Rml4IG11bHRpcGxlIGluZGVudGF0aW9uIGVycm9ycwoKd2hlbiBhcHBseWluZyB0aGUgc2VyaWVz
LCBnaXQgd2FzIGEgYml0IHVuaGFwcHkgYWJvdXQgc29tZSB3aGl0ZXNwYWNlczoKCgo+IERldGxl
diBDYXNhbm92YSAoMTIpOgo+ICAgbWVkaWE6IHJrdmRlYzogU3dpdGNoIHRvIHVzaW5nIHN0cnVj
dHMgaW5zdGVhZCBvZiB3cml0ZWwKPiAgIG1lZGlhOiBya3ZkZWM6IE1vdmUgY2FiYWMgdGFibGUg
dG8gaXRzIG93biBzb3VyY2UgZmlsZQoKQXBwbHlpbmc6IG1lZGlhOiBya3ZkZWM6IE1vdmUgY2Fi
YWMgdGFibGUgdG8gaXRzIG93biBzb3VyY2UgZmlsZQouZ2l0L3JlYmFzZS1hcHBseS9wYXRjaDo1
MzU6IG5ldyBibGFuayBsaW5lIGF0IEVPRi4KKwpXYXJudW5nOiAxIFplaWxlIGbDvGd0IFdoaXRl
c3BhY2UtRmVobGVyIGhpbnp1LgoKCj4gICBtZWRpYTogcmt2ZGVjOiBVc2Ugc3RydWN0cyB0byBy
ZXByZXNlbnQgdGhlIEhXIFJQUwo+ICAgbWVkaWE6IHJrdmRlYzogTW92ZSBoMjY0IGZ1bmN0aW9u
cyB0byBjb21tb24gZmlsZQoKQXBwbHlpbmc6IG1lZGlhOiBya3ZkZWM6IE1vdmUgaDI2NCBmdW5j
dGlvbnMgdG8gY29tbW9uIGZpbGUKLmdpdC9yZWJhc2UtYXBwbHkvcGF0Y2g6Mjc4OiBuZXcgYmxh
bmsgbGluZSBhdCBFT0YuCisKV2FybnVuZzogMSBaZWlsZSBmw7xndCBXaGl0ZXNwYWNlLUZlaGxl
ciBoaW56dS4KCgo+ICAgbWVkaWE6IHJrdmRlYzogQWRkIHBlciB2YXJpYW50IGNvbmZpZ3VyYXRp
b24KPiAgIG1lZGlhOiBya3ZkZWM6IEFkZCBSQ0IgYW5kIFNSQU0gc3VwcG9ydAoKQXBwbHlpbmc6
IG1lZGlhOiBya3ZkZWM6IEFkZCBSQ0IgYW5kIFNSQU0gc3VwcG9ydAouZ2l0L3JlYmFzZS1hcHBs
eS9wYXRjaDoyMDA6IG5ldyBibGFuayBsaW5lIGF0IEVPRi4KKwpXYXJudW5nOiAxIFplaWxlIGbD
vGd0IFdoaXRlc3BhY2UtRmVobGVyIGhpbnp1LgoKCj4gICBtZWRpYTogcmt2ZGVjOiBTdXBwb3J0
IHBlci12YXJpYW50IGludGVycnVwdCBoYW5kbGVyCj4gICBtZWRpYTogcmt2ZGVjOiBFbmFibGUg
YWxsIGNsb2NrcyB3aXRob3V0IG5hbWluZyB0aGVtCj4gICBtZWRpYTogcmt2ZGVjOiBBZGQgSDI2
NCBzdXBwb3J0IGZvciB0aGUgVkRQVTM4MSB2YXJpYW50Cj4gICBtZWRpYTogcmt2ZGVjOiBBZGQg
SDI2NCBzdXBwb3J0IGZvciB0aGUgVkRQVTM4MyB2YXJpYW50Cj4gICBtZWRpYTogcmt2ZGVjOiBB
ZGQgSEVWQyBzdXBwb3J0IGZvciB0aGUgVkRQVTM4MSB2YXJpYW50CgpBcHBseWluZzogbWVkaWE6
IHJrdmRlYzogQWRkIEhFVkMgc3VwcG9ydCBmb3IgdGhlIFZEUFUzODEgdmFyaWFudAouZ2l0L3Jl
YmFzZS1hcHBseS9wYXRjaDozNDgzOiBuZXcgYmxhbmsgbGluZSBhdCBFT0YuCisKLmdpdC9yZWJh
c2UtYXBwbHkvcGF0Y2g6NDAzNTogbmV3IGJsYW5rIGxpbmUgYXQgRU9GLgorCldhcm51bmc6IDIg
WmVpbGVuIGbDvGdlbiBXaGl0ZXNwYWNlLUZlaGxlciBoaW56dS4KCgpIZWlrbwoKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
