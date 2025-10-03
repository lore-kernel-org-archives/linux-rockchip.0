Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0AE1CCA471
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Oct 2025 14:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5/fa1EYBjvCYUjG96+lf77HOaJgPzZWOvxRIDTrHTqM=; b=puRd+PTKYW3/+m
	DTLJv2MRJMZuadtEIfNXRJWHY1ZCcCWKFtDEb1Wnjbos/dUPugWobdJ76uPvMuC1P8JZy5GJbbtI8
	gXuEbXZillTvhKlsjmkyMV8Mf5dCl5v0+nEzCbrXcDbrkMAEx06kaIX4gLaXIcvcgqxVI7kzSnTAt
	8nLFM+omi3PCaY9RQT2ziDtJ4RsStFwAd70bcOgtXQStA8O/aRa2ZVKk6Yh4k/9WkZ9RObT34sSRw
	vfy0u/cYkNxA323YpmdmbDeD7UzJM6xliFS9Tmb7eTHvbklUNhSEgFddtLM6e168X3SNWsujdXQwV
	QD798QTml+DEsQQ8F/PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4gXj-0000000CWs1-2pTO;
	Fri, 03 Oct 2025 14:13:55 +0000
Received: from mail-qk1-x730.google.com ([2607:f8b0:4864:20::730])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4gXg-0000000CWqF-2xjU
	for linux-rockchip@lists.infradead.org;
	Fri, 03 Oct 2025 14:13:54 +0000
Received: by mail-qk1-x730.google.com with SMTP id af79cd13be357-86420079b01so219638085a.1
        for <linux-rockchip@lists.infradead.org>; Fri, 03 Oct 2025 07:13:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759500831; x=1760105631; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5eiR0rgb8eb14UCK8OF6nqxlziRjDbGGmUvvYEGUxVw=;
        b=ex8xOpWzVl/P4OPlHQfaLgwj+iLwmfMJkU05bTCYehcJEMezSK7BY3XiJX0UzPCK2A
         bQouirvLaT0+IM6XwNBr/NMbRXpZiF8sjImdjT9y7QWnEhwXRWUxlLRPPEKJBtLTVcJc
         r3TaSS8KK7adziXZ1rUZsokxbrFHHBAk+pGyBSlDUVBqQ2m05YEJJhlumcvROtQQBdW9
         NvWc7HJfaL4ZgrpDdiEuJuyJiUi8uyMA8zSSZRxqdwckdAXFulqW81Ny1Ru33YJydG4R
         4e+2W73QJMmg2PDPYDdsXDS0H8Q/Q91QqqLO4yrb+zA1Ienty935CvbchHmM1Vi4t1De
         rY4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759500831; x=1760105631;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5eiR0rgb8eb14UCK8OF6nqxlziRjDbGGmUvvYEGUxVw=;
        b=OhjEq6PG/j96j6PtRLy61+N4iGI4rAtVuJM030ivgCxLyDvAnNVnGVAYwzlorAmQ/+
         ZqWc8tHa3ttnfMq4UBsLowCZhPmVqnXnC3F5g9tHA4kQX97BxMR159vDMqX55lEFRK1k
         ark5kZxNir4lbofQwXs9riMKMRxSKJme4gf+sGpjxVmVRBbqjoKfgRavqaPmGOAfSAwa
         eCS6PLWAmveAffqGXhZu+x3BihF1+OnqQ7bkeZTo3CnB7+nPh1cOQb+nMfEHaGyiSVqZ
         qmMQbATt7ZFW20K9X5QgyzKHos7XJKHotIkr66orXDJqAan9RfhUv0h5ZdhuqI4wB9Eo
         I68A==
X-Forwarded-Encrypted: i=1; AJvYcCW5l7H1wWmg7sIf7eOtwsE+SMIIk97plBnD0NM9H8lnZBfkPDUB2P8/tIl896NIypnANnIOka57mh9nFcU0SA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzPJQAhNpDz/JRgKgWE18y2Evbjhg/UvVBjfViheigAKzWCdQLK
	jB5o0sjiyxcne3cwOx95UQjtCnavtfR2Nla5x/5vK358rP5ZShAY9zpk9uP9aSA1Ajgt1hTi1cH
	VQ5mnc3eDxWYa+wLlvDqVRrhDyXtMwyAXDKi6DRQ=
