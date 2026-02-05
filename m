Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0719EC1E97
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Feb 2026 10:34:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ICJseksfVOX27emNicIYoNUdR5zcaM3VJtIAKEhG7r8=; b=yt3Zg/nuUzJNfg
	dE65ylN40tWSdFEeXj+ImMenStaCaqRInE/5bQ4z8FU2tbGFTFYjieBKhaMzu/JERnPk5t52HnOXi
	QVPXNJyKWPn4eNn6Zh3axi/C9F/3DLzlZytUcfs5YThkeLc9MfhyJvpw4YsMco0a7t1KVxoD1DEHg
	bPjF9ZqK0NnDWUEajq1TI0RfuNdSVcf17rEhflAxZ1yLm0c2AQV6PiBgHEILLTfvc87dVXwHcE5L5
	zmXGMl+lac7AatxmA8YtvORKLRn7AJsWQGD+4LdD//70rHdt+iF7f7bdwqJ/DXGLdX2znQozGOfm2
	Vkgzus8F4Z6guEb3UHog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnwgy-00000009n23-1Q4k;
	Thu, 05 Feb 2026 10:34:32 +0000
Received: from fout-b2-smtp.messagingengine.com ([202.12.124.145])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnwgw-00000009n1K-1Cln
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Feb 2026 10:34:31 +0000
Received: from phl-compute-10.internal (phl-compute-10.internal [10.202.2.50])
	by mailfout.stl.internal (Postfix) with ESMTP id 774141D000F9;
	Thu,  5 Feb 2026 05:34:26 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-10.internal (MEProxy); Thu, 05 Feb 2026 05:34:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1770287666;
	 x=1770374066; bh=u1LeVHfX9KP4xF7EtjCzhzPwakyJKYc6NFTmp7Ri8j8=; b=
	Z9qoE1t584i6dhw5+UE+QOkdE4Ec9hltedXPijIGeJyfa0IYsmk8eYeiQUzaZds2
	8OeIU9onOLuSF2Dsq+waJ5MEeMiTnhwiMWbgPrMRb0p9OhNqaPKeHDQWJWgNlh/R
	PzaaibXHoCyXa5rKzAEYUXe7XyWumHbZc7Wr0+bGx322zV3/ZLnauuxYiW6g6NqS
	Mn8i/aIV7uPiwB2KLBEsSd11TVZV8OKMLmIFy2ria5opbKf8L9tEruf5YBcW0tGw
	FkuqBFkwMd5867UDRarbNAnihtPGJk5pk9oZEXzJx4DSfL3dzFP1xK4cykRF3Stb
	4R8ATAw/c1q4WHeNwn1Rag==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1770287666; x=
	1770374066; bh=u1LeVHfX9KP4xF7EtjCzhzPwakyJKYc6NFTmp7Ri8j8=; b=K
	VcLy5/o5YUZOrwaPbVA2Fdz41Z4GTvqW2hGTzjLl5sHni5OVKd4YRoadmT10mxLQ
	agxaM3eMcoeAbcc6yxcv+HPX5GI/489M3iV/9WfFxHPODhJMvuO1MejFPAjjxX7X
	eOhwD1On/wjD4CxgN84mOvKdJ0OSchn7sQpsI7Gn9xwrqQ0WYMtZbnENv/hDcl4e
	M/8No1jiUlYTHbS+tINWWTM5tIBvpUKBRmX8NLu8sl38ACp9n9mL4i29FFYXu5y0
	GuhEl4lnAmHn+wwqbiGZsPUQ+wJQ16rdt7IVAqcj2U5B7DOhGgyDK6yneC/vgvko
	UOhlXW1BxpN1twi2w6rvg==
X-ME-Sender: <xms:MXKEaR2JT9JISZdiRJbOlqGDuGRX_N4jbwnGFGz3PBm3pmvVAfrK7Q>
    <xme:MXKEaYzdeBwjNvqX2i-qQU7lOIaAFkdi7ybOonYpFgHcpJX6ZQbE4xHS3sek8iLo1
    C06QV2SIaKJxtB2tDCxdg7vJS_Ccebecpl6tB_wU34OIw8P7XyCtw>
