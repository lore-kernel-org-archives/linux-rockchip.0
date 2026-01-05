Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C79FECCF2C2
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Jan 2026 20:28:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vV61I4C0aAAbQUAYjo6tgb6xIT7j1zub5TMHPFWFWQA=; b=FsbExyLF3Rx0cA
	tkbkIq/+ZLBh6kUIXkALCwp/+1xM45ctR77A5oaqwVT/IZzF8BiYLCazxEVyBNOoIObxFsbeN991s
	NU5Oj0vdRc7HcjAZf9x/oZ2W3d3wcR0Kle8cUYFuvqQUONcMc/EDQ35OOWVou3sPzLAg6KiIpMDgY
	QknBY16xAAa79JLMXO01TepWJi/ae8ut1oHCvW8NrB1GesWO4ticIkJ4IYjn/OD57mwpZv5nEtgME
	hKvwSVn2nWh2X26XGWRSZuMCdPzvC00AffiMJp40VpE6SH5/CWvNeLkxd+2A4BCLA0OcCTCjmdo6P
	pXnvlsdMFIn+0cE6kNng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcrBr-0000000C3AC-3UNh;
	Mon, 05 Jan 2026 20:28:35 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcrBp-0000000C39V-1zKt
	for linux-rockchip@lists.infradead.org;
	Mon, 05 Jan 2026 20:28:34 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-64b9230f564so405729a12.1
        for <linux-rockchip@lists.infradead.org>; Mon, 05 Jan 2026 12:28:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1767644910; x=1768249710; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=50xGHnyMAYMUW9mHIcf/4vlyevvh06h79/UItY38+Nk=;
        b=GfhV1zbEfPsOLF1N4BYzrboENyEOcT47PTxfoJdZ06aOZdBvPZsmEdZohbL4re16b+
         lMFcTpTCsay1nqSK2e3JsKBGuwDqfmq6g6n5+GbBSHxzvKzE1Gl8M8S7xx65c49wGzSl
         I7SFvwO0tfw8y6cwjGjsrYTGY4RzT0WPFotbo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767644910; x=1768249710;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=50xGHnyMAYMUW9mHIcf/4vlyevvh06h79/UItY38+Nk=;
        b=DwrF9tYX6fQcBBdD1TtOTmUAYnz25GTZE3o8joJV/0EBGK9Jqe3s6TPh92It0ugRPp
         GyTHczylID+JWUqQp2kcdUNM4Oj5Pjt+4gpF4ey0pKzSG4A2d/0ZA3hW1Swe5HW3RWH1
         u8zILjZ0DSYph2EUs8FwbeQLHYxsD/p26/dzaFcbhhELVzk7a3SQnee+k6PMpykou6Lv
         Igpzw8b2xBTvk5diOX+Bj8a9Z2BlOizEV/8VYav2Es+Duev5BVOW9TXhBjHogADby3cj
         2k03cR3/DAPjvU55nAV73tTIdni/bmJ/FALx5166qGBKqlK8OFlDI9PeopbRO6emFmJT
         Cj/w==
X-Forwarded-Encrypted: i=1; AJvYcCVg4hSASn3jIUfI6uVwEJ+saVQAUuX2a5/mkLiwPXlmdMAP+dj+Am4sErWeZIhw6CLvp5CQqOWYrulygYNXzg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxY58F+Gr/UY2PxysKPJI/FDSYsskeKMrSesp0nTnSGMpoDcpGS
	TPSmaIAG1hjpJRkXEI87p7x/AydgahErIum+dlAGbPIHFXcoEsrJVbZMU8SxArQOV5OLPsCxFhX
	Vj0fxLA==
X-Gm-Gg: AY/fxX79Txsa/b7PUG/AeUUbAx7vO+Wcp0a833KD3q6mkm6xOURUP59wOM8AD4Bojv5
	R2mHNRukjbKE8TPPEbi/EhP1tSagt/FnEI3u+ry7hYKjDQ5oJAlyRnlfuXpl9KBGVFmyxJfJMyf
	a9fEPNsaentKXTqsOTyUN5M4aAUeImDQOGcstaeU55uIxnoWj2qlk4jRkXlSGUhiT9PhjPbuJ8q
	+NqxFQJdAnzwrPNqe8WcaQjx8iG9vAfzvypL24KzmwxFdi8MzM5FYXJhPqBP677IqErv9OCfyeU
	nxv/H4Ssu31TOCW0/hnkD2ayE508PP6Eu4eSdA0afNzqpRherODc16S7R5e53HRO09eywYqxc46
	kmSdSQoZB3oOzC+NLG3512tFdwDj/vf01xMxWxrGv76JNNt5wp0NmwdGSmvFyiSUvk8OKY5J2B1
	elUTCI73rcmDWfue4TIygppe4ZzO8x4Mwx7DzaK/conRP+u/nhfQ==
