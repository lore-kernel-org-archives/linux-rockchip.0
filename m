Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23FA5E674A9
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Dec 2025 13:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NBZSF2T6E8EMYwnKEGAYaqxOxXBLF0sEbKazAz9BJXE=; b=Cng95pExXSwRKM
	E79g+eB33rdSKJd5PQnwuPD3ftm5dC/euOhC/BikONGSAoIV3Mvvx++45Y+xAyvFyY9XVFz9jlOBN
	3EQGDd3zdFLil6/pU3W8FukZOF5tco7pNo47Od7gxKQtmcy0I6Nfu7coVBf05/ymy6a97ormAHpn4
	20qlED5jeqo6ci1YOP2ewMkVuNqex4724YtnqRT71gjMCYiBNS9YX3/fLkZfOqtwLau2OkykeuymT
	cWUj7A2lD30Rw0WP1IKNo8qH7qa/NiuSLDJHjvRoxm3VJ+jkv584IR0sE0YPtDc3O8XDv66Ms2j+i
	aaooay3O6Mqqps6sZiMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXfxa-0000000DoC0-0LmZ;
	Mon, 22 Dec 2025 13:28:26 +0000
Received: from mail-qt1-x834.google.com ([2607:f8b0:4864:20::834])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXfxW-0000000DoAc-332b
	for linux-rockchip@lists.infradead.org;
	Mon, 22 Dec 2025 13:28:24 +0000
Received: by mail-qt1-x834.google.com with SMTP id d75a77b69052e-4ee0ce50b95so44908551cf.0
        for <linux-rockchip@lists.infradead.org>; Mon, 22 Dec 2025 05:28:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766410101; x=1767014901; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YDlebowKLSytReXRSPBwIovISOjJgg7iMWjU9xn2E0E=;
        b=ftvgnOOhvKF+o16FspMELX4agcTd4tkevYBZkUx6SJbHukOvAnaO3R4OPjyfeseJsz
         znBYxMQO1d2lIO2r6OxD5UHqruXIBTfLo2Z8YMAJG4UnOTJxX1T5VvyYg8VuY0tpOgLt
         MHOOVmArab2uZJloKi3S63HijJi7YKd1T5cDwsw1F/ouMckr7XdTRXJUQ0rDVVrgN1rA
         al/G6KCgIp9UCWMcVRG3dTb+e/NXglJoKzaUmgyNFOjOnaCnfVYzLMBJ2hsvlA8dPzN4
         RNE6s3HsHRS7aYzrlJ5TuuiMbQVGOMR6IBDWZE3LzqL5609OsA3CPb9kpgGPxjIPNV5E
         917A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766410101; x=1767014901;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YDlebowKLSytReXRSPBwIovISOjJgg7iMWjU9xn2E0E=;
        b=wX0f4ScSUj528cg1ICQz27V0p7Sr5fPKfSa6H0UzKQGfPlo2TdLyhpCTi/MGuQoZxj
         ucZskrLc3V3f4oJYfPw838agym7K+T4e9i/jJzDNObYKUVG+oci48k0jOs+GuFXwUgqy
         2c2V8HceAa7T5KUe0MHLvO1yeE8Pcz/ae5DbP2C20si9mXmF/L2rm1R4uUJ70644kSbf
         pzekZNy1MJwOl8ufahhE0gpcqqUj9xIqbip0qJgA/JnRRmUrc9EGcC0pnw6wdT9Ef08x
         323G/NMA4Vt+1mTK0SmPgJJ9rsf9hn7abEsZGBWi2EgJIhHCbbfcpZFaQhNVHg6mWvL0
         IX+w==
X-Forwarded-Encrypted: i=1; AJvYcCWxRfxAyhbuEmeWDW5lpuYJzZAC5mDP78ws/eEQzHV5v0HUsVogRHSPNavse1UHnXmonRZz3wJgP0ie35piKA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwBK9LWNLx3636QL5Z3WCCVqNRJ5jYxg0wBwT5UBzWCe2ckqLsT
	+bZp5gXFnQf9kGDu9IdlsflntMXP/SGjJXzUQEuUNQpWozztBd0FK08q0XwGP6/4D7ejOsauQj7
	J6uo6QW5kUqiMh/XvUDXPZNxW+UyHIU4=
