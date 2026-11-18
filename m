Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E67C4606A32A
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2026 14:51:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=oX6FQnZS;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.a=rsa-sha256 header.s=protonmail3 header.b=rZ/PnwSS
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Ymnz6Z8TzP4pm/oMdFV71K8gjtRte5X/eihR6Qbpa+E=; b=oX6FQnZS2S6Oe6Nbv+hn1lbsSO
	ZBhRYCoEboFwHZLP4kSz7LWEuzd1lgpakZSpq7clQG85n81nVr4lysrU+9TP1U6vnDSALF79r2BV6
	xdIOyb7+1fPdIifz5+UcFqvlmwwgSwN3isqETl9KlREDJBc8ANzh0ewYtraKZ42tHUhcQUQArH2Ly
	Un8t/3xjgEn1q7jnuDWWnji5ooQcmTLc0GSEvGET528ZCEbDcxhuHC0Hfgsxrr/rXnT0mPHK7L8TA
	/293Bd+wd1bCC/mmJzupn8vYx7Q1zCw0yEJDU08FSq3DnkGFjN4OZStBKp7jDXdnG4Xj/F6zkprW8
	dCksG73Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTh0T-000000099QH-08Hu;
	Wed, 18 Nov 2026 14:51:29 +0000
Received: from mail-10699.protonmail.ch ([79.135.106.99])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTh0P-000000099Oy-229x
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Nov 2026 14:51:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1795013480; x=1795272680;
	bh=eY4Iukd9tnjFhKXxywz21kAw07HDovdZxf/3jteIVpk=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=rZ/PnwSSZ1nVthbPy1h4qRvgQHEffarDlEReR+yx4dBjD7tO5dpXE3Yk0xZ/gp/Qo
	 v9LxmsS4Tk4xS1FeiH9Ni1c2yU4mo0nDfJx3t4DZZcjLk99IGRTyeLh4zYyxZis8tk
	 vxaDOHxwwY3IXTw6LEaQLh2GsMiHC3nzYf+unvtdTUV4fDe9iiN1nWWtsj0VkFTkH5
	 kzfktF8ZQWifZDoNYSY3TzUB3NBZGhx5jl12r/wi6ikVxb3krMi5GcGH2dyBmFPQGj
	 rFA+nffQYoDiNiapYqKhIviuE65hFotW5iIRO1rxM+lApx3lC876DbwXXAt75lzQKx
	 tcTciGWpaIh7w==
