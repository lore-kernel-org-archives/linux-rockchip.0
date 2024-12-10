Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C282EE7717F
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Dec 2024 20:06:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sGgv1nqrtvQtZFgwH14CUAPPhCnQRz79hs13ST7i0hQ=; b=krJitdjRU9yZP6
	PnWEK71MpfqVyRfrns5ALutC28zYn3n3t9EpXZA+0ucPF8dvencyUZHMapjCIhs3/98UX2Z0eVyPi
	oGwLBg+V3hiavqHvsZMRKFlGxuV4D4lhJsLHfuLuXOw4rOclw6tYxhVGfwar5lu/PAv11Y5KTcKJX
	ndaqB/PgaGETRNA0ftRIVjVbd4MvDarC3AxEPUikAH/D03g2etur6ar4grlVwCw8mh8pWr+Cbh3Zt
	Jg1o49In+jr+TAqXYIiiOIkhFWKEjzOubAZnHRyuOa4mHOLEY0ul/zO1AP3yNKqHweVGz4W4JelcD
	NnEnXWnfvvIsc1lvaWZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tL6V1-0000000CcSz-3zR1;
	Tue, 10 Dec 2024 20:06:27 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tL6Tw-0000000CcAV-2X6a;
	Tue, 10 Dec 2024 20:05:21 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-5d2726c0d45so9234885a12.2;
        Tue, 10 Dec 2024 12:05:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733861118; x=1734465918; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UvOUnECdlIn1ZlNZEhyx+pBSjKFbbeY5fNNgTUdmNT8=;
        b=gJczFqxlj98FRVmUr0Tq4vJHSyGHlJw9a6NQ4I5HAfTKRgDcljeCgY6SS/FAUMcffZ
         RoYl9YJpM5upTLkAXlAKQONYqs6cR+YDP49xa4G4dPid39c9TPs3irs/rTcpbO+EBUu4
         QYozQt54vam/i64lrUm39yUfmN5adJ/oCi1B5iUA8w4FJr9HkS0YDBVBskdPH4i6U+MT
         l9ZCZ8138pPIk2jm1I0ywIa5ngBNMQtahaXC3k6TgpVD/VV0k7ldePCI0r5rSv9gOb3G
         m4fVQNnICQKOMODJ2kA7fXfu0bJK6gb1MnlU8mx3BfLQtIiPzB/NaC2CuHkj8DXrxP+v
         OOJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733861118; x=1734465918;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UvOUnECdlIn1ZlNZEhyx+pBSjKFbbeY5fNNgTUdmNT8=;
        b=h+lguK1r1KtWEhN7dDrdUBA1evORKTRT6huZRLWEfmXBsiHkCmptCuLms/u5RePNN+
         PjC5yfPlL9LCTVmd/K05tZjxhWPSWMENxP97aAjUOm/PM4+u268ohmCzy9mo9LB4aMp1
         pGoqqqoEAvnE5AFREyf1SUfF47jJ0gp3H29AKrv86FtbhL/bKgDVTgDDy129kT0jWif/
         B/sZZHKtmPqhZDbxD4biXi1JdU+K1vEm8ve4eZAvn6gOdG4oI7lvkkLKqtgROI2DXvmw
         SDZHRxmmJIFhP1m963sx5PNEnwbaiVynzMywBj6OBLz+/BVJwEYdaCoabbF7/MY6yMs0
         g+1A==
X-Forwarded-Encrypted: i=1; AJvYcCWOnbmyJ0Hm7TlPFheUzFIpgZubLQ7QqeoTUc0cva3odM0R8v8zuS33OomLwfiuZlnhEjTSATnOoN1CNBpFqiE=@lists.infradead.org, AJvYcCXS1+gS7XbGam87OAYmf8ndgZFeMQqJzMOUzVHeBY0BpxANZNG32BMEq8UwzaKMxaUkJ0fpfbxcF8q9aTOL0TZV@lists.infradead.org
X-Gm-Message-State: AOJu0Yyz3hTNu8kRYVBcTYUyJwO/LQzEn072IUuCRJhEtgn9CeTrYRJq
	8SK4W6JdL9uvApRePh60Ad910KQ0D1U+MhWfrRwIW6brTxj9XE1n5lQcygWZK6qHXiR45dRSW1v
	37QDJAqvGG201G+foGD8q2Hj/5zUxDRkLfds=