X-Gm-Gg: AY/fxX4nnD16wwN0uOz3Hgtfp3SrxaKEUciQH2YWGTIPRDToSTJkFbBk6WiJicxW7bl
	lIUf9QkYYsmD+zkNJ9V5TyfTX05epIiP2OxpNS8ynriwWMGOYs/d3HI3llRJpE57zSwh0x9PYRJ
	J/nFsd3i5iVNLco2s+7HdUUGWema9nNxQutVtg5ng4CEdWSZzK6paoS40Fqdr8OBkVIz1WrrsBj
	LrmAebC8TjJYb9F7fmij8QkEAaWzejvK6eo3tTjLnUspMLhXz6CU8/gCo2qOh6YzcJZ5taeG2wL
	1jhRZlxbisEiA1ec8uYAPmdS
X-Google-Smtp-Source: AGHT+IHAC1B0IqYscWngHVEOOgH6nPUg7BF7svekT7WeCJSzKv/KaP+4UG0eF0tY45F5jYxheY2blzrxV+thgMpT02A=
X-Received: by 2002:a05:622a:411b:b0:4f0:31bd:2aaa with SMTP id
 d75a77b69052e-4f4aac5db91mr179071981cf.4.1766410100766; Mon, 22 Dec 2025
 05:28:20 -0800 (PST)
MIME-Version: 1.0
References: <20251201-nanopi-m5-ufs-v2-1-ece9c0ee17c4@gmail.com>
 <CABjd4Ywc-L0jvXwk253MDZwgN3srY6WQ5EhoKZ6wb+Hae376_A@mail.gmail.com> <119070978.nniJfEyVGO@phil>
In-Reply-To: <119070978.nniJfEyVGO@phil>
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 22 Dec 2025 17:28:07 +0400
X-Gm-Features: AQt7F2ofyZnqEtwWu-6gIroppVlUF0KWZIJCYmIw9FL9qTliLfl7M3hB0GDErVw
Message-ID: <CABjd4YyCgVBFP4GG5FK5xO3SY=at5fpYicTO+ghaSCJaP_+XJQ@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: enable UFS controller on
 FriendlyElec NanoPi M5
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251222_052822_853786_8CCBA6E5 
X-CRM114-Status: GOOD (  26.92  )
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

