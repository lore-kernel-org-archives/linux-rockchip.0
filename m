Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA711E7717F
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Dec 2024 09:27:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q4zVxTL9hMSQLk5tA+gW3iSajyAvcNm/8JrbbTZfiD0=; b=SrPd4oHLjlFy8B
	Hu/RNrQRHtdtYSLPyHlattLTyIQtB5BdwLc/36bGWrb1AFb5aMH9u7MtaA6nNualD1w0XjeIF3hS7
	PL7JZ42c/aJ5DpTbF05U9mcNeZqZ+Y1UjboMPBOBcosua54m/i7ukVBuRWcxv2sbZCpGSAglMAbYd
	0/rUDA0tNee/Vh1QmUrZ+5fZvStt7LXKvaWh6JD7hikb337nbB2itinMhQmzNKPjDkErrleOXrew5
	Yp4ue99gKi86wxYaADsflYcGXlh2hph83fOUqZ5jmYhdDCwiKDYaRge76vjpCqLWtYe3kqCB+kVXf
	nkDBOcmnCC96DJV/TqoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN7OD-00000009XJa-0PUH;
	Mon, 16 Dec 2024 09:27:45 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN7N7-00000009X9k-1vta;
	Mon, 16 Dec 2024 09:26:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id CB957A40DE8;
	Mon, 16 Dec 2024 09:24:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A707DC4CED0;
	Mon, 16 Dec 2024 09:26:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734341196;
	bh=AH8G7X2hBjteL80emlIx2HkMUhq8o72V7loxAGG14fg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=d+wi8k04KRi2PiKyun7RzEs0cgkcKZA3C/60OlT3C8fYH++hljJ1pkaYgs37vFhfo
	 uDmimYXhcGc3KC7WQ5ZhrkKI3Dm4eeNaQxWk3GUoxmWNOsrxYVNyF/Y6iC+KAhdttW
	 OooNVw/VRRiTbp42FKRdN1FPNmAYYqCSd/6u9miMbDR5+fa97n+uKN3Zsx/i4YPPhz
	 RvNggu4qu+7PPC0R/XR/u14v+WmBGqfVJsFRZ1sIzvFuJShN2KGPVojdFG+j9J100P
	 GAq8DlA7Ehl0Sa1j1Hh1yTpWF5orr8TOQXfbctqzZ0M9zhOX4KiW4RQyJDKAyn+Fja
	 A+BmJ3Rpcc3Ag==
Date: Mon, 16 Dec 2024 10:26:32 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Shimrra Shai <shimrrashai@gmail.com>
Cc: linux-kernel@vger.kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, heiko@sntech.de, krzk+dt@kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	robh@kernel.org
Subject: Re: [PATCH v3 2/3] dt-bindings: pinctrl: add header for PCA9555 GPIO
 extender bindings on some Rockchip-based devices
Message-ID: <upc5ctukw3vyxjda7fmpjsqttu4w6vj7hm7vpuezzwytotpi5w@eahfui4kc3nj>
References: <20241215032507.4739-1-shimrrashai@gmail.com>
 <20241215032507.4739-3-shimrrashai@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241215032507.4739-3-shimrrashai@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_012637_564940_9499117B 
X-CRM114-Status: GOOD (  22.49  )
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

