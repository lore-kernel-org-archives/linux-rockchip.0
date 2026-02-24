Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43E01E9B258
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Feb 2026 13:20:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ws+EMPLyJ3E3otLyj8xlEg1y4g2TF2/s/Yt1eJesiFg=; b=30B0bH7F3SvTan
	/xtJ13iFtFOT1bP6NWDbxotj2zEJ1vLachJsqZnt54t04URDDT51GES3neLeWB4pW8jTQU6xgnspJ
	Qk7ew9CfEmkiAxOJ+GspFffR1kP79nHGvO/TC/QeB6jSvd609C+FF8l2+X2ExIAtooNSzSGhX22v1
	ElGOPq35K/cvalGywZtAjuk2LHfX+wF9Ba3flyecSA7QGSa2fXAgqLMPtOKsrWPygTwM68diegp5u
	gGuGbbqhKY35mAZ5keM0tNwTjSm8NOQbZWtBwTn+VIMzrNdT7lWwf/E5eNAqPdwj/foXdxjZJQraF
	rb0dY9lAf2ERI8UZITMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vusL4-000000028Gk-3T4W;
	Tue, 24 Feb 2026 13:20:34 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vusL1-000000028De-0vCW;
	Tue, 24 Feb 2026 13:20:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id CD882402C5;
	Tue, 24 Feb 2026 13:20:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3215EC116D0;
	Tue, 24 Feb 2026 13:20:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771939230;
	bh=/cwEX8nlHRJVwbvm2pJNaEZRc+lYm5XQEkzF4FtU3U4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ZUEbJsLrM2UoNgrTIz7X3nplCDMSQdF7a8vMD6hbJOGUr+mol6HhH9fwYtMhARftP
	 m+QL4+zbRp49GaFvrdfJ3GJEGqD07Dx0n3YmW5VIDDgHQzlZUK0ZZrysBUJXFan78d
	 qr1O18jeDAGyw1qU8S+CUQqw+QpbLyQTxCv/y0+dOIIPCEBgpDTQ2xIvbEXtul1ZnF
	 7FZnHxIap3TAROfy0i2XCqFU2rkGmYCJREO3uW5YFsjo9Xa4Z0LJBLttc7vcO0Wuk+
	 PE1Y5s5Ve6piHuTFMDUMiwYu8/8x88JGkaB3xuNlBKlGvugoEo2Kq5k9CzZAXHzc62
	 gC5XbW5rr1k7A==
Message-ID: <37bebecf-3e16-446e-907a-d006e4cec4c4@kernel.org>
Date: Tue, 24 Feb 2026 14:20:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] arm64: dts: rockchip: Fix vdec register blocks
 order on RK3576
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@kernel.org>, kernel@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Conor Dooley <conor.dooley@microchip.com>, linux-media@vger.kernel.org
References: <20260223-vdec-reg-order-rk3576-v2-0-daf4942dfc02@collabora.com>
 <20260223-vdec-reg-order-rk3576-v2-2-daf4942dfc02@collabora.com>
 <20260224-glaring-poetic-goshawk-b44d7b@quoll>
 <366daf706b5dc3942e3340f29151ece1f49460e0.camel@collabora.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <366daf706b5dc3942e3340f29151ece1f49460e0.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_052031_314434_5BC41011 
X-CRM114-Status: GOOD (  19.66  )
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

