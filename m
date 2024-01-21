Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CF41C47422
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Jan 2024 22:57:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cPw/aC7gLawKgMidSERH3ZlmTOGt3vFrh50fSMy59mg=; b=reSGh8FiGA4tGn
	/XmxT4g31tmRzv9TEx+5M6XPxbOdp/X8LojiqygG54mtYqBtWcmByI00sFgXVmIbZ2+Pa3ciJp/xm
	cunF/QtkgerS5x+frSMqJKjhLZUSN1JKG2N/eqF2c7Q2WvdyAbHdEPn0DbgKWjmWal5bssu3QJfFV
	syPInJjaU1rU863/wmvjqWvJC2ZzKOvSgudl85xCK6iISBkGrvEjqmoip/VgcDN894Qc5F2XZgCwO
	YcgJVuPBVb0fUM6Pu9BCt295yh3OYmd7mT+eMEAOl2T+Qjy+hepCmg25ioQts4qF3/mSJjBF6mKnG
	Eoa98GtAql2ZliA6Ofiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRgke-00A9fa-1X;
	Sun, 21 Jan 2024 22:57:16 +0000
Received: from mail-vk1-xa35.google.com ([2607:f8b0:4864:20::a35])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRgkZ-00A9fD-2i
	for linux-rockchip@lists.infradead.org;
	Sun, 21 Jan 2024 22:57:15 +0000
Received: by mail-vk1-xa35.google.com with SMTP id 71dfb90a1353d-4b71cdbc788so418522e0c.0
        for <linux-rockchip@lists.infradead.org>; Sun, 21 Jan 2024 14:57:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=shantur-com.20230601.gappssmtp.com; s=20230601; t=1705877830; x=1706482630; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3nIhznf2h9PpvWK5/Dbn9QHP5caRPajJwXiPd6lkHO0=;
        b=LzpzGQuhMbzyh4e4vJ70OJg8Yt/E6p7Ryu/LjpWsJKDzUjvrEyC2MMuZuoj1TCesSA
         MSo25yGet89ZsQaJgmROofp2ZFe6SDQP8PS2EIjDWx/6jratXByRwoTvmdAyWMu0KZCQ
         VLkvuFwoOoqAsOfkfuwAAzOYii4zbUyTclI6uaXKgQVkHLEm0chCrHp/zO3kiAoHtnKe
         eqixg5F6Vt2hxmVrqt/YNY4HeuBKs14Kz2JGNQn4PNc9Ifk2DMomHlCtNS6RnGHCcrgj
         f0zHNCRthvMsH2PdifxIVEGU9PpO1YZ9SK7umV3s5XW8707vd8k1csAszEqqT3SoMvX6
         tZ4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705877830; x=1706482630;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3nIhznf2h9PpvWK5/Dbn9QHP5caRPajJwXiPd6lkHO0=;
        b=N8w1OokkHQz8R3xjysRWCr8otUD4SCfdyeAaFatNVlvCH4GxWXEd9MrDmWLG2MgcWy
         9n1Nho6yPCCy+iPzk/1jIoeiMiZZgUy/byLA4chE4PSi6EWhZwanHIHV5O5ujlVL8CcE
         FgrQyk3+W+A+dTcq5Lj1UZNokZrdL7JG2RD1ibk4iYgGn5R/A7vWu1Y8Zoq03k61W2Br
         Wfl0q4ccY2Lx/7wLZfMGYfbpC7YyBcykUckYDgsZpoAXLxdj+0Y1uurrFqi3T/Xwptw/
         KVYETcR0j+QTNaErrxPvCBQlrbwNp6oBikJXNZrEyvv2rFoWvalkVrIwiLzwjhXEYmvI
         0+RQ==
X-Gm-Message-State: AOJu0Yzh0ocfo+vLSjMr1uR0D5ypzKaOhMxPZ0E4Co4YGdNhN7vSDhMP
	ISVeKLOl+QV3lzWtAbOR1DB+4D09ag2jmeUP1YXsVmdVZPh0hm+ZWsJLNK7gCiorKFxLqIPZds0
	5cDFbbnzLRh+rBTnKgieb7yhFixI5cjDSG0dalOKn82gWnrSxJ1E=