X-ME-Received: <xmr:MXKEaQHxRqMQejSFr2pxKK2-60EvLP0D_zVcbO0e8a9bIm7YGV0KzzmqDDHDVKDDyNQbVWQv_7RQa36V5Y67tDHdV9RQj2XDHnFM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddukeehtdejucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepfffhvfevuffkfhggtggugfgjfgesthekredttderjeenucfhrhhomheplfgrnhcu
    rfgrlhhushcuoehjphgrlhhushesfhgrshhtmhgrihhlrdgtohhmqeenucggtffrrghtth
    gvrhhnpeeiveeivdejheeivdffheelveejtdeugefhhfdujefgjedvtdegieelueegvdeh
    veenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
    enucfrrghrrghmpehmrghilhhfrhhomhepjhhprghluhhssehfrghsthhmrghilhdrtgho
    mhdpnhgspghrtghpthhtohepjedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtoheprh
    gvghhrvghsshhiohhnsheslhgvvghmhhhuihhsrdhinhhfohdprhgtphhtthhopehhvghi
    khhosehsnhhtvggthhdruggvpdhrtghpthhtoheplhhinhhugidqrhhotghktghhihhpse
    hlihhsthhsrdhinhhfrhgruggvrggurdhorhhgpdhrtghpthhtoheprhgvghhrvghsshhi
    ohhnsheslhhishhtshdrlhhinhhugidruggvvhdprhgtphhtthhopehpsghrohgsihhnsh
    honhesghhmrghilhdrtghomhdprhgtphhtthhopehrohgsihhnrdhmuhhrphhhhiesrghr
    mhdrtghomhdprhgtphhtthhopehnrghokhhisehrrggugigrrdgtohhm
X-ME-Proxy: <xmx:MXKEaTbj9J7T_BNtalW-5Jeg3Mw0Y_r_T4IwMftCmtlajwGyQNU94g>
    <xmx:MXKEaaCdCXCe1raaumP66F_-yJe1n7Ru7T2lX79TNXlQzeivzwM4Dg>
    <xmx:MXKEaTnYnvXZMtHe7IIaiophSQNCp3xF2ARNRXuvhKwZLISqDEHVXw>
    <xmx:MXKEaTwE_qAq0EnK3ufTTO9j00GRfBcCHIx-NXuPW3ZQlPJINMzJZw>
    <xmx:MnKEaRx-ubhYY5K5_L3Mota1gfXQ0zzRCI9e_dGYUfyJq6oRrvg3B98U>
Feedback-ID: i01894241:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 5 Feb 2026 05:34:25 -0500 (EST)
Date: Thu, 5 Feb 2026 11:34:24 +0100
From: Jan Palus <jpalus@fastmail.com>
To: Thorsten Leemhuis <regressions@leemhuis.info>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
	regressions@lists.linux.dev, Peter Robinson <pbrobinson@gmail.com>, 
	Robin Murphy <robin.murphy@arm.com>, FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [REGRESSION][BISECTED] wifi broken on pinebook pro
Message-ID: <aYRxaJjKdIj-uXGe@kalarepa.grzadka>
References: <aUKOlj-RvTYlrpiS@rock.grzadka>
 <CALeDE9OzCzbhKmc61Kgbmzr67oJnjZMjsO6yYbkXujzA-OuO+A@mail.gmail.com>
 <5f8805a8-b2d6-4bc3-9c6c-c8fc696daacd@leemhuis.info>
 <45c528cf-901c-47d5-a8d2-a4010105e30f@leemhuis.info>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <45c528cf-901c-47d5-a8d2-a4010105e30f@leemhuis.info>
User-Agent: NeoMutt/20251211
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260205_023430_569965_1393921C 
X-CRM114-Status: GOOD (  26.58  )
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