T24gU2F0LCBEZWMgMTQsIDIwMjQgYXQgMDk6MjQ6NTRQTSAtMDYwMCwgU2hpbXJyYSBTaGFpIHdy
b3RlOgo+IEl0IHNlZW1lZCBhIGJpdCBkaXNwdXRlZCB3aGV0aGVyIHRoaXMgd2FzIGFjdHVhbGx5
IG5lY2Vzc2FyeSwgYnV0IEkgYW0KPiBpbmNsdWRpbmcgaXQgbm9uZXRoZWxlc3MuIEl0IG1ha2Vz
IGl0IHNsaWdodGx5IGNsZWFyZXIgaG93IHRoZSBwaW5zIG9uIHRoZQo+IFBDQTk1NTUgR1BJTyBl
eHRlbmRlciB1c2VkIG9uIHRoZSBib2FyZCBhcmUgYWN0dWF0ZWQgdGhhbiB3b3VsZCBiZSBldmlk
ZW50Cj4gZnJvbSB0aGUgbnVtYmVycyBhbG9uZSwgc2luY2UgYWNjb3JkaW5nIHRvIHRoZSBzcGVj
IHNoZWV0cyBmb3IgaXQgYnkgTlhQOgo+IAo+IGh0dHBzOi8vd3d3Lm54cC5jb20vZG9jcy9lbi9k
YXRhLXNoZWV0L1BDQTk1NTUucGRmCj4gCj4gdGhlcmUgYXJlIHR3byBiYW5rcyBvZiBjb250cm9s
bGFibGUgcGlucywgSU8wIGFuZCBJTzEsIHdoaWNoIGFyZSBsYWJlbGVkCj4gZXF1aXZhbGVudGx5
IHRvIHRoZSBsYWJlbHMgcHJvdmlkZWQgYmVsb3cuCj4gCj4gQWxzbyBzb3JyeSBASGVpa28gU3TD
vGJuZXIgZm9yIGFkZGluZyB5b3VyIG5hbWUgb24gaXQ7IEkgaGFkIGN1dCB0aGlzIG9mZiBhCj4g
QlNQIHNvdXJjZSBmaWxlIHRoYXQgd2FzIGxvbmdlci4gU2luY2UgdGhpcyBmaWxlIGNvbnRhaW5z
IG9ubHkgdGhpcwo+IGlzb2xhdGVkIHNlY3Rpb24sIHdoaWNoIHdhcyB3cml0dGVuIGJ5IHNvbWVv
bmUgZWxzZSwgSSBwdXQgdGhlaXIgYXV0aG9yc2hpcAo+IG9uIGl0IGluc3RlYWQuIFVuZm9ydHVu
YXRlbHkgSSBkbyBub3Qga25vdyB3aG8gImRhaWpoIiBpcywgb25seSB0aGF0IHRoZXkKPiB1c2Vk
IHRoYXQgaGFuZGxlIG9uIEdpdExhYiB0byBzdWJtaXQgdGhpcyBjb2RlIHBpZWNlIGFuZCBJIGdv
dCB0aGUKPiBpbmRpY2F0ZWQgZW1haWwgYWRkcmVzcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBTaGlt
cnJhIFNoYWkgPHNoaW1ycmFzaGFpQGdtYWlsLmNvbT4KPiAtLS0KPiAgLi4uL2R0LWJpbmRpbmdz
L3BpbmN0cmwvcm9ja2NoaXAtcGNhOTU1NS5oICAgIHwgMzEgKysrKysrKysrKysrKysrKysrKwo+
ICAxIGZpbGUgY2hhbmdlZCwgMzEgaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQg
aW5jbHVkZS9kdC1iaW5kaW5ncy9waW5jdHJsL3JvY2tjaGlwLXBjYTk1NTUuaAo+IAo+IGRpZmYg
LS1naXQgYS9pbmNsdWRlL2R0LWJpbmRpbmdzL3BpbmN0cmwvcm9ja2NoaXAtcGNhOTU1NS5oIGIv
aW5jbHVkZS9kdC1iaW5kaW5ncy9waW5jdHJsL3JvY2tjaGlwLXBjYTk1NTUuaAo+IG5ldyBmaWxl
IG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwLi4yMWNhOTk0ODgKPiAtLS0gL2Rldi9udWxs
Cj4gKysrIGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9waW5jdHJsL3JvY2tjaGlwLXBjYTk1NTUuaAo+
IEBAIC0wLDAgKzEsMzEgQEAKPiArLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAt
b25seSBPUiBNSVQgKi8KPiArLyoKPiArICogQmluZGluZ3MgZm9yIHRoZSBQQ0E5NTU1IEdQSU8g
ZXh0ZW5kZXIgdXNlZCBvbiBzb21lIFJvY2tjaGlwIGRldmljZXMsIGUuZy4KPiArICogRmlyZWZs
eS4KPiArICoKPiArICogQ29weXJpZ2h0IChDKSAyMDIyIFpob25nc2hhbiBUaWFucWkgSW50ZWxs
aWdlbnQgVGVjaG5vbG9neSBDby4sIEx0ZC4KPiArICogQXV0aG9yczogZGFpamggPGRqaEB0LWNo
aXAuY29tLmNuPgo+ICsgKiAgICAgICAgICBTaGltcnJhIFNoYWkgPHNoaW1ycmFzaGFpQGdtYWls
LmNvbT4KPiArICovCj4gKwo+ICsjaWZuZGVmIF9fUk9DS0NISVBfUENBOTU1NV9IX18KPiArI2Rl
ZmluZSBfX1JPQ0tDSElQX1BDQTk1NTVfSF9fCj4gKwo+ICsjZGVmaW5lIFBDQV9JTzBfMCAgICAg
ICAgICAwCgoxLiBUaGVyZSBpcyBubyB1c2VyIG9mIHRoZXNlIGJpbmRpbmdzLgoyLiBJdCdzIG1l
YW5pbmdsZXNzIHRvIG1hcCAwIHRvIDAuLi4KCkRyb3AgZW50aXJlIHBhdGNoLgoKQmVzdCByZWdh
cmRzLApLcnp5c3p0b2YKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
