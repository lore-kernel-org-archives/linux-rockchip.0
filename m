Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F8ECC4725D
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Jan 2024 07:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WIPpOLuu8j2KcEgydbUyyBS/fAeOO/QU8Lh1Xp3oBfU=; b=dlTCsILFIupaCvDRfLHIhD4iC2
	RTy8/S0Ru/UkowCzvbmEnFkzViVEHVMfXwu1P0QXJ43Cu6HL6/sbc2UjrFCOOD92ORWrf5GlggOUx
	gw9d/ypUnQXJenz8HlFUZmhmYJNxxIEm/1iK48BpZCa7ova5OVsK+MXMYYH9PYYVZ74aa9LKS+tNu
	kvE0Cyew3A1QAOr3bKCOsByqslA4fIoD3BgNBmOAVCukTPdthjvJa9q8vUIcUOgD2EQlzyo9NyePs
	8QMhUcMexkEKlJP9ANaL1xeDe7TPQOli4R/wnR9cQQUzY/vCuVj4w5PTw8VuTLzzFM9yCxxPZA2hW
	GkjrhdsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRpC2-00Ax3Q-1B;
	Mon, 22 Jan 2024 07:58:06 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRpBw-00Ax01-05;
	Mon, 22 Jan 2024 07:58:04 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1705910276;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nLAyqZlJC+DpGPL0c7ZN+DlDbeATJhEmWXqHqK+FrVc=;
	b=uT8k24hN3//N3XzLOdgPwh2SoEZuhbMsotxXfEmkJD1CkzqDR2KduqYXDa2fARQCT37COP
	Bq7im39H502CbRPgdiY+DMvf5hrK37SAs3Zj8BA2WVU4UdYRqIBigJ6AjcUmcbALrLG0Jn
	xcdbrjy+YRcMHaS4CnoSAOaLzK2xaRULyYlwYZAtBSbaG8F14dTnchEEFARV9mMJnoiJ5g
	wvs1iDx4ir0v9BsgYOuYYz2cDr2Wja/r/GaGkAPWnJeq6jDgDXoPmnhzsa6iKsEARhuEZB
	GY+GYg5qv+OCvsRo6dDQ+whC4tZvDuRQ03n4EJpSbmv9w+9A3VrhmoHh2R35ZQ==
Date: Mon, 22 Jan 2024 08:57:54 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Alexey Charkov <alchark@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Sebastian Reichel
 <sebastian.reichel@collabora.com>, Cristian Ciocaltea
 <cristian.ciocaltea@collabora.com>, Christopher Obbard
 <chris.obbard@collabora.com>, =?UTF-8?Q?Tam=C3=A1s_Sz=C5=B1cs?=
 <szucst@iit.uni-miskolc.hu>, Shreeya Patel <shreeya.patel@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>, Chris Morgan
 <macromorgan@hotmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: enable built-in thermal monitoring
 on rk3588
In-Reply-To: <CABjd4YwxoPrKRPmjn-eWsU1N5fXCjAbnRwfKD9DLKgeL2=vHrA@mail.gmail.com>
References: <20240106222357.23835-1-alchark@gmail.com>
 <e0302da12345e5539583b2c96d747592@manjaro.org>
 <CABjd4Yw5wTLyK5OPw2S-ipPVCw7RTUeF2J0RgH-Vyis-ng8rTw@mail.gmail.com>
 <d7f2f25071a4d7c72bd286b11836dce7@manjaro.org>
 <CABjd4Yz11D8ThcT-oCWsQf9jL2idChFYSRYVVu3KNnzwoOwkKQ@mail.gmail.com>
 <f5c05015e042b11a51a9af26c35f18ed@manjaro.org>
 <CABjd4Yy91MAd2wALp4KQiEub9OyxU+MR+ti5KA_c+yvZT5xaqQ@mail.gmail.com>
 <81a5410c3dbedbd4fe9ce60ab236700c@manjaro.org>
 <CABjd4YwxoPrKRPmjn-eWsU1N5fXCjAbnRwfKD9DLKgeL2=vHrA@mail.gmail.com>
Message-ID: <a15edb98c32ca79b75bd4eaf64734561@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240121_235800_722279_ECBB471A 
X-CRM114-Status: GOOD (  33.47  )
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

