Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7992606A31E
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2026 19:30:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=RqD3ocBj;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=vcu0mzRq
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=9SCC8hEfFYuHf/oWfHAY9Slgc05hIxlgkx1VdOMlCFQ=; b=RqD3ocBjRWK7hx8QgDgAhj0cVo
	bWNEAO3HTAAlhx5yfX9gVYFcIte8HeYotxG23oijx6urdt/3lYpj+zqkzlAoWF/JOjDFdImhCZ7da
	7aFIMKRdu0e9ykjl4iB61c/eaGsN2Hy/AG20DfY6w1D46oADtua2qoNjGFsClGBtlgKdCZcKsQSkh
	rLf1HNKNvgD7CbcrCsN66OaU1caMUDeWoHU1zxL0Fx+C+VotJUPmhBfLmtCVMBFhRuxf65ldGhWig
	Su+k5G19lJUkyNJp0cMW6xi+lIjmi6dVCaZ4V8XLUc1aH5Q0QA7yHnMy/R0ZYNb38Ua4YiYitMlWC
	UQ1v+bqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMsIY-0000000CUcs-1TDy;
	Fri, 30 Oct 2026 19:29:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMsIV-0000000CUcN-1KJJ;
	Fri, 30 Oct 2026 19:29:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=vPaZTew6bHfge4tOyLNLySlYKC2rw8qbkKNVjP45eiQ=; b=vcu0mzRqxjxJVB7xA26R21VLOx
	1XuofCcoDvKjYRmwM2obB+hnUCFpJkF2LJaei8BwSJBywSI21TReldCkGn+wUdrlpC7lnPOFPVhJQ
	InLmBANLT+fRBAxuq/0hEXI/HTmcRD1WdeJyimQeu+GuZ+aIzaKMVUMW5u7kxr5NWsbEIeqO8r7eb
	5z+MErXmfIQH1kwv44t0UWeM9iwm1+TY4B6nc5OszREoFiojcFy4mUbQ3rDmDMv1XLbd5qsr1tFQp
	dgsq2+G4QhKtf2FimPUBNyCXhiEmCVykMTENu6eE6MY5CF20VntzbvgM9RbUsso6Sm919olW2kuYP
	eLFI0hRQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: iav@iav.lv
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Igor Velkov <iav@iav.lv>
Subject: Re: [PATCH] arm64: dts: rockchip: Add the GPU to Kobol Helios64
Date: Fri, 30 Oct 2026 20:29:47 +0100
Message-ID: <1937939.QCnGb9OGeP@phil>
In-Reply-To: <20261011-b4-helios64-gpu-v1-1-bd83c6ecd19e@iav.lv>
References: <20261011-b4-helios64-gpu-v1-1-bd83c6ecd19e@iav.lv>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_122955_360570_81F1C2D8 
X-CRM114-Status: GOOD (  16.44  )
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