T24gMDMuMDIuMjAyNiAxMTo0MiwgVGhvcnN0ZW4gTGVlbWh1aXMgd3JvdGU6Cj4gT24gMS8xNC8y
NiAxNDowMywgVGhvcnN0ZW4gTGVlbWh1aXMgd3JvdGU6Cj4gPiBbdG9wLXBvc3RpbmcgdG8gZmFj
aWxpdGF0ZSBwcm9jZXNzaW5nXQo+ID4gCj4gPiBQZXRlciwgSGVpa28sIHdoYXQncyB0aGUgZGVh
bCBoZXJlPyBUaGlzIGxvb2tzIHN0YWxsZWQuIElzIHRlbXBvcmFyaWx5Cj4gPiByZXZlcnRpbmcg
YW4gb3B0aW9uLCBvciB3b3VsZCB0aGF0IGNhdXNlIHJlZ3Jlc3Npb25zIGZvciBvdGhlciB1c2Vy
cwo+ID4gdGhhdCBhbHJlYWR5IGJlbmVmaXQgZnJvbSB0aGUgY2hhbmdlIHRoYXQgaXMgY2F1c2lu
ZyB0aGUgcHJvYmxlbT8KPiAKPiBJIGFzc3VtZSB0aGlzIHdhc24ndCBmaXhlZCB5ZXQgKEphbiwg
cGxlYXNlIGNvcnJlY3QgbWUgaWYgSSdtIHdyb25nISk6CgpKdXN0IHRvIG1ha2UgaXQgY2xlYXIg
aW4gY2FzZSBhbnlvbmUgaXMgd2FpdGluZyBmb3IgY29uZmlybWF0aW9uOiB0aGUKaXNzdWUgaXMg
c3RpbGwgcHJlc2VudC4KIAo+IEhlaWtvLCBjb3VsZCB5b3UgbWF5YmUgc3VibWl0IGEgcmV2ZXJ0
PyBGaXhpbmcgdGhpcyBpcyBsb25nIG92ZXJkdWUKPiBhZmFpY3MsIGFzIExpbnVzIGp1c3QgcmVj
ZW50bHkgd3JvdGUgIiJydWxlIG9mIHRodW1iIFt0byBnZXQKPiB1c2VyLXJlcG9ydGVkIHJlZ3Jl
c3Npb25zIGZpeGVkXSBzaG91bGQgZ2VuZXJhbGx5IGJlICJ3aXRoaW4gYSB3ZWVrIiwKPiBwcmVm
ZXJhYmx5IGJlZm9yZSB0aGUgbmV4dCByYy4iIlsxXSDigJMgd2UgYXJlIHdheSBwYXN0IHRoYXQu
Cj4gCj4gTm90ZSwgSSBhc3N1bWUgdGhpcyB3aWxsIGJyZWFrIHRoaW5ncyBmb3IgcGVvcGxlIHdo
ZXJlIHRoZSBjaGFuZ2UgaW4KPiBxdWVzdGlvbiBpbXByb3ZlZCB0aGluZ3MuIEJ1dCBJIHN1c3Bl
Y3QgaGUgaW4gYSBzaXR1YXRpb24gbGlrZSB0aGlzCj4gTGludXMgcHJlZmVycyB0byBnbyBiYWNr
IHRvIHdoYXQgd2FzICJub3JtYWwiIGJlZm9yZSB0aGUgY3VscHJpdCB3YXMKPiBtZXJnZWQuIElm
IHdlIGFyZSB1bnN1cmUgYWJvdXQgdGhpcyBJIGd1ZXNzIHdlIHNob3VsZCBnZXQgaGltIGludm9s
dmVkCj4gdG8gY2xlYW4gdGhpcyB1cC4KPiAKPiBDaWFvLCBUaG9yc3Rlbgo+IAo+IFsxXQo+IGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC9DQUhrLSUzRHdpODZBb3NYczY2LXlpNTQlMkJtcFFq
UHUwdXB4QjhaQWZHJTJCTHNNeUptY3VNU0FAbWFpbC5nbWFpbC5jb20vCj4gCj4gCj4gPiBPbiAx
Mi8yOS8yNSAwNzoyMywgUGV0ZXIgUm9iaW5zb24gd3JvdGU6Cj4gPj4gT24gV2VkLCAxNyBEZWMg
MjAyNSBhdCAxMToyNiwgSmFuIFBhbHVzIDxqcGFsdXNAZmFzdG1haWwuY29tPiB3cm90ZToKPiA+
Pj4KPiA+Pj4gV2lGaSBubyBsb25nZXIgd29ya3Mgb24gUGluZWJvb2sgUHJvIGFmdGVyIHVwZ3Jh
ZGUgdG8ga2VybmVsIDYuMTguIEl0Cj4gPj4+IGFwcGVhcnMgZmlybXdhcmUgZmFpbHMgdG8gbG9h
ZDoKPiA+Pj4KPiA+Pj4gLi4uCj4gPj4+IG1tY19ob3N0IG1tYzA6IGNhcmQgaXMgbm9uLXJlbW92
YWJsZS4KPiA+Pj4gbW1jX2hvc3QgbW1jMDogQnVzIHNwZWVkIChzbG90IDApID0gNDAwMDAwSHog
KHNsb3QgcmVxIDQwMDAwMEh6LCBhY3R1YWwgNDAwMDAwSFogZGl2ID0gMCkKPiA+Pj4gQmx1ZXRv
b3RoOiBoY2kwOiBCQ006IGZlYXR1cmVzIDB4MGYKPiA+Pj4gQmx1ZXRvb3RoOiBoY2kwOiBCQ000
MzQ1QzUgQW1wYWtfQ0wxIFVBUlQgMzcuNCBNSHogQlQgNS4wIFtWZXJzaW9uOiBWZXJzaW9uOiAw
MDM5LjAwODldCj4gPj4+IEJsdWV0b290aDogaGNpMDogQkNNNDM0NUM1ICgwMDMuMDA2LjAwNikg
YnVpbGQgMDA4OQo+ID4+PiBtbWNfaG9zdCBtbWMwOiBCdXMgc3BlZWQgKHNsb3QgMCkgPSAxNDg1
MDAwMDBIeiAoc2xvdCByZXEgMTUwMDAwMDAwSHosIGFjdHVhbCAxNDg1MDAwMDBIWiBkaXYgPSAw
KQo+ID4+PiBkd21tY19yb2NrY2hpcCBmZTMxMDAwMC5tbWM6IFN1Y2Nlc3NmdWxseSB0dW5lZCBw
aGFzZSB0byA1NQo+ID4+PiBtbWMwOiBuZXcgVUhTLUkgc3BlZWQgU0RSMTA0IFNESU8gY2FyZCBh
dCBhZGRyZXNzIDAwMDEKPiA+Pj4gYnJjbWZtYWM6IGJyY21mX2Z3X2FsbG9jX3JlcXVlc3Q6IHVz
aW5nIGJyY20vYnJjbWZtYWM0MzQ1Ni1zZGlvIGZvciBjaGlwIEJDTTQzNDUvOQo+ID4+PiB1c2Jj
b3JlOiByZWdpc3RlcmVkIG5ldyBpbnRlcmZhY2UgZHJpdmVyIGJyY21mbWFjCj4gPj4+IGJyY21m
bWFjIG1tYzA6MDAwMToxOiBEaXJlY3QgZmlybXdhcmUgbG9hZCBmb3IgYnJjbS9icmNtZm1hYzQz
NDU2LXNkaW8ucGluZTY0LHBpbmVib29rLXByby5iaW4gZmFpbGVkIHdpdGggZXJyb3IgLTIKPiA+
Pj4gYnJjbWZtYWM6IGJyY21mX3NkaW9fYnVzX3J4Y3RsOiByZXN1bWVkIG9uIHRpbWVvdXQKPiA+
Pj4gaWVlZTgwMjExIHBoeTA6IGJyY21mX2J1c19zdGFydGVkOiBmYWlsZWQ6IC0xMTAKPiA+Pj4g
aWVlZTgwMjExIHBoeTA6IGJyY21mX2F0dGFjaDogZG9uZ2xlIGlzIG5vdCByZXNwb25kaW5nOiBl
cnI9LTExMAo+ID4+PiBicmNtZm1hYzogYnJjbWZfc2Rpb19maXJtd2FyZV9jYWxsYmFjazogYnJj
bWZfYXR0YWNoIGZhaWxlZAo+ID4+Pgo+ID4+PiBjb21wYXJlZCB0byA2LjE3IGluc3RlYWQgb2Yg
bGFzdCA0IGxpbmVzIHdpdGggZXJyb3JzIHRoZXJlJ3Mgc2luZ2xlIG9uZQo+ID4+PiB3aXRoIGlu
Zm8gYWJvdXQgbG9hZGVkIGZpcm13YXJlOgo+ID4+Pgo+ID4+PiBicmNtZm1hYzogYnJjbWZfY19w
cmVpbml0X2RjbWRzOiBGaXJtd2FyZTogQkNNNDM0NS85IHdsMDogTWF5IDE0IDIwMjAgMTc6MjY6
MDggdmVyc2lvbiA3Ljg0LjE3LjEgKHI4NzE1NTQpIEZXSUQgMDEtM2Q5ZTFkODcKPiA+Pj4KPiA+
Pj4gQmlzZWN0ZWQgdG86Cj4gPj4+Cj4gPj4+IDZkNTRkOTM1MDYyZTJkNGE3ZDNmNzc5Y2ViOWVl
ZmYxMDhkMDUzNWQgaXMgdGhlIGZpcnN0IG5ldyBjb21taXQKPiA+Pj4gY29tbWl0IDZkNTRkOTM1
MDYyZTJkNGE3ZDNmNzc5Y2ViOWVlZmYxMDhkMDUzNWQgKEhFQUQpCj4gPj4+IEF1dGhvcjogUGV0
ZXIgUm9iaW5zb24gPHBicm9iaW5zb25AZ21haWwuY29tPgo+ID4+PiBEYXRlOiAgIFdlZCBBdWcg
MjcgMTY6MzA6MzcgMjAyNQo+ID4+Pgo+ID4+PiAgICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IEZ1
cnRoZXIgZGVzY3JpYmUgdGhlIFdpRmkgZm9yIHRoZSBQaW5lYm9vayBQcm8KPiA+Pj4KPiA+Pj4g
ICAgIFVwZGF0ZSB0aGUgd2FrZS11cCBwaW4gYW5kIGFzc29jaWF0ZWQgaW50ZXJ1cHQgZGV0YWls
cyBmb3IgdGhlCj4gPj4+ICAgICBQaW5lYm9vayBQcm8gV2lGaSBtb2R1bGUuCj4gPj4+Cj4gPj4+
ICAgICBTaWduZWQtb2ZmLWJ5OiBQZXRlciBSb2JpbnNvbiA8cGJyb2JpbnNvbkBnbWFpbC5jb20+
Cj4gPj4+ICAgICBMaW5rOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjUwODI3MTQzMDQw
LjE2NDQ4NjctMS1wYnJvYmluc29uQGdtYWlsLmNvbQo+ID4+PiAgICAgU2lnbmVkLW9mZi1ieTog
SGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KPiA+Pj4KPiA+Pj4gIGFyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXBpbmVib29rLXByby5kdHMgfCAxOCArKysrKysrKysr
KysrKysrKysKPiA+Pj4gIDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspCj4gPj4+Cj4g
Pj4+Cj4gPj4+IFdpdGggdGhpcyBjb21taXQgcmV2ZXJ0ZWQgb24gdG9wIG9mIDYuMTguMSB3aXJl
bGVzcyBjb25uZWN0aW9uIHdvcmtzCj4gPj4+IGZpbmUuCj4gPj4+Cj4gPj4+IE5vdCBzdXJlIHdo
YXQgY291bGQgYmUgcmVsZXZhbnQgYnV0Ogo+ID4+PiAtIGl0J3MgYW4gZWFybHkgbW9kZWwsIEkg
dGhpbmsgc2Vjb25kIGJhdGNoLCBkZWxpdmVyZWQgZW5kIG9mIDIwMTkKPiA+Pgo+ID4+IElzIGl0
IHRoZSBTeW5vcHRpY3Mgb3IgdGhlIEN5cHJlc3MvSW5maW5lb24gbW9kdWxlPyBXaGF0IGZpcm13
YXJlIGFyZSB5b3UgdXNpbmc/Cj4gPj4KPiA+Pj4gLSBtYWlubGluZSB1Ym9vdCAyMDI1LjEwIGlz
IHVzZWQKPiA+Pj4KPiA+Pj4KPiA+Pj4gI3JlZ3pib3QgaW50cm9kdWNlZDogNmQ1NGQ5MzUwNgo+
IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