T24gMjAyNC0wMS0yMiAwODozNiwgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4gT24gTW9uLCBKYW4g
MjIsIDIwMjQgYXQgMTA6MjLigK9BTSBEcmFnYW4gU2ltaWMgPGRzaW1pY0BtYW5qYXJvLm9yZz4g
Cj4gd3JvdGU6Cj4+IE9uIDIwMjQtMDEtMjIgMDc6MDMsIEFsZXhleSBDaGFya292IHdyb3RlOgo+
PiA+IE9uIE1vbiwgSmFuIDIyLCAyMDI0IGF0IDg6NTXigK9BTSBEcmFnYW4gU2ltaWMgPGRzaW1p
Y0BtYW5qYXJvLm9yZz4gd3JvdGU6Cj4+ID4+IE9uIDIwMjQtMDEtMjEgMTk6NTYsIEFsZXhleSBD
aGFya292IHdyb3RlOgo+PiA+PiA+IEkgdGhpbmsgSSdsbCBhbHNvIGFkZCBhIGJvYXJkLXNwZWNp
ZmljIGFjdGl2ZSBjb29saW5nIG1lY2hhbmlzbSBvbiB0aGUKPj4gPj4gPiBwYWNrYWdlIGxldmVs
IGluIHRoZSBuZXh0IGl0ZXJhdGlvbiwgZ2l2ZW4gdGhhdCBSb2NrIDVCIGhhcyBhIFBXTSBmYW4K
Pj4gPj4gPiBkZWZpbmVkIGFzIGEgY29vbGluZyBkZXZpY2UuIFRoYXQgd2lsbCBnbyBpbiB0aGUg
c2VwYXJhdGUgcGF0Y2ggdGhhdAo+PiA+PiA+IHVwZGF0ZXMgcmszNTg4LXJvY2stNWIuZHRzICh5
b3VyIGZlZWRiYWNrIHRvIHYyIG9mIHRoaXMgcGF0Y2ggaXMgYWxzbwo+PiA+PiA+IGR1bHkgbm90
ZWQsIHRoYW5rIHlvdSEpCj4+ID4+Cj4+ID4+IEdyZWF0LCB0aGFua3MuICBTdXJlLCBtYWtpbmcg
dXNlIG9mIHRoZSBSb2NrIDVCJ3Mgc3VwcG9ydCBmb3IgYXR0YWNoaW5nCj4+ID4+IGEgUFdNLWNv
bnRyb2xsZWQgY29vbGluZyBmYW4gaXMgdGhlIHdheSB0byBnby4KPj4gPj4KPj4gPj4gSnVzdCB0
byByZWl0ZXJhdGUgYSBiaXQsIGFueSAiYWN0aXZlIiB0cmlwIHBvaW50cyBiZWxvbmcgdG8gdGhl
IGJvYXJkCj4+ID4+IGR0cyBmaWxlKHMpLCBiZWNhdXNlIGhhdmluZyBhIGNvb2xpbmcgZmFuIGlz
IGEgYm9hcmQtc3BlY2lmaWMgZmVhdHVyZS4KPj4gPj4gQXMgYSBub3RlLCB5b3UgbWF5IGFsc28g
d2FudCB0byBoYXZlIGEgbG9vayBhdCB0aGUgUm9ja1BybzY0IGR0cyhpKQo+PiA+PiBmaWxlcywg
Zm9yIGV4YW1wbGU7ICB0aGUgUm9ja1BybzY0IGFsc28gY29tZXMgd2l0aCBhIGNvb2xpbmcgZmFu
Cj4+ID4+IGNvbm5lY3RvciBhbmQgdGhlIGFzc29jaWF0ZWQgUFdNIGZhbiBjb250cm9sIGxvZ2lj
Lgo+PiA+Cj4+ID4gVGhhbmtzIGZvciB0aGUgcG9pbnRlciEgVGhlcmUgaXMgYWxzbyBhIGhlbHBm
dWwgZG9jIHdpdGhpbiBkZXZpY2V0cmVlCj4+ID4gYmluZGluZ3MgZGVzY3JpcHRpb25zLCBhbHRo
b3VnaCBpdCBzaXRzIHVuZGVyIGh3bW9uIHdoaWNoIHdhcyBhIGJpdAo+PiA+IGNvbmZ1c2luZyB0
byBtZS4gSSd2ZSBhbHJlYWR5IHRlc3RlZCBpdCBsb2NhbGx5IChieSBhZGRpbmcgdG8gdGhlCj4+
ID4gYm9hcmQgZHRzKSwgYW5kIGl0IHNwaW5zIHVwIGFuZCBkb3duIHF1aXRlIG5pY2VseSwgYW5k
IGV2ZW4gbW9kdWxhdGVzCj4+ID4gdGhlIGZhbiBzcGVlZCBzd2lmdGx5IHdoZW4gdGhlIGxvYWQg
Y2hhbmdlcyAtIHlheSEKPj4gCj4+IE5pY2UhICBBbHNvLCBpc24ndCBpdCBsaWtlIG1hZ2ljPyA6
KSAgVG8gbWUsIHR1cm5pbmcgTEVEcyBvbi9vZmYgYW5kCj4+IGNvbnRyb2xsaW5nIGZhbnMgYWN0
cyBhcyBzb21lIGtpbmQgb2YgYSAiYnJpZGdlIiBiZXR3ZWVuIHRoZSB2aXJ0dWFsCj4+IGFuZCB0
aGUgcmVhbCB3b3JsZC4gOikKPiAKPiBPaCB5ZXMhIEkgYWxzbyBrZWVwIGFkbWlyaW5nIGhvdyBv
bmUgY2FuIGFkZCBqdXN0IGEgY291cGxlIG9mIGxpbmVzIG9mCj4gdGV4dCBoZXJlIGFuZCB0aGVy
ZSB0aGF0J3Mgbm90IGV2ZW4gcmVhbCBjb2RlLCBhbmQgdGhlIHdob2xlIGtlcm5lbAo+IG1hY2hp
bmVyeSBzdGFydHMgY3J1bmNoaW5nIG51bWJlcnMsIGFuYWx5emluZyB0ZW1wZXJhdHVyZXMsIHJ1
bm5pbmcKPiBQSUQgbG9vcHMsIGV0YyBldGMgc28gdGhhdCBJIGNvdWxkIGVuam95IHRoZSBzYXRp
c2Z5aW5nIHdoaXN0bGUgb2YgYQo+IHNtYWxsIGZhbiB3aGVuIEkgdHlwZSBgbWFrZSAtajhgIDot
RAoKWWVzLCBpdCdzIHZlcnkgc2F0aXNmeWluZywgOikgYW5kIGl0IGFsc28gZGVtb25zdHJhdGVz
IHRoZSB0cnVlIHBvd2VyCm9mIHRoZSBkZXZpY2UgdHJlZXMgYXMgaGFyZHdhcmUgZGVmaW5pdGlv
bnMuICBKdXN0IGEgZmV3IG1vcmUgbGluZXMgYW5kCnRoZSBjb29saW5nIHdvcmtzISA6KQoKPj4g
QXMgYSBzdWdnZXN0aW9uLCBpdCB3b3VsZCBiZSBnb29kIHRvIHRlc3Qgd2l0aCBhIGNvdXBsZSBv
ZiBkaWZmZXJlbnQKPj4gZmFucywgdG8gbWFrZSBzdXJlIHRoYXQgdGhlIFBXTSB2YWx1ZXMgd29y
ayB3ZWxsIGZvciBtb3JlIHRoYXQgb25lIGZhbgo+PiBtb2RlbC4gIFRoZSBSb2NrIDVCIHJlcXVp
cmVzIGEgNSBWIGZhbiwgaWYgSSdtIG5vdCBtaXN0YWtlbj8KPiAKPiBJdCBpcyA1ViwgeWVzLiBJ
IG9ubHkgaGF2ZSBvbmUgZmFuIHRvIHRyeSB0aG91Z2gsIGFuZCBJIHNpbXBseSByZWxpZWQKPiBv
biB0aGUgUFdNIHZhbHVlcyB0aGF0IGFyZSBhbHJlYWR5IGRlZmluZWQgaW4gdGhlIHVwc3RyZWFt
Cj4gcmszNTg4LXJvY2stNWIuZHRzLiBUaGV5IGRvbid0IGxvb2sgaWRlYWwgZm9yIG15IHBhcnRp
Y3VsYXIgZmFuLAo+IGJlY2F1c2UgdGhlIGxvd2VzdCBub24temVybyBjb29saW5nIHN0YXRlIGN1
cnJlbnRseSB1c2VzIGEgUFdNIHZhbHVlCj4gb2YgOTUsIHdoaWNoIGRvZXNuJ3QgYWx3YXlzIG1h
a2UgaXQgc3BpbiB1cC4gQnV0IGluIHRoZSBlbmQgaXQgZG9lc24ndAo+IHNlZW0gdG8gbWF0dGVy
IHRoYXQgbXVjaCwgYmVjYXVzZSB0aGF0IHRpbnkgZmFuIG5lZWRzIHRvIHNwaW4gYXQgZnVsbAo+
IDI1NSB3aGVuZXZlciBhbGwgZWlnaHQgY29yZXMgYXJlIGxvYWRlZCAoYW5kIGV2ZW4gdGhlbiBp
dCBjYW4gb25seQo+IGJhbGFuY2UgdGhlIHRlbXBlcmF0dXJlIGF0IGFyb3VuZCA2MC410KEpLCBh
bmQgd2hlbiB0aGUgbG9hZCBpcyBsaWdodGVyCj4gKHN1Y2ggYXMgZHVyaW5nIHZhcmlvdXMgLi9j
b25maWd1cmUgcnVucykgaXQganVzdCBzd2l0Y2hlcyBvZmYKPiBjb21wbGV0ZWx5IGFzIHRoZSB0
ZW1wZXJhdHVyZSBnb2VzIGRvd24gdG8gNDZDIGV2ZW4gd2l0aCB0aGUgZmFuIG5vdAo+IHNwaW5u
aW5nLgoKSSBzZWUsIDUgViBmYW5zIHVuZm9ydHVuYXRlbHkgYXJlbid0IHZlcnkgY29tbW9uLiAg
SSdtIG5vdCBzdXJlIHdoeQpSYWR4YSBvcHRlZCBmb3IgNSBWIHRoZXJlOyAgbWF5YmUgdGhlIGdv
YWwgd2FzIHRvIHVzZSBSYXNwYmVycnkgUGkgNSBWCmZhbnMsIGJ1dCB1c2luZyB0aG9zZSB0aW55
IGZhbnMgZG9lc24ndCBtYWtlIG11Y2ggc2Vuc2UsIElNSE8uCgpJIHRoaW5rIHlvdSBjYW4gZnJl
ZWx5IGFkanVzdCB0aGUgUFdNIHZhbHVlcyBhIGJpdCB0byBtYWtlIHlvdXIgZmFuCnN0YXJ0IHJl
bGlhYmx5IGF0IHRoZSBsb3dlc3Qgc3RhdGUsIHJlZ2FyZGxlc3Mgb2YgaG93IHJhcmVseSB0aGF0
IHN0YXRlCndpbGwgYmUgdXNlZC4gIFNlZSwgaWYgeW91ciBmYW4gZG9lc24ndCBzcGluIHVwIHJl
bGlhYmx5IHdpdGggdGhlIApjdXJyZW50Cmxvd2VzdCBzdGF0ZSwgY2hhbmNlcyBmb3Igb3RoZXIg
ZmFuIG1vZGVscyBub3QgdG8gc3BpbiB1cCBhcmUgcXVpdGUgCmhpZ2guCklPVywgaXQncyBiZXR0
ZXIgdG8gcGxheSBzYWZlIHRoZXJlLCBpZiB5b3UgYWdyZWUuCgpXaGF0IGtpbmQgb2YgaGVhdHNp
bmsgYXJlIHlvdSB1c2luZyB3aXRoIHlvdXIgUm9jayA1Qj8gIEFoIHllcywgYW5kCndoYXQncyB0
aGUgYWN0dWFsIG1vZGVsIG9mIHRoZSBmYW4geW91J3JlIHVzaW5nPwoKPiBJIGRvbid0IGN1cnJl
bnRseSB1c2UgdGhlIEdQVS9OUFUvVlBVIHRob3VnaCAtIG1heWJlIHRob3NlIHdvdWxkCj4gcHJv
ZHVjZSBtb3JlIG1vZGVyYXRlIGxvYWQgd2hpY2ggY291bGQgYmVuZWZpdCBmcm9tIHNwaW5uaW5n
IHRoZSBmYW4KPiBhdCBtZWRpdW0gc3BlZWRzLgoKUGVyaGFwcywgYnV0IGl0IHdpbGwgbmVlZCB0
byBiZSB0ZXN0ZWQgYXQgc29tZSBwb2ludC4gIEhhdmUgeW91IHRyaWVkCmxvYWRpbmcgb25seSBv
bmUgb3IgdHdvIENQVSBjb3Jlcz8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