X-Gm-Gg: ASbGncv8+HLnjd9CrdaHtfOAAosUfQp6YZ39wO8czUVe5HO3hTZBy62006oS1y6Erzc
	i8rEeABq9rtwg8Q03Aboo/lU0Ka8PgBe2QBzNKDAkL95AA1Ri37A08F2FU7xhKNnrg9kdlkoYPW
	66TK3SBsCGwha/68tra79+fFRvyd1gqL4neP6NjQI69WY3H1kIPmVlcVs+7T/KmE9H7OPislKP2
	odHNfOEwBAnVPM+xOJvtRjlNhm2gvxovwbOTJfrcD+6oImJ3nLZ1zto5v/1yWKFTfhGxj+InSfI
	HVJzygmyjA==
X-Google-Smtp-Source: AGHT+IF1x6d1SXgWlIOwQSzb64vcGY7LmH9kcXNKvkdLjUNWf0fEfHQbonCQLlSRkqLoUgYilLGKYu0omGuSD7gRJpw=
X-Received: by 2002:a05:620a:2a0d:b0:866:a24e:2eb1 with SMTP id
 af79cd13be357-87a378d2e60mr519951485a.40.1759500831038; Fri, 03 Oct 2025
 07:13:51 -0700 (PDT)
MIME-Version: 1.0
References: <20250124052611.3705-1-eagle.alexander923@gmail.com>
 <CABjd4YwA8P9LVuDviO6xydkHpuuOY7XT0pk1oa+FDqOo=uZN4A@mail.gmail.com>
 <a76f315f023a3f8f5435e0681119b4eb@manjaro.org> <CABjd4Ywh_AkbXHonx-8vL-hNY5LMLJge5e4oqxvUG+qe6OF-Og@mail.gmail.com>
 <61b494b209d7360d0f36adbf6d5443a4@manjaro.org> <CABjd4Yx0p0B=e00MjCpDDq8Z=0FtM0s9EN86WdvRimt-_+kh2w@mail.gmail.com>
 <CABjd4Yy14bpjzvFyc8et-=pmds5uwzfxNqcs7L=+XRXBogZEsQ@mail.gmail.com> <20251003133304.GA21023@pendragon.ideasonboard.com>
In-Reply-To: <20251003133304.GA21023@pendragon.ideasonboard.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Fri, 3 Oct 2025 18:13:39 +0400
X-Gm-Features: AS18NWBIZkivEeoQjAejLL_ZipTHn0V26YdQouI-n9UYPc0VVnN7Wrl6g590H6Y
Message-ID: <CABjd4YxbyUWghd1ya8UayFkAE-VWQSd5-J2QD0sV7WmS8AXkCg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix broken tsadc pinctrl binding
 for rk3588
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Dragan Simic <dsimic@manjaro.org>, Alexander Shiyan <eagle.alexander923@gmail.com>, 
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	devicetree@vger.kernel.org, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, stable@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251003_071352_757028_6326DCE1 
X-CRM114-Status: GOOD (  50.27  )
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

