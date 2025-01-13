Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C643E7719A
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jan 2025 04:27:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QiODrvHgk0wdKIQAoxBgYidb9zTpo3LxjCIsHxIzQVk=; b=ODbCx0EDhlCd6ajYghHif5E9In
	p7lI0eruqcxaO4I38rU+lrCMXlmSLhvIcd3O8EXTDeeQrx1s0El3APv9S6ixlh2urZ6rOwDuEO2uI
	GcZ7BMvTY75EJuEj7d6BPXQix5axL3UhOCEzhZHeCO4ugvu2ZVMiZLWSRcIFRswwVvzJKptwPQoRa
	dIKclqc4xeB/DAdQGH/0k4fY4E1wm1lcva3kpXbPdZTsxFrQ/ndFRAHHAcTZDCLua3dVvyExlhTpI
	vABtkryhXE99NXrztXeYBPaUwQ6DvS6ofUfxWihP3GYg2m8crztXIEMgsbt9G3eMPOE7FHO2pjhTS
	t54bBM7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXC2d-00000003yqE-1vDc;
	Mon, 13 Jan 2025 04:27:07 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXC1M-00000003ygn-0yJ9;
	Mon, 13 Jan 2025 04:25:49 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1736742345;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0i/rYtONain48RRX0u5I3QgFdCO9Q8AGBJWpvj/+2GM=;
	b=LNbCiOsqcKhBuhmC+ka4eaFtsvRGNV9N9yDGYt065LSqN2h6wpjt8HqKqdgfh5AK9pL53e
	Gu4PRBhlJXoyPCukxwzdmhXC4kKch/mepdvJfwC4vVgRclFaCTEYAhV2wZRdPc+sqXYHuW
	W95mRt5Ep8+aiqxsll2kRwseXuUxzD82QBikOLPbtjuivLN94k77gZUtW/1qRWidCaLx2n
	hJLFjQwL1sg7RTR7Kb5D7lXePybHDfKjzPwgLV9I3gqLCw2pttN6QJK2J4JTnyIgxfKjs1
	i6YIFqWzCuzDpZHZqOszZ7zLPHd5+v71P14vuHEdNTg8ipZPw3oASDRVh4UBRQ==
Date: Mon, 13 Jan 2025 05:25:44 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Junhao Xie <bigfoot@classfun.cn>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Jonas
 Karlman <jonas@kwiboo.se>, Chukun Pan <amadeus@jmu.edu.cn>, FUKAUMI Naoki
 <naoki@radxa.com>, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 3/3] arm64: dts: rockchip: add dts for Ariaboard
 Photonicat RK3568
In-Reply-To: <35f8fe37-b06f-49eb-b0c2-430421f1ff3b@classfun.cn>
References: <20250112073344.1976411-1-bigfoot@classfun.cn>
 <20250112073344.1976411-4-bigfoot@classfun.cn>
 <1e72cc9cdc390e79e97806fe4f7d8abf@manjaro.org>
 <35f8fe37-b06f-49eb-b0c2-430421f1ff3b@classfun.cn>
Message-ID: <7b55c7469774c41d9896df3100df1630@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250112_202548_582795_BFBCB7E7 
X-CRM114-Status: GOOD (  13.69  )
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

