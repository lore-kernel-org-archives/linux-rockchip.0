Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2FBDCAC5B8
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Sep 2025 14:13:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LTfT25X0iYbCUbquO0XsiOAl5nP8gVEhBFXgdDZWBJw=; b=AA3JGumO7Iiao27sCja5rdPt4E
	ZDWmDTA0+tkaLpPQEMCiq+8Wx/iW0W4jhnkMgZr+s7kxQU666aFP2skzX0Mal1c5WLr7/k6XsNVGW
	3cY7WDVMAQAXSftll3+CsLBFKHzg4FuixPlm1cGJ+Hjuc+2BN88fTn3jM8/11I5ZsB0lGBLhIJzC2
	DK4ra08d3YOq1NLsmFXjKda4e3xwfD+AJnicQQqRyFcaByxuhcgOPiDUS5VH79uyw2m5qh2dEpLo0
	JIuUpsraM2xBCoOvYgm/Scit35PcoMFuPyxpg3DcC4WXvCx9tixSqZMKIYfqKJvFGwO0o5HNncrQ5
	9YFHi0MA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2Vfj-0000000AFmN-0E40;
	Sat, 27 Sep 2025 14:13:11 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2Vff-0000000AFi4-3YyW;
	Sat, 27 Sep 2025 14:13:09 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1758982385;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kDJxiELqf4U5lRLf3tONs5cV8e4+Ke0rdHsBjyMJTgc=;
	b=XvFFGawF9nEueZNw9RqkWyjr9N8/47dhxMb5QRL40fuerjSMVv8W9/oetahfHvOLEznbrt
	JyefKJ8hg3cHMZabL6U/H/9xVZwMy/GA+6O8Pw3Mm2mLJ1Bl/Nmqt0wAsl63/ksGSFsPJn
	CakoeRrz8K50V5xW8aKa7zYpj9Xaf/XSJ3yypekBG7hfPlYmdi9WXBqPk/GDNkc/0UBbgh
	6XQlRVRxBV0Txmsx6FnUecyPFggfXf8KCg2W75xHtEeYxy/IpCB+M4Wwj8xwy1Nk4XJ8C9
	K710to/g0Ys4WvTwNRk4voXaPB1HEl/xX6qyl1L0tKI7ub0ecfWpWMUQKuEacg==
Date: Sat, 27 Sep 2025 16:13:04 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Tianling Shen <cnsztl@gmail.com>
Cc: Diederik de Haas <didi.debian@cknow.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Jonas Karlman
 <jonas@kwiboo.se>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add devicetree for the
 FriendlyElec NanoPi R76S
In-Reply-To: <ad4a7dda-8f6f-4d2a-84d9-838611f2285f@gmail.com>
References: <20250922091509.2695565-1-cnsztl@gmail.com>
 <20250922091509.2695565-2-cnsztl@gmail.com>
 <DD2V17FJ29MV.3YDX1VUWGKEH@cknow.org>
 <1bb00ad6-ffe1-4783-909b-032dfb984180@gmail.com>
 <DD3EST9Y5UHF.12FJMDJUSZNYL@cknow.org>
 <d0a3d5d4480eac12ba5e2b15bcbc578f@manjaro.org>
 <ad4a7dda-8f6f-4d2a-84d9-838611f2285f@gmail.com>
Message-ID: <5aa5862c4f744b5eb67ad6fe0677e7b1@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250927_071308_225902_9BB4508C 
X-CRM114-Status: GOOD (  14.83  )
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