X-Google-Smtp-Source: AGHT+IGKQG/bLSw9H6WZ092zaE06ZRSuusN3FRSqj/x8aa42Zd0N1IbK9ajzlxj7N49TwaVd87MUaw==
X-Received: by 2002:a05:6402:2714:b0:649:927c:337c with SMTP id 4fb4d7f45d1cf-6507932d08dmr519456a12.14.1767644909909;
        Mon, 05 Jan 2026 12:28:29 -0800 (PST)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com. [209.85.128.50])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf65c07sm306584a12.23.2026.01.05.12.28.28
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jan 2026 12:28:28 -0800 (PST)
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4779aa4f928so3567435e9.1
        for <linux-rockchip@lists.infradead.org>; Mon, 05 Jan 2026 12:28:28 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW5j2zNoJf1J0F2IqfPCAvwMAhoKyZP6qQNzr+8KbhFGwLE5VIVs5kt2d1P3fR6t5BocQUJmTif+n5w/aS83Q==@lists.infradead.org
X-Received: by 2002:a05:600c:3115:b0:47a:80f8:82ab with SMTP id
 5b1f17b1804b1-47d7f0988c5mr8202775e9.24.1767644908290; Mon, 05 Jan 2026
 12:28:28 -0800 (PST)
MIME-Version: 1.0
References: <cover.1767111804.git.robin.murphy@arm.com> <bc54c6c700a4be244bd4f81cb846cf628313a6ee.1767111810.git.robin.murphy@arm.com>
 <CAD=FV=VB9XOm33VvsTN4cd22rBf9A-7ie4hN80TAByciQropfg@mail.gmail.com> <c76ae679-d05a-4192-8ffe-189649799ee4@arm.com>
In-Reply-To: <c76ae679-d05a-4192-8ffe-189649799ee4@arm.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 5 Jan 2026 12:28:17 -0800
X-Gmail-Original-Message-ID: <CAD=FV=WKxCj6Wix0rvRpfuDMyM63oxgOZT1eVpphqtprr96_wg@mail.gmail.com>
X-Gm-Features: AQt7F2pkJeH8zNGpw_MUiT4YReeWLIU1tcbaA-2NAGp7RJZED21e57oHRAgpJJQ
Message-ID: <CAD=FV=WKxCj6Wix0rvRpfuDMyM63oxgOZT1eVpphqtprr96_wg@mail.gmail.com>
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: Add overlay for FriendlyElec HD702E
To: Robin Murphy <robin.murphy@arm.com>
Cc: heiko@sntech.de, neil.armstrong@linaro.org, thierry.reding@gmail.com, 
	sam@ravnborg.org, jesszhan0024@gmail.com, dri-devel@lists.freedesktop.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_122833_574464_7CF8CF2B 
X-CRM114-Status: GOOD (  43.42  )
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