SGksCgpBbSBTYW1zdGFnLCAxMC4gT2t0b2JlciAyMDI2LCAyMzo1MzowMSBNaXR0ZWxldXJvcMOk
aXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIElnb3IgVmVsa292IHZpYSBCNCBSZWxheToKPiBGcm9t
OiBJZ29yIFZlbGtvdiA8aWF2QGlhdi5sdj4KPiAKPiBUaGUgR1BVIGNvcmUgb2YgSGVsaW9zNjQg
aXMgc3VwcGxpZWQgYnkgVTEyLCBhIFNpbGVyZ3kgU1lSODM4IG9uIGkyYzAKPiBhdCAweDQxLCB3
aXRoIGl0cyBWU0VMIHBpbiBvbiBHUFVfU0xFRVBfSCAoR1BJTzFfQjYpLiBEZXNjcmliZSBpdCBh
cwo+IHNpbGVyZ3ksc3lyODI4LCB0aGUgd2F5IHZkZF9jcHVfYiAoYSBTWVI4MzcpIGlzIGRlc2Ny
aWJlZCBhcwo+IHNpbGVyZ3ksc3lyODI3LCBhbmQgZW5hYmxlIHRoZSBHUFUuCj4gCj4gQXNzaXN0
ZWQtYnk6IExMTQo+IFNpZ25lZC1vZmYtYnk6IElnb3IgVmVsa292IDxpYXZAaWF2Lmx2Pgo+IC0t
LQo+IFNjaGVtYXRpYywgc2hlZXQgNzoKPiBodHRwczovL3dpa2kua29ib2wuaW8vaGVsaW9zNjQv
ZmlsZXMvc2NoZW1hdGljcy9IZWxpb3M2NF9TY2hlbWF0aWNzX1JldjEuMi5wZGYKPiAKPiBUZXN0
ZWQgb24gbWFpbmxpbmU6IHBhbmZyb3N0IHByb2JlcywgZGV2ZnJlcSBtb3ZlcyB2ZGRfZ3B1IGZy
b20gODI1IG1WCj4gYXQgMjAwIE1IeiB0byAxMTAwIG1WIGF0IDgwMCBNSHosIGdsbWFyazItZXMy
LXdheWxhbmQgdW5kZXIgaGVhZGxlc3MKPiB3ZXN0b24gc2NvcmVzIDU0OC01NzcgaW4gdGhyZWUg
cnVucy4gVHdvIG9mIHRoZW0gbG9nZ2VkIG9uZSBwYW5mcm9zdAo+IGpvYiB0aW1lb3V0IGVhY2g7
IHRoZSBBcm1iaWFuIERUIGdhdmUgbm9uZSBpbiB0aHJlZSBydW5zLgo+IC0tLQo+ICAuLi4vYm9v
dC9kdHMvcm9ja2NoaXAvcmszMzk5LWtvYm9sLWhlbGlvczY0LmR0cyAgICB8IDI4ICsrKysrKysr
KysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDI4IGluc2VydGlvbnMoKykKPiAKPiBk
aWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkta29ib2wtaGVs
aW9zNjQuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkta29ib2wtaGVs
aW9zNjQuZHRzCj4gaW5kZXggNjNhZDc5YjRjOGFjLi4xZjUwOTgyMjkxYmYgMTAwNjQ0Cj4gLS0t
IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkta29ib2wtaGVsaW9zNjQuZHRz
Cj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkta29ib2wtaGVsaW9z
NjQuZHRzCj4gQEAgLTMzOSw2ICszMzksMTEgQEAgJmdtYWMgewo+ICAJc3RhdHVzID0gIm9rYXki
Owo+ICB9Owo+ICAKPiArJmdwdSB7Cj4gKwltYWxpLXN1cHBseSA9IDwmdmRkX2dwdT47Cj4gKwlz
dGF0dXMgPSAib2theSI7Cj4gK307Cj4gKwo+ICAmaTJjMCB7Cj4gIAljbG9jay1mcmVxdWVuY3kg
PSA8NDAwMDAwPjsKPiAgCWkyYy1zY2wtcmlzaW5nLXRpbWUtbnMgPSA8MTY4PjsKPiBAQCAtNDUz
LDYgKzQ1OCwyNSBAQCByZWd1bGF0b3Itc3RhdGUtbWVtIHsKPiAgCQkJcmVndWxhdG9yLW9mZi1p
bi1zdXNwZW5kOwo+ICAJCX07Cj4gIAl9Owo+ICsKPiArCXZkZF9ncHU6IHJlZ3VsYXRvckA0MSB7
Cj4gKwkJY29tcGF0aWJsZSA9ICJzaWxlcmd5LHN5cjgyOCI7Cj4gKwkJcmVnID0gPDB4NDE+Owo+
ICsJCWZjcyxzdXNwZW5kLXZvbHRhZ2Utc2VsZWN0b3IgPSA8MT47Cj4gKwkJcGluY3RybC1uYW1l
cyA9ICJkZWZhdWx0IjsKPiArCQlwaW5jdHJsLTAgPSA8JnZzZWwyX3Bpbj47Cj4gKwkJcmVndWxh
dG9yLW5hbWUgPSAidmRkX2dwdSI7Cj4gKwkJcmVndWxhdG9yLWFsd2F5cy1vbjsKPiArCQlyZWd1
bGF0b3ItYm9vdC1vbjsKCmJvdGggb2YgdGhlc2Ugc2hvdWxkIG5vdCBiZSBuZWVkZWQsIGFzIHRo
ZSBHUFUgc2hvdWxkIGNvbnRyb2wgaXRzCnJlZ3VsYXRvci4gKGFsd2F5cy1vbiBhbmQgYm9vdC1v
bikKCkhlaWtvCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