T24gMjAyNS0wOS0yNyAxNTo1MiwgVGlhbmxpbmcgU2hlbiB3cm90ZToKPiBPbiAyMDI1LzkvMjcg
MjE6NDcsIERyYWdhbiBTaW1pYyB3cm90ZToKPj4gT24gMjAyNS0wOS0yNyAwOTozNywgRGllZGVy
aWsgZGUgSGFhcyB3cm90ZToKPj4+IE9uIFNhdCBTZXAgMjcsIDIwMjUgYXQgMzoxOSBBTSBDRVNU
LCBUaWFubGluZyBTaGVuIHdyb3RlOgo+Pj4+IE9uIDIwMjUvOS8yNyAwOjA3LCBEaWVkZXJpayBk
ZSBIYWFzIHdyb3RlOgo+Pj4+PiBJdCBpcyByZWNvbW1lbmRlZCB0byB1c2UgdGhlIGxhYmVscyBp
biB0aGUgc2NoZW1hdGljcyB0byBkZWZpbmUgdGhlCj4+Pj4+IHBpbmN0bCBub2RlcyAoYW5kIHRo
dXMgdGhlaXIgcmVmZXJlbmNlcykuIEluIHF1aXRlIGEgbG90IG9mIGNhc2VzIAo+Pj4+PiB0aGF0
J3MKPj4+Pj4gaW5kZWVkIHRoZSBjYXNlLCBidXQgbm90IGZvciBncGlvLWtleXMgKFVTRVJfQlVU
KSBvciB0aGVzZSAKPj4+Pj4gZ3Bpby1sZWRzCj4+Pj4+IHBpbmN0bHMuCj4+Pj4gCj4+Pj4gSSBj
YW5ub3QgZmluZCBhbnkgc3BlY2lmaWMgbmFtaW5nIHJ1bGVzIGZyb20gdGhlIGdwaW8ta2V5c1sx
XSBhbmQKPj4+PiBncGlvLWxlZHNbMl0gYmluZGluZ3MsIGRpZCBJIG1pc3MgYW55IHVwZGF0ZT8K
Pj4+PiAKPj4+PiBJIHRoaW5rIHRoaXMgbmFtaW5nIG1hdGNoZXMgdGhlIGN1cnJlbnQgcHJhY3Rp
Y2UgYXQgbGVhc3QgaW4gCj4+Pj4gcm9ja2NoaXAncwo+Pj4+IGR0IHRyZWUuCj4+PiAKPj4+IFRo
ZXJlIGlzIGFuIHVub2ZmaWNpYWwgcnVsZS9haW06Cj4+PiBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9saW51eC1yb2NrY2hpcC81MzYwMTczLmt0cEoxMWNROFFAZGllZ28vCj4+PiBCdXQgZ3JhbnRl
ZCwgdGhlcmUgaXMgJ3NvbWUnIGluY29uc2lzdGVuY3kuCj4+PiAKPj4+IEFuZCB1c2VkIGluIGYu
ZS4KPj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwLzIwMjUwNzI3MTQ0
NDA5LjMyNzc0MC00LSAKPj4+IGpvbmFzQGt3aWJvby5zZS8KPj4+IAo+Pj4gV2hlcmUgeW91IGNh
biBqdXN0IGNvcHkgdGhlIHBpbmN0cmwgbGFiZWxzIGZyb20gdGhlIGR0c1tpXSBhbmQgcGFzdGUK
Pj4+IHRoYXQgaW4gdGhlIHNjaGVtYXRpYyBkb2N1bWVudCBhbmQgeW91J3JlIGluc3RhbnRseSBh
dCB0aGUgcmlnaHQgCj4+PiBwbGFjZS4KPj4+IFdoaWNoIGlzIHRoZSBleGFjdCBwdXJwb3NlIG9m
IHRoYXQgcnVsZS9haW0uCj4+IAo+PiBJcyB0aGUgc2NoZW1hdGljIGFjdHVhbGx5IHB1YmxpY2x5
IGF2YWlsYWJsZT/CoCBJIHRyaWVkIHNlYXJjaGluZyBmb3IKPj4gaXQsIGJ1dCBmb3VuZCBub3Ro
aW5nLCB1bmZvcnR1bmF0ZWx5Lgo+IAo+IFRoZSBzY2hlbWF0aWMgZm9yIE5hbm9QaSBSNzZTIGlz
IGF2YWlsYWJsZSBhdAo+IGh0dHBzOi8vd2lraS5mcmllbmRseWVsZWMuY29tL3dpa2kvaW1hZ2Vz
LzYvNjAvTmFub1BpX1I3NlNfTFA0WF8yNDExX1NDSC5wZGYKPiAKPiBGb3IgbW9yZSBpbmZvcm1h
dGlvbiBwbGVhc2UgbW92ZSB0bwo+IGh0dHBzOi8vd2lraS5mcmllbmRseWVsZWMuY29tL3dpa2kv
aW5kZXgucGhwL05hbm9QaV9SNzZTLgoKT2gsIEkgc2VlLiAgSSdtIHNvcnJ5LCBzb21laG93IEkg
Z290IHRoZSBOYW5vUGkgUjc2UyBtaXhlZCB1cCB3aXRoCmFub3RoZXIgYm9hcmQgd2hvc2UgRFQg
aGFzIGFsc28gYmVlbiBzdWJtaXR0ZWQgcmVjZW50bHksIFsxXSBmb3IKd2hpY2ggSSB3YXMgdW5h
YmxlIHRvIGZpbmQgdGhlIHNjaGVtYXRpYy4gIEkgYWxyZWFkeSBmb3VuZCB0aGUgUjc2UwpzY2hl
bWF0aWMsIHdoaWNoIHdhcyBhY3R1YWxseSByZWFsbHkgZWFzeSB0byBkby4KCkJ5IHRoZSB3YXks
IGl0IHdvdWxkIGJlIGdvb2QgdG8gcHJvdmlkZSBhIGxpbmsgdG8gdGhlIHNjaGVtYXRpYyBhcwph
IHJlZmVyZW5jZSBpbiB0aGUgZGVzY3JpcHRpb24gb2YgcGF0Y2ggMi8yLCBpZiB0aGVyZSB0dXJu
cyBvdXQgdG8KYmUgdjMgb2YgdGhpcyBzZXJpZXMuCgpbMV0gCmh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2xpbnV4LXJvY2tjaGlwLzIwMjUwOTI1LXByaW50LWRlZm9nLTk5MmMxMjk3MGIzN0BzcHVk
L1QvI3QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