SGkgSGVpa28sCgpPbiBNb24sIERlYyAyMiwgMjAyNSBhdCA0OjQx4oCvUE0gSGVpa28gU3R1ZWJu
ZXIgPGhlaWtvQHNudGVjaC5kZT4gd3JvdGU6Cj4KPiBIaSBBbGV4ZXksCj4KPiBBbSBEb25uZXJz
dGFnLCAxOC4gRGV6ZW1iZXIgMjAyNSwgMTU6MDU6MzkgTWl0dGVsZXVyb3DDpGlzY2hlIE5vcm1h
bHplaXQgc2NocmllYiBBbGV4ZXkgQ2hhcmtvdjoKPiA+IEhpIEhlaWtvLAo+ID4KPiA+IE9uIE1v
biwgRGVjIDEsIDIwMjUgYXQgMzozNeKAr1BNIEFsZXhleSBDaGFya292IDxhbGNoYXJrQGdtYWls
LmNvbT4gd3JvdGU6Cj4gPiA+Cj4gPiA+IFRoZSBOYW5vUGkgTTUgYm9hcmQgc3VwcG9ydHMgcGx1
Z2dhYmxlIFVGUyBtb2R1bGVzIHVzaW5nIHRoZSBVRlNIQwo+ID4gPiBpbnNpZGUgaXRzIFJvY2tj
aGlwIFJLMzU3NiBTb0MuCj4gPiA+Cj4gPiA+IEVuYWJsZSB0aGUgcmVzcGVjdGl2ZSBkZXZpY2V0
cmVlIG5vZGUgYW5kIGFkZCBpdHMgc3VwcGx5IHJlZ3VsYXRvcnMuCj4gPiA+Cj4gPiA+IExpbms6
IGh0dHBzOi8vd2lraS5mcmllbmRseWVsZWMuY29tL3dpa2kvaW1hZ2VzLzkvOTcvTmFub1BpX001
X0xQNV8yNDExX1NDSC5wZGYKPiA+ID4gU2lnbmVkLW9mZi1ieTogQWxleGV5IENoYXJrb3YgPGFs
Y2hhcmtAZ21haWwuY29tPgo+ID4gPiAtLS0KPiA+ID4gQ2hhbmdlcyBpbiB2MjoKPiA+ID4gLSBE
ZXNjcmliZSBVRlMgc3VwcGx5IHJlZ3VsYXRvcnMKPiA+ID4gLSBBZGQgbGluayB0byBzY2hlbWF0
aWMKPiA+ID4gLSBMaW5rIHRvIHYxOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjUxMTI3
LW5hbm9waS1tNS11ZnMtdjEtMS0wZDI4ZDE1NzcxMmNAZ21haWwuY29tCj4gPiA+IC0tLQo+ID4g
PiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NzYtbmFub3BpLW01LmR0cyB8IDI3
ICsrKysrKysrKysrKysrKysrKysrKysrCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMjcgaW5zZXJ0
aW9ucygrKQo+ID4KPiA+IFdvdWxkIHlvdSBtaW5kIHB1bGxpbmcgdGhpcyBvbmUsIG9yIGRvIHlv
dSBoYXZlIGFueSByZXNlcnZhdGlvbnM/Cj4gPiBUaGVyZSBoYXNuJ3QgYmVlbiBhbnkgZGlzY3Vz
c2lvbiwgYnV0IGl0IGxvb2tzIGxpa2UgYSBwcmV0dHkgc2ltcGxlCj4gPiBjaGFuZ2UsIHJ1bnRp
bWUgdGVzdGVkIGFuZCBzY2hlbWEtdGVzdGVkLgo+Cj4gWW91ciBwYXRjaCBmZWxsIGRpcmVjdGx5
IGludG8gdGhlIGRlYWQtem9uZSBiZXR3ZWVuIC1yYzcgYW5kIC1yYzEgOy0pCgpVbmRlcnN0b29k
IDopCgo+ID4gKyAgICAgdmNjMXYyX3Vmc192Y2NxOiByZWd1bGF0b3ItdmNjMXYyLXVmcy12Y2Nx
IHsKPiA+ICsgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+ID4g
KyAgICAgICAgICAgICByZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwxMjAwMDAwPjsKPiA+ICsg
ICAgICAgICAgICAgcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MTIwMDAwMD47Cj4gPiArICAg
ICAgICAgICAgIHJlZ3VsYXRvci1uYW1lID0gInZjYzF2Ml91ZnNfdmNjcSI7Cj4gPiArICAgICAg
ICAgICAgIHZpbi1zdXBwbHkgPSA8JnZjYzV2MF9zeXNfczU+Owo+ID4gKyAgICAgICAgICAgICBl
bi1zdXBwbHkgPSA8JnZjY18zdjNfczM+Owo+ID4gKyAgICAgfTsKPiA+ICsKPiA+ICsgICAgIHZj
YzF2OF91ZnNfdmNjcTI6IHJlZ3VsYXRvci12Y2MxdjgtdWZzLXZjY3EyIHsKPiA+ICsgICAgICAg
ICAgICAgY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+ID4gKyAgICAgICAgICAgICBy
ZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwxODAwMDAwPjsKPiA+ICsgICAgICAgICAgICAgcmVn
dWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MTgwMDAwMD47Cj4gPiArICAgICAgICAgICAgIHJlZ3Vs
YXRvci1uYW1lID0gInZjYzF2OF91ZnNfdmNjcTIiOwo+ID4gKyAgICAgICAgICAgICB2aW4tc3Vw
cGx5ID0gPCZ2Y2NfMXY4X3MzPjsKPiA+ICsgICAgICAgICAgICAgZW4tc3VwcGx5ID0gPCZ2ZGRh
XzF2Ml9zMD47Cj4gPiArICAgICB9Owo+Cj4KPiBCdXQgd2hlcmUgZG9lcyB0aGUgImVuLXN1cHBs
eSIgY29tZSBmcm9tPyBGb3IgdGhlIGxpZmUgb2YgbWUsIEkgY2FuJ3QgZmluZAo+IGFueSByZWZl
cmVuY2UgdG8gaXQgaW4gZWl0aGVyIHRoZSBiaW5kaW5ncyBpbiB0aGUga2VybmVsLCBub3IgdGhl
IGR0LXNjaGVtYS4KPgo+IENhbiB5b3UgcGxlYXNlIHBvaW50IG1lIHRvIHRoZSBwYXJ0IG9mIHRo
ZSBkb2N1bWVudGF0aW9uIHdoZXJlIHRoYXQgaXMKPiBkZXNjcmliZWQ/CgpUaGUgYmluZGluZ3Mg
WzFdIGRlc2NyaWJlIHN1cHBsaWVzIGJ5IGEgd2lsZGNhcmQgcGF0dGVybiAnLiotc3VwcGx5JCcs
CmFuZCB0aGUgZGV2aWNlIGluIHF1ZXN0aW9uIGlzIGEgREMtREMgcmVndWxhdG9yIChzZWUgcGFn
ZSAxNyBvZiB0aGUKc2NoZW1hdGljIFsyXSksIHdoaWNoIHByb2R1Y2VzIHRoZSAxLjJWIHBvd2Vy
IGZvciB0aGUgY2hpcCwgaXRzIFZJTgpwaW4gZGlyZWN0bHkgd2lyZWQgdG8gVkNDNVYwX1NZU19T
NSBhbmQgaXRzIEVOIHBpbiBkaXJlY3RseSB3aXJlZCB0bwpWQ0NfM1YzX1MzLCBib3RoIG9mIHdo
aWNoIG5lZWQgdG8gYmUgYWN0aXZlIGZvciB0aGUgMS4yViBmZWVkIHRvCmFwcGVhciAtIHRodXMg
Ym90aCBhcmUgJ3N1cHBsaWVzJyBvZiBzb3J0cy4gVkNDUTIgaXMgc2ltaWxhciwgYnV0CmltcGxl
bWVudGVkIHVzaW5nIGEgc2ltcGxlIGdhdGUgY2lyY3VpdC4gVGhpcyBpcyBkb25lIHRvIGVuc3Vy
ZQpjb3JyZWN0IHBvd2VyIHNlcXVlbmNpbmcsIGZyb20gd2hhdCBJIHVuZGVyc3Rvb2QuCgpJJ3Zl
IGp1c3QgY2hlY2tlZCB0aGUgZml4ZWQgcmVndWxhdG9yIGRyaXZlciB0aG91Z2gsIGFuZCBpdCBv
bmx5CmhhbmRsZXMgJ3Zpbi1zdXBwbHknLCBub3QgYW55IG90aGVyICcuKi1zdXBwbHkkJyAtIHRo
dXMsIHRlY2huaWNhbGx5LAppdCBkb2Vzbid0IGN1cnJlbnRseSBpbXBsZW1lbnQgdGhlIGZ1bGwg
c2NoZW1hIDopIE5vdCBzdXJlIGlmIHRoZXJlIGlzCmFub3RoZXIgZXhpc3RpbmcgZmFjaWxpdHkg
dG8gbW9kZWwgbXVsdGktcGFyZW50IHJlZ3VsYXRvcnMgdGhhdCBJCm1pc3NlZCwgb3IgaWYgaXQn
cyBhIGdvb2QgaWRlYSB0byBleHRlbmQgdGhlIGZpeGVkLmMgZHJpdmVyIHRvIGhhbmRsZQphbiBh
cmJpdHJhcnkgbnVtYmVyIG9mIHN1cHBsaWVzPwoKQW55IGd1aWRhbmNlIHdvdWxkIGJlIGFwcHJl
Y2lhdGVkLgoKVGhhbmtzIGEgbG90LApBbGV4ZXkKClsxXSBodHRwczovL2dpdGh1Yi5jb20vdG9y
dmFsZHMvbGludXgvYmxvYi9tYXN0ZXIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3JlZ3VsYXRvci9yZWd1bGF0b3IueWFtbCNMMjQ2LUwyNDgKWzJdIGh0dHBzOi8vd2lraS5mcmll
bmRseWVsZWMuY29tL3dpa2kvaW1hZ2VzLzkvOTcvTmFub1BpX001X0xQNV8yNDExX1NDSC5wZGYK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
