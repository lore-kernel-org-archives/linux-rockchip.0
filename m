Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1EB6C4725D
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Jan 2024 14:21:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h3eWah/WWO6rxFD3UPTTnDiuwvMv2i0CqLr2pSYtqzU=; b=QPcU32sFRJVUIQ
	8FKehdPFCk+ILgIc8DAl39C5rVykz0QUWn5vNJlgxWVHsVBO7ugy4XQzcQ/MrZMDuN179aJjiIV9S
	TOZWzDHSJFvPjWAisB+cqirIc3gMgjT6/q3kEvTy2xYjm19iAJYUVNQ75XSGN8Vtwrddzj0fGZ68C
	5aYqP4WnFSuMedeHJfPJQbmf7E8aNPvS97Y4etC2QArMGeiOywS4SCaEa3AOywJPYa3WhFddE6gLt
	71BXD/SGrVL7REbt5nYL2Abusc9MlelyKZHb6DZ4hXD12A5CgY31DsUTIWcOoCyRZxMmjMTAZ/UPI
	JKcuo+wqqzQ9H/iige5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRvAq-00CNRs-1p;
	Mon, 22 Jan 2024 14:21:16 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRvAm-00CNQT-32;
	Mon, 22 Jan 2024 14:21:14 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-50f1c524010so2837690e87.3;
        Mon, 22 Jan 2024 06:21:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705933267; x=1706538067; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5zB3kOyhIcCOt/Jppp5iQur4STVOrQ4FRP/kqR1IvMQ=;
        b=KY4eHRphUQy+qqIme+gnp08w92yii3Z/zTfLb+Za8dkF+QGJZPw7/Pmz9TVA1o7m0u
         0r2Kyt6W5I1CfEqtKsflfYy+lkWkWP46S1MPVTXyVv1iWEa8jOGOySdG2+5n8ZvrjPM7
         wKetKmaeMrSbTUL9nV7sbAyAGvTRk8FTu3BDIroLT7/z+asZkSfJn/e7A05JxJ1XgxYp
         GppdPqcQzv8Ei1Gvm6BoShqrR/TBSAJUnwUeOaUyeFQLU/Oew7djKK8+FJ3W8kbj/7+G
         +KlJ9wHPrHX9SC3Gl37sta7kgJ6CjaKHeJbv9PBHBSj1XLQYEb9vP3WTsUgxyQQp6RcC
         H+Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705933267; x=1706538067;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5zB3kOyhIcCOt/Jppp5iQur4STVOrQ4FRP/kqR1IvMQ=;
        b=xBCjw57pVgcTrwk4oZpIN5YUyuLY67mQ7Sybxf94c2HDERhoHgA0t76T90KBlUhYCY
         cDjqEI098NX/KV+fdEYV4aJpt5ps9aulSpv7gS7DlqVXJduhEuMOgb7+KWRiIvZpx483
         Ls6SFfO6Ad9WrSLZLw7kgyHQVpV7mdD7YQeSe97QqrjMCtqoEAUbnP4D4FYtiy74AepP
         biJs2Rnz/qSguEKgsmK0R33wYfbykFNzegvmx+R93s5KkD9QpXwXaaV8GPnoxwPvvi7D
         VteaK95KYbErsRVQqSLfcKUIu5P6+CpmOnBtEL33aXenox6o9yJ2kMg1RP1vdZh2XgX/
         ox5w==
X-Gm-Message-State: AOJu0YzidHa5L1bJBw8rUZplFgHADUHZIDJ5PH5StDzUVyzC7wbqjPy0
	biRO015Gblf7+73ocf58hvi1VoCsboV8vZDus6/ig0FJNTtdwvTYN3xZGzINInWT6UsOmkFONLN
	lMPq6ak8TdcH9LfR7CHPLMm68lCw=
