Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C892C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Nov 2023 09:23:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nLLszpjMSnZUSSU8h0c/lK3ehonD4RA86QY0R46L0cw=; b=oAbhtyuAAD/CYB
	STG+e2tCfZuJ0VgdDiCqFxljH3wHr0zlx6srvhFzV/sksqDcisUVkV5We7lWibjk9RnlWis70rPhI
	1/Y+hplEPwfCdscB2oMYiK0Ot5EOSGUMPWf8zlNCaHe01+5DtYWSbiv1aENV9vqIC1Td8sUbwkVFn
	CIAUa0ux5xHLpYrVcFId1gQ7lSvmG9tWAsnId6Jv/Y12HZWA7OXE25etUDv7EqIUQGifsuDGQ0z2/
	gzEvEzGiGQhhskUo3pzh84qUOY7xj60MFTZMxWoTqcV5ST7Zl3UvlC+dHGbtuh93s15I1qDT82X3a
	eTi+iqdxc5KGi6Z/szcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7Xps-001xoM-1w;
	Mon, 27 Nov 2023 09:23:24 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7Xpn-001xn7-02;
	Mon, 27 Nov 2023 09:23:22 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id CE98B5C0179;
	Mon, 27 Nov 2023 04:23:12 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Mon, 27 Nov 2023 04:23:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to;
	 s=fm3; t=1701076992; x=1701163392; bh=r7lWTaFRIZAiw7mVFsThMLF7n
	tbrm197jpXoSjf2C7s=; b=MRQjsfVXH+hoCtjkXuioBVlqET6Nh/+nFgsj1vZyj
	M8XPCofBnaShS+T/ftWRKdGp4ScUm8Mj/II9OSSvvJHs6+mlHIK4sACuFOzvbjXj
	mM3Vyqot46M5Ut4pbCcuPTfsxFsO28d3Xxf4hUmA7SK97+yPfl99gQLwHKFOxwiY
	1DI3H+5LAn1z6La2g/kilasP/AwpNJbYO/yajuEHuy5HAK/k7+xAxN6CV6McW5Xz
	TcmhJbVJu++U9RyUZ+/T5ygJMMuVEw5OoYp2M6vI711xl3SO0gT4n+E9WJ+L4ozB
	vQSa0o/K6LL6/Zy6sZoE5rS0haiTPj+U9Rq5vbEV9Dlpw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1701076992; x=1701163392; bh=r7lWTaFRIZAiw7mVFsThMLF7ntbrm197jpX
	oSjf2C7s=; b=Phd8XngkLUZ3I2Q44/HXSxoHw98cFvPCFK+NWfeG40cGoJLKwBh
	LpL5cqtJpnWsQoXwvC7bgbq2feB/tNsjbMHopRkrwlvl4Ir7nhMjqL0HQpqqeLmZ
	gR0qr/EUgpEHmFx07hsy7KBvE3KKV9mHDlIgYrw+O59F+sj0EI1pd/6u2Kt30BEE
	y29Qxv7jby2Gl/s4rg1FS81fXZjBRpC2E0Rx5XH6HfrCHHGeavDAWPuRuQYqnMoS
	zzebpbVRqFHfQrBVTq1Iy64rT47UYyToFuSd2OvG3YywgPb78c5yAZ0k2yQ/LPZh
	NuVPUqih6IDMvhg5CIoYBhLA6f6JWLhNdDA==
X-ME-Sender: <xms:AGBkZa8mKYyN1rQTjvflktAg6tDgLrvI8y6IKKZ4Rhe5heIoYOk8dQ>
    <xme:AGBkZavOkFm16-AX1_9iliL7sl8DKqRpGrrMK_e4ovL8txUKamPbWL800LOsYwqGO
    xDai_KWDA>
X-ME-Received: <xmr:AGBkZQD5WQOeugIQC7jYugqflbaAYfa6mgZM_YYDc_BJJpLFCeBCUyr8TTVAgV3vuDcclQgIT4XTqhVvn3vvXSuSIVqIlcGOg99qUQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudeiuddgtddvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepkfffgggfuffvvehfhfgjtgfgsehtkeertddtvdejnecuhfhrohhmpefvihhm
    ucfnuhhnnhcuoehtihhmsehfvggrthhhvghrthhophdrohhrgheqnecuggftrfgrthhtvg
    hrnhepteejteffudfggfeifeevhedvfeekhfejhfdtteejueetieehueduleetjeeuueet
    necuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtne
    curfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmsehfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:AGBkZSdx6BMpmA7gcsyXZErxFtFA2TLEfBKac44Wbf4MojYCZ476SA>
    <xmx:AGBkZfP72K3-_ojoT7i4F0fd4mpbLZN6-_WpkiyBp5ekm3Uv4h1ENQ>
    <xmx:AGBkZck0qnb53ct36JNfHfdh6JnycsT-M_M00Apfg9bnUHLQF_pfUw>
    <xmx:AGBkZadZR5faFs_RUVxpRz0hRYv_fmNxJkZGfv4Ji9JRinH-rXjHeg>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 27 Nov 2023 04:23:08 -0500 (EST)