X-Gm-Gg: ASbGncs7SRunyYo5uFDoVwcCpP9N5W4FR+cev67hUfH2YytDEHIFq2acO/glFa5Hder
	cjfQ+qV/3IV7vFLtVHcLJ11lgQvRY524dk3fe
X-Google-Smtp-Source: AGHT+IFXkkrhAuSsavIGEUxkwwkvaOjiLlKI5DmTFQ4zUXjuGwhzJrOwW6849qTMFET6yYHEDJESNadpe3rp2SbLEgg=
X-Received: by 2002:a05:6402:26c5:b0:5d1:f009:925e with SMTP id
 4fb4d7f45d1cf-5d4330aa586mr85600a12.16.1733861118221; Tue, 10 Dec 2024
 12:05:18 -0800 (PST)
MIME-Version: 1.0
References: <20241210013010.81257-1-pgwipeout@gmail.com> <20241210013010.81257-5-pgwipeout@gmail.com>
 <e32fa593abfa6d08202b4f929e0b4bdb@manjaro.org> <CAMdYzYp+MQVYr1tOMEOn62vXZGVEYrtd1p9vn6YQzXdrJgSdyA@mail.gmail.com>
 <CAMdYzYquvGBzfWqvUOku7m1sM9qxmBHAL95cANDViUCT1oEEhQ@mail.gmail.com>
 <8c604ada27457698ad6d33d22a39b45a@manjaro.org> <f16b3688-91e1-4760-ac2b-ce53db98ed68@kwiboo.se>
In-Reply-To: <f16b3688-91e1-4760-ac2b-ce53db98ed68@kwiboo.se>
From: Peter Geis <pgwipeout@gmail.com>
Date: Tue, 10 Dec 2024 15:05:06 -0500
Message-ID: <CAMdYzYoGo=dLag30Dp3p8xzrqvb0peB7Oke=zKR-9qbaTns+zQ@mail.gmail.com>
Subject: Re: [PATCH 4/6] arm64: dts: rockchip: add hevc power domain clock to rk3328
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Dragan Simic <dsimic@manjaro.org>, Heiko Stuebner <heiko@sntech.de>, Alex Bee <knaerzche@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, Diederik de Haas <didi.debian@cknow.org>, 
	Johan Jonker <jbx6244@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Liang Chen <cl@rock-chips.com>, 
	Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, shironeko <shironeko@tesaguri.club>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_120520_659520_2DBA2375 
X-CRM114-Status: GOOD (  29.90  )
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