T24gMjQvMDIvMjAyNiAxNDoxNywgTmljb2xhcyBEdWZyZXNuZSB3cm90ZToKPiBIaSwKPiAKPiBM
ZSBtYXJkaSAyNCBmw6l2cmllciAyMDI2IMOgIDA4OjIyICswMTAwLCBLcnp5c3p0b2YgS296bG93
c2tpIGEgw6ljcml0wqA6Cj4+IE9uIE1vbiwgRmViIDIzLCAyMDI2IGF0IDA5OjQ5OjUwUE0gKzAy
MDAsIENyaXN0aWFuIENpb2NhbHRlYSB3cm90ZToKPj4+IFdoZW4gYnVpbGRpbmcgZGV2aWNlIHRy
ZWVzIGZvciB0aGUgUkszNTc2IGJhc2VkIGJvYXJkcywgRFRDIHNob3dzIHRoZQo+Pj4gZm9sbG93
aW5nIGNvbXBsYWludDoKPj4+Cj4+PiDCoCByazM1NzYuZHRzaToxMjgyLjMwLTEzMDQuNTogV2Fy
bmluZyAoc2ltcGxlX2J1c19yZWcpOiAvc29jL3ZpZGVvLWNvZGVjQDI3YjAwMDAwOiBzaW1wbGUt
YnVzIHVuaXQgYWRkcmVzcyBmb3JtYXQgZXJyb3IsIGV4cGVjdGVkICIyN2IwMDEwMCIKPj4KPj4g
U28geW91IG5lZWQgdG8gZml4IHRoZSB1bml0IGFkZHJlc3MuIFRoaXMgaXMgd2hhdCB0aGUgd2Fy
bmluZyB0ZWxscyB5b3UuCj4gCj4gVGhlIHVuaXQgYWRkcmVzcyBpcyB3aGVyZSB0aGUgcmVnaXN0
ZXIgcmFuZ2Ugc3RhcnRzLiBQaWNraW5nIGEgcmFuZG9tIHBvaW50Cj4gaW5zaWRlIHRoZSByYW5n
ZSBpcyBqdXN0IGJhZCBpZGVhLgoKT2YgY291cnNlIGFuZCB0aGF0J3Mgd2h5IHlvdSBydW4gdG9v
bHMgQkVGT1JFIHlvdSBzZW5kIHBhdGNoZXMgdG8gdGVsbAp5b3UgdGhhdC4KCj4gRm9yIGFueW9u
ZSB0aGF0IHVzZXMgc3BlYyB0byBkZXZlbG9wIHRoZXNlCj4gZHJpdmVycyBhbmQgZGV2aWNlIHRy
ZWUsIGl0cyBqdXN0IHBsYWluIGRpZmZpY3VsdCBhbmQgZXJyb3IgcHJvbmUuCj4gCj4+Cj4+Pgo+
Pj4gUHJvdmlkZSB0aGUgcmVnaXN0ZXIgYmxvY2tzIGluIHRoZSBleHBlY3RlZCBhZGRyZXNzLWJh
c2VkIG9yZGVyLgo+Pj4KPj4+IEZpeGVzOiBkYTBkZTgwNmQ4YjQgKCJhcm02NDogZHRzOiByb2Nr
Y2hpcDogQWRkIHRoZSB2ZHB1MzgzIFZpZGVvIERlY29kZXIgb24gcmszNTc2IikKPj4+IFNpZ25l
ZC1vZmYtYnk6IENyaXN0aWFuIENpb2NhbHRlYSA8Y3Jpc3RpYW4uY2lvY2FsdGVhQGNvbGxhYm9y
YS5jb20+Cj4+PiAtLS0KPj4+IMKgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NzYu
ZHRzaSB8IDYgKysrLS0tCj4+PiDCoDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMg
ZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTc2LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni5k
dHNpCj4+PiBpbmRleCA0OWNjZGYxMmVmN2UuLjQ1ZWIwZDA1M2E2ZiAxMDA2NDQKPj4+IC0tLSBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LmR0c2kKPj4+ICsrKyBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LmR0c2kKPj4+IEBAIC0xMjgxLDEwICsxMjgx
LDEwIEBAIGdwdTogZ3B1QDI3ODAwMDAwIHsKPj4+IMKgCj4+PiDCoAkJdmRlYzogdmlkZW8tY29k
ZWNAMjdiMDAwMDAgewo+Pj4gwqAJCQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU3Ni12ZGVj
IjsKPj4+IC0JCQlyZWcgPSA8MHgwIDB4MjdiMDAxMDAgMHgwIDB4NTAwPiwKPj4+IC0JCQnCoMKg
wqDCoMKgIDwweDAgMHgyN2IwMDAwMCAweDAgMHgxMDA+LAo+Pj4gKwkJCXJlZyA9IDwweDAgMHgy
N2IwMDAwMCAweDAgMHgxMDA+LAo+Pj4gKwkJCcKgwqDCoMKgwqAgPDB4MCAweDI3YjAwMTAwIDB4
MCAweDUwMD4sCj4+PiDCoAkJCcKgwqDCoMKgwqAgPDB4MCAweDI3YjAwNjAwIDB4MCAweDEwMD47
Cj4+Cj4+IFRoZSBtYWluIGJsb2NrLCBzbyBwcm9iYWJseSB0aGUgbG93ZXN0IGFkZHJlc3MgYXMg
aW4gdW5pdCBhZGRyZXNzLAo+PiBzaG91bGQgYmUgdXNlZCwgYnV0IHRoaXMgc2hpcCBoYXMgc2Fp
bGVkLiBZb3Ugc2hpcHBlZCB0aGlzIERUUywgYmVjYXVzZQo+PiB0aGUgb3JkZXIgb2YgaXRlbXMg
aXMgRklYRUQuIFlvdXIgYmluZGluZyBjaGFuZ2UgaXMgY2xlYXJseSBpbmNvcnJlY3QKPj4gYW5k
IEFCSSBicmVhayB3aXRob3V0IGV4cGxhbmF0aW9uIGFuZCB3aXRob3V0IHJlYXNvbiwgc28geW91
IGNhbm5vdCB1c2UKPj4gc3VjaCBhcyBhbiBhcmd1bWVudCBoZXJlLgo+IAo+IEl0cyBub3QgcmVs
ZWFzZWQgeWV0LgoKTm90aGluZyBpbiBjb21taXQgbXNnIGV4cGxhaW5lZCB0aGF0IGFuZCB5b3Vy
IHByZXZpb3VzIGNvbW1lbnQgYWJvdXQKYmluZGluZyB3YXMgZmFsc2UuIEJpbmRpbmcgV0FTIHJl
bGVhc2VkLgoKSSBhbSBub3QgZ29pbmcgdG8gY2hlY2sgZXZlcnkgY2xhaW0geW91IG1ha2Ugd2hl
dGhlciBpdCBpcyB0cnVlIG9yIG5vdC4KCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
