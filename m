Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B85FD41C2E
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Nov 2024 10:33:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dtfxNYj1lFX5TjlZ8KwgeBXKgDRlS1wYiNVM5P1JxkE=; b=MpmraLKqajs0UC
	7DLkSt9XfFAkqecaxbpXQI2gz47XjPhWrKjXAUnxPic1tcpeMcre8QZ6wHmEpbRgwXMHhhZrPU8YJ
	2Cq+QXwCjB7LAVf8p9a0mYub/rOmd0b0V1FYYFZKi6UkcXpF9tlWpg3vQtO8AdfpV1iB31TnJvGP8
	LElRUnwHa6KsSG2Mgv+C6xa70KrUIDacnDSOWgKQMBXnf7XhZtCkAxvT3As0vzvmR5ubBNUO6Y4so
	i3Ivtn3oeJAEQ0OhE8ML5ajqzfTC2N5MG3UZofqWU4JTHZGxIWSlsgjheR8jfHobXWl2G5+Vm1OhS
	97rSS6OmzOE1J48Uja4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBAh0-00000006SmB-0qM3;
	Wed, 13 Nov 2024 10:33:46 +0000
Received: from mail-oi1-f181.google.com ([209.85.167.181])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBAY3-00000006QtV-49V7;
	Wed, 13 Nov 2024 10:24:33 +0000
Received: by mail-oi1-f181.google.com with SMTP id 5614622812f47-3e5f835c024so4067369b6e.2;
        Wed, 13 Nov 2024 02:24:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731493471; x=1732098271;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RJ3bR7NP6yUdrnlMpAZ95ydSaHbPQlqJpHBl9pVaNIQ=;
        b=UWwsiRAZJu5swjJj5FxTV5nC4DqFnZNhmzyE+Rl0KyAVZp1+RN5XfRsSNKZKYJ0ub9
         P5ZddramX70wIaCtYHBiSuw/QztYtNpDF5D211unrlE7f8CsMX7H5Sa2tQBSNd14wI60
         9d4NVSzBDSm37iQFh8d1fxyCLIqB682AB1i46/kR3vYTCDBPmD5nvj8hg70qqBLb7JP8
         IXHL9cBO46CSmashglTQT6RHCbliNlmBVWzGL2jKA11qxJgyn9ZbY1+GLFU3BmBrIjt7
         zESs6y3o2u/Id3gGmT3gDNTZQZAfjYR2i6mn8/CjP5nwpk0IG2bdjSHMJJYNwcjT7Pig
         NuaA==
X-Forwarded-Encrypted: i=1; AJvYcCUYXO96QcfAy/ZUsU9/A7vqjNo7pgpmP8gro7aXGMhRe1G4JvO5/TjSLVrHvH9J2fz7ptJ1srGfL9FfVryBD30=@lists.infradead.org, AJvYcCVB9FkxVdq0GZ355hWaeT889hbdlIumKq2m/kDKuqEEV0+t2cVeFlPjb3cZw46XzR7cf+wBEw0YNOiC5JkB4WqQ@lists.infradead.org
X-Gm-Message-State: AOJu0Ywfa+P27KKTE8H6IiN1puYDmpH2Araqh2auK6lNSiXeajdpNswP
	DxrT5xGGK7LqHOwGfutnxC9OVDY+/jMJ+T3YmjlICy2bnbTbcrbdq9pvgGy0