SGksCgpPbiBNb24sIEphbiA1LCAyMDI2IGF0IDExOjM54oCvQU0gUm9iaW4gTXVycGh5IDxyb2Jp
bi5tdXJwaHlAYXJtLmNvbT4gd3JvdGU6Cj4KPiA+PiArJnsvfSB7Cj4gPj4gKyAgICAgICBwd21f
Ymw6IGJhY2tsaWdodCB7Cj4gPgo+ID4gbml0OiB1cCB0byB5b3UsIGJ1dCBJIGhhcHBlbmVkIHRv
IG5vdGljZSB0aGF0IG90aGVyIHJrMzM5OSBib2FyZHMganVzdAo+ID4gdXNlIHRoZSBsYWJlbCAi
YmFja2xpZ2h0OiIgaW5zdGVhZCBvZiAicHdtX2JsOiIKPgo+IFN1cmUsIGlmIHlvdSBwcmVmZXIu
CgpUb3RhbGx5IHVwIHRvIHlvdS0tSSB3YXMganVzdCBjb21wYXJpbmcgd2hhdCB5b3UgaGFkIHRv
IHdoYXQgb3RoZXIKcmszMzk5IGJvYXJkcyBoYWQgYW5kIHRoZSBmYWN0IHRoYXQgdGhpcyB3YXMg
ZGlmZmVyZW50IG1hZGUgaXQgdGFrZSAxNQpzZWNvbmRzIGxvbmdlciB0byBmaW5kIHRoZSBQV00g
YmFja2xpZ2h0IG9uIHRoZSBib3RoZXIgYm9hcmRzLiA6LVAKCgo+ID4+ICsgICAgICAgICAgICAg
ICBjb21wYXRpYmxlID0gInB3bS1iYWNrbGlnaHQiOwo+ID4+ICsgICAgICAgICAgICAgICBwd21z
ID0gPCZwd20wIDAgMjUwMDAgMD47Cj4gPgo+ID4gNDBrSHogaXMgYXdmdWxseSBmYXN0IGZvciBh
IFBXTSBiYWNrbGlnaHQuIEFyZSB5b3Ugc3VyZSB5b3UgbmVlZCBpdCB0aGF0IGZhc3Q/Cj4KPiBJ
IGd1ZXNzIEkganVzdCBjb3BpZWQgdGhpcyBmcm9tIHNvbWV3aGVyZSB3aXRob3V0IHRvbyBtdWNo
IHRob3VnaHQsIGJ1dAo+IGRvdWJsZS1jaGVja2luZyB0aGUgc2NoZW1hdGljWzFdIG5vdywgdGhl
IGJhY2tsaWdodCBkcml2ZXIgd2hlcmUgdGhpcwo+IHNpZ25hbCBlbmRzIHVwIGlzIGFwcGFyZW50
bHkgYSBTWTcyMDBBLCB3aG9zZSBkYXRhc2hlZXQgc2F5cyAiQW5kIHRoZQo+IHJlY29tbWVuZCBk
aW1taW5nIGZyZXF1ZW5jeSByYW5nZSBpcyAyMGtIen4xTUh6LiIgU28gcmVsYXRpdmUgdG8gdGhh
dAo+IHJhbmdlIGl0IGRvZXNuJ3Qgc2VlbSB0b28gYmFkIQoKT0ssIGNvb2whIEkganVzdCBrbm93
IGluIHRoZSBwYXN0IHRoYXQgSSd2ZSBzZWVuIGNhc2VzIHdoZXJlIHBlb3BsZQpjb3BpZWQgdGhl
IFBXTSB2YWx1ZXMgZnJvbSBlbHNld2hlcmUgYW5kIGVuZGVkIHVwIHdpbGRseSBvdXQgb2Ygc3Bl
Ywp3aXRob3V0IHJlYWxseSBub3RpY2luZy4gOi0pIFNvdW5kcyBsaWtlIHlvdSdyZSBnb29kLgoK
Cj4gPj4gKyZlZHAgewo+ID4+ICsgICAgICAgZm9yY2UtaHBkOwo+ID4+ICsgICAgICAgc3RhdHVz
ID0gIm9rYXkiOwo+ID4+ICsKPiA+PiArICAgICAgIGF1eC1idXMgewo+ID4+ICsgICAgICAgICAg
ICAgICBlZHAtcGFuZWwgewo+ID4+ICsgICAgICAgICAgICAgICAgICAgICAgIGNvbXBhdGlibGUg
PSAiZnJpZW5kbHlhcm0saGQ3MDJlIjsKPiA+Cj4gPiBBcyBwZXIgbXkgcmVzcG9uc2UgaW4geW91
ciBkcml2ZXIgcGF0Y2gsIGFueSBjaGFuY2UgdGhpcyBjYW4ganVzdCBiZQo+ID4gImVkcC1wYW5l
bCI/Cj4KPiBQZXIgdGhlIGNvdmVyIGxldHRlciwgSSBkaWQgdHJ5Li4uCj4KPiA+PiArICAgICAg
ICAgICAgICAgICAgICAgICBiYWNrbGlnaHQgPSA8JnB3bV9ibD47Cj4gPj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgbm8taHBkOwo+ID4+ICsgICAgICAgICAgICAgICAgICAgICAgIHBvd2VyLXN1
cHBseSA9IDwmdmNjMTJ2MF9zeXM+Owo+ID4KPiA+IFdoaWxlIG5vdCBzdHJpY3RseSByZXF1aXJl
ZCwgaXQgc2VlbXMgaGlnaGx5IGxpa2VseSB0aGF0IHlvdSB3YW50Cj4gPiAiaHBkLWFic2VudC1k
ZWxheS1tcyIuIEl0J3MgaGlnaGx5IHVubGlrZWx5IHRoYXQgeW91IHdvdWxkIGhhdmUKPiA+ICJu
by1ocGQiIHBsdXMgYSAicG93ZXItc3VwcGx5IiBidXQgbm8gaGFyZGNvZGVkIGRlbGF5IHRvIHdh
aXQgaGVyZS4gSQo+ID4gaGF2ZW4ndCBzZWVuIHBhbmVscyB0aGF0IHR1cm4gb24gYW5kIHJlc3Bv
bmQgaW5zdGFudGx5Lgo+Cj4gLi4uYnV0IGV2ZW4gd2l0aCBib3RoIGRlbGF5cyBidW1wZWQgdXAg
YW5kIHVwIGFuZCB1cCB0byBhIHJpZGljdWxvdXMKPiAyMDAwbXMgaXQgc3RpbGwgZGlkbid0IHdv
cmsuIEl0IHJlYWRzIHRoZSBFRElEIGFzIGFsbC16ZXJvcyB0aGVuIGZhaWxzCj4gdG8gcHJvYmUg
ZHVlIHRvIGEgbGFjayBvZiBtb2Rlcy4gV2hlcmVhcyB3aXRoIHRoZSBoYXJkLWNvZGVkIG1vZGUs
IHRoZQo+IGRpc3BsYXkgbGlnaHRzIHVwIGltbWVkaWF0ZWx5IHVwb24gcHJvYmUsIHNvIEkgZG9u
J3QgdGhpbmsgaXQncyBhIHRpbWluZwo+IGlzc3VlLiBNeSB3b3JraW5nIHRoZW9yeSBpcyB0aGF0
IHRoZXJlJ3Mgc29tZSBmdW5kYW1lbnRhbCBvcmRlcmluZyBpc3N1ZQo+IGJhc2VkIG9uIHRoZSBj
b21tZW50cyBpbiBhbmFsb2dpeF9kcF9kZXRlY3RfaHBkKCkgYWJvdXQgYXV4IG5vdCB3b3JraW5n
Cj4gdW50aWwgSFBEIGlzIGZvcmNlZCBhdCB0aGUgY29udHJvbGxlciBlbmQsIGFuZCBmcm9tIGEg
YnJpZWYgc2tpbSBvZiB0aGUKPiBoaXN0b3J5LCBxdWl0ZSBwb3NzaWJseSByZWxhdGVkIHRvIGYy
NjAwZDA4ZDRlOCAoImRybS9icmlkZ2U6Cj4gYW5hbG9naXhfZHA6IEltcHJvdmUgcGFuZWwgb24g
dGltZSIpIHdoaWNoIG1heWJlIHByZXZlbnRzIHRoYXQgaGFwcGVuaW5nPwo+Cj4gQnkgdGhhdCBw
b2ludCBpdCdzIHdlbGwgYmV5b25kIG15IGV4cGVydGlzZSwgaGVuY2UgbXkgY29uY2x1c2lvbiB0
aGF0Cj4gc2luY2UgSSdtIG5vdCAqYWRkaW5nKiB0aGUgbGVnYWN5IHBhbmVsIGRhdGEsIGp1c3Qg
cmVhcnJhbmdpbmcgd2hhdCdzCj4gYWxyZWFkeSB1cHN0cmVhbSB0byBmaW5hbGx5IHB1dCBpdCB0
byBwcm9wZXIgdXNlLCB0aGF0J3MganVzdCBhYm91dAo+IGFjY2VwdGFibGUgOikKCk9LLiBJdCdz
IHVuZm9ydHVuYXRlLCBidXQgZmFpciBlbm91Z2guIDotKSBJdCB3b3VsZCBjZXJ0YWlubHkgYmUK
aW50ZXJlc3RpbmcgdG8ga25vdyB3aGF0IGV2ZW50dWFsbHkgbWFrZXMgdGhlIEVESUQgcmVhZCBj
b3JyZWN0bHksIGJ1dApJIGFncmVlIHRoYXQgaXQncyBhIGJpdCBtdWNoIHRvIGFzayB5b3UgdG8g
ZGVidWcgdGhhdC4KCkZXSVcsIEkgdG9vayBhIF9xdWlja18gZ2FuZGVyIGF0IHRoZSBzY2hlbWF0
aWNzIHlvdSBzZW50LCBhbmQgSQphY3R1YWxseSB3b25kZXIgaWYgaXQncyB0aGUgImJhY2tsaWdo
dCIgZW5hYmxlIHNpZ25hbCB0aGF0IHlvdSBuZWVkLgpEZXBlbmRpbmcgb24gdGhlIHN0dWZmaW5n
IG9wdGlvbnMsIG1heWJlIHRoYXQgY29ubmVjdHMgdG8gdGhlIFBXUkROCnBpbj8gSWYgSSB0cnVz
dCB0aGUgc3R1ZmZpbmcgb3B0aW9ucyBpbiB0aGUgc2NoZW1hdGljIHRoYXQgR1BJTwpkb2Vzbid0
IGNvbm5lY3QgdG8gYW55dGhpbmcgYXQgYWxsLCBidXQgSSBrbm93IHN0dWZmaW5nIG9wdGlvbnMg
b24Kc2NoZW1hdGljcyBhcmVuJ3QgYWx3YXlzIHJpZ2h0Li4uIEluIGFueSBjYXNlLCBpdCdzIGFs
c28gT0sgdG8ganVzdCBkbwp3aGF0IHlvdSdyZSBkb2luZy4uLgoKCj4gVGhlIHBvd2VyLXN1cHBs
eSBlbnRyeSBpcyByZWFsbHkganVzdCBmb3IgY2xlYW5saW5lc3MsIHRvIGF2b2lkIGEgImR1bW15
Cj4gcmVndWxhdG9yIiBtZXNzYWdlIC0gdGhlIHNjcmVlbiBtb2R1bGUgaGFzIGFsbCBpdHMgb3du
IHJlZ3VsYXRpb24gb24KPiBib2FyZCwgd2hpY2ggZGlkbid0IHNlZW0gd29ydGggbW9kZWxsaW5n
IGluIGRldGFpbCBhcyBpdCdzIGFsbCBmaXhlZCBhbmQKPiBhbHdheXMtb24sIGJ1dCB0aGUgc291
cmNlIGlzIHRoZSBib2FyZCdzIG1haW4gMTJWIGlucHV0LCBzbyB0aGF0IG11Y2gKPiAqaXMqIHRy
dWUuCgpGYWlyIGVub3VnaC4KCgo+ID4+ICsmaTJjNCB7Cj4gPj4gKyAgICAgICAjYWRkcmVzcy1j
ZWxscyA9IDwxPjsKPiA+PiArICAgICAgICNzaXplLWNlbGxzID0gPDA+Owo+ID4KPiA+IFRoZSBi
YXNlIGR0cyBhbHJlYWR5IHNwZWNpZmllcyAjYWRkcmVzcy1jZWxscyBhbmQgI3NpemUtY2VsbHMs
IHJpZ2h0Pwo+Cj4gSW5kZWVkLCBidXQgZHRjIGRvZXNuJ3Qga25vdyB0aGF0IHdoZW4gY29tcGls
aW5nIHRoZSAuZHRibyBpbiBpc29sYXRpb24uCgpPaCwgcmlnaHQuCgoKPiA+PiArICAgICAgIHRv
dWNoc2NyZWVuQDVkIHsKPiA+PiArICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJnb29kaXgs
Z3Q5MjcxIjsKPiA+PiArICAgICAgICAgICAgICAgcmVnID0gPDB4NWQ+Owo+ID4+ICsgICAgICAg
ICAgICAgICBpbnRlcnJ1cHQtcGFyZW50ID0gPCZncGlvMT47Cj4gPj4gKyAgICAgICAgICAgICAg
IGludGVycnVwdHMgPSA8UktfUEM0IElSUV9UWVBFX0VER0VfRkFMTElORz47Cj4gPj4gKyAgICAg
ICAgICAgICAgIGlycS1ncGlvcyA9IDwmZ3BpbzEgUktfUEM0IEdQSU9fQUNUSVZFX0hJR0g+Owo+
ID4+ICsgICAgICAgICAgICAgICByZXNldC1ncGlvcyA9IDwmZ3BpbzEgUktfUEI1IEdQSU9fQUNU
SVZFX0hJR0g+Owo+ID4KPiA+IFRoZXJlJ3Mgbm8gcG93ZXIgc3VwcGx5IGhlcmUsIHNvIEknbGwg
YXNzdW1lIGl0IGZvbGxvd3MgdGhlIHBvd2VyCj4gPiBzdXBwbHkgb2YgdGhlIHBhbmVsPyBZb3Ug
cHJvYmFibHkgd2FudCB0byBiZSBhICJwYW5lbC1mb2xsb3dlciIgdGhlbiwKPiA+IHJpZ2h0PyBB
S0EgeW91J2Qgd2FudCB0byBhZGQgYSAicGFuZWwgPSAiIG5vZGUgaGVyZSB0byByZWZlciB0byB5
b3VyCj4gPiBlZHAtcGFuZWwuCj4gPgo+ID4gT2gsIGV4Y2VwdCB0aGF0IHRoZSBnb29kaXggZHJp
dmVyIHlvdSdyZSB1c2luZyBkb2Vzbid0IHN1cHBvcnQKPiA+IHBhbmVsLWZvbGxvd2VyLiBUaGF0
J3MgYW5ub3lpbmcuIEkgZ3Vlc3MgeW91J2QgaGF2ZSB0byBhZGQgc3VwcG9ydCBmb3IKPiA+IHRo
YXQgKHNlZSBoaXN0b3J5IGFyb3VuZCAiaXNfcGFuZWxfZm9sbG93ZXIiIGluICJpMmMtaGlkLWNv
cmUuYyIpPwo+ID4gV2l0aG91dCBpdCB0aGVuIEkgYXNzdW1lIHlvdSdsbCBqdXN0IGJlIGx1Y2t5
IHRoYXQgdGhpbmdzIHdvcms/IC4uLm9yCj4gPiB5b3UnZCBuZWVkIHRvIG1hcmsgdGhlIHBvd2Vy
IHN1cHBseSBhcyBhbHdheXMtb24/Cj4KPiBZZWFoLCBhcyBhYm92ZSBpdCBpcyBpbiBmYWN0IGFs
d2F5cy1vbiBhbnl3YXkgLSBzb21laG93IEkgbWlzc2VkIHRoYXQKPiB0aGUgZ29vZGl4IGRyaXZl
ciBpcyBnZXR0aW5nIHJlZ3VsYXRvcnMgdG9vLiBUaGUgMTJWIGlucHV0IGlzIHN0ZXBwZWQKPiBk
b3duIHRvIGEgbWFpbiBWRERfMy4zViByYWlsIGZyb20gd2hpY2ggZXZlcnl0aGluZyBlbHNlIGlz
IGRlcml2ZWQsIHNvCj4gaWYgSSBhZGQgYSBmaXhlZC1yZWd1bGF0b3Igbm9kZSBmb3IgdGhhdCB3
aGljaCBpcyBzdWZmaWNpZW50bHkgY2xvc2UgdG8KPiB0aGUgdHJ1dGggZm9yIGJvdGggdGhlc2Ug
YW5kIHRoZSBwYW5lbCBzdXBwbHksIHdvdWxkIHRoYXQgYmUgY2xlYXIgZW5vdWdoPwoKU3VyZSwg
aXQncyBmaW5lIGZyb20gbXkgcG9pbnQgb2Ygdmlldy4gUmVhbGx5IHByZXR0eSBtdWNoIGFsbCBv
ZiB0aGUKZHRzIGlzIHVwIHRvIEhlaWtvLiBJJ20gbW9zdGx5IGhlcmUgYmVjYXVzZSBvZiB0aGUg
ZURQLXBhbmVsIHN0dWZmLgo7LSkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