SGVsbG8gSnVuaGFvLAoKT24gMjAyNS0wMS0xMiAyMzoxNiwgSnVuaGFvIFhpZSB3cm90ZToKPiBP
biAyMDI1LzEvMTIgMTY6NDcsIERyYWdhbiBTaW1pYyB3cm90ZToKPj4gT24gMjAyNS0wMS0xMiAw
ODozMywgSnVuaGFvIFhpZSB3cm90ZToKPj4+IEFkZCBkdHMgZm9yIEFyaWFib2FyZCBQaG90b25p
Y2F0IFJLMzU2OC4KPj4+IAo+Pj4gV29ya2luZyBJTzoKPj4+IMKgwqDCoCBEZWJ1ZyBVQVJUCj4+
PiDCoMKgwqAgU0RJTyBRQ0E5Mzc3IFdpRmkgYW5kIEJsdWV0b290aAo+Pj4gwqDCoMKgIE0uMiBF
LUtleSBQQ0llIFdpRmkgYW5kIEJsdWV0b290aAo+Pj4gwqDCoMKgIE0uMiBCLUtleSBVU0IgTW9k
ZW0gV1dBTgo+Pj4gwqDCoMKgIEV0aGVybmV0IFdBTiBQb3J0Cj4+PiDCoMKgwqAgTWljcm9TRCBD
YXJkIHNsb3QKPj4+IMKgwqDCoCBlTU1DCj4+PiDCoMKgwqAgSERNSSBPdXRwdXQKPj4+IMKgwqDC
oCBNYWxpIEdQVQo+Pj4gwqDCoMKgIFVTQiBUeXBlLUEKPj4+IAo+Pj4gTm90IHdvcmtpbmcgSU86
Cj4+PiDCoMKgwqAgRXRoZXJuZXQgTEFOIFBvcnQgKExhY2sgb2YgU0dNSUkgc3VwcG9ydCkKPj4+
IMKgwqDCoCBQb3dlciBtYW5hZ2VtZW50IE1DVSBvbiBVQVJUNCAoRHJpdmVyIHBlbmRpbmcpCj4+
PiAKPj4+IE5vdCB3b3JraW5nIElPIGluIE1DVToKPj4+IMKgwqDCoCBCYXR0ZXJ5IHZvbHRhZ2Ug
c2Vuc29yCj4+PiDCoMKgwqAgQm9hcmQgdGVtcGVyYXR1cmUgc2Vuc29yCj4+PiDCoMKgwqAgSGFy
ZHdhcmUgUG93ZXItb2ZmCj4+PiDCoMKgwqAgSGFyZHdhcmUgV2F0Y2hkb2cKPj4+IMKgwqDCoCBO
ZXR3b3JrIHN0YXR1cyBMRUQKPj4+IMKgwqDCoCBSZWFsLXRpbWUgY2xvY2sKPj4+IMKgwqDCoCBV
U0IgQ2hhcmdlciB2b2x0YWdlIHNlbnNvcgo+Pj4gCj4+PiBBYm91dCBvbmJvYXJkIHBvd2VyIG1h
bmFnZW1lbnQgTUNVOgo+Pj4gwqDCoMKgIEEgaGVhcnRiZWF0IG11c3QgYmUgc2VudCB0byB0aGUg
TUNVIHdpdGhpbiA2MCBzZWNvbmRzLAo+Pj4gwqDCoMKgIG90aGVyd2lzZSB0aGUgTUNVIHdpbGwg
cmVzdGFydCB0aGUgc3lzdGVtLgo+Pj4gwqDCoMKgIFdoZW4gcG93ZXJpbmcgb2ZmLCBhIHNodXRk
b3duIGNvbW1hbmQgbmVlZHMgdG8gYmUgc2VudCB0byB0aGUgCj4+PiBNQ1UuCj4+PiDCoMKgwqAg
V2hlbiB0aGUgcG93ZXIgYnV0dG9uIGlzIGxvbmcgcHJlc3NlZCwgdGhlIE1DVSB3aWxsIHNlbmQg
YSAKPj4+IHNodXRkb3duCj4+PiDCoMKgwqAgY29tbWFuZCB0byB0aGUgc3lzdGVtLiBJZiBzeXN0
ZW0gZG9lcyBub3Qgc2h1dGRvd24gd2l0aGluIDYwIAo+Pj4gc2Vjb25kcywKPj4+IMKgwqDCoCB0
aGUgcG93ZXIgd2lsbCBiZSB0dXJuZWQgb2ZmIGRpcmVjdGx5Lgo+Pj4gwqDCoMKgIE1DVSBvbmx5
IHByb3ZpZGVzIHZvbHRhZ2UgZm9yIGNoYXJnZXIgYW5kIGJhdHRlcnkuCj4+PiDCoMKgwqAgTWFu
dWZhY3R1cmVyIHJlbW92ZWQgUks4eHggUE1JQy4KPj4gCj4+IFVubGVzcyB0aGUgZGVzaWduIG9m
IHRoZSBib2FyZCBpcyBwcm9wcmlldGFyeSwgaXQgd291bGQgYmUgZ29vZAo+PiB0byBwcm92aWRl
IGEgbGluayB0byB0aGUgYm9hcmQgc2NoZW1hdGljLCBmb3IgdGhvc2UgaW50ZXJlc3RlZAo+PiBp
biB2ZXJpZnlpbmcgdGhlIGJvYXJkIERUIGZpbGUuCj4+IAo+PiBBcyBhIG5vdGUsIEkgYWxyZWFk
eSB0cmllZCB0byBmaW5kIHRoZSBib2FyZCBzY2hlbWF0aWMgd2l0aCBubwo+PiBzdWNjZXNzLCBz
byB0aGUgZGVzaWduIG1pZ2h0IGJlIHByb3ByaWV0YXJ5Lgo+IAo+IFllcywgdGhpcyBib2FyZCBp
cyBwcm9wcmlldGFyeS4gSSBhc2tlZCB0aGUgbWFudWZhY3R1cmVyIGFuZAo+IHRoZXkgZG9uJ3Qg
cHJvdmlkZSBzY2hlbWF0aWNzLgo+IAo+IEJ1dCBJIGZvdW5kIGEgcGFydGlhbCBzY2hlbWF0aWMg
ZGlhZ3JhbSBvZiBzb21lIG9mIGNvbm5lY3RvcnMKPiBvbiB0aGUgYm9hcmQgaGVyZQo+IGh0dHBz
Oi8vZGwuYXJpYWJvYXJkLmNvbS9waG90b25pY2F0X3JrMzU2OC9QaG90b25pY2F0JTIwcmszNTY4
JTIwRVZCJTIwQm9hcmQlMjBzcGVjLnBkZgoKWWVzLCBJIGFsc28gZm91bmQgdGhhdCBQREYgZmls
ZS4gIEl0J3Mgc29tZXdoYXQgc2ltaWxhciB0byB3aGF0ClJhc3BiZXJyeSBQaSBwcm92aWRlcyB3
aXRoIGl0cyByZWR1Y2VkIHNjaGVtYXRpY3MgLS0gaGVscGZ1bCB0bwphbiBleHRlbnQsIGJ1dCBz
dGlsbCBsZWF2aW5nIGEgbG90IHRvIGJlIGRlc2lyZWQuCgpPdXQgb2YgY3VyaW9zaXR5LCB3aGF0
IGRpZCB5b3UgYWN0dWFsbHkgdXNlIGFzIGEgcmVmZXJlbmNlIHRvIGNyZWF0ZQp0aGUgYm9hcmQg
ZHRzIGZpbGU/ICBQZXJoYXBzIHNvbWUgZG93bnN0cmVhbSBkdHMgZmlsZSBwcm92aWRlZCBieQp0
aGUgbWFudWZhY3R1cmVyIG9yIGZvdW5kIGluIHNvbWUgb3BlcmF0aW5nIHN5c3RlbSBpbWFnZT8K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