X-Google-Smtp-Source: AGHT+IHLzSwUvGmeRcBBFDiiH5cZTAZmJmfsdurhg2UQyjhB1t8qqFCr/veWOFjMkbXydkb2TEAAcQ42inGnrslhZ/Q=
X-Received: by 2002:a05:6512:b01:b0:50e:e3e5:40f8 with SMTP id
 w1-20020a0565120b0100b0050ee3e540f8mr820239lfu.1.1705933266840; Mon, 22 Jan
 2024 06:21:06 -0800 (PST)
MIME-Version: 1.0
References: <20240106222357.23835-1-alchark@gmail.com> <e0302da12345e5539583b2c96d747592@manjaro.org>
 <CABjd4Yw5wTLyK5OPw2S-ipPVCw7RTUeF2J0RgH-Vyis-ng8rTw@mail.gmail.com>
 <d7f2f25071a4d7c72bd286b11836dce7@manjaro.org> <CABjd4Yz11D8ThcT-oCWsQf9jL2idChFYSRYVVu3KNnzwoOwkKQ@mail.gmail.com>
 <f5c05015e042b11a51a9af26c35f18ed@manjaro.org> <CABjd4Yy91MAd2wALp4KQiEub9OyxU+MR+ti5KA_c+yvZT5xaqQ@mail.gmail.com>
 <81a5410c3dbedbd4fe9ce60ab236700c@manjaro.org> <CABjd4YwxoPrKRPmjn-eWsU1N5fXCjAbnRwfKD9DLKgeL2=vHrA@mail.gmail.com>
 <a15edb98c32ca79b75bd4eaf64734561@manjaro.org>
In-Reply-To: <a15edb98c32ca79b75bd4eaf64734561@manjaro.org>
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 22 Jan 2024 18:20:54 +0400
Message-ID: <CABjd4Yxw_wgjRRO12Zjy75=CA_uuucexVnhVRt3fURJFYQqYSw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: enable built-in thermal monitoring
 on rk3588
To: Dragan Simic <dsimic@manjaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, 
	Christopher Obbard <chris.obbard@collabora.com>, =?UTF-8?B?VGFtw6FzIFN6xbFjcw==?= <szucst@iit.uni-miskolc.hu>, 
	Shreeya Patel <shreeya.patel@collabora.com>, Kever Yang <kever.yang@rock-chips.com>, 
	Chris Morgan <macromorgan@hotmail.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240122_062112_979408_994F2E29 
X-CRM114-Status: GOOD (  43.70  )
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

