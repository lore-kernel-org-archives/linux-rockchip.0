Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DADEC2BBCA
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Jun 2024 08:23:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H005va6oAqFEzSq++gJOLMq3z49ftUuGC+JtSrK588o=; b=fHHY9aqbY9v+Ma
	/fpdp3DyKCsEVZImxsjtfzJj7UAwbSPhMkM4JuBKYvVSgSoeByeNHljFYK7JTaR37uz7B7dmfIPZR
	sK2bDiLD7kro5rOWue559U++MA4XgUxOA7M5wG8UPtcMREnZXdW4k9qe5j0V2dHYJexn/jSYva8Y6
	nBrDS9dTsI8Bu1QAjHn2nszxLgKDBsxd/PVr8lScraxY6aRMMumUNSKhrcl6Wa5pmqSvaNbqUWODh
	Em6ReyuHdVmByGN82ctBIqhAnIqKgQ8BRsLxf+RNCvwnB3Sig8ReqNHrRhyGejJdibmJ1fyRP9vAZ
	ZT5JxpriJx8KNBh5l8vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sN6sy-0000000D3Ns-2CAS;
	Fri, 28 Jun 2024 08:23:12 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sN6so-0000000D3Ke-1g7B;
	Fri, 28 Jun 2024 08:23:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 89169CE3A87;
	Fri, 28 Jun 2024 08:23:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D46FAC2BD10;
	Fri, 28 Jun 2024 08:22:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719562979;
	bh=9plJAFYzP0h3s0xF2CkUYDNUSTdFH0Wk8KQf+HNwatY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Db0PubL52ny26QX2oYWSeEC2vtXXTphG441aCfoCr5tRe79Y71KYwpow96gRfc0qK
	 Oqdbqz51U44+JbdkinLP3v9BqtANH5V9d5y2/4zP9Hcm5vIA0lgaaMiuMEorCkIbiE
	 WA2CSUfrHGMif+rKN9lnIz0jf+t62xso+IL36nEKp55bFpYBwURhE7qlkKr9htkaZf
	 IPjzMFMWf6OzrhFwkHrZ4XOG/Ci2AjrHt5+zJKSLhBwpbrQhew0Tlj6Key+xERpDPN
	 cX35kUFTxXdeLVT5oAy69VT21cftRsDiRPXimOM34arp45nldOIr/wyM68SMdAyfT1
	 1MP/mDjdd7FMw==
Message-ID: <4bd9a2da-6ac8-40b3-ad50-01ae53caeef0@kernel.org>
Date: Fri, 28 Jun 2024 10:22:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] dt-bindings: clock: rk3188-cru-common: remove
 CLK_NR_CLKS
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Johan Jonker <jbx6244@gmail.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <6f21c09b-e8d2-4749-aca6-572c79df775d@gmail.com>
 <d8df3cd5-c602-4693-b78a-63a963aa6522@kernel.org> <2016066.NnIJQXNAa5@diego>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <2016066.NnIJQXNAa5@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240628_012302_824226_189C39A6 
X-CRM114-Status: GOOD (  12.57  )
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

T24gMjgvMDYvMjAyNCAxMDoxMywgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gSGkgS3J6eXN6dG9m
LAo+IAo+IEFtIEZyZWl0YWcsIDI4LiBKdW5pIDIwMjQsIDA5OjI3OjE0IENFU1Qgc2NocmllYiBL
cnp5c3p0b2YgS296bG93c2tpOgo+PiBPbiAyNy8wNi8yMDI0IDIzOjE3LCBKb2hhbiBKb25rZXIg
d3JvdGU6Cj4+PiBDTEtfTlJfQ0xLUyBzaG91bGQgbm90IGJlIHBhcnQgb2YgdGhlIGJpbmRpbmcu
Cj4+PiBSZW1vdmUgc2luY2UgdGhlIGtlcm5lbCBjb2RlIG5vIGxvbmdlciB1c2VzIGl0Lgo+Pgo+
PiBQbGVhc2Ugd3JhcCBuZWl0aGVyIHRvbyBlYXJseSBub3Igb3ZlciB0aGUgbGltaXQuIE5vdCBv
bmUgc2VudGVuY2UgcGVyIGxpbmUuCj4+Cj4+Cj4+Cj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogSm9o
YW4gSm9ua2VyIDxqYng2MjQ0QGdtYWlsLmNvbT4KPj4+IC0tLQo+Pj4gIGluY2x1ZGUvZHQtYmlu
ZGluZ3MvY2xvY2svcmszMTg4LWNydS1jb21tb24uaCB8IDIgLS0KPj4+ICAxIGZpbGUgY2hhbmdl
ZCwgMiBkZWxldGlvbnMoLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kdC1iaW5kaW5n
cy9jbG9jay9yazMxODgtY3J1LWNvbW1vbi5oIGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9y
azMxODgtY3J1LWNvbW1vbi5oCj4+PiBpbmRleCBhZmFkOTA2ODBmY2UuLjAxZTE0YWIyNTJhNyAx
MDA2NDQKPj4+IC0tLSBhL2luY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svcmszMTg4LWNydS1jb21t
b24uaAo+Pj4gKysrIGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9yazMxODgtY3J1LWNvbW1v
bi5oCj4+PiBAQCAtMTMyLDggKzEzMiw2IEBACj4+PiAgI2RlZmluZSBIQ0xLX1ZEUFUJCTQ3Mgo+
Pj4gICNkZWZpbmUgSENMS19IRE1JCQk0NzMKPj4+Cj4+PiAtI2RlZmluZSBDTEtfTlJfQ0xLUwkJ
KEhDTEtfSERNSSArIDEpCj4+Cj4+IEkgc3RpbGwgc2VlIGl0IGFzIGJlaW5nIHVzZWQgaW4gbGlu
dXgtbmV4dC4gU29tZSBleHBsYW5hdGlvbiBpcyBtaXNzaW5nLgo+IAo+IEkgdGhpbmsgbWUgYXBw
bHlpbmcgSm9oYW4ncyBwYXRjaCBbMF0gcmVtb3ZpbmcgdGhlIGNvbnN0YW50J3MgdXNhZ2UsIHNp
bXBseQo+IG92ZXJsYXBwZWQgd2l0aCB5ZXN0ZXJkYXkncyBuZXh0LWNyZWF0aW9uLgo+IAoKVGhl
c2Ugc2hvdWxkIGJlIHNlbnQgaW4gb25lIHBhdGNoc2V0LCB3aGljaCBtYWtlcyBpdCBvYnZpb3Vz
LiBTcGxpdHRpbmcKZG9lcyBub3QgaGVscC4uLgoKQWNrZWQtYnk6IEtyenlzenRvZiBLb3psb3dz
a2kgPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4KCkJlc3QgcmVnYXJkcywKS3J6eXN6
dG9mCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