SGkgTGF1cmVudCwKCk9uIEZyaSwgT2N0IDMsIDIwMjUgYXQgNTozM+KAr1BNIExhdXJlbnQgUGlu
Y2hhcnQKPGxhdXJlbnQucGluY2hhcnRAaWRlYXNvbmJvYXJkLmNvbT4gd3JvdGU6Cj4KPiBPbiBG
cmksIEphbiAyNCwgMjAyNSBhdCAxMTo0NDozNFBNICswNDAwLCBBbGV4ZXkgQ2hhcmtvdiB3cm90
ZToKPiA+IE9uIEZyaSwgSmFuIDI0LCAyMDI1IGF0IDk6MjPigK9QTSBBbGV4ZXkgQ2hhcmtvdiA8
YWxjaGFya0BnbWFpbC5jb20+IHdyb3RlOgo+ID4gPiBPbiBGcmksIEphbiAyNCwgMjAyNSBhdCAy
OjM34oCvUE0gRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+IHdyb3RlOgo+ID4gPiA+
IE9uIDIwMjUtMDEtMjQgMTE6MjUsIEFsZXhleSBDaGFya292IHdyb3RlOgo+ID4gPiA+ID4gT24g
RnJpLCBKYW4gMjQsIDIwMjUgYXQgMjowNuKAr1BNIERyYWdhbiBTaW1pYyA8ZHNpbWljQG1hbmph
cm8ub3JnPgo+ID4gPiA+ID4gd3JvdGU6Cj4gPiA+ID4gPj4gT24gMjAyNS0wMS0yNCAwOTozMywg
QWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4gPiA+ID4gPj4gPiBPbiBGcmksIEphbiAyNCwgMjAyNSBh
dCA5OjI24oCvQU0gQWxleGFuZGVyIFNoaXlhbgo+ID4gPiA+ID4+ID4gPGVhZ2xlLmFsZXhhbmRl
cjkyM0BnbWFpbC5jb20+IHdyb3RlOgo+ID4gPiA+ID4+ID4+Cj4gPiA+ID4gPj4gPj4gVGhlcmUg
aXMgbm8gcGluY3RybCAiZ3BpbyIgYW5kICJvdHBvdXQiIChwcm9iYWJseSBkZXNpZ25lZCBhcwo+
ID4gPiA+ID4+ID4+ICJvdXRwdXQiKQo+ID4gPiA+ID4+ID4+IGhhbmRsaW5nIGluIHRoZSB0c2Fk
YyBkcml2ZXIuCj4gPiA+ID4gPj4gPj4gTGV0J3MgdXNlIHByb3BlciBiaW5kaW5nICJkZWZhdWx0
IiBhbmQgInNsZWVwIi4KPiA+ID4gPiA+PiA+Cj4gPiA+ID4gPj4gPiBUaGlzIGxvb2tzIHJlYXNv
bmFibGUsIGhvd2V2ZXIgSSd2ZSB0cmllZCBpdCBvbiBteSBSYWR4YSBSb2NrIDVDIGFuZAo+ID4g
PiA+ID4+ID4gdGhlIGRyaXZlciBzdGlsbCBkb2Vzbid0IGNsYWltIEdQSU8wIFJLX1BBMSBldmVu
IHdpdGggdGhpcyBjaGFuZ2UuIEFzCj4gPiA+ID4gPj4gPiBhIHJlc3VsdCwgYSBzaW11bGF0ZWQg
dGhlcm1hbCBydW5hd2F5IGNvbmRpdGlvbiAoSSd2ZSBjaGFuZ2VkIHRoZQo+ID4gPiA+ID4+ID4g
dHNodXQgdGVtcGVyYXR1cmUgdG8gNjUwMDAgYW5kIHRzaHV0IG1vZGUgdG8gMSkgZG9lc24ndCB0
cmlnZ2VyIGEgUE1JQwo+ID4gPiA+ID4+ID4gcmVzZXQsIGV2ZW4gdGhvdWdoIGEgZGlyZWN0IGBn
cGlvc2V0IDAgMT0wYCBkb2VzLgo+ID4gPiA+ID4+ID4KPiA+ID4gPiA+PiA+IEFyZSBhbnkgYWRk
aXRpb25hbCBjaGFuZ2VzIG5lZWRlZCB0byB0aGUgZHJpdmVyIGl0c2VsZj8KPiA+ID4gPiA+Pgo+
ID4gPiA+ID4+IEkndmUgYmVlbiBkaWdnaW5nIHRocm91Z2ggdGhpcyBwYXRjaCB0aGUgd2hvbGUg
VFNBREMvT1RQIHRoaW5nIGluIHRoZQo+ID4gPiA+ID4+IGxhc3QgY291cGxlIG9mIGhvdXJzLCBh
bmQgQUZBSUsgc29tZSBwYXJ0cyBvZiB0aGUgdXBzdHJlYW0gZHJpdmVyIGFyZQo+ID4gPiA+ID4+
IHN0aWxsIG1pc3NpbmcsIGluIGNvbXBhcmlzb24gd2l0aCB0aGUgZG93bnN0cmVhbSBkcml2ZXIu
Cj4gPiA+ID4gPj4KPiA+ID4gPiA+PiBJJ3ZlIGdvdCBzb21lIHNtYWxsIHN1Z2dlc3Rpb25zIGZv
ciB0aGUgcGF0Y2ggaXRzZWxmLCBidXQgdGhlIGlzc3VlCj4gPiA+ID4gPj4geW91IG9ic2VydmVk
IGlzIG9idmlvdXNseSBvZiBoaWdoZXIgcHJpb3JpdHksIGFuZCBJJ3ZlIHNpbmdsZWQgaXQgb3V0
Cj4gPiA+ID4gPj4gYXMgd2VsbCB3aGlsZSBkaWdnaW5nIHRocm91Z2ggdGhlIGNvZGUuCj4gPiA+
ID4gPj4KPiA+ID4gPiA+PiBDb3VsZCB5b3UsIHBsZWFzZSwgdHJ5IHRoZSBwYXRjaCBiZWxvdyBx
dWlja2x5LCB0byBzZWUgaXMgaXQgZ29pbmcgdG8KPiA+ID4gPiA+PiBmaXggdGhlIGlzc3VlIHlv
dSBvYnNlcnZlZD8gIEkndmUgZ290IHNvbWUgIklSTCBzdHVmZiIgdG8gdGFrZSBjYXJlIG9mCj4g
PiA+ID4gPj4gdG9kYXksIHNvIEkgY2FuJ3QgdGVzdCBpdCBteXNlbGYsIGFuZCBpdCB3b3VsZCBi
ZSBncmVhdCB0byBrbm93IGlzIGl0Cj4gPiA+ID4gPj4gdGhlIHJpZ2h0IHBhdGggdG8gdGhlIHBy
b3BlciBmaXguCj4gPiA+ID4gPj4KPiA+ID4gPiA+PiBkaWZmIC0tZ2l0IGkvZHJpdmVycy90aGVy
bWFsL3JvY2tjaGlwX3RoZXJtYWwuYwo+ID4gPiA+ID4+IHcvZHJpdmVycy90aGVybWFsL3JvY2tj
aGlwX3RoZXJtYWwuYwo+ID4gPiA+ID4+IGluZGV4IGY1NTFkZjQ4ZWVmOS4uNjJmMGUxNGE4ZDk4
IDEwMDY0NAo+ID4gPiA+ID4+IC0tLSBpL2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFs
LmMKPiA+ID4gPiA+PiArKysgdy9kcml2ZXJzL3RoZXJtYWwvcm9ja2NoaXBfdGhlcm1hbC5jCj4g
PiA+ID4gPj4gQEAgLTE1NjgsNiArMTU2OCwxMSBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3RoZXJt
YWxfcHJvYmUoc3RydWN0Cj4gPiA+ID4gPj4gcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gPiA+
ID4+ICAgICAgICAgIHRoZXJtYWwtPmNoaXAtPmluaXRpYWxpemUodGhlcm1hbC0+Z3JmLCB0aGVy
bWFsLT5yZWdzLAo+ID4gPiA+ID4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
dGhlcm1hbC0+dHNodXRfcG9sYXJpdHkpOwo+ID4gPiA+ID4+Cj4gPiA+ID4gPj4gKyAgICAgICBp
ZiAodGhlcm1hbC0+dHNodXRfbW9kZSA9PSBUU0hVVF9NT0RFX0dQSU8pCj4gPiA+ID4gPj4gKyAg
ICAgICAgICAgICAgIHBpbmN0cmxfc2VsZWN0X2RlZmF1bHRfc3RhdGUoZGV2KTsKPiA+ID4gPiA+
PiArICAgICAgIGVsc2UKPiA+ID4gPiA+PiArICAgICAgICAgICAgICAgcGluY3RybF9zZWxlY3Rf
c2xlZXBfc3RhdGUoZGV2KTsKPiA+ID4gPiA+Cj4gPiA+ID4gPiBJIGJlbGlldmUgbm8gJ2Vsc2Un
IGJsb2NrIGlzIG5lZWRlZCBoZXJlLCBiZWNhdXNlIGlmIHRzaHV0X21vZGUgaXMgbm90Cj4gPiA+
ID4gPiBUU0hVVF9NT0RFX0dQSU8gdGhlbiB0aGUgVFNBREMgZG9lc24ndCB1c2UgdGhpcyBwaW4g
YXQgYWxsLCBzbyB0aGVyZSdzCj4gPiA+ID4gPiBubyByZWFzb24gZm9yIHRoZSBkcml2ZXIgdG8g
bWVzcyB3aXRoIGl0cyBwaW5jdHJsIHN0YXRlLiBJJ2QgcmF0aGVyCj4gPiA+ID4gPiBwdXQgYSBt
aXJyb3JpbmcgYmxvY2sgdG8gcHV0IHRoZSBwaW4gYmFjayB0byBpdHMgJ3NsZWVwJyBzdGF0ZSBp
biB0aGUKPiA+ID4gPiA+IHJlbW92YWwgZnVuY3Rpb24gZm9yIHRoZSBUU0hVVF9NT0RFX0dQSU8g
Y2FzZS4KPiA+ID4gPgo+ID4gPiA+IFlvdSdyZSByaWdodCwgYnV0IHRoZSAiZWxzZSBibG9jayIg
aXMgd2hhdCB0aGUgZG93bnN0cmVhbSBkcml2ZXIgZG9lcywKPiA+ID4KPiA+ID4gRG9lcyBpdCB0
aG91Z2g/IEl0IG9ubHkgaGFuZGxlcyB0aGUgVFNIVVRfTU9ERV9HUElPIGNhc2UgYXMgZmFyIGFz
IEkKPiA+ID4gY2FuIHRlbGwgKG9yIFRTSFVUX01PREVfT1RQIGluIGRvd25zdHJlYW0gZHJpdmVy
IGxpbmdvKSBbMV0KPiA+ID4KPiA+ID4gWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS9yYWR4YS9rZXJu
ZWwvYmxvYi9lZGIzZWVlYWE0NjQzZWNhYzZmNDE4NWQ2ZDM5MWM1NzQ3MzVmY2ExL2RyaXZlcnMv
dGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMjTDI1NjQKPiA+ID4KPiA+ID4gPiBzbyBJIHRoaW5r
IGl0J3MgYmV0dGVyIHRvIHNpbXBseSBzdGF5IG9uIHRoZSBzYWZlIHNpZGUgYW5kIGZvbGxvdyB0
aGF0Cj4gPiA+ID4gbG9naWMgaW4gdGhlIHVwc3RyZWFtIGRyaXZlci4gIElzIGl0IHJlYWxseSBu
ZWVkZWQ/ICBQZXJoYXBzIG5vdCwgYnV0Cj4gPiA+ID4gaXQgYWxzbyBzaG91bGRuJ3QgaHVydC4K
PiA+ID4gPgo+ID4gPiA+ID4gV2lsbCB0cnkgYW5kIHJldmVydC4KPiA+ID4gPgo+ID4gPiA+IEF3
ZXNvbWUsIHRoYW5rcyEKPiA+ID4gPgo+ID4gPiA+ID4gUC5TLiBKdXN0IGxvb2tlZCBhdCB0aGUg
ZG93bnN0cmVhbSBkcml2ZXIsIGFuZCBpdCBhY3R1YWxseSBjYWxscwo+ID4gPiA+ID4gVFNIVVRf
TU9ERV9HUElPIFRTSFVUX01PREVfT1RQIGluc3RlYWQsIHNvIGl0IHNlZW1zIHRoYXQgIm90cG91
dCIgd2FzCj4gPiA+ID4gPiBub3QgYSB0eXBvIGluIHRoZSBmaXJzdCBwbGFjZS4gU28gbWF5YmUg
dGhlIHJpZ2h0IGFwcHJvYWNoIGhlcmUgaXMgbm90Cj4gPiA+ID4gPiB0byBjaGFuZ2UgdGhlIGRl
dmljZSB0cmVlIGJ1dCByYXRoZXIgZml4IHRoZSAiZ3BpbyIgLyAib3Rwb3V0IiBwaW5jdHJsCj4g
PiA+ID4gPiBzdGF0ZSBoYW5kbGluZyBpbiB0aGUgZHJpdmVyLgo+ID4gPiA+Cj4gPiA+ID4gSW5k
ZWVkLCAib3Rwb3V0IiB3YXNuJ3QgYSB0eXBvLCBhbmQgSSd2ZSBhbHJlYWR5IGFkZHJlc3NlZCB0
aGF0IGluIG15Cj4gPiA+ID4gY29tbWVudHMgdG8gQWxleGFuZGVyJ3MgcGF0Y2guICBXaWxsIHNl
bmQgdGhhdCByZXNwb25zZSBhIGJpdCBsYXRlci4KPiA+ID4gPgo+ID4gPiA+IEkgdGhpbmsgaXQn
cyBhY3R1YWxseSBiZXR0ZXIgdG8gYWNjZXB0IHRoZSBhcHByb2FjaCBpbiBBbGV4YW5kZXIncwo+
ID4gPiA+IHBhdGNoLCBiZWNhdXNlIHRoZSB3aG9sZSB0aGluZyBhcHBsaWVzIHRvIG90aGVyIFJv
Y2tjaGlwIFNvQ3MgYXMgd2VsbCwKPiA+ID4gPiBub3QganVzdCB0byB0aGUgUkszNTg4KFMpLgo+
ID4gPgo+ID4gPiBBbnl3YXksIEkndmUganVzdCB0cmllZCBpdCBhZnRlciBpbmNsdWRpbmcgdGhl
IGNoYW5nZXMgYmVsb3csIGFuZAo+ID4gPiB3aGlsZSAvc3lzL2tlcm5lbC9kZWJ1Zy9waW5jdHJs
L3BpbmN0cmwtaGFuZGxlcyBzaG93cyB0aGUgZXhwZWN0ZWQKPiA+ID4gcGluY3RybHMgdW5kZXIg
dHNhZGMsIHRoZSBkcml2ZXIgc3RpbGwgZG9lc24ndCBzZWVtIHRvIGJlIHRyaWdnZXJpbmcgYQo+
ID4gPiBQTUlDIHJlc2V0LiBXZWlyZC4gQW55IHRob3VnaHRzIHdlbGNvbWUuCj4gPgo+ID4gSSBm
b3VuZCB0aGUgY3VscHJpdC4gIm90cG91dCIgKG9yICJkZWZhdWx0IiBpZiB3ZSBmb2xsb3cgQWxl
eGFuZGVyJ3MKPiA+IHN1Z2dlc3RlZCBhcHByb2FjaCkgcGluY3RybCBzdGF0ZSBzaG91bGQgcmVm
ZXIgdG8gdGhlICZ0c2FkY19zaHV0X29yZwo+ID4gY29uZmlnIGluc3RlYWQgb2YgJnRzYWRjX3No
dXQgLSB0aGVuIHRoZSBQTUlDIHJlc2V0IHdvcmtzLgo+Cj4gSSd2ZSByZWNlbnRseSBicm91Z2h0
IHVwIGFuIFJLMzU4OFMtYmFzZWQgT3JhbmdlIFBpIENNNSBCYXNlIGJvYXJkLCBtYWRlCj4gb2Yg
YSBjb21wdXRlIG1vZHVsZSAoQ001LCBzZWUgWzFdKSBhbmQgYSBjYXJyaWVyIGJvYXJkIChCYXNl
LCBzZWUgWzJdKS4KPiBUaGUgY2FycmllciBib2FyZCBoYXMgYSByZXNldCBidXR0b24gd2hpY2gg
cHVsbHMgdGhlIFBNSUNfUkVTRVRfTCBzaWduYWwKPiBvZiB0aGUgQ001IHRvIEdORCAoc2VlIHBh
Z2UgMyBvZiB0aGUgc2NoZW1hdGljcyBpbiBbM10pLgo+Cj4gV2l0aCAmdHNhZGNfc2h1dF9vcmcg
dGhlIHJlc2V0IGJ1dHRvbiBoYXMgYWJzb2x1dGVseSBubyBlZmZlY3QuIFdpdGgKPiAmdHNhZGNf
c2h1dCBpdCByZXNldHMgdGhlIGJvYXJkIGFzIGV4cGVjdGVkLgoKSW50ZXJlc3RpbmcuIFRoZSBU
U0FEQyBzaG91bGRuJ3QgYWZmZWN0IHRoZSBwaHlzaWNhbCBidXR0b24gb3BlcmF0aW9uCmF0IGFs
bCwgaWYgaXQncyByZWFsbHkgd2lyZWQgdG8gdGhlIFBNSUMgYXMgdGhlIHNpZ25hbCBuYW1lIGlt
cGxpZXMuClRoZXJlIGlzbid0IGV2ZW4gYW55IGRlZmF1bHQgcHVsbCB2YWx1ZSBhc3NvY2lhdGVk
IHdpdGggdGhlIFRTSFVUIHBpbgpjb25maWcuCgpXaGF0IGlmIHlvdSBzd2l0Y2ggdGhlIEdQSU8w
X0ExIHBpbiB0byBHUElPIG91dHB1dCBtb2RlIHdpdGggbm8gcHVsbD8KRG9lcyB0aGUgYnV0dG9u
IHdvcmsgdGhlbj8gRG9lcyB0aGUgYm9hcmQgcmVzZXQgaWYgeW91IHRvZ2dsZSB0aGUgR1BJTwp2
YWx1ZSB3aXRoIGBncGlvc2V0YD8KCkJlc3QgcmVnYXJkcywKQWxleGV5CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
