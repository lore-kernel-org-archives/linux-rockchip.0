Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4594D2C548
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Oct 2024 12:48:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KMUIHP3iC0+2HT9qRUxjeEU9MNQ0D3fWMEJF3IV63cU=; b=DdR8DgZpf3Ueam
	vNJi+gLzzrk+vvC0KW2i6tzqy+8s35O9VwzB9DkqMf0Dgevd3p5ZFmtcGFfLXWdFswwXJwyw1rF5Z
	WYuXRe9i3prtEZqZytJGQKXIYUuafMzZuOQsQXSU0KS8qBuXUOqIH5PdS35P+FZn82z5qu2KdQjBr
	9gsF+eWs/uD3KS13Xv3sk+/ve8IRPKvyv5469oYP/RfClrDCSItzlrJEyKmXJJtImdTG05rXSTY7x
	yq5baPxbfjopK/QXdwfojLbN4eAORMzOr/WAqyOGGNLf6Huu/Zl9TAXfPKOaSVcGY46tA0OSshZnJ
	9I5yvJNzKHQixbvVsMsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3EIz-0000000Ariq-3Nkp;
	Tue, 22 Oct 2024 12:48:09 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3EHQ-0000000ArHN-1aM3;
	Tue, 22 Oct 2024 12:46:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1729601189;
	bh=LpFd92aF5ztU1uSojFRtPX+WnRyuXfcyz49zc5zGDaE=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=CZYms94Ko90sb+opvE6Cr0HHDHwV6NV7EW3T4GlohAkSAmCF/amd2n7DtB8BiH1jV
	 IkiM+VwVFQzk5Y5t5M0roOE+vdIiKuBOZ04/lCHE4/RQwqQhFreFTlmWu5ZBnYdEmA
	 OpIfSutlrz+trhx5hPbG1+aoDJ1sVP2dLmj/dibKf1XPATAfnlHBHwqUhdtgf5BXuD
	 fBpbKfVVmWruQG2M2b2LITufnnl7MZqTXCy2hJHsu9ThxW07c9XmsAaxdN4DnPPUam
	 mnK6FS+iWj4hbOD4BtpAorwR7Yw2SJ5SRJhemtmqXfFQtS2MGL/0aKMuq347HhYv9H
	 M108qH0Ubqlyw==