T24gTW9uLCBKYW4gMjIsIDIwMjQgYXQgMTE6NTfigK9BTSBEcmFnYW4gU2ltaWMgPGRzaW1pY0Bt
YW5qYXJvLm9yZz4gd3JvdGU6Cj4KPiBPbiAyMDI0LTAxLTIyIDA4OjM2LCBBbGV4ZXkgQ2hhcmtv
diB3cm90ZToKPiA+IE9uIE1vbiwgSmFuIDIyLCAyMDI0IGF0IDEwOjIy4oCvQU0gRHJhZ2FuIFNp
bWljIDxkc2ltaWNAbWFuamFyby5vcmc+Cj4gPiB3cm90ZToKPiA+PiBPbiAyMDI0LTAxLTIyIDA3
OjAzLCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPiA+PiA+IE9uIE1vbiwgSmFuIDIyLCAyMDI0IGF0
IDg6NTXigK9BTSBEcmFnYW4gU2ltaWMgPGRzaW1pY0BtYW5qYXJvLm9yZz4gd3JvdGU6Cj4gPj4g
Pj4gT24gMjAyNC0wMS0yMSAxOTo1NiwgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4gPj4gPj4gPiBJ
IHRoaW5rIEknbGwgYWxzbyBhZGQgYSBib2FyZC1zcGVjaWZpYyBhY3RpdmUgY29vbGluZyBtZWNo
YW5pc20gb24gdGhlCj4gPj4gPj4gPiBwYWNrYWdlIGxldmVsIGluIHRoZSBuZXh0IGl0ZXJhdGlv
biwgZ2l2ZW4gdGhhdCBSb2NrIDVCIGhhcyBhIFBXTSBmYW4KPiA+PiA+PiA+IGRlZmluZWQgYXMg
YSBjb29saW5nIGRldmljZS4gVGhhdCB3aWxsIGdvIGluIHRoZSBzZXBhcmF0ZSBwYXRjaCB0aGF0
Cj4gPj4gPj4gPiB1cGRhdGVzIHJrMzU4OC1yb2NrLTViLmR0cyAoeW91ciBmZWVkYmFjayB0byB2
MiBvZiB0aGlzIHBhdGNoIGlzIGFsc28KPiA+PiA+PiA+IGR1bHkgbm90ZWQsIHRoYW5rIHlvdSEp
Cj4gPj4gPj4KPiA+PiA+PiBHcmVhdCwgdGhhbmtzLiAgU3VyZSwgbWFraW5nIHVzZSBvZiB0aGUg
Um9jayA1QidzIHN1cHBvcnQgZm9yIGF0dGFjaGluZwo+ID4+ID4+IGEgUFdNLWNvbnRyb2xsZWQg
Y29vbGluZyBmYW4gaXMgdGhlIHdheSB0byBnby4KPiA+PiA+Pgo+ID4+ID4+IEp1c3QgdG8gcmVp
dGVyYXRlIGEgYml0LCBhbnkgImFjdGl2ZSIgdHJpcCBwb2ludHMgYmVsb25nIHRvIHRoZSBib2Fy
ZAo+ID4+ID4+IGR0cyBmaWxlKHMpLCBiZWNhdXNlIGhhdmluZyBhIGNvb2xpbmcgZmFuIGlzIGEg
Ym9hcmQtc3BlY2lmaWMgZmVhdHVyZS4KPiA+PiA+PiBBcyBhIG5vdGUsIHlvdSBtYXkgYWxzbyB3
YW50IHRvIGhhdmUgYSBsb29rIGF0IHRoZSBSb2NrUHJvNjQgZHRzKGkpCj4gPj4gPj4gZmlsZXMs
IGZvciBleGFtcGxlOyAgdGhlIFJvY2tQcm82NCBhbHNvIGNvbWVzIHdpdGggYSBjb29saW5nIGZh
bgo+ID4+ID4+IGNvbm5lY3RvciBhbmQgdGhlIGFzc29jaWF0ZWQgUFdNIGZhbiBjb250cm9sIGxv
Z2ljLgo+ID4+ID4KPiA+PiA+IFRoYW5rcyBmb3IgdGhlIHBvaW50ZXIhIFRoZXJlIGlzIGFsc28g
YSBoZWxwZnVsIGRvYyB3aXRoaW4gZGV2aWNldHJlZQo+ID4+ID4gYmluZGluZ3MgZGVzY3JpcHRp
b25zLCBhbHRob3VnaCBpdCBzaXRzIHVuZGVyIGh3bW9uIHdoaWNoIHdhcyBhIGJpdAo+ID4+ID4g
Y29uZnVzaW5nIHRvIG1lLiBJJ3ZlIGFscmVhZHkgdGVzdGVkIGl0IGxvY2FsbHkgKGJ5IGFkZGlu
ZyB0byB0aGUKPiA+PiA+IGJvYXJkIGR0cyksIGFuZCBpdCBzcGlucyB1cCBhbmQgZG93biBxdWl0
ZSBuaWNlbHksIGFuZCBldmVuIG1vZHVsYXRlcwo+ID4+ID4gdGhlIGZhbiBzcGVlZCBzd2lmdGx5
IHdoZW4gdGhlIGxvYWQgY2hhbmdlcyAtIHlheSEKPiA+Pgo+ID4+IE5pY2UhICBBbHNvLCBpc24n
dCBpdCBsaWtlIG1hZ2ljPyA6KSAgVG8gbWUsIHR1cm5pbmcgTEVEcyBvbi9vZmYgYW5kCj4gPj4g
Y29udHJvbGxpbmcgZmFucyBhY3RzIGFzIHNvbWUga2luZCBvZiBhICJicmlkZ2UiIGJldHdlZW4g
dGhlIHZpcnR1YWwKPiA+PiBhbmQgdGhlIHJlYWwgd29ybGQuIDopCj4gPgo+ID4gT2ggeWVzISBJ
IGFsc28ga2VlcCBhZG1pcmluZyBob3cgb25lIGNhbiBhZGQganVzdCBhIGNvdXBsZSBvZiBsaW5l
cyBvZgo+ID4gdGV4dCBoZXJlIGFuZCB0aGVyZSB0aGF0J3Mgbm90IGV2ZW4gcmVhbCBjb2RlLCBh
bmQgdGhlIHdob2xlIGtlcm5lbAo+ID4gbWFjaGluZXJ5IHN0YXJ0cyBjcnVuY2hpbmcgbnVtYmVy
cywgYW5hbHl6aW5nIHRlbXBlcmF0dXJlcywgcnVubmluZwo+ID4gUElEIGxvb3BzLCBldGMgZXRj
IHNvIHRoYXQgSSBjb3VsZCBlbmpveSB0aGUgc2F0aXNmeWluZyB3aGlzdGxlIG9mIGEKPiA+IHNt
YWxsIGZhbiB3aGVuIEkgdHlwZSBgbWFrZSAtajhgIDotRAo+Cj4gWWVzLCBpdCdzIHZlcnkgc2F0
aXNmeWluZywgOikgYW5kIGl0IGFsc28gZGVtb25zdHJhdGVzIHRoZSB0cnVlIHBvd2VyCj4gb2Yg
dGhlIGRldmljZSB0cmVlcyBhcyBoYXJkd2FyZSBkZWZpbml0aW9ucy4gIEp1c3QgYSBmZXcgbW9y
ZSBsaW5lcyBhbmQKPiB0aGUgY29vbGluZyB3b3JrcyEgOikKPgo+ID4+IEFzIGEgc3VnZ2VzdGlv
biwgaXQgd291bGQgYmUgZ29vZCB0byB0ZXN0IHdpdGggYSBjb3VwbGUgb2YgZGlmZmVyZW50Cj4g
Pj4gZmFucywgdG8gbWFrZSBzdXJlIHRoYXQgdGhlIFBXTSB2YWx1ZXMgd29yayB3ZWxsIGZvciBt
b3JlIHRoYXQgb25lIGZhbgo+ID4+IG1vZGVsLiAgVGhlIFJvY2sgNUIgcmVxdWlyZXMgYSA1IFYg
ZmFuLCBpZiBJJ20gbm90IG1pc3Rha2VuPwo+ID4KPiA+IEl0IGlzIDVWLCB5ZXMuIEkgb25seSBo
YXZlIG9uZSBmYW4gdG8gdHJ5IHRob3VnaCwgYW5kIEkgc2ltcGx5IHJlbGllZAo+ID4gb24gdGhl
IFBXTSB2YWx1ZXMgdGhhdCBhcmUgYWxyZWFkeSBkZWZpbmVkIGluIHRoZSB1cHN0cmVhbQo+ID4g
cmszNTg4LXJvY2stNWIuZHRzLiBUaGV5IGRvbid0IGxvb2sgaWRlYWwgZm9yIG15IHBhcnRpY3Vs
YXIgZmFuLAo+ID4gYmVjYXVzZSB0aGUgbG93ZXN0IG5vbi16ZXJvIGNvb2xpbmcgc3RhdGUgY3Vy
cmVudGx5IHVzZXMgYSBQV00gdmFsdWUKPiA+IG9mIDk1LCB3aGljaCBkb2Vzbid0IGFsd2F5cyBt
YWtlIGl0IHNwaW4gdXAuIEJ1dCBpbiB0aGUgZW5kIGl0IGRvZXNuJ3QKPiA+IHNlZW0gdG8gbWF0
dGVyIHRoYXQgbXVjaCwgYmVjYXVzZSB0aGF0IHRpbnkgZmFuIG5lZWRzIHRvIHNwaW4gYXQgZnVs
bAo+ID4gMjU1IHdoZW5ldmVyIGFsbCBlaWdodCBjb3JlcyBhcmUgbG9hZGVkIChhbmQgZXZlbiB0
aGVuIGl0IGNhbiBvbmx5Cj4gPiBiYWxhbmNlIHRoZSB0ZW1wZXJhdHVyZSBhdCBhcm91bmQgNjAu
NdChKSwgYW5kIHdoZW4gdGhlIGxvYWQgaXMgbGlnaHRlcgo+ID4gKHN1Y2ggYXMgZHVyaW5nIHZh
cmlvdXMgLi9jb25maWd1cmUgcnVucykgaXQganVzdCBzd2l0Y2hlcyBvZmYKPiA+IGNvbXBsZXRl
bHkgYXMgdGhlIHRlbXBlcmF0dXJlIGdvZXMgZG93biB0byA0NkMgZXZlbiB3aXRoIHRoZSBmYW4g
bm90Cj4gPiBzcGlubmluZy4KPgo+IEkgc2VlLCA1IFYgZmFucyB1bmZvcnR1bmF0ZWx5IGFyZW4n
dCB2ZXJ5IGNvbW1vbi4gIEknbSBub3Qgc3VyZSB3aHkKPiBSYWR4YSBvcHRlZCBmb3IgNSBWIHRo
ZXJlOyAgbWF5YmUgdGhlIGdvYWwgd2FzIHRvIHVzZSBSYXNwYmVycnkgUGkgNSBWCj4gZmFucywg
YnV0IHVzaW5nIHRob3NlIHRpbnkgZmFucyBkb2Vzbid0IG1ha2UgbXVjaCBzZW5zZSwgSU1ITy4K
Pgo+IEkgdGhpbmsgeW91IGNhbiBmcmVlbHkgYWRqdXN0IHRoZSBQV00gdmFsdWVzIGEgYml0IHRv
IG1ha2UgeW91ciBmYW4KPiBzdGFydCByZWxpYWJseSBhdCB0aGUgbG93ZXN0IHN0YXRlLCByZWdh
cmRsZXNzIG9mIGhvdyByYXJlbHkgdGhhdCBzdGF0ZQo+IHdpbGwgYmUgdXNlZC4gIFNlZSwgaWYg
eW91ciBmYW4gZG9lc24ndCBzcGluIHVwIHJlbGlhYmx5IHdpdGggdGhlCj4gY3VycmVudAo+IGxv
d2VzdCBzdGF0ZSwgY2hhbmNlcyBmb3Igb3RoZXIgZmFuIG1vZGVscyBub3QgdG8gc3BpbiB1cCBh
cmUgcXVpdGUKPiBoaWdoLgo+IElPVywgaXQncyBiZXR0ZXIgdG8gcGxheSBzYWZlIHRoZXJlLCBp
ZiB5b3UgYWdyZWUuCj4KPiBXaGF0IGtpbmQgb2YgaGVhdHNpbmsgYXJlIHlvdSB1c2luZyB3aXRo
IHlvdXIgUm9jayA1Qj8gIEFoIHllcywgYW5kCj4gd2hhdCdzIHRoZSBhY3R1YWwgbW9kZWwgb2Yg
dGhlIGZhbiB5b3UncmUgdXNpbmc/CgpJIHVzZSBSYWR4YSdzIDQwMTIgaGVhdHNpbmstZmFuIGFz
c2VtYmx5IHRoYXQgY29tZXMgYXMgYW4gYWRkLW9uCm9wdGlvbiB3aGVuIGJ1eWluZyB0aGUgYm9h
cmQgaXRzZWxmIGZyb20gQWxsbmV0LiBJIGd1ZXNzIEknbGwgaW5jbHVkZQpzbGlnaHRseSBhZGp1
c3RlZCBQV00gdmFsdWVzIGluIHRoZSByazM1ODgtcm9jay01Yi5kdHMgcGF0Y2ggdG8gYmV0dGVy
CnJlcHJlc2VudCBteSBmYW4ncyAicHJlZmVycmVkIiByYW5nZSAoaW4gbXkgZXhwZXJpZW5jZSBh
IFBXTSB2YWx1ZSBvZgphcm91bmQgMTIwIGlzIHRoZSByZWxpYWJsZSBsb3dlciBlbmQgLSBpdCB3
b3VsZCBjb250aW51ZSBzcGlubmluZwpiZWxvdyB0aGF0IHBvaW50IGJ1dCB3b24ndCBhbHdheXMg
c3RhcnQgd2l0aG91dCBiZWluZyBwdXNoZWQgbWFudWFsbHkpCgo+ID4gSSBkb24ndCBjdXJyZW50
bHkgdXNlIHRoZSBHUFUvTlBVL1ZQVSB0aG91Z2ggLSBtYXliZSB0aG9zZSB3b3VsZAo+ID4gcHJv
ZHVjZSBtb3JlIG1vZGVyYXRlIGxvYWQgd2hpY2ggY291bGQgYmVuZWZpdCBmcm9tIHNwaW5uaW5n
IHRoZSBmYW4KPiA+IGF0IG1lZGl1bSBzcGVlZHMuCj4KPiBQZXJoYXBzLCBidXQgaXQgd2lsbCBu
ZWVkIHRvIGJlIHRlc3RlZCBhdCBzb21lIHBvaW50LiAgSGF2ZSB5b3UgdHJpZWQKPiBsb2FkaW5n
IG9ubHkgb25lIG9yIHR3byBDUFUgY29yZXM/CgpJIGRvIHNlZSB0aGUgZnVsbCByYW5nZSBvZiBQ
V00gdmFsdWVzIGJlaW5nIHVzZWQsIGluY2x1ZGluZwppbnRlcm1lZGlhdGUgb25lcy4gSXQgZG9l
c24ndCBnbyB6ZXJvIHRvIGhlcm8gOikgTXkgcG9pbnQgd2FzIG1vcmUKYWJvdXQgdGhlIGRlZmF1
bHQgZmFuIG5vdCBiZWluZyBzdXBlciBtaWdodHkgdnMuIHRoZSBmdWxsIHBhY2thZ2UKdGhlcm1h
bCBvdXRwdXQsIHdoaWNoIHdpbGwgbGlrZWx5IG1lYW4gdGhhdCBpbnRlcm1lZGlhdGUgdmFsdWVz
IGFyZQpyYXJlbHkgdXNlZC4gQnV0IEknbGwgZG91YmxlIGNoZWNrIHdpdGggbW9yZSB2YXJpZWQg
bG9hZHMgdG8gbWFrZSBzdXJlCml0IGJlaGF2ZXMgaW4gYSBzZW5zaWJsZSB3YXkgKGVzcGVjaWFs
bHkgZ2l2ZW4gdGhhdCBJJ2xsIGJlIHRlc3RpbmcKcHVyZWx5IGludGVycnVwdC1kcml2ZW4gb3Bl
cmF0aW9uIHBlciBEYW5pZWwncyBndWlkYW5jZSBpbiB0aGUgb3RoZXIKc3ViLXRocmVhZCkuCgpC
ZXN0IHJlZ2FyZHMsCkFsZXhleQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