X-Google-Smtp-Source: AGHT+IGFtF6VkotjMrzG+mk/aqjQSbwfWiBlIzDY+TYgWBlGtoJ/gIyOe/XlUVC4/TVXAf0arfMrYheZwE+Il9zup5M=
X-Received: by 2002:a1f:ee47:0:b0:4b6:f0c7:62e4 with SMTP id
 m68-20020a1fee47000000b004b6f0c762e4mr511746vkh.12.1705877830153; Sun, 21 Jan
 2024 14:57:10 -0800 (PST)
MIME-Version: 1.0
References: <20231222141616.508073-1-i@shantur.com> <72f608668d619bda1cc620ce11eb3e40@manjaro.org>
 <CABEcMwWEru2DYnd-Y3qWbEp25unVd96TogSnQ+-L+NXKS3_pZQ@mail.gmail.com>
 <10691234.0AQdONaE2F@diego> <b666a1ac31ee761e7c86f65cb1914cf0@manjaro.org>
 <CABEcMwU-pDTXZrc0qGZ1Or+Msb91uEVYh7SYM4nOfRKb8xB3mw@mail.gmail.com> <18b48da2368dbd7af20b5440d8621d86@manjaro.org>
In-Reply-To: <18b48da2368dbd7af20b5440d8621d86@manjaro.org>
From: Shantur Rathore <i@shantur.com>
Date: Sun, 21 Jan 2024 22:56:59 +0000
Message-ID: <CABEcMwWH+DjZtZdawXZSdd=u-zKnr7Re-urJyomRMyBxxHc-WQ@mail.gmail.com>
Subject: Re: [PATCH v2] dts: rockpro64: Remove usb regulator-always-on
To: Dragan Simic <dsimic@manjaro.org>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240121_145712_888014_A3CFC74C 
X-CRM114-Status: GOOD (  42.57  )
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