X-Google-Smtp-Source: AGHT+IGCDc1HEyve8xuOtWI4FgIE6STXWM+8RhPSvKJp5n2XLQd15MkxzkpBxK31kJkEjc82kYu9Pg==
X-Received: by 2002:a05:6808:4393:b0:3e6:10d1:ecb6 with SMTP id 5614622812f47-3e794737fd8mr15203906b6e.28.1731493470685;
        Wed, 13 Nov 2024 02:24:30 -0800 (PST)
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com. [209.85.216.48])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7f41f2e98d1sm12146125a12.0.2024.11.13.02.24.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Nov 2024 02:24:30 -0800 (PST)
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-2e2bd347124so5296020a91.1;
        Wed, 13 Nov 2024 02:24:30 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVJjH4bXEmv6uc3Kc9Lxs/E350aD5r0SheMy8/6D0EwzgN1uEJZ0w3YDVp/Kx5XMBJYEPranJ1Uo4FuJeNymcKz@lists.infradead.org, AJvYcCWquGAnwxnBAZwhbmJVMCBEwqJB+Vh+UhbMhKWNf8BMi8R3goPj0O4YL4SKwi+ijyCMovVVqkWkHLknHCnJ04E=@lists.infradead.org
X-Received: by 2002:a17:90b:540b:b0:2e1:682b:361a with SMTP id
 98e67ed59e1d1-2e9b177fce7mr25968056a91.28.1731493470115; Wed, 13 Nov 2024
 02:24:30 -0800 (PST)
MIME-Version: 1.0
References: <20241111181807.13211-1-tszucs@linux.com> <20241111181807.13211-2-tszucs@linux.com>
 <c89c2f16-ffb0-4b61-a962-9705f9f1e0e2@kwiboo.se> <CA+GksrJzkxffSQbuseGFL0=2PDxV+TRevX0-NOkc6FNYLmNgYA@mail.gmail.com>
 <e9ff5387-b3c1-41a7-b251-a12789d25a70@kwiboo.se>
In-Reply-To: <e9ff5387-b3c1-41a7-b251-a12789d25a70@kwiboo.se>
From: =?UTF-8?B?VGFtw6FzIFN6xbFjcw==?= <tszucs@linux.com>
Date: Wed, 13 Nov 2024 11:24:18 +0100
X-Gmail-Original-Message-ID: <CA+Gksr+E6_cf46iKEufWLvQwAbsuC15nq6O6N6gP=x2-BVTnSA@mail.gmail.com>
Message-ID: <CA+Gksr+E6_cf46iKEufWLvQwAbsuC15nq6O6N6gP=x2-BVTnSA@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Add supported UHS-I rates to
 sdmmc0 on rock-3b
To: Jonas Karlman <jonas@kwiboo.se>
Cc: =?UTF-8?B?VGFtw6FzIFN6xbFjcw==?= <tszucs@linux.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki <naoki@radxa.com>, Dragan Simic <dsimic@manjaro.org>, 
	Chukun Pan <amadeus@jmu.edu.cn>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241113_022432_054410_6220DCAC 
X-CRM114-Status: GOOD (  38.92  )
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