Message-ID: <d5fef204-a4db-4452-9e22-8928b9db54d5@feathertop.org>
Date: Mon, 27 Nov 2023 20:23:05 +1100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/9] ARM: dts: rockchip: rv1126: Add i2c2 nodes
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Cc: Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <20231122122232.952696-1-tim@feathertop.org>
 <20231122122232.952696-5-tim@feathertop.org>
 <813224c2-398d-4c2d-8909-1839ce63be60@linaro.org> <4762834.KRxA6XjA2N@diego>
 <b0c637f5-5abf-420b-8b02-839eba68799e@linaro.org>
From: Tim Lunn <tim@feathertop.org>
In-Reply-To: <b0c637f5-5abf-420b-8b02-839eba68799e@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_012319_595651_7104A256 
X-CRM114-Status: GOOD (  15.29  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkKCk9uIDExLzI3LzIzIDE3OjUyLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+IE9uIDI3
LzExLzIwMjMgMDA6MDYsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+PiBIaSBLcnp5c3p0b2YsCj4+
Cj4+IEFtIE1pdHR3b2NoLCAyMi4gTm92ZW1iZXIgMjAyMywgMTM6Mjk6NDcgQ0VUIHNjaHJpZWIg
S3J6eXN6dG9mIEtvemxvd3NraToKPj4+IE9uIDIyLzExLzIwMjMgMTM6MjIsIFRpbSBMdW5uIHdy
b3RlOgo+Pj4+IEFkZCBpMmMyIG5vZGUgYW5kIGkyYzJfeGZlciBwaW5jdHJsIGZvciBSb2NrY2hp
cCBSVjExMjYKPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IFRpbSBMdW5uIDx0aW1AZmVhdGhlcnRv
cC5vcmc+Cj4+Pj4gLS0tCj4+Pj4KPj4+PiAobm8gY2hhbmdlcyBzaW5jZSB2MSkKPj4+Pgo+Pj4+
ICAgYXJjaC9hcm0vYm9vdC9kdHMvcm9ja2NoaXAvcnYxMTI2LXBpbmN0cmwuZHRzaSB8IDEwICsr
KysrKysrKysKPj4+PiAgIGFyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3J2MTEyNi5kdHNpICAg
ICAgICAgfCAxNSArKysrKysrKysrKysrKysKPj4+PiAgIDIgZmlsZXMgY2hhbmdlZCwgMjUgaW5z
ZXJ0aW9ucygrKQo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3JvY2tj
aGlwL3J2MTEyNi1waW5jdHJsLmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9ydjEx
MjYtcGluY3RybC5kdHNpCj4+Pj4gaW5kZXggNGY4NWI3YjNmYzRjLi4xNjdhNDhhZmEzYTQgMTAw
NjQ0Cj4+Pj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvcm9ja2NoaXAvcnYxMTI2LXBpbmN0cmwu
ZHRzaQo+Pj4+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3J2MTEyNi1waW5jdHJs
LmR0c2kKPj4+PiBAQCAtODcsNiArODcsMTYgQEAgaTJjMF94ZmVyOiBpMmMwLXhmZXIgewo+Pj4+
ICAgCQkJCTwwIFJLX1BCNSAxICZwY2ZnX3B1bGxfbm9uZV9kcnZfbGV2ZWxfMF9zbXQ+Owo+Pj4+
ICAgCQl9Owo+Pj4+ICAgCX07Cj4+Pj4gKwlpMmMyIHsKPj4+PiArCQkvb21pdC1pZi1uby1yZWYv
Cj4+Pj4gKwkJaTJjMl94ZmVyOiBpMmMyLXhmZXIgewo+Pj4+ICsJCQlyb2NrY2hpcCxwaW5zID0K
Pj4+PiArCQkJCS8qIGkyYzJfc2NsICovCj4+Pj4gKwkJCQk8MCBSS19QQzIgMSAmcGNmZ19wdWxs
X25vbmVfZHJ2X2xldmVsXzBfc210PiwKPj4+PiArCQkJCS8qIGkyYzJfc2RhICovCj4+Pj4gKwkJ
CQk8MCBSS19QQzMgMSAmcGNmZ19wdWxsX25vbmVfZHJ2X2xldmVsXzBfc210PjsKPj4+PiArCQl9
Owo+Pj4+ICsJfTsKPj4+PiAgIAlwd20yIHsKPj4+PiAgIAkJL29taXQtaWYtbm8tcmVmLwo+Pj4+
ICAgCQlwd20ybTBfcGluczogcHdtMm0wLXBpbnMgewo+Pj4+IGRpZmYgLS1naXQgYS9hcmNoL2Fy
bS9ib290L2R0cy9yb2NrY2hpcC9ydjExMjYuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL3JvY2tj
aGlwL3J2MTEyNi5kdHNpCj4+Pj4gaW5kZXggNmM1YzkyOGYwNmM3Li5jZjFkZjc1ZGY0MTggMTAw
NjQ0Cj4+Pj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvcm9ja2NoaXAvcnYxMTI2LmR0c2kKPj4+
PiArKysgYi9hcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9ydjExMjYuZHRzaQo+Pj4+IEBAIC0y
MSw2ICsyMSw3IEBAIC8gewo+Pj4+ICAgCj4+Pj4gICAJYWxpYXNlcyB7Cj4+Pj4gICAJCWkyYzAg
PSAmaTJjMDsKPj4+PiArCQlpMmMyID0gJmkyYzI7Cj4+PiBObywgdGhpcyBzaG91bGQgYmUgcGVy
LWJvYXJkIHRvIG1hdGNoIGJvYXJkIGxhYmVsaW5nL3NjaGVtYXRpY3MuCj4+IEF0IGxlYXN0IGZv
ciBpMmMsIHVhcnRzIGFuZCBpLmUuIHNwaSAuLi4gUm9ja2NoaXAgbWFudWFscywgcGluIG5hbWlu
Z3MKPj4gYW5kIGFsc28gYWxsIGJvYXJkIHNjaGVtYXRpY3MgSSd2ZSBzZWVuIHNvIGZhciBhcmUg
dmVyeSBjb25zaXN0ZW50IGZvcgo+PiB0aGVzZSAuLi4gaTJjMiBmb3IgZXhhbXBsZSBpcyBsYWJs
ZWQgaTJjMiBib3RoIGluIHRoZSBwaW5zIGluIHRoZSBzb2NzCj4+IGFuZCBhbHNvIGluIHRoZSBi
b2FyZC1zY2hlbWF0aWNzIHVzaW5nIHRoZW0uCj4+Cj4+IFNvIHdoaWxlIEkgY2FuIGFncmVlIHRo
YXQgdGhpbmdzIGxpa2UgbW1jLWFsaWFzZXMgbWlnaHQgYmUgYm9hcmQtc3BlY2lmaWMsCj4+IEkg
ZG8gdGhpbmsgYWxpYXNlcyBmb3IgdGhlIGNvcmUgYnVzc2VzIHNob3VsZCBiZSBhYmxlIHRvIGxp
dmUgaW4gdGhlIHNvYyBkdHNpCj4+IGFzIGZvciBhbGwgUm9ja2NoaXAgU29DcyBzbyBmYXI/Cj4g
SWYgeW91IGRvIG5vdCBsaXN0IGhlcmUgYWxsIGFsaWFzZXMsIGl0IGlzIGFscmVhZHkgYm9hcmQt
c3BlY2lmaWMsIGlzbid0IGl0Pwo+Cj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcm9j
a2NoaXAvQ0FLOFAzYTI1aVlrc3ViQ25RYjEtZTV5aj1jckVzSzM3UkI5SG40WkdaTXdjVlZyRzdn
QG1haWwuZ21haWwuY29tLwpJIGhhZCBvbmx5IGFkZGVkIGFsaWFzZXMgZm9yIG5vZGVzIHRoYXQg
YXJlIGltcGxlbWVudGVkLiBSVjExMjYgaGFzIDYgCmkyYyBidXNzZXMgYnV0IHNvIGZhciBub3Qg
YWxsIHRoZXNlIGV4aXN0IGluIHRoZSBzb2MuZHRzaS4KClJlZ2FyZHMKIMKgwqAgVGltCj4gQmVz
dCByZWdhcmRzLAo+IEtyenlzenRvZgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
