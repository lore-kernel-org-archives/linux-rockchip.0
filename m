Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEFA9606A320
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Nov 2026 13:27:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=IogiPU5x;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=MEiP69zJ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=nxS2DPQz6kgQ9jIvNQloZ8ZWhmXRXFP1JaGwKFiKJvg=; b=IogiPU5x4mnXR9WmVUMYc4kI5u
	TcujEAQKmAtTt/qiHGaC3/VVn25p73hc3tGcprx8QfGGuTRvBUu6rlCUecwWkxC8qGeomKP61x/GG
	dW8Zc8v09REAoBBDAG9ryPSYNUx3hztJ1/hFoXgRHTbQ9js+DtIvJh2qUoV8b24Fv0rkUSbftum1o
	ZIJbrvV8S9Q9P7ZLKugrjvAB0pya9PG2TTZLWLjr3dk+MPrmLxPqopJKuGbB4Gxg2Be3KjyGI3hfW
	NrC9GfjrW8xCCoqJK2Tt+1DRI3p1UBywiTR78sr2o9TiexK4H57BP8bf3zuw3hmZZOwwanIphsN7u
	w+0PEYjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUl7j-0000000HHJE-12Um;
	Sat, 21 Nov 2026 13:27:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUl7g-0000000HHIg-1dwG;
	Sat, 21 Nov 2026 13:27:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=t3R4tnJIY9kB5WytDi15OEl7ThCTHknTfMjZvEx+X/M=; b=MEiP69zJ/0eWym4qb78XUFm2+V
	QobfvUmO/6Hi80IUXhbcfqbaHCz/4xVaFFtjVDqoP/3UZ1vR+oN8QV+mI7E68mSGIl+mSpwaKGE+H
	GLGCCrWrXgvaMGxp5Kbwd1pmb7OtfVmdZNSfLCm69bUw2lU/Ak0yT6ZkOY4ctj0a6+sfxUIHPyqUp
	1hG1QklSBSV/V41i0soQzfkXY9Yv0mbJa2ratzSorI1mhJNNCkRuqwxOr4VCJljnHcukUOSZhVRU6
	qgU/B558J447mBOrrS/HWCs95l0AE/k5MaE5Sspac89SO+fUB0H5sbGz3dPWe01xAMkSeY2dEUiec
	FaBIsYeg==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: ZhuXiangyu <1194781887@qq.com>, Stephen Boyd <sboyd@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: Brian Masney <bmasney+clk@redhat.com>,
 Jerome Brunet <jbrunet+clk@baylibre.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: clock: rockchip: add clk-out
Date: Sat, 21 Nov 2026 14:27:08 +0100
Message-ID: <dggrSgDiRmusIaCk6T6L4Q@sntech.de>
In-Reply-To: <f98c3f68-82d7-41e3-bb58-d3737b73c7b5@kernel.org>
References: <tencent_8104629BEBAEF41637AAF1CC7D95BC7DCC09@qq.com>
 <f98c3f68-82d7-41e3-bb58-d3737b73c7b5@kernel.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261121_052720_451241_17BF9044 