SGkgSm9uYXMsCgpPbiBUdWUsIE5vdiAxMiwgMjAyNCBhdCAxMTozN+KAr1BNIEpvbmFzIEthcmxt
YW4gPGpvbmFzQGt3aWJvby5zZT4gd3JvdGU6Cj4KPiBIaSBUYW3DoXMsCj4KPiBPbiAyMDI0LTEx
LTEyIDE1OjM2LCBUYW3DoXMgU3rFsWNzIHdyb3RlOgo+ID4gSGkgSm9uYXMsCj4gPgo+ID4gVGhh
bmsgeW91IGZvciBwb2ludGluZyB0aGlzIG91dCEgSSBoYXZlbid0IG5vdGljZWQgdGhpcyBiZWZv
cmUuIEkndmUKPiA+IGRvbmUgc29tZSB0ZXN0aW5nIGFuZCBJIGJlbGlldmUgSSBhbSBhYmxlIHRv
IHJlcHJvZHVjZSB0aGUgaXNzdWUgeW91Cj4gPiBkZXNjcmliZWQsIGFsdGhvdWdoIEkgY2Fubm90
IGNvbmZpcm0gdGhlIHJlYXNvbi4KPiA+IFRoZSBvbmx5IG9jY2FzaW9uIEkgZW5jb3VudGVyIGFu
eSBwcm9ibGVtcyBpcyB3aGVuIGEgVUhTIFNEIGNhcmQgb3IKPiA+IFNESU8gZGV2aWNlIGlzIGNv
bm5lY3RlZCB0byBzZG1tYzAgZHVyaW5nIGJvb3R1cC4gU29tZXRpbWVzIHRoZSBkZXZpY2UKPiA+
IGlzIHJlY29nbml6ZWQgYXMgSFMgb25seS4gT2J2aW91c2x5IG5vIHR1bmluZyB2YWx1ZSByZXBv
cnRlZC4gQWxzbywKPiA+IHNkbW1jMiBjdXRzIG91dCBjb21wbGV0ZWx5LiBJJ20gYm9vdGluZyBm
cm9tIGVNTUMgYW5kIHdoZW4gdGhlIFNEIGNhcmQKPiA+IGlzIHJlbW92ZWQgaW4gdGhpcyBzdGF0
ZSBJIGxvc2UgbXkgcm9vdGZzLiBDZXJ0YWlubHksIHRoaXMgbmVlZHMgbW9yZQo+ID4gYXR0ZW50
aW9uIGJ1dCBpdCBzZWVtcyB0byBiZSB1bnJlbGF0ZWQgdG8gdGhlIGNoYW5nZXMgaGVyZS4KPiA+
Cj4gPiBJIG5lZWQgbW9yZSB0aW1lIHRvIGNoZWNrIGJ1dCBhcmUgeW91IHN1cmUgdGhpcyBTRCBj
YXJkIGR1cmluZyBib290dXAKPiA+IGlzc3VlIGlzIGdvbmUgd2l0aCBVSFMtSSBkaXNhYmxlZD8K
Pgo+IFllcywgdGhlIGlzc3VlIGlzIHRoYXQgdGhlIGlvIHZvbHRhZ2UgZG9tYWluIG11c3QgYmUg
Y29uZmlndXJlZCB0byBtYXRjaAo+IHRoZSBpbyBzaWduYWwgdm9sdGFnZSB1c2VkLCBhbmQgdG8g
dXNlIHVocyB0aGUgdm9sdGFnZSBjaGFuZ2VzIGZyb20gM3YzCj4gdG8gMXY4LiBDYXVzaW5nIGEg
bWlzcy1tYXRjaCBiZXR3ZWVuIGlvIHZvbHRhZ2UgZG9tYWluIGNvbmZpZyBhbmQgdGhlCj4gcmVn
dWxhdG9yIHZvbHRhZ2UgdXNlZCBkdXJpbmcgaW5pdGlhbCBwcm9iZSwgdW5sZXNzIGlvLWRvbWFp
biBkcml2ZXIKPiBoYXBwZW5zIHRvIGJlIGZ1bGx5IGxvYWRlZCBiZWZvcmUgbW1jIGRldmljZXMg
YXJlIHByb2JlZC4KPgo+ID4KPiA+IEFsc28sIGluIGV2ZXJ5IG90aGVyIGNhc2UsIHdoZW4geW91
IGNvbm5lY3QgYW55IGRldmljZSB0byBzZG1tYzAgYWZ0ZXIKPiA+IGJvb3R1cCwgcGVyZm9ybWFu
Y2UgYW5kIHN0YWJpbGl0eSBpcyBwZXJmZWN0Lgo+ID4gSW50ZXJlc3RpbmdseSBJIGFsc28gZG9u
J3QgZXhwZXJpZW5jZSB0aGlzIGJlaGF2aW9yIHdpdGggYW4gZU1NQwo+ID4gZGV2aWNlIGFuZCAv
IG9yIGFuIFNESU8gZGV2aWNlIGNvbm5lY3RlZCB0byBzZG1tYzIgZHVyaW5nIGJvb3R1cC4gT25s
eQo+ID4gc2RtbWMwIGlzIHByb2JsZW1hdGljIGFuZCBvbmx5IGR1cmluZyBib290dXAuCj4KPiBZ
ZXMsIGFzIHlvdSBoYXZlIGRpc2NvdmVyZWQsIGluc2VydGluZyB0aGUgc2QtY2FyZCBhZnRlciBz
eXN0ZW0gaGFzCj4gYm9vdGVkIGFuZCBpby1kb21haW4gZHJpdmVyIGhhcyBiZWVuIGxvYWRlZCwg
ZXZlcnl0aGluZyBjYW4gd29yayBhcwo+IGV4cGVjdGVkIHdpdGggdWhzIHNwZWVkcy4KPgo+IFVu
dGlsIHRoaXMgcHJvYmUgcmFjZSBjb25kaXRpb24gaGFzIGJlZW4gc29sdmVkIGJvb3Rpbmcgd2l0
aCBhIHNkLWNhcmQKPiBpbnNlcnRlZCBtYXkgb3IgbWF5IG5vdCByZXN1bHQgaW4gd3JvbmcgdHVu
aW5nIG9yIG90aGVyIHJlbGF0ZWQgaXNzdWVzLgo+Cj4gQmVjYXVzZSBvZiB0aGlzIEkgYWR2aWNl
IG5vdCB0byBlbmFibGUgdWhzIG1vZGUgZm9yIHNkbW1jMCBhdCB0aGlzIHRpbWUuCgpBbGwgcmln
aHQsIGFuZCB0aGFuayB5b3UgZm9yIHRoZSBleHBsYW5hdGlvbi4gTXkgaGFuZHMgYXJlIGZ1bGwg
YXQgdGhlCm1vbWVudCBidXQgbGV0IG1lIHRoaW5rIGFib3V0IHRoaXMuCgo+Cj4gUmVnYXJkcywK
PiBKb25hcwo+Cj4gPgo+ID4gQW55IG1vcmUgdGhvdWdodHMgb24gdGhpcyBhcmUgdmVyeSB3ZWxj
b21lLgo+ID4KPiA+IEtpbmQgcmVnYXJkcywKPiA+IFRhbWFzCj4gPgo+ID4KPiA+Cj4gPiBUYW3D
oXMgU3rFsWNzCj4gPiB0c3p1Y3NAbGludXguY29tCj4gPgo+ID4gT24gTW9uLCBOb3YgMTEsIDIw
MjQgYXQgODowMOKAr1BNIEpvbmFzIEthcmxtYW4gPGpvbmFzQGt3aWJvby5zZT4gd3JvdGU6Cj4g
Pj4KPiA+PiBIaSBUYW3DoXMsCj4gPj4KPiA+PiBPbiAyMDI0LTExLTExIDE5OjE3LCBUYW3DoXMg
U3rFsWNzIHdyb3RlOgo+ID4+PiBBZGQgYWxsIHN1cHBvcnRlZCBVSFMtSSByYXRlcyB0byBzZG1t
YzAgYW5kIGFsbG93IDIwMCBNSHogbWF4aW11bSBjbG9jayB0bwo+ID4+PiBiZW5lZml0IG1vZGVy
biBTRCBjYXJkcy4KPiA+Pj4KPiA+Pj4gU2lnbmVkLW9mZi1ieTogVGFtw6FzIFN6xbFjcyA8dHN6
dWNzQGxpbnV4LmNvbT4KPiA+Pj4gLS0tCj4gPj4+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU2OC1yb2NrLTNiLmR0cyB8IDYgKysrKysrCj4gPj4+ICAxIGZpbGUgY2hhbmdlZCwg
NiBpbnNlcnRpb25zKCspCj4gPj4+Cj4gPj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU2OC1yb2NrLTNiLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTY4LXJvY2stM2IuZHRzCj4gPj4+IGluZGV4IDNkMGMxY2NmYWE3OS4uMjQyYWY1
MzM3Y2RmIDEwMDY0NAo+ID4+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU2OC1yb2NrLTNiLmR0cwo+ID4+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzU2OC1yb2NrLTNiLmR0cwo+ID4+PiBAQCAtNjcwLDggKzY3MCwxNCBAQCAmc2RtbWMwIHsK
PiA+Pj4gICAgICAgYnVzLXdpZHRoID0gPDQ+Owo+ID4+PiAgICAgICBjYXAtc2QtaGlnaHNwZWVk
Owo+ID4+PiAgICAgICBkaXNhYmxlLXdwOwo+ID4+PiArICAgICBtYXgtZnJlcXVlbmN5ID0gPDIw
MDAwMDAwMD47Cj4gPj4+ICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gPj4+ICAg
ICAgIHBpbmN0cmwtMCA9IDwmc2RtbWMwX2J1czQgJnNkbW1jMF9jbGsgJnNkbW1jMF9jbWQgJnNk
bW1jMF9kZXQ+Owo+ID4+PiArICAgICBzZC11aHMtc2RyMTI7Cj4gPj4+ICsgICAgIHNkLXVocy1z
ZHIyNTsKPiA+Pj4gKyAgICAgc2QtdWhzLXNkcjUwOwo+ID4+PiArICAgICBzZC11aHMtc2RyMTA0
Owo+ID4+PiArICAgICBzZC11aHMtZGRyNTA7Cj4gPj4KPiA+PiBUaGVyZSBpcyBhbiBpc3N1ZSB3
aXRoIGlvLWRvbWFpbiBkcml2ZXIgbm90IGFsd2F5cyBiZWluZyBwcm9iZWQgYmVmb3JlCj4gPj4g
bW1jIGRyaXZlciwgdGhpcyB0eXBpY2FsbHkgcmVzdWx0IGluIGlvLWRvbWFpbiBiZWluZyBjb25m
aWd1cmVkIHdyb25nLAo+ID4+IGFuZCBtbWMgdHVuaW5nIGhhcHBlbiBiZWZvcmUgaW8tZG9tYWlu
IGlzIGNvcnJlY3RseSBjb25maWd1cmVkLgo+ID4+Cj4gPj4gWW91IGNhbiB1c3VhbGx5IG9ic2Vy
dmUgdGhpcyBieSBsb29raW5nIGF0IHRoZSB0dW5pbmcgdmFsdWUgZHVyaW5nIGJvb3QKPiA+PiBh
bmQgY29tcGFyaW5nIGl0IHRvIHRoZSB0dW5pbmcgdmFsdWUgYWZ0ZXIgcmVtb3ZpbmcgYW5kIHJl
LWluc2VyaW5nIGEKPiA+PiBzZC1jYXJkLgo+ID4+Cj4gPj4gQmVjYXVzZSBvZiB0aGlzIHVocyBt
b2RlcyB3YXMgbGVmdCBvdXQgZnJvbSBpbml0aWFsIERUIHN1Ym1pc3Npb24sIHNvbWUKPiA+PiBj
YXJkcyB3aWxsIHdvcmsgb3RoZXJzIHdvbnQsIHNkLXVocy1zZHI1MCBpcyBrbm93biB0byBiZSB3
b3JraW5nIHdpdGgKPiA+PiBtb3N0IGNhcmRzIGV2ZW4gd2l0aCB0aGUgcHJvYmUgb3JkZXIgaXNz
dWUuCj4gPj4KPiA+PiBBbHNvIEkgdGhvdWdodCB0aGF0IGxvd2VyIHNwZWVkcyB3aGVyZSBpbXBs
aWVkPwo+ID4+Cj4gPj4gUmVnYXJkcywKPiA+PiBKb25hcwo+ID4+Cj4gPj4+ICAgICAgIHZtbWMt
c3VwcGx5ID0gPCZ2Y2MzdjNfc2Q+Owo+ID4+PiAgICAgICB2cW1tYy1zdXBwbHkgPSA8JnZjY2lv
X3NkPjsKPiA+Pj4gICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ID4+Cj4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