T24gU3VuLCBKYW4gMjEsIDIwMjQgYXQgMTA6MjTigK9QTSBEcmFnYW4gU2ltaWMgPGRzaW1pY0Bt
YW5qYXJvLm9yZz4gd3JvdGU6Cj4KPiBIZWxsbyBTaGFudHVyLAo+Cj4gT24gMjAyNC0wMS0yMSAy
MzoxMiwgU2hhbnR1ciBSYXRob3JlIHdyb3RlOgo+ID4gT24gTW9uLCBKYW4gOCwgMjAyNCBhdCAy
OjQ34oCvUE0gRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+IHdyb3RlOgo+ID4+IE9u
IDIwMjQtMDEtMDggMTM6MjksIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+ID4+ID4gQW0gTW9udGFn
LCA4LiBKYW51YXIgMjAyNCwgMTM6MTE6MTcgQ0VUIHNjaHJpZWIgU2hhbnR1ciBSYXRob3JlOgo+
ID4+ID4+IE9uIFRodSwgSmFuIDQsIDIwMjQgYXQgOTo1MOKAr0FNIERyYWdhbiBTaW1pYyA8ZHNp
bWljQG1hbmphcm8ub3JnPiB3cm90ZToKPiA+PiA+PiA+IE9uIDIwMjQtMDEtMDQgMTA6NDQsIFNo
YW50dXIgUmF0aG9yZSB3cm90ZToKPiA+PiA+PiA+ID4gT24gRnJpLCBEZWMgMjksIDIwMjMgYXQg
MTA6MDjigK9QTSBIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZToKPiA+PiA+
PiA+ID4+IEFtIEZyZWl0YWcsIDIyLiBEZXplbWJlciAyMDIzLCAxNToxNjoxNiBDRVQgc2Nocmll
YiBTaGFudHVyIFJhdGhvcmU6Cj4gPj4gPj4gPiA+PiA+IFVTQiBwb3J0IHJlZ3VsYXRvcnMgc2hv
dWxkIGJlIGNvbnRyb2xsZWQgYnkgUEhZcwo+ID4+ID4+ID4gPj4gPiBzbyB3ZSByZW1vdmUgYWx3
YXlzLW9uIHByb3BlcnR5IGFuZCBsZXQgUEhZcyBtYW5hZ2UgdGhlCj4gPj4gPj4gPiA+PiA+IHJl
Z3VsYXRvci4KPiA+PiA+PiA+ID4+ID4KPiA+PiA+PiA+ID4+ID4gcGh5LXN1cHBseSBpc24ndCBz
Y29uZnVncmVkIGZvciB0aGUgVHlwZUMgcG9ydCBhbmQgbm93IHRoYXQgd2UgYXJlCj4gPj4gPj4g
PiA+PiAgICAgICAgICAgICAgICAgXl4gY29uZmlndXJlZCA/Cj4gPj4gPj4gPiA+Pgo+ID4+ID4+
ID4gPj4gPiByZW1vdmluZyByZWd1bGF0b3ItYWx3YXlzLW9uLCB3ZSBuZWVkIHRvIGZpeCB0aGUg
cGh5LXN1cHBseQo+ID4+ID4+ID4gPj4gPiBzbyB0aGUgUEhZcyBhcmUgYWJsZSB0byB0dXJuIHBv
d2VyIHRvIHR5cGUtYyBwb3J0Lgo+ID4+ID4+ID4gPj4gPgo+ID4+ID4+ID4gPj4gPiBTZXJpZXMt
dmVyc2lvbjogMgo+ID4+ID4+ID4gPj4gPgo+ID4+ID4+ID4gPj4gPiBTaWduZWQtb2ZmLWJ5OiBT
aGFudHVyIFJhdGhvcmUgPGlAc2hhbnR1ci5jb20+Cj4gPj4gPj4gPiA+PiA+IC0tLQo+ID4+ID4+
ID4gPj4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0
c2kgfCAzICstLQo+ID4+ID4+ID4gPj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAyIGRlbGV0aW9ucygtKQo+ID4+ID4+ID4gPj4gPgo+ID4+ID4+ID4gPj4gPiBkaWZmIC0tZ2l0
IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0c2kgYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzaQo+ID4+ID4+
ID4gPj4gPiBpbmRleCBiY2EyYjUwZTBhLi5mNzI3M2Y3OTkwIDEwMDY0NAo+ID4+ID4+ID4gPj4g
PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRz
aQo+ID4+ID4+ID4gPj4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5
OS1yb2NrcHJvNjQuZHRzaQo+ID4+ID4+ID4gPj4gPiBAQCAtMTkyLDcgKzE5Miw2IEBAIHZjYzV2
MF9ob3N0OiB2Y2M1djAtaG9zdC1yZWd1bGF0b3Igewo+ID4+ID4+ID4gPj4gPiAgICAgICAgICAg
ICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gPj4gPj4gPiA+PiA+ICAgICAgICAgICAg
ICAgcGluY3RybC0wID0gPCZ2Y2M1djBfaG9zdF9lbj47Cj4gPj4gPj4gPiA+PiA+ICAgICAgICAg
ICAgICAgcmVndWxhdG9yLW5hbWUgPSAidmNjNXYwX2hvc3QiOwo+ID4+ID4+ID4gPj4gPiAtICAg
ICAgICAgICAgIHJlZ3VsYXRvci1hbHdheXMtb247Cj4gPj4gPj4gPiA+PiA+ICAgICAgICAgICAg
ICAgdmluLXN1cHBseSA9IDwmdmNjNXYwX3VzYj47Cj4gPj4gPj4gPiA+PiA+ICAgICAgIH07Cj4g
Pj4gPj4gPiA+PiA+Cj4gPj4gPj4gPiA+PiA+IEBAIC0yMDMsNyArMjAyLDYgQEAgdmNjNXYwX3R5
cGVjOiB2Y2M1djAtdHlwZWMtcmVndWxhdG9yIHsKPiA+PiA+PiA+ID4+ID4gICAgICAgICAgICAg
ICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ID4+ID4+ID4gPj4gPiAgICAgICAgICAgICAg
IHBpbmN0cmwtMCA9IDwmdmNjNXYwX3R5cGVjX2VuPjsKPiA+PiA+PiA+ID4+ID4gICAgICAgICAg
ICAgICByZWd1bGF0b3ItbmFtZSA9ICJ2Y2M1djBfdHlwZWMiOwo+ID4+ID4+ID4gPj4gPiAtICAg
ICAgICAgICAgIHJlZ3VsYXRvci1hbHdheXMtb247Cj4gPj4gPj4gPiA+PiA+ICAgICAgICAgICAg
ICAgdmluLXN1cHBseSA9IDwmdmNjNXYwX3VzYj47Cj4gPj4gPj4gPiA+PiA+ICAgICAgIH07Cj4g
Pj4gPj4gPiA+PiA+Cj4gPj4gPj4gPiA+PiA+IEBAIC04NTksNiArODU3LDcgQEAgJnUycGh5MCB7
Cj4gPj4gPj4gPiA+PiA+ICAgICAgIHN0YXR1cyA9ICJva2F5IjsKPiA+PiA+PiA+ID4+ID4KPiA+
PiA+PiA+ID4+ID4gICAgICAgdTJwaHkwX290Zzogb3RnLXBvcnQgewo+ID4+ID4+ID4gPj4gPiAr
ICAgICAgICAgICAgIHBoeS1zdXBwbHkgPSA8JnZjYzV2MF90eXBlYz47Cj4gPj4gPj4gPiA+PiA+
ICAgICAgICAgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ID4+ID4+ID4gPj4gPiAgICAgICB9Owo+
ID4+ID4+ID4gPj4KPiA+PiA+PiA+ID4+IEp1c3QgdG8gZXhwbGFpbiBmb3IgbWUsIHdoYXQgaXMg
c3VwcGx5aW5nIHRoZSAib3RoZXIiIE9URyBwb3J0Cj4gPj4gPj4gPiA+PiAgICAgICAgIHUycGh5
MV9vdGc6IG90Zy1wb3J0IHt9Cj4gPj4gPj4gPiA+Pgo+ID4+ID4+ID4gPj4gaW4gdTJwaHkxIC4u
LiB0aGlzIG9uZSBpcyBzdGF0dXMgb2theSwgYnV0IGRvZXMgbm90IGhhdmUgYW55IHBoeQo+ID4+
ID4+ID4gPj4gc3VwcGx5Pwo+ID4+ID4+ID4gPj4KPiA+PiA+PiA+ID4gSW4gUm9ja1BybzY0IHRo
ZXJlIGlzIG9ubHkgMSBVU0ItQyBPVEcgcG9ydCBhbmQgdGhlIG90aGVyIHBvcnQKPiA+PiA+PiA+
ID4gaXMgYSBVU0ItMy4wIHBvcnQuCj4gPj4gPj4gPiA+IFRvIGJlIGhvbmVzdCwgSSBhbSBub3Qg
MTAwJSBzdXJlIGhvdyB0aGlzIGFsbCB3b3JrcywgYXMgSSB1bmRlcnN0YW5kCj4gPj4gPj4gPiA+
IHRoZSBVU0IzLjAgcG9ydCBpcyB3aXJlZCB0byB0aGUgc2Vjb25kIFR5cGVDIFBoeS4KPiA+PiA+
PiA+ID4KPiA+PiA+PiA+ID4gTWF5YmUgRHJhZ2FuIGhhcyBtb3JlIGluZm8gb24gdGhpcy4KPiA+
PiA+PiA+Cj4gPj4gPj4gPiBJJ2xsIGhhdmUgaXQgY2hlY2tlZCBhbmQgdGVzdGVkIGluIGRldGFp
bCwgb2YgY291cnNlLCBidXQgSSBoYXZlIHRvCj4gPj4gPj4gPiByZWNvdmVyIGZyb20gdGhpcyBu
YXN0eSBmbHUgZmlyc3QuICBVbmZvcnR1bmF0ZWx5LCBpdCBoYXMgcmVuZGVkZWQgbWUKPiA+PiA+
PiA+IHVuYWJsZSB0byBldmVuIHRoaW5rIHN0cmFpZ2h0Lgo+ID4+ID4+Cj4gPj4gPj4gSG9wZSB5
b3UgZmVlbCBiZXR0ZXIgc29vbi4KPiA+PiA+PiBJdCB3b3VsZCBiZSBhd2Vzb21lIGlmIHdlIGNh
biBnZXQgdGhpcyBpbiB3aGlsZSB0aGUgY3VycmVudCBtZXJnZQo+ID4+ID4+IHdpbmRvdyBpcyBv
cGVuLgo+ID4+ID4KPiA+PiA+IGp1c3QgYSBzbWFsbCBjb21tZW50IHJlZ2FyZGluZyB0aW1pbmcu
IEFsbCByZWd1bGFyIGRldmVsb3BtZW50IGNoYW5nZXMKPiA+PiA+IG5lZWQgdG8gYmUgZmluaXNo
ZWQgYW5kIGluIGxpbnV4LW5leHQgX2JlZm9yZV8gdGhlIG1lcmdlLXdpbmRvdyBvcGVucy4KPiA+
PiA+Cj4gPj4gPiBBcyB0aGlzIGlzIG5vdCBhIGZpeCBpdCB3aWxsIGdvIHRvIDYuOSBhbnl3YXkg
LSBoZW5jZSBubyBuZWVkIHRvIHJ1c2guCj4gPj4KPiA+PiBBaCwgeWVzLCBJIGtlZXAgZm9yZ2V0
dGluZyB0aGF0IHRoZSBjdXJyZW50IG1lcmdlIHdpbmRvdyBiYXNpY2FsbHkKPiA+PiBnb2VzCj4g
Pj4gb25lIG1vcmUga2VybmVsIHZlcnNpb24gaW50byB0aGUgcGFzdC4gOikgIFRoYW5rIHlvdSBm
b3IgdGhlCj4gPj4gY2xhcmlmaWNhdGlvbi4KPiA+Cj4gPiBIb3BlIHlvdSBhcmUgZmVlbGluZyBi
ZXR0ZXIuCj4gPiBKdXN0IHRvIHVwZGF0ZSwgbXkgcGF0Y2ggaGFzIGJlZW4gZHJvcHBlZCBpbiB1
LWJvb3QgaW4gZXhwZWN0YXRpb24gb2YKPiA+IGl0IGJlaW5nIGZpeGVkIGhlcmUuCj4KPiBZZXMs
IEkgc2F3IHRoYXQgbWVzc2FnZSBvbiB0aGUgVS1Cb290IG1haWxpbmcgbGlzdC4gIEZyYW5rbHks
IHRoYXQncyB0aGUKPiB1c3VhbCB3YXksIGkuZS4gaGF2aW5nIHRoZSBEVCBpc3N1ZXMgZml4ZWQg
aW4gdGhlIExpbnV4IGtlcm5lbCBmaXJzdCwKPiBhbmQKPiB0aGVuIHN5bmNlZCBiYWNrIHRvIFUt
Qm9vdC4KPgo+ID4gRG8geW91IGZvcmVzZWUgaXQgaGFwcGVuaW5nIGFueXRpbWUgc29vbj8KPgo+
IFVuZm9ydHVuYXRlbHksIEkndmUgYmVlbiB1bmFibGUgdG8gZm9jdXMgd2VsbCBlbm91Z2ggdG8g
YmUgYWJsZSB0byB3b3JrCj4gb24KPiB0aGlzLCBhcyBhIHJlc3VsdCBvZiBzdGlsbCByZWNvdmVy
aW5nIGZyb20gdGhlIF9uYXN0eV8gZmx1LiA6KCAgVGhvdWdoLAo+IEkndmUKPiBiZWVuIGFsc28g
Z2V0dGluZyBncmFkdWFsbHkgYmV0dGVyLCB0aGFua2Z1bGx5LCBzbyB3aGlsZSBjcm9zc2luZyBh
bGwgbXkKPiBmaW5nZXJzIGFuZCBrbm9ja2luZyBvbiB3b29kIGF0IHRoZSBzYW1lIHRpbWUsIDop
IEknZCBkYXJlIHRvIHNheSB0aGF0Cj4gSSdtCj4gZXhwZWN0aW5nIHRvIGJlIGFibGUgdG8gd29y
ayBvbiB0aGlzIGluIHRoZSBuZXh0IGZldyBkYXlzLgo+Cj4gSSBhcG9sb2dpemUgZm9yIHRoZSBk
ZWxheXMuICBCZWFyIHdpdGggbWUsIHBsZWFzZSEgOikKCllvdSBhcmUgZmFzdCBpbiByZXBsaWVz
LiBUaGFua3MgZm9yIHRoYXQuCgpJIGhvcGUgeW91IGZlZWwgMTAwJSBzb29uIGFuZCBubyB3b3Jy
aWVzIEkgd2FzIGp1c3QgY2hlY2tpbmcuCgpSZWdhcmRzLApTaGFudHVyCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