T24gVHVlLCBEZWMgMTAsIDIwMjQgYXQgMTE6MDXigK9BTSBKb25hcyBLYXJsbWFuIDxqb25hc0Br
d2lib28uc2U+IHdyb3RlOgo+Cj4gSGkgUGV0ZXIsCj4KPiBPbiAyMDI0LTEyLTEwIDE0OjUzLCBE
cmFnYW4gU2ltaWMgd3JvdGU6Cj4gPiBIZWxsbyBQZXRlciwKPiA+Cj4gPiBPbiAyMDI0LTEyLTEw
IDE0OjIzLCBQZXRlciBHZWlzIHdyb3RlOgo+ID4+IE9uIFR1ZSwgRGVjIDEwLCAyMDI0IGF0IDg6
MTPigK9BTSBQZXRlciBHZWlzIDxwZ3dpcGVvdXRAZ21haWwuY29tPiB3cm90ZToKPiA+Pj4gT24g
VHVlLCBEZWMgMTAsIDIwMjQgYXQgNTowNOKAr0FNIERyYWdhbiBTaW1pYyA8ZHNpbWljQG1hbmph
cm8ub3JnPgo+ID4+PiB3cm90ZToKPiA+Pj4+IE9uIDIwMjQtMTItMTAgMDI6MzAsIFBldGVyIEdl
aXMgd3JvdGU6Cj4gPj4+Pj4gVGhlcmUgaXMgYSByYWNlIGNvbmRpdGlvbiBhdCBzdGFydHVwIGJl
dHdlZW4gZGlzYWJsaW5nIHBvd2VyIGRvbWFpbnMKPiA+Pj4+PiBub3QKPiA+Pj4+PiB1c2VkIGFu
ZCBkaXNhYmxpbmcgY2xvY2tzIG5vdCB1c2VkIG9uIHRoZSByazMzMjguIFdoZW4gdGhlIGNsb2Nr
cyBhcmUKPiA+Pj4+PiBkaXNhYmxlZCBmaXJzdCwgdGhlIGhldmMgcG93ZXIgZG9tYWluIGZhaWxz
IHRvIHNodXQgb2ZmIGxlYWRpbmcgdG8gYQo+ID4+Pj4+IHNwbGF0IG9mIGZhaWx1cmVzLiBBZGQg
dGhlIGhldmMgY29yZSBjbG9jayB0byB0aGUgcmszMzI4IHBvd2VyIGRvbWFpbgo+ID4+Pj4+IG5v
ZGUgdG8gcHJldmVudCB0aGlzIGNvbmRpdGlvbi4KPiA+Pj4+Pgo+ID4+Pj4+IHJjdTogSU5GTzog
cmN1X3NjaGVkIGRldGVjdGVkIGV4cGVkaXRlZCBzdGFsbHMgb24gQ1BVcy90YXNrczogeyAzLS4u
Li4KPiA+Pj4+PiB9Cj4gPj4+Pj4gMTA4NyBqaWZmaWVzIHM6IDg5IHJvb3Q6IDB4OC8uCj4gPj4+
Pj4gcmN1OiBibG9ja2luZyByY3Vfbm9kZSBzdHJ1Y3R1cmVzIChpbnRlcm5hbCBSQ1UgZGVidWcp
Ogo+ID4+Pj4+IFNlbmRpbmcgTk1JIGZyb20gQ1BVIDAgdG8gQ1BVcyAzOgo+ID4+Pj4+IE5NSSBi
YWNrdHJhY2UgZm9yIGNwdSAzCj4gPj4+Pj4gQ1BVOiAzIFVJRDogMCBQSUQ6IDg2IENvbW06IGt3
b3JrZXIvMzozIE5vdCB0YWludGVkIDYuMTIuMC1yYzUrICM1Mwo+ID4+Pj4+IEhhcmR3YXJlIG5h
bWU6IEZpcmVmbHkgUk9DLVJLMzMyOC1DQyAoRFQpCj4gPj4+Pj4gV29ya3F1ZXVlOiBwbSBnZW5w
ZF9wb3dlcl9vZmZfd29ya19mbgo+ID4+Pj4+IHBzdGF0ZTogMjA0MDAwMDUgKG56Q3YgZGFpZiAr
UEFOIC1VQU8gLVRDTyAtRElUIC1TU0JTIEJUWVBFPS0tKQo+ID4+Pj4+IHBjIDogcmVnbWFwX3Vu
bG9ja19zcGlubG9jaysweDE4LzB4MzAKPiA+Pj4+PiBsciA6IHJlZ21hcF9yZWFkKzB4NjAvMHg4
OAo+ID4+Pj4+IHNwIDogZmZmZjgwMDA4MTEyM2MwMAo+ID4+Pj4+IHgyOTogZmZmZjgwMDA4MTEy
M2MwMCB4Mjg6IGZmZmYyZmE0YzYyY2FkODAgeDI3OiAwMDAwMDAwMDAwMDAwMDAwCj4gPj4+Pj4g
eDI2OiBmZmZmZDc0ZTZlNjYwZWI4IHgyNTogZmZmZjJmYTRjNjJjYWUwMCB4MjQ6IDAwMDAwMDAw
MDAwMDAwNDAKPiA+Pj4+PiB4MjM6IGZmZmZkNzRlNmQyZjNhYjggeDIyOiAwMDAwMDAwMDAwMDAw
MDAxIHgyMTogZmZmZjgwMDA4MTEyM2M3NAo+ID4+Pj4+IHgyMDogMDAwMDAwMDAwMDAwMDAwMCB4
MTk6IGZmZmYyZmE0YzA0MTIwMDAgeDE4OiAwMDAwMDAwMDAwMDAwMDAwCj4gPj4+Pj4geDE3OiA3
NzIwMmMzMTIwM2QyMDY1IHgxNjogNmM2NDY5MjAzYTcyNjU2YyB4MTU6IDZjNmY3Mjc0NmU2ZjYz
MmQKPiA+Pj4+PiB4MTQ6IDcyNjU3NzZmNzAzYTZlNmYgeDEzOiAyMDYzNzY2NTY4MjA2ZTY5IHgx
MjogNjE2ZDZmNjQyMDJjMzQzMQo+ID4+Pj4+IHgxMTogMzQ3ODMwMjA2Zjc0MjAzMCB4MTA6IDM0
MzAzMDMwMzQ3ODMwMjAgeDkgOiBmZmZmZDc0ZTZjNzM2OWUwCj4gPj4+Pj4geDggOiAzMDMwMzE2
NjY2MjA2ZTY5IHg3IDogMjA1ZDM4MzczODM1MzczMyB4NiA6IDMzMmUzMTIwMjAyMDIwNWIKPiA+
Pj4+PiB4NSA6IGZmZmZkNzRlNmM3M2ZjODggeDQgOiBmZmZmZDc0ZTZjNzNmY2Q0IHgzIDogZmZm
ZmQ3NGU2Yzc0MGI0MAo+ID4+Pj4+IHgyIDogZmZmZjgwMDA4MDAxNTQ4NCB4MSA6IDAwMDAwMDAw
MDAwMDAwMDAgeDAgOiBmZmZmMmZhNGMwNDEyMDAwCj4gPj4+Pj4gQ2FsbCB0cmFjZToKPiA+Pj4+
PiByZWdtYXBfdW5sb2NrX3NwaW5sb2NrKzB4MTgvMHgzMAo+ID4+Pj4+IHJvY2tjaGlwX3BtdV9z
ZXRfaWRsZV9yZXF1ZXN0KzB4YWMvMHgyYzAKPiA+Pj4+PiByb2NrY2hpcF9wZF9wb3dlcisweDE0
NC8weDVmOAo+ID4+Pj4+IHJvY2tjaGlwX3BkX3Bvd2VyX29mZisweDFjLzB4MzAKPiA+Pj4+PiBf
Z2VucGRfcG93ZXJfb2ZmKzB4OWMvMHgxODAKPiA+Pj4+PiBnZW5wZF9wb3dlcl9vZmYucGFydC4w
LmlzcmEuMCsweDEzMC8weDJhOAo+ID4+Pj4+IGdlbnBkX3Bvd2VyX29mZl93b3JrX2ZuKzB4NmMv
MHg5OAo+ID4+Pj4+IHByb2Nlc3Nfb25lX3dvcmsrMHgxNzAvMHgzZjAKPiA+Pj4+PiB3b3JrZXJf
dGhyZWFkKzB4MjkwLzB4NGE4Cj4gPj4+Pj4ga3RocmVhZCsweGVjLzB4ZjgKPiA+Pj4+PiByZXRf
ZnJvbV9mb3JrKzB4MTAvMHgyMAo+ID4+Pj4+IHJvY2tjaGlwLXBtLWRvbWFpbiBmZjEwMDAwMC5z
eXNjb246cG93ZXItY29udHJvbGxlcjogZmFpbGVkIHRvIGdldCBhY2sKPiA+Pj4+PiBvbgo+ID4+
Pj4+IGRvbWFpbiAnaGV2YycsIHZhbD0weDg4MjIwCj4gPj4+Pj4KPiA+Pj4+PiBGaXhlczogNTJl
MDJkMzc3YTcyICgiYXJtNjQ6IGR0czogcm9ja2NoaXA6IGFkZCBjb3JlIGR0c2kgZmlsZSBmb3IK
PiA+Pj4+PiBSSzMzMjggU29DcyIpCj4gPj4+Pj4gU2lnbmVkLW9mZi1ieTogUGV0ZXIgR2VpcyA8
cGd3aXBlb3V0QGdtYWlsLmNvbT4KPiA+Pj4+Cj4gPj4+PiBXaGlsZSBJIHdhcyB1bmFibGUgdG8g
Zm9ybWFsbHkgdmVyaWZ5IHRoaXMgY2xvY2sgYXNzaWdubWVudCwKPiA+Pj4+IGkuZS4gYnkgdXNp
bmcgdGhlIFJLMzMyOCBUUk0gb3IgdGhlIGRvd25zdHJlYW0ga2VybmVsIHNvdXJjZQo+ID4+Pj4g
ZnJvbSBSb2NrY2hpcCwgaXQgbWFrZXMgcGVyZmVjdCBzZW5zZSB0byBtZS4gIFRoYW5rcyBmb3Ig
dGhlCj4gPj4+PiBwYXRjaCwgYW5kIHBsZWFzZSBmZWVsIGZyZWUgdG8gaW5jbHVkZToKPiA+Pj4+
Cj4gPj4+PiBSZXZpZXdlZC1ieTogRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+Cj4g
Pj4+Cj4gPj4+IEl0IGlzIHVuZm9ydHVuYXRlIHRoZSBUUk0gZG9lc24ndCBpbmNsdWRlIHRoZSBj
bG9jayBtYXBzLCBiZWNhdXNlIHRoZXkKPiA+Pj4gYXJlIGV4dHJlbWVseSBoZWxwZnVsIHdoZW4g
b25lIGNhbiBhY3F1aXJlIHRoZW0uIEl0IGFsc28gZG9lc24ndCBoZWxwCj4gPj4+IHRoYXQgdGhl
IFRSTSByZWdpc3RlciBkZWZpbml0aW9uIG9ubHkgcmVmZXJyZWQgdG8gdGhpcyBhcyAicGxsIi4g
SSB3YXMKPiA+Pj4gc2VudCBzcGVjaWZpY2FsbHkgdGhlIHVzYjMgcGh5IGNsb2NrIG1hcCBmb3Ig
bXkgd29yayBvbiB0aGUgZHJpdmVyLAo+ID4+PiB3aGljaCBoYWQgdGhlIGxvY2F0aW9uIG9mIGVh
Y2ggc3dpdGNoIGFuZCBkaXZpZGVyIGFsb25nIHdpdGggdGhlCj4gPj4+IHJlZ2lzdGVyIGFuZCBi
aXQgdGhhdCBjb250cm9sbGVkIGl0LiBUaGF0IGNvbWJpbmVkIHdpdGggdGhlIFRSTQo+ID4+PiBy
ZWdpc3RlciBtYXAgYWxsb3dlZCBtZSB0byBmaW5kIHRoaXMgZXJyb3IuCj4gPj4KPiA+PiBBcG9s
b2dpZXMsIHRoYXQncyB0aGUgd3JvbmcgcmVzcG9uc2UgZm9yIHRoaXMgb25lLgo+ID4KPiA+IE5v
IHdvcnJpZXMuCj4gPgo+ID4+IFRoaXMgcGF0Y2ggd2FzIHRoZSByZXN1bHQgb2YgZWR1Y2F0ZWQg
Z3Vlc3MgY29tYmluZWQgd2l0aCB0ZXN0aW5nLiBJCj4gPj4gZ3JhYmJlZCBhbGwgb2YgdGhlIGNs
b2NrcyB0aGF0IGxvb2tlZCBsaWtlIHRoZXkgY291bGQgYWZmZWN0IHRoaW5ncywKPiA+PiB0aGVu
IHRlc3RlZCB0aGVtIG9uZSBhdCBhIHRpbWUgdW50aWwgSSBpc29sYXRlZCB0aGVtIHRvIHRoaXMg
Y2xvY2suIEl0Cj4gPj4gbGl2ZXMgYWxvbmUgd2l0aCBjcGxsIGFzIHRoZSBwYXJlbnQgYW5kIGhh
cyBubyBjaGlsZHJlbiBhY2NvcmRpbmcgdG8KPiA+PiB0aGUgY2xvY2sgc3VtbWFyeS4gKFRob3Vn
aCB0aGUgd3JpdGV1cCBpIG1pc3Rha2VubHkgaW5jbHVkZWQgYWJvdmUKPiA+PiBwcm92ZXMgdGhl
IGNsb2NrIG1hcCBpc24ndCBhbHdheXMgYWNjdXJhdGUpLgo+ID4KPiA+IEkgc2VlLCB0aGFua3Mg
Zm9yIGFsbCB5b3VyIHdvcmsgb24gdGhpcyBwYXRjaCEgIEl0IHN1cmVseSB0b29rIHF1aXRlCj4g
PiBhIGxvdCBvZiB0aW1lIHRvIHBlcmZvcm0gYWxsIHRoZSB0ZXN0aW5nLgo+ID4KPiA+Pj4+PiAt
LS0KPiA+Pj4+Pgo+ID4+Pj4+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC5k
dHNpIHwgMSArCj4gPj4+Pj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+ID4+Pj4+
Cj4gPj4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4
LmR0c2kKPiA+Pj4+PiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LmR0c2kK
PiA+Pj4+PiBpbmRleCAwNTk3ZGU0MTVmZTAuLjdkOTkyYzNjMDFjZSAxMDA2NDQKPiA+Pj4+PiAt
LS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC5kdHNpCj4gPj4+Pj4gKysr
IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjguZHRzaQo+ID4+Pj4+IEBAIC0z
MzMsNiArMzMzLDcgQEAgcG93ZXI6IHBvd2VyLWNvbnRyb2xsZXIgewo+ID4+Pj4+Cj4gPj4+Pj4g
ICAgICAgICAgICAgICAgICAgICAgIHBvd2VyLWRvbWFpbkBSSzMzMjhfUERfSEVWQyB7Cj4gPj4+
Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPFJLMzMyOF9QRF9IRVZDPjsK
PiA+Pj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjbG9ja3MgPSA8JmNydSBTQ0xL
X1ZFTkNfQ09SRT47Cj4KPiBEbyB3ZSBhbHNvIG5lZWQgdG8gaW5jbHVkZSBvbmUgb3IgYWxsIG9m
IHRoZSBmb2xsb3dpbmcgY2xvY2tzPwo+Cj4gQWNjb3JkaW5nIHRvIEZpZy4gMy02IFJLMzIyOEgg
Q2xvY2sgQXJjaGl0ZWN0dXJlIERpYWdyYW0gNSBmb2xsb3dpbmcKPiBjbG9ja3MgcG9pbnQgdG8g
dGhlIEgyNjUgYmxvY2s6Cj4KPiBTNTFfNiAoNFBMTCkgLyBHNl8zIC8gUzUxXzAgKERpdkZyZWUg
MX4zMikgLyBENCAtLS0tIGFjbGtfaDI2NQo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBcLS0gcGNsa19oMjY1Cj4gUzUxXzE0ICg0UExMKSAvIEc2XzQg
LyBTNTFfOCAoRGl2RnJlZSAxfjMyKSAvIEQ0IC0gY2xrX3ZlbmNfY29yZQo+IFM1Ml8xNCAoNFBM
TCkgLyBHNl83IC8gUzUyXzggKERpdkZyZWUgMX4zMikgLyBENCAtIGNsa192ZW5jX2RzcAoKR29v
ZCBBZnRlcm5vb24sCgpUaGFua3MgZm9yIGFza2luZyEgSWYgd2Ugd2VyZSBpbXBsZW1lbnRpbmcg
dGhlIGZ1bGwgZW5jb2RlciwgcHJvYmFibHkuCkhvd2V2ZXIgZXZlbiB3aXRoIGFsbCB0aGUgY2xv
Y2tzIGVuYWJsZWQgY3VycmVudGx5IHRoZSBlbmNvZGVyIGhhcmQKbG9ja3MgdGhlIGJvYXJkIGlm
IHdlIHRvdWNoIGl0LiBGb3Igbm93IGFkZGluZyBqdXN0IHRoZSBTQ0xLX1ZFTkNfQ09SRQppcyBl
bm91Z2ggdG8gZW5hYmxlIGNvbnRyb2wgb2YgdGhlIHBvd2VyIGRvbWFpbi4KClZlcnkgUmVzcGVj
dGZ1bGx5LApQZXRlciBHZWlzCgo+Cj4gUmVnYXJkcywKPiBKb25hcwo+Cj4gPj4+Pj4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgI3Bvd2VyLWRvbWFpbi1jZWxscyA9IDwwPjsKPiA+Pj4+
PiAgICAgICAgICAgICAgICAgICAgICAgfTsKPiA+Pj4+PiAgICAgICAgICAgICAgICAgICAgICAg
cG93ZXItZG9tYWluQFJLMzMyOF9QRF9WSURFTyB7Cj4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