Received: from nicolas-tpx395.lan (unknown [IPv6:2606:6d00:15:862e::7a9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id E27FD17E3607;
	Tue, 22 Oct 2024 14:46:27 +0200 (CEST)
Message-ID: <26e78427fdd3699e237a20d803c02202c868c2ff.camel@collabora.com>
Subject: Re: [PATCH] media: verisilicon: av1: Store chroma and mv offsets
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org, 
	heiko@sntech.de
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	kernel@collabora.com
Date: Tue, 22 Oct 2024 08:46:26 -0400
In-Reply-To: <01020192afc4f87b-fd9b4515-9e30-41e7-8cf9-029cf5c0c7b6-000000@eu-west-1.amazonses.com>
References: <01020192afc4f87b-fd9b4515-9e30-41e7-8cf9-029cf5c0c7b6-000000@eu-west-1.amazonses.com>
Organization: Collabora
User-Agent: Evolution 3.52.4 (3.52.4-1.fc40) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_054632_588103_DA69541D 
X-CRM114-Status: GOOD (  17.70  )
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

SGksCgpMZSBsdW5kaSAyMSBvY3RvYnJlIDIwMjQgw6AgMTU6NDkgKzAwMDAsIEJlbmphbWluIEdh
aWduYXJkIGEgw6ljcml0wqA6Cj4gU3RvcmUgY2hyb21hIGFuZCBtb3Rpb24gdmVjdG9ycyBvZmZz
ZXRzIGZvciBlYWNoIGZyYW1lIHNvCj4gdGhleSBjYW4gYmUgdXNlZCBsYXRlciB3aGVuIHJlc29s
dXRpb24gY2hhbmdlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdhaWduYXJkIDxiZW5q
YW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgoKVGhpcyBpcyBuaWNlciB0aGVuIHJlY2FsY3Vs
YXRpbmcgaXQgZnJvbSB3aWR0aC9oZWlnaHQgb2YgdGhlIHJlZiBmcmFtZSBsaWtlIHdlCmRvIGlu
IFJLIFZQOSBkcml2ZXIuIEkgdGhpbmsgdGhpcyBwYXRjaCBjb3VsZCBoYXZlIGEgRml4ZXMgdGFn
LiBBcyB3ZSBkaXNjdXNzLCBJCmJlbGlldmUgQU9NIHRlc3Qgc3VpdGUgZG9lcyBub3QgY292ZXIg
dGhpcyBjYXNlID8gYW5kIHRodXMgdGhlIGZsdXN0ZXIgc2NvcmUgaXMKdW5jaGFuZ2VkID8KCkkg
c3RpbGwgdGhpbmsgdGhpcyBwYXRjaCBpcyBjb3JyZWN0LCBzbzoKClJldmlld2VkLWJ5OiBOaWNv
bGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1ZnJlc25lQGNvbGxhYm9yYS5jb20+Cgo+IC0tLQo+ICBk
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyby5oICAgICAgICAgICAgICB8
IDcgKysrKysrKwo+ICAuLi4vcGxhdGZvcm0vdmVyaXNpbGljb24vcm9ja2NoaXBfdnB1OTgxX2h3
X2F2MV9kZWMuYyAgICB8IDkgKysrKystLS0tCj4gIDIgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0
aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm8uaCBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVy
aXNpbGljb24vaGFudHJvLmgKPiBpbmRleCA4MTEyNjBkYzNjNzcuLjZkMzYzNzFjMWQxMyAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyby5oCj4g
KysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm8uaAo+IEBAIC0z
MzIsMTIgKzMzMiwxOSBAQCBzdHJ1Y3QgaGFudHJvX3ZwOV9kZWNvZGVkX2J1ZmZlcl9pbmZvIHsK
PiAgCXUzMiBiaXRfZGVwdGggOiA0Owo+ICB9Owo+ICAKPiArc3RydWN0IGhhbnRyb19hdjFfZGVj
b2RlZF9idWZmZXJfaW5mbyB7Cj4gKwkvKiBJbmZvIG5lZWRlZCB3aGVuIHRoZSBkZWNvZGVkIGZy
YW1lIHNlcnZlcyBhcyBhIHJlZmVyZW5jZSBmcmFtZS4gKi8KPiArCXNpemVfdCBjaHJvbWFfb2Zm
c2V0Owo+ICsJc2l6ZV90IG12X29mZnNldDsKPiArfTsKPiArCj4gIHN0cnVjdCBoYW50cm9fZGVj
b2RlZF9idWZmZXIgewo+ICAJLyogTXVzdCBiZSB0aGUgZmlyc3QgZmllbGQgaW4gdGhpcyBzdHJ1
Y3QuICovCj4gIAlzdHJ1Y3QgdjRsMl9tMm1fYnVmZmVyIGJhc2U7Cj4gIAo+ICAJdW5pb24gewo+
ICAJCXN0cnVjdCBoYW50cm9fdnA5X2RlY29kZWRfYnVmZmVyX2luZm8gdnA5Owo+ICsJCXN0cnVj
dCBoYW50cm9fYXYxX2RlY29kZWRfYnVmZmVyX2luZm8gYXYxOwo+ICAJfTsKPiAgfTsKPiAgCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vcm9ja2NoaXBf
dnB1OTgxX2h3X2F2MV9kZWMuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24v
cm9ja2NoaXBfdnB1OTgxX2h3X2F2MV9kZWMuYwo+IGluZGV4IGU1NGY1ZmFjMzI1Yi4uNjliNWQ5
ZTEyOTI2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24v
cm9ja2NoaXBfdnB1OTgxX2h3X2F2MV9kZWMuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZv
cm0vdmVyaXNpbGljb24vcm9ja2NoaXBfdnB1OTgxX2h3X2F2MV9kZWMuYwo+IEBAIC02ODYsOCAr
Njg2LDYgQEAgcm9ja2NoaXBfdnB1OTgxX2F2MV9kZWNfc2V0X3JlZihzdHJ1Y3QgaGFudHJvX2N0
eCAqY3R4LCBpbnQgcmVmLCBpbnQgaWR4LAo+ICAJc3RydWN0IGhhbnRyb19kZXYgKnZwdSA9IGN0
eC0+ZGV2Owo+ICAJc3RydWN0IGhhbnRyb19kZWNvZGVkX2J1ZmZlciAqZHN0Owo+ICAJZG1hX2Fk
ZHJfdCBsdW1hX2FkZHIsIGNocm9tYV9hZGRyLCBtdl9hZGRyID0gMDsKPiAtCXNpemVfdCBjcl9v
ZmZzZXQgPSByb2NrY2hpcF92cHU5ODFfYXYxX2RlY19sdW1hX3NpemUoY3R4KTsKPiAtCXNpemVf
dCBtdl9vZmZzZXQgPSByb2NrY2hpcF92cHU5ODFfYXYxX2RlY19jaHJvbWFfc2l6ZShjdHgpOwo+
ICAJaW50IGN1cl93aWR0aCA9IGZyYW1lLT5mcmFtZV93aWR0aF9taW51c18xICsgMTsKPiAgCWlu
dCBjdXJfaGVpZ2h0ID0gZnJhbWUtPmZyYW1lX2hlaWdodF9taW51c18xICsgMTsKPiAgCWludCBz
Y2FsZV93aWR0aCA9Cj4gQEAgLTc0NCw4ICs3NDIsOCBAQCByb2NrY2hpcF92cHU5ODFfYXYxX2Rl
Y19zZXRfcmVmKHN0cnVjdCBoYW50cm9fY3R4ICpjdHgsIGludCByZWYsIGludCBpZHgsCj4gIAo+
ICAJZHN0ID0gdmIyX3RvX2hhbnRyb19kZWNvZGVkX2J1ZigmYXYxX2RlYy0+ZnJhbWVfcmVmc1tp
ZHhdLnZiMl9yZWYtPnZiMl9idWYpOwo+ICAJbHVtYV9hZGRyID0gaGFudHJvX2dldF9kZWNfYnVm
X2FkZHIoY3R4LCAmZHN0LT5iYXNlLnZiLnZiMl9idWYpOwo+IC0JY2hyb21hX2FkZHIgPSBsdW1h
X2FkZHIgKyBjcl9vZmZzZXQ7Cj4gLQltdl9hZGRyID0gbHVtYV9hZGRyICsgbXZfb2Zmc2V0Owo+
ICsJY2hyb21hX2FkZHIgPSBsdW1hX2FkZHIgKyBkc3QtPmF2MS5jaHJvbWFfb2Zmc2V0Owo+ICsJ
bXZfYWRkciA9IGx1bWFfYWRkciArIGRzdC0+YXYxLm12X29mZnNldDsKPiAgCj4gIAloYW50cm9f
d3JpdGVfYWRkcih2cHUsIEFWMV9SRUZFUkVOQ0VfWShyZWYpLCBsdW1hX2FkZHIpOwo+ICAJaGFu
dHJvX3dyaXRlX2FkZHIodnB1LCBBVjFfUkVGRVJFTkNFX0NCKHJlZiksIGNocm9tYV9hZGRyKTsK
PiBAQCAtMjA4OSw2ICsyMDg3LDkgQEAgcm9ja2NoaXBfdnB1OTgxX2F2MV9kZWNfc2V0X291dHB1
dF9idWZmZXIoc3RydWN0IGhhbnRyb19jdHggKmN0eCkKPiAgCWNocm9tYV9hZGRyID0gbHVtYV9h
ZGRyICsgY3Jfb2Zmc2V0Owo+ICAJbXZfYWRkciA9IGx1bWFfYWRkciArIG12X29mZnNldDsKPiAg
Cj4gKwlkc3QtPmF2MS5jaHJvbWFfb2Zmc2V0ID0gY3Jfb2Zmc2V0Owo+ICsJZHN0LT5hdjEubXZf
b2Zmc2V0ID0gbXZfb2Zmc2V0Owo+ICsKPiAgCWhhbnRyb193cml0ZV9hZGRyKHZwdSwgQVYxX1RJ
TEVfT1VUX0xVLCBsdW1hX2FkZHIpOwo+ICAJaGFudHJvX3dyaXRlX2FkZHIodnB1LCBBVjFfVElM
RV9PVVRfQ0gsIGNocm9tYV9hZGRyKTsKPiAgCWhhbnRyb193cml0ZV9hZGRyKHZwdSwgQVYxX1RJ
TEVfT1VUX01WLCBtdl9hZGRyKTsKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