Date: Wed, 18 Nov 2026 14:51:13 +0000
To: Alexey Charkov <alchark@flipper.net>
From: Ryan Leung <untilscour@protonmail.com>
Cc: Rob Herring <robh@kernel.org>, Srinivas Kandagatla <srini@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Michael Walle <michael@walle.cc>, Miquel Raynal <miquel.raynal@bootlin.com>, Finley Xiao <finley.xiao@rock-chips.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, stable@vger.kernel.org
Subject: Re: [PATCH v2 0/4] nvmem: Derive Rockchip MAC addresses from the OTP CPU ID
Message-ID: <AQpdyd6hRl9cLAxBK-fEdzq0dcZsWpHP63dbDpOxcNQWCdaNIc4D3Mfi9Ll86jBVsbEVhr5-9EZzFHbkF6efBDcRUT7nXx9TH5Aeffy5DyU=@protonmail.com>
In-Reply-To: <CAKTNdwH6E5=9gZHB6tdianC2+1aDv4wnLmvL59kDW-dR3a12bg@mail.gmail.com>
References: <20260902-rk3576-otp-cpuid-mac-v2-0-e4b7fe2ab13f@flipper.net> <CAKTNdwH9QAgreJ-6+t1j_P1di4VyoMBSsFkf_g=mCi_-M8g9Pw@mail.gmail.com> <20260917221857.GA4056431-robh@kernel.org> <CAKTNdwH6E5=9gZHB6tdianC2+1aDv4wnLmvL59kDW-dR3a12bg@mail.gmail.com>
Feedback-ID: 184418679:user:proton
X-Pm-Message-ID: f72cf6b7ff069e62495bd32a905a304144d1643e
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_065125_687979_C0C56948 
X-CRM114-Status: GOOD (  38.84  )
X-Spam-Score: -2.8 (--)
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
X-Spam-Status: No, score=-10.8 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gRnJpZGF5LCBTZXB0ZW1iZXIgMTh0aCwgMjAyNiBhdCAzOjA4IFBNLCBBbGV4ZXkgQ2hhcmtv
diA8YWxjaGFya0BmbGlwcGVyLm5ldD4gd3JvdGU6Cgo+IEhpIFJvYiwKPiAKPiBPbiBGcmksIFNl
cCAxOCwgMjAyNiBhdCAyOjE54oCvQU0gUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4gd3Jv
dGU6Cj4gPgo+ID4gT24gVGh1LCBTZXAgMTAsIDIwMjYgYXQgMDY6NDg6MzNQTSArMDQwMCwgQWxl
eGV5IENoYXJrb3Ygd3JvdGU6Cj4gPiA+IE9uIFdlZCwgU2VwIDIsIDIwMjYgYXQgNTowOOKAr1BN
IEFsZXhleSBDaGFya292IDxhbGNoYXJrQGZsaXBwZXIubmV0PiB3cm90ZToKPiA+ID4gPgo+ID4g
PiA+IFJvY2tjaGlwIFNvQ3MgYXJlIHNoaXBwZWQgd2l0aCBhIHVuaXF1ZSBDUFUgSUQgaW4gdGhl
aXIgaW50ZXJuYWwgT1RQCj4gPiA+ID4gbWVtb3J5LCBhbmQgUm9ja2NoaXAgYm9vdGxvYWRlcnMg
dXNlIGl0IHRvIGdpdmUgYm9hcmRzIHdoaWNoIGhhdmUgbm8KPiA+ID4gPiBkZWRpY2F0ZWQgc3Rv
cmFnZSBmb3IgYSBNQUMgYWRkcmVzcyBhIHN0YWJsZSBvbmUgYW55d2F5OiB0aGV5IGhhc2ggdGhl
IENQVQo+ID4gPiA+IElEIGFuZCBwYXRjaCB0aGUgcmVzdWx0aW5nIGFkZHJlc3NlcyBpbnRvIHRo
ZSBkZXZpY2UgdHJlZSB0aGV5IGhhbmQgb3Zlci4KPiA+ID4gPgo+ID4gPiA+IEtlcm5lbHMgc3Rh
cnRlZCB3aXRob3V0IHRoYXQgZml4dXAsIGUuZy4gc3RyYWlnaHQgZnJvbSB0aGUgU1BMIGluIEZh
bGNvbgo+ID4gPiA+IG1vZGUgb3IgYnkgYW55IG90aGVyIGxvYWRlciB3aGljaCBkb2VzIG5vdCBp
bXBsZW1lbnQgUm9ja2NoaXAncyBkZXJpdmF0aW9uLAo+ID4gPiA+IGZhbGwgYmFjayB0byByYW5k
b20gTUFDIGFkZHJlc3NlcyB3aGljaCBjaGFuZ2Ugb24gZXZlcnkgYm9vdC4KPiA+ID4gPgo+ID4g
PiA+IEZvcm1hbGl6ZSB0aGUgZGVyaXZhdGlvbiBpbiB0aGUgRFQgYmluZGluZyBhbmQgYWRkIGEg
TGludXgga2VybmVsIGRyaXZlcgo+ID4gPiA+IGltcGxlbWVudGluZyBpdCwgc28gdGhhdCBhIExp
bnV4IGltYWdlIGNhbiB1c2UgdGhlIHNhbWUgc3RhYmxlIGFkZHJlc3Nlcwo+ID4gPiA+IHJlZ2Fy
ZGxlc3Mgb2YgdGhlIGJvb3QgZmxvdy4KPiA+ID4gPgo+ID4gPiA+IE9ubHkgUkszNTc2IGlzIHdp
cmVkIHVwIGhlcmUsIHRoYXQgYmVpbmcgdGhlIFNvQyBJIGNhbiB0ZXN0IG9uLiBPdGhlcgo+ID4g
PiA+IFJvY2tjaGlwIFNvQ3Mga2VlcCB0aGUgc2FtZSBDUFUgSUQgYXQgYSBkaWZmZXJlbnQgT1RQ
IG9mZnNldCAtIDB4NyByYXRoZXIKPiA+ID4gPiB0aGFuIDB4YSBvbiBSSzM1ODgsIGZvciBpbnN0
YW5jZSAtIHdoaWNoIG1ha2VzIHN1cHBvcnRpbmcgdGhlbSBhIHR3by1saW5lCj4gPiA+ID4gYWRk
aXRpb24gdG8gdGhlIGRyaXZlcidzIG1hdGNoIHRhYmxlIHBsdXMgdGhlIGxheW91dCBub2RlLgo+
ID4gPiA+Cj4gPiA+ID4gUGF0Y2ggMSBpcyBhIHByZXJlcXVpc2l0ZSBmaXguIFRoZSBPVFAgaGFy
ZHdhcmUgaGFzIGl0cyBvd24gaW50ZXJuYWwgc3RhdGUKPiA+ID4gPiBtYWNoaW5lIHdoaWNoIG9u
bHkgd29ya3MgY29ycmVjdGx5IHdpdGggc2VyaWFsIGFjY2VzcywgYnV0IHRoZSBjdXJyZW50Cj4g
PiA+ID4gZHJpdmVyIHNlcmlhbGl6ZXMgbm90aGluZywgd2hpY2ggcmVzdWx0cyBpbiB0aW1lb3V0
cyBhbmQvb3IgY29ycnVwdGVkCj4gPiA+ID4gcmVhZHMgKGUuZy4gcmV0dXJuaW5nIHNwbGljaW5n
IGEgVFNBREMgdHJpbSB2YWx1ZSBpbnRvIHRoZSBidWZmZXIgb2YgYQo+ID4gPiA+IGNhbGxlciBh
c2tpbmcgZm9yIHRoZSBDUFUgSUQsIG9yIG1peGluZyB1cCB0cmltIHZhbHVlcyBvZiBkaWZmZXJl
bnQgVFNBREMKPiA+ID4gPiBjYWxsZXJzKS4gSGVuY2UgdGhlIEZpeGVzOiB0YWcgYW5kIENjOiBz
dGFibGUuCj4gPiA+ID4KPiA+ID4gPiBDcm9zcy1jaGVja2VkIG9uIGFuIFJLMzU3NiBib2FyZDog
dGhlIGFkZHJlc3NlcyBmaXhlZCB1cCBpbnRvIHRoZSBGRFQgYnkKPiA+ID4gPiBVLUJvb3QgbWF0
Y2ggdGhlIG9uZXMgZGVyaXZlZCBieSB0aGUgbmV3IGRyaXZlciwgYW5kIHRoZSBkcml2ZXIgY29y
cmVjdGx5Cj4gPiA+ID4gYXNzaWducyB0aGVtIHRvIHRoZSBuZXR3b3JrIGludGVyZmFjZXMgd2hl
biB0aGUga2VybmVsIGlzIGJvb3RlZCB3aXRob3V0Cj4gPiA+ID4gVS1Cb290IHByb3BlciBhdCBh
bGwgKHZpYSBGYWxjb24gbW9kZSkuCj4gPiA+ID4KPiA+ID4gPiBTYXNoaWtvIGFsc28gcmlnaHRs
eSBwb2ludGVkIG91dCBhIHVzZS1hZnRlci1mcmVlIGluIHRoZSBudm1lbSBjb3JlIHdoZW4KPiA+
ID4gPiBhIGxheW91dCBkcml2ZXIgaXMgdW5sb2FkZWQgbGVhdmluZyBpdHMgc3lzZnMgbm9kZXMg
YW5kIHRoZSBwb3N0cHJvY2Vzc29yCj4gPiA+ID4gZnVuY3Rpb24gcG9pbnRlciBkYW5nbGluZy4g
VGhpcyBpcyBmaXhlZCBzZXBhcmF0ZWx5IGluIFsxXS4KPiA+ID4gPgo+ID4gPiA+IFsxXSBodHRw
czovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNjA5MDItbnZtZW0tbGF5b3V0LXVucmVnLXYxLTEt
MmQxNmJlYmViNTE4QGZsaXBwZXIubmV0Lwo+ID4gPiA+Cj4gPiA+ID4gU2lnbmVkLW9mZi1ieTog
QWxleGV5IENoYXJrb3YgPGFsY2hhcmtAZmxpcHBlci5uZXQ+Cj4gPiA+ID4gLS0tCj4gPiA+ID4g
Q2hhbmdlcyBpbiB2MjoKPiA+ID4gPiAtIFN3aXRjaGVkIGZyb20gYSBzY29wZS1iYXNlZCBndWFy
ZCB0byBleHBsaWNpdCBsb2NrL3VubG9jayBjYWxscyBpbiB0aGUKPiA+ID4gPiAgIE9UUCBkcml2
ZXIgdG8gYXZvaWQgbWl4aW5nIHN0eWxlcyBpbiBhIGZ1bmN0aW9uIHVzaW5nIGdvdG8gZXJyb3IK
PiA+ID4gPiAgIGhhbmRsaW5nIChTYXNoaWtvKQo+ID4gPiA+IC0gTGluayB0byB2MTogaHR0cHM6
Ly9wYXRjaC5tc2dpZC5saW5rLzIwMjYwOTAxLXJrMzU3Ni1vdHAtY3B1aWQtbWFjLXYxLTAtZWE5
MTM1MjcwZmMyQGZsaXBwZXIubmV0Cj4gPiA+ID4KPiA+ID4gPiAtLS0KPiA+ID4gPiBBbGV4ZXkg
Q2hhcmtvdiAoNCk6Cj4gPiA+ID4gICAgICAgbnZtZW06IHJvY2tjaGlwLW90cDogU2VyaWFsaXpl
IHJlYWRzCj4gPiA+Cj4gPiA+IEluY2lkZW50YWxseSwgcGF0Y2ggMSBvZiB0aGlzIHNlcmllcyBh
bHNvIGZpeGVzIENQVSB0aGVybWFsIHRocm90dGxpbmcKPiA+ID4gb24gbXkgUkszNTc2IGRldmlj
ZTogYXBwYXJlbnRseSwgdGhlIG1pcy1yZWFkIE9UUC1wcm9ncmFtbWVkIHRoZXJtYWwKPiA+ID4g
dHJpbSB2YWx1ZXMgYnJva2UgdGhlIHRoZXJtYWwgZ292ZXJub3IgbG9naWMsIHdoaWNoIG5vdyB3
b3Jrcwo+ID4gPiBjb3JyZWN0bHkgd2l0aCBwcm9wZXJseSBzZXJpYWxpemVkIE9UUCByZWFkcy4g
U28gaXQgd291bGQgYmUgZ3JlYXQgdG8KPiA+ID4gaGF2ZSB0aGVzZSBtZXJnZWQuCj4gPgo+ID4g
SXQgd291bGQgYmUgZ3JlYXQgdG8gaGF2ZSB0aGUgc2FzaGlrbyBjb21tZW50cyBhbmFseXplZCBh
bmQgcmVwbGllZCB0bwo+ID4gYXMgd2VsbCBpZiB5b3Ugd291bGQgbGlrZSB0aGlzIHRvIGJlIHJl
dmlld2VkLgo+IAo+IE9mIGNvdXJzZS4gT25lIGNvZGUtcmVsYXRlZCBjb21tZW50IFNhc2hpa28g
cmFpc2VkIGhhcyBiZWVuIGFkZHJlc3NlZAo+IGluIGEgc2VwYXJhdGUgcGF0Y2ggWzFdIHdoaWNo
IGlzIHN0aWxsIHBlbmRpbmcgcmV2aWV3LiBUaGUKPiBiaW5kaW5nLXJlbGF0ZWQgY29tbWVudHMg
d2lsbCBuZWVkIHRvIGJlIHJldmlzaXRlZCwgYXMgSSdkIGxpa2UgdG8KPiBmaXJzdCBleHBsb3Jl
IHRoZSBpZGVhIFJ5YW4gcHJvcG9zZWQgaW4gdGhlIGFkamFjZW50IHRocmVhZCBbMl0sIGFzIGl0
Cj4gd2lsbCBjaGFuZ2UgdGhlIGFwcHJvYWNoIHNvbWV3aGF0IGlmIGl0IHdvcmtzIG91dC4KPiAK
PiBCZXN0IHJlZ2FyZHMsCj4gQWxleGV5Cj4gCj4gWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L2FsbC8yMDI2MDkwMi1udm1lbS1sYXlvdXQtdW5yZWctdjEtMS0yZDE2YmViZWI1MThAZmxpcHBl
ci5uZXQvCj4gWzJdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI2MDkxNjEyMzM1NS40
NTA3LTEtdW50aWxzY291ckBwcm90b25tYWlsLmNvbS8KCkhpIEFsZXhleSwKCkhhdmUgeW91IGhh
ZCBhIGNoYW5jZSB0byBleHBsb3JlIHRoaXM/IEkgaGF2ZSBnb3QgYSB3b3JraW5nIHByb29mIG9m
CmNvbmNlcHQgWzFdIGZvciB0aGUgZm9ybWF0IEkgc3VnZ2VzdGVkLCB0ZXN0ZWQgb24gUkszNTc2
IChOYW5vUGkgTTUpIGFuZApSSzM1MjggKE5hbm9QaSBSMjhTKS4KCkJlc3QgcmVnYXJkcywKUnlh
bgoKWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS91bnRpbHNjb3VyL29wZW53cnQvY29tbWl0L2E2MjJj
MWNmMjkyZjdhNGJiNzA5MzUyMWUyNTQzNmJlMzI0ZmMxYTQKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