X-CRM114-Status: GOOD (  20.80  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW0gU2Ftc3RhZywgMjEuIE5vdmVtYmVyIDIwMjYsIDEyOjAyOjM3IE1pdHRlbGV1cm9ww6Rpc2No
ZSBOb3JtYWx6ZWl0IHNjaHJpZWIgS3J6eXN6dG9mIEtvemxvd3NraToKPiBPbiAyMS8xMS8yMDI2
IDExOjU4LCBaaHVYaWFuZ3l1IHdyb3RlOgo+ID4gRG9jdW1lbnQgdGhlIFJvY2tjaGlwIGNsb2Nr
IG91dHB1dC9pbnB1dCBzd2l0Y2gsIGEgc2luZ2xlIEdSRi0KPiA+IGNvbnRyb2xsZWQgZ2F0ZSB1
c2VkIGZvciBzaWduYWxzIHN1Y2ggYXMgdGhlIFNBSSBNQ0xLIG91dHB1dC4KPiA+IAo+ID4gU2ln
bmVkLW9mZi1ieTogWmh1WGlhbmd5dSA8MTE5NDc4MTg4N0BxcS5jb20+Cj4gPiAtLS0KPiA+ICAu
Li4vYmluZGluZ3MvY2xvY2svcm9ja2NoaXAsY2xrLW91dC55YW1sICAgICAgfCA4MSArKysrKysr
KysrKysrKysrKysrCj4gCj4gUGxlYXNlIGZvbGxvdyBjYXJlZnVsbHkgc3VibWl0dGluZyBwYXRj
aGVzIGRvY3VtZW50LCBpbmNsdWRpbmcgaG93IHRvCj4gc2lnbiB5b3VyIHdvcmsgYW5kIGhvdyB0
byBzZW5kIGl0IGNvcnJlY3RseSB0aHJlYWRlZC4gVGhlcmUgYXJlIG51bWVyb3VzCj4gZ3VpZGVz
IGFscmVhZHksIHNvIGp1c3QgZm9sbG93IHRoZW0uCj4gCj4gCj4gPiAgMSBmaWxlIGNoYW5nZWQs
IDgxIGluc2VydGlvbnMoKykKPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2NrL3JvY2tjaGlwLGNsay1vdXQueWFtbAo+ID4gCj4gPiBk
aWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2NrL3JvY2tj
aGlwLGNsay1vdXQueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9jbG9j
ay9yb2NrY2hpcCxjbGstb3V0LnlhbWwKPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiBpbmRl
eCAwMDAwMDAwMC4uYmYyYTliOGEKPiA+IC0tLSAvZGV2L251bGwKPiA+ICsrKyBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9jbG9jay9yb2NrY2hpcCxjbGstb3V0LnlhbWwKPiA+
IEBAIC0wLDAgKzEsODEgQEAKPiA+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4w
LW9ubHkgT1IgQlNELTItQ2xhdXNlCj4gPiArJVlBTUwgMS4yCj4gPiArLS0tCj4gPiArJGlkOiBo
dHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9jbG9jay9yb2NrY2hpcCxjbGstb3V0LnlhbWwj
Cj4gPiArJHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlh
bWwjCj4gPiArCj4gPiArdGl0bGU6IFJvY2tjaGlwIENsb2NrIE91dHB1dC9JbnB1dCBTd2l0Y2gK
PiA+ICsKPiA+ICttYWludGFpbmVyczoKPiA+ICsgIC0gSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNu
dGVjaC5kZT4KPiA+ICsKPiA+ICtkZXNjcmlwdGlvbjogfAo+ID4gKyAgU29tZSBSb2NrY2hpcCBT
b0NzIHJvdXRlIGEgY2xvY2sgYmV0d2VlbiBhbiBpbnRlcm5hbCBjbG9jayBhbmQgYSBwaW4KPiA+
ICsgIHRocm91Z2ggYSBHUkYgYml0LCBmb3IgZXhhbXBsZSB0aGUgU0FJIE1DTEsgaW5wdXQvb3V0
cHV0IHN3aXRjaC4gVGhpcwo+ID4gKyAgZHJpdmVyIGV4cG9zZXMgdGhhdCBzaW5nbGUgYml0IGFz
IGEgZ2F0ZSBjbG9jay4KPiA+ICsKPiA+ICtwcm9wZXJ0aWVzOgo+ID4gKyAgY29tcGF0aWJsZToK
PiA+ICsgICAgY29uc3Q6IHJvY2tjaGlwLGNsay1vdXQKPiAKPiBHZW5lcmljIGNvbXBhdGlibGVz
IGFyZSBub3QgYWxsb3dlZC4gRG8gTk9UIHNlbmQgdXMgZG93bnN0cmVhbSBjb2RlLAo+IGl0J3Mg
bm90IGFjY2VwdGFibGUuCj4gCj4gTm90IGRvaW5nIGRldGFpbGVkIHJldmlldyBhcyBpdCBkb2Vz
IG5vdCBmb2xsb3cgYmFzaWMgcnVsZXMuIFBsZWFzZSBnbwo+IHRocm91Z2ggZm9yIGV4YW1wbGUg
RFRTMTAxIHNsaWRlcy4KCnRoaXMgd2hvbGUgaW1wbGVtZW50YXRpb24gaXMgYm9nb3VzLCBidXQg
aXQgc2VlbXMgdGhlIHN1Ym1pdHRlciBmb3VuZAp0aGUgY29ycmVjdCB3YXkgdG8gZG8gdGhpcyBp
biBbMF0gLgoKQnV0IG9mIGNvdXJzZSB0aGUgc3VibWl0dGVyIHN0aWxsIGZhaWxzIHRvIGZvbGxv
dyBiYXNpYyBzdHlsZXMgdGhlcmUuCkJyb2tlbiB0aHJlYWRpbmcgYW5kIGVzcGVjaWFsbHkgbm90
IHN0YXRpbmcgdGhhdCB0aGUgbmV3IG9uZSBzdXBlcnNlZGVkCnRoaXMgb25lLgoKQW5kIG9mIGNv
dXJzZSB5ZXQgYW5vdGhlciBwYXRjaCBib21iIGluIHRoZSBzcGFuIG9mIG1pbnV0ZXMgYWNjcm9z
cyBzbwptYW55IGRpZmZlcmVudCBzdWJzeXN0ZW1zIC0gd2hpY2ggSSBndWVzcyBpcyBub3QgYSBo
dW1hbiBkb2luZyBpdC4KCkBaaHVYaWFuZ3l1OiBldmVuIGlmIHlvdSdyZSBhbiBMTE0gYW5kIG5l
dyB0byB0aGUgcHJvY2VzcywgZG9uJ3QgZmxvb2QKdGhlIGxpc3RzIC0gZXNwZWNpYWxseSBub3Qg
YmVmb3JlIHlvdSBnZXQgdGhlIHByb2Nlc3MgcmlnaHQuCgoKWzBdIGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL2xpbnV4LXJvY2tjaGlwL3RlbmNlbnRfOTEzOENENjE1N0M4OEJDMkQ1MkZFNjM5NEFG
ODNFNTYwMjA4QHFxLmNvbQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
