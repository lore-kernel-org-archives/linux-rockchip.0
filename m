Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B96DC47258
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jan 2024 19:48:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nkf9SmsaAHqkaW8vRcmZSkl1FmxVJ+L9UHlmGEFGrY0=; b=RjaZsZbc7tRf+u
	oGZS/OMUGtbg2TzqSMi3KQBBJU00+RkRGhGc/+5vypTXD+fStlgjOhKXXBW5sbMRO4JndmqwnIQ5K
	Sr2DmGZs9l3LILzjMKb4s9eaW5HaIEH1BIbmWNu7vAh0K85hc0wolG3gJXe4LDcmNeV5phCvXclDf
	pxWAnp/icQub0/LhXoVS6FgEJvbHg6KEzmx+Y8hs2kwNuizSaUW2FIHALOCMvF8RPmH7sokZtuXBx
	VcCremm6XS+UFZnDDC4Iq67X835ifa+4HvPWQTgwbMK8PLluBMXSyrr54PsfRnsOp38AhWaZK6YT1
	urkL2F6wNzV7jMewa8YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSMkr-000JNw-0H;
	Tue, 23 Jan 2024 19:48:17 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSMkn-000JMr-1I;
	Tue, 23 Jan 2024 19:48:14 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-a30ed6dbdadso55800666b.1;
        Tue, 23 Jan 2024 11:48:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706039290; x=1706644090; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ErC+/ZkGQ3Loz8EHkG675aqy4eM2oDlUc1hoqX6MvnU=;
        b=jB8mKhz+xFq87gMzvM05iZPWpSsg42SnykGe5JBHz/MSpaEhgb23Jh4nsRUpKUfRJg
         /A/eizVBpA7iWhH0Lm3ANloGf8c7a9EpyPq9DUBH/GqyoLOCY+4O5obyxKgTb0Plc6tp
         qO5cz97f2BSxtMqH7EiYBN5QRfWtfILFle7Z2FcZV0Mx7NJLlzMaoV/9OryRVPe/6Vp2
         gxLntEaCTfbBltk7cab7dTqgyb82RiJ1jQfmNWJGqoKU6cRIAXOZqgVvNdgemEV28keT
         zkJLmEtq7QtBm/EXEAI4zh7JxwsKG5ucD1Q2ZGeE3rp4sgvfkMgaIypehYkIvW+QHTRX
         1pCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706039290; x=1706644090;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ErC+/ZkGQ3Loz8EHkG675aqy4eM2oDlUc1hoqX6MvnU=;
        b=UBwVJpFv+eYiAjqhQq+cTQSCZFmOtUQEj3QYe5rNuCFT4Ww1GFp+kdHfrAggRbYlf1
         rhVvckeTQtZ+6vVwz5BLz0YLnDVFP73+w8/wXyIHMb6hAdJhKzwQ6mT90z024yyxl+nt
         vTrXSV5rDnFLT49dtBhJbK39JPHUjUO+CEWkrJRv9SQqw/ZI+WMiCqdYJqH6o14e6apK
         YbUXRGGzXkvWyH8y3xdmqWsziTE0NAO+eLRSw7LjGQ3cG7BgM+gxTrF+vGifdGrXdXfB
         3hNnPFSxleUrROMmgvelU7zmtnGZw6iH27I1aeI8tOIF55w5v4aaRF3+hZvaUvVau0Fi
         uYSw==
X-Gm-Message-State: AOJu0YxFjnuNFJlh7P8m0tuH+FFLojj8NQ4E9vHTGyHzfIAQRmzmlpQ1
	BtuwqqHh2nXKc0PlGxKpaAOKfhW5pYNk+IbqhEI5u2KKRGWUMTOQVdl2brH8yKwUq7Dy2HiSYHr
	/UQKRbmF7bFvq3OqhLc4JhCN+n6M=
X-Google-Smtp-Source: AGHT+IE7Xa6EaS2tw064//+LZ0qIXqlD517DZIOrh7h8y20z6YIfE+YprQ29Rceyk9ATcFsNARKzeKKgO+oMWPo76YI=
X-Received: by 2002:a17:907:a642:b0:a2c:dfa:4f7 with SMTP id
 vu2-20020a170907a64200b00a2c0dfa04f7mr327771ejc.82.1706039290312; Tue, 23 Jan
 2024 11:48:10 -0800 (PST)
MIME-Version: 1.0
References: <20240106222357.23835-1-alchark@gmail.com> <20240109192608.5981-1-alchark@gmail.com>
 <c517f26c-34bc-4b99-b744-8e2549cd28b5@linaro.org> <CABjd4YxYpsvf+ghHTn1z8TAZxQb-2dFOQaVSm8zHKSSWOokqww@mail.gmail.com>
 <e45f72c2-0b5b-44dd-ad39-e7e5bd17ae26@linaro.org>
In-Reply-To: <e45f72c2-0b5b-44dd-ad39-e7e5bd17ae26@linaro.org>
From: Alexey Charkov <alchark@gmail.com>
Date: Tue, 23 Jan 2024 23:47:58 +0400
Message-ID: <CABjd4Yz+tqaS38B9uRUZC2nz_VeZ-Db6BpF5oWL3ahmskfbTMA@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: enable built-in thermal
 monitoring on rk3588
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, 
	Christopher Obbard <chris.obbard@collabora.com>, =?UTF-8?B?VGFtw6FzIFN6xbFjcw==?= <szucst@iit.uni-miskolc.hu>, 
	Shreeya Patel <shreeya.patel@collabora.com>, Kever Yang <kever.yang@rock-chips.com>, 
	Jagan Teki <jagan@edgeble.ai>, Chris Morgan <macromorgan@hotmail.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_114813_438359_EBB45F1F 
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

T24gTW9uLCBKYW4gMjIsIDIwMjQgYXQgNDowNOKAr0FNIERhbmllbCBMZXpjYW5vCjxkYW5pZWwu
bGV6Y2Fub0BsaW5hcm8ub3JnPiB3cm90ZToKPgo+Cj4gSGkgQWxleGV5LAo+Cj4KPiBPbiAyMS8w
MS8yMDI0IDIwOjU3LCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPiA+IE9uIEZyaSwgSmFuIDE5LCAy
MDI0IGF0IDg6MjHigK9QTSBEYW5pZWwgTGV6Y2Fubwo+ID4gPGRhbmllbC5sZXpjYW5vQGxpbmFy
by5vcmc+IHdyb3RlOgo+ID4gSGVsbG8gRGFuaWVsLAo+ID4KPiA+IFRoYW5rcyBhIGxvdCBmb3Ig
eW91ciByZXZpZXcgYW5kIGNvbW1lbnRzISBQbGVhc2Ugc2VlIHNvbWUgcmVmbGVjdGlvbnMgYmVs
b3cuCj4gPgo+ID4+IE9uIDA5LzAxLzIwMjQgMjA6MTksIEFsZXhleSBDaGFya292IHdyb3RlOgo+
ID4+PiBJbmNsdWRlIHRoZXJtYWwgem9uZXMgaW5mb3JtYXRpb24gaW4gZGV2aWNlIHRyZWUgZm9y
IHJrMzU4OCB2YXJpYW50cwo+ID4+PiBhbmQgZW5hYmxlIHRoZSBidWlsdC1pbiB0aGVybWFsIHNl
bnNpbmcgQURDIG9uIFJBRFhBIFJvY2sgNUIKPiA+Pj4KPiA+Pj4gU2lnbmVkLW9mZi1ieTogQWxl
eGV5IENoYXJrb3YgPGFsY2hhcmtAZ21haWwuY29tPgo+ID4+PiAtLS0KPiA+Pj4gQ2hhbmdlcyBp
biB2MjoKPiA+Pj4gICAgLSBEcm9wcGVkIHJlZHVuZGFudCBjb21tZW50cwo+ID4+PiAgICAtIElu
Y2x1ZGVkIGFsbCBDUFUgY29yZXMgaW4gY29vbGluZyBtYXBzCj4gPj4+ICAgIC0gU3BsaXQgY29v
bGluZyBtYXBzIGludG8gbW9yZSBncmFudWxhciBvbmVzIHV0aWxpemluZyBUU0FEQwo+ID4+PiAg
ICAgIGNoYW5uZWxzIDEtMyB3aGljaCBtZWFzdXJlIHRlbXBlcmF0dXJlIGJ5IHNlcGFyYXRlIENQ
VSBjbHVzdGVycwo+ID4+PiAgICAgIGluc3RlYWQgb2YgY2hhbm5lbCAwIHdoaWNoIG1lYXN1cmVz
IHRoZSBjZW50ZXIgb2YgdGhlIFNvQyBkaWUKPiA+Pj4gLS0tCj4gPj4+ICAgIC4uLi9ib290L2R0
cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMgICAgICB8ICAgNCArCj4gPj4+ICAgIGFyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy5kdHNpICAgICB8IDE1MSArKysrKysrKysr
KysrKysrKysKPiA+Pj4gICAgMiBmaWxlcyBjaGFuZ2VkLCAxNTUgaW5zZXJ0aW9ucygrKQo+ID4+
Pgo+ID4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgt
cm9jay01Yi5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTVi
LmR0cwo+ID4+PiBpbmRleCBhNWExMDQxMzE0MDMuLmY5ZDU0MDAwMGRlMyAxMDA2NDQKPiA+Pj4g
LS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMKPiA+
Pj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMK
PiA+Pj4gQEAgLTc3MiwzICs3NzIsNyBAQCAmdXNiX2hvc3QxX2VoY2kgewo+ID4+PiAgICAmdXNi
X2hvc3QxX29oY2kgewo+ID4+PiAgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ID4+PiAgICB9Owo+
ID4+PiArCj4gPj4+ICsmdHNhZGMgewo+ID4+PiArICAgICBzdGF0dXMgPSAib2theSI7Cj4gPj4+
ICt9Owo+ID4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
ODhzLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMuZHRzaQo+ID4+
PiBpbmRleCA4YWEwNDk5ZjliMDMuLjhkNTQ5OThkMGVjYyAxMDA2NDQKPiA+Pj4gLS0tIGEvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLmR0c2kKPiA+Pj4gKysrIGIvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLmR0c2kKPiA+Pj4gQEAgLTEwLDYgKzEwLDcg
QEAKPiA+Pj4gICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3Jlc2V0L3JvY2tjaGlwLHJrMzU4OC1j
cnUuaD4KPiA+Pj4gICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3BoeS9waHkuaD4KPiA+Pj4gICAg
I2luY2x1ZGUgPGR0LWJpbmRpbmdzL2F0YS9haGNpLmg+Cj4gPj4+ICsjaW5jbHVkZSA8ZHQtYmlu
ZGluZ3MvdGhlcm1hbC90aGVybWFsLmg+Cj4gPj4+Cj4gPj4+ICAgIC8gewo+ID4+PiAgICAgICAg
Y29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1ODgiOwo+ID4+PiBAQCAtMjExMiw2ICsyMTEzLDE1
NiBAQCB0c2FkYzogdHNhZGNAZmVjMDAwMDAgewo+ID4+PiAgICAgICAgICAgICAgICBzdGF0dXMg
PSAiZGlzYWJsZWQiOwo+ID4+PiAgICAgICAgfTsKPiA+Pj4KPiA+Pj4gKyAgICAgdGhlcm1hbF96
b25lczogdGhlcm1hbC16b25lcyB7Cj4gPj4+ICsgICAgICAgICAgICAgLyogc2Vuc29yIG5lYXIg
dGhlIGNlbnRlciBvZiB0aGUgd2hvbGUgY2hpcCAqLwo+ID4+PiArICAgICAgICAgICAgIHNvY190
aGVybWFsOiBzb2MtdGhlcm1hbCB7Cj4gPj4+ICsgICAgICAgICAgICAgICAgICAgICBwb2xsaW5n
LWRlbGF5LXBhc3NpdmUgPSA8MjA+Owo+ID4+Cj4gPj4gVGhlcmUgaXMgbm8gbWl0aWdhdGlvbiBz
ZXQgZm9yIHRoaXMgdGhlcm1hbCB6b25lLiBJdCBpcyBwb2ludGxlc3MgdG8KPiA+PiBzcGVjaWZ5
IGEgcGFzc2l2ZSBwb2xsaW5nLgo+ID4KPiA+IEluZGVlZCwgaXQgbWFrZXMgc2Vuc2UgdG8gbWUu
IFRoZXJlIHNlZW1zIHRvIGJlIGEgY2F0Y2ggdGhvdWdoIGluIHRoYXQKPiA+IHRoZSBkcml2ZXIg
Y2FsbHMgdGhlIGdlbmVyaWMgdGhlcm1hbF9vZl96b25lX3JlZ2lzdGVyIGR1cmluZyB0aGUKPiA+
IGluaXRpYWwgcHJvYmUsIHdoaWNoIGV4cGVjdHMgYm90aCBvZiB0aG9zZSBwb2xsaW5nIGRlbGF5
cyB0byBiZQo+ID4gcHJlc2VudCBpbiB0aGUgZGV2aWNlIHRyZWUsIG90aGVyd2lzZSBpdCBzaW1w
bHkgcmVmdXNlcyB0byBhZGQgdGhlCj4gPiByZXNwZWN0aXZlIHRoZXJtYWwgem9uZSwgc2VlIGRy
aXZlcnMvdGhlcm1hbC90aGVybWFsX29mLmM6NTAyCj4KPiBVc3VhbGx5Ogo+Cj4gcG9sbGluZy1k
ZWxheS1wYXNzaXZlID0gPDA+Owo+IHBvbGxpbmctZGVsYXkgPSA8MD47Cj4KPiBjZjoKPgo+IGdp
dCBncmVwICJwb2xsaW5nLWRlbGF5ID0gPDA+IiBhcmNoL2FybTY0L2Jvb3QvZHRzCgpGb3Igc29t
ZSByZWFzb24gd2hlbiBJIGhhdmUgYm90aCBwb2xsaW5nLWRlbGF5LXBhc3NpdmUgYW5kCnBvbGxp
bmctZGVsYXkgc2V0IHRvIDAsIHRoZSBhY3RpdmUgY29vbGluZyBtYXAgSSBoYXZlIGluIG15IGJv
YXJkIERUCih1c2luZyBhIFBXTSBjb250cm9sbGVkIGZhbikgYmVoYXZlcyB3ZWlyZGx5LgoKSSB1
c2UgdGhlIGZvbGxvd2luZyBmcmFnbWVudCBpbiBteSBib2FyZCBEVFM6CgorJnBhY2thZ2VfdGhl
cm1hbCB7CisgICAgICAgdHJpcHMgeworICAgICAgICAgICAgICAgcGFja2FnZV9mYW46IHBhY2th
Z2UtZmFuIHsKKyAgICAgICAgICAgICAgICAgICAgICAgdGVtcGVyYXR1cmUgPSA8NTUwMDA+Owor
ICAgICAgICAgICAgICAgICAgICAgICBoeXN0ZXJlc2lzID0gPDIwMDA+OworICAgICAgICAgICAg
ICAgICAgICAgICB0eXBlID0gImFjdGl2ZSI7CisgICAgICAgICAgICAgICB9OworICAgICAgIH07
CisKKyAgICAgICBjb29saW5nLW1hcHMgeworICAgICAgICAgICAgICAgbWFwLWZhbiB7CisgICAg
ICAgICAgICAgICAgICAgICAgIHRyaXAgPSA8JnBhY2thZ2VfZmFuPjsKKyAgICAgICAgICAgICAg
ICAgICAgICAgY29vbGluZy1kZXZpY2UgPSA8JmZhbiBUSEVSTUFMX05PX0xJTUlUClRIRVJNQUxf
Tk9fTElNSVQ+OworICAgICAgICAgICAgICAgfTsKKyAgICAgICB9OworfTsKCklmIEkgYWRkIHBv
bGxpbmctZGVsYXkgPSA8MTAwMD47IGF0IHRoZSB0b3AsIHRoZSBmYW4gc3BlZWRzIHVwIGFuZApk
b3duIGR5bmFtaWNhbGx5IGFzIHRoZSBwYWNrYWdlIHRlbXBlcmF0dXJlIHN3aW5ncyBhcm91bmQg
NTVDLiBJZiBJCnJlbW92ZSB0aGF0IChoYXZpbmcgc2V0IHBvbGxpbmctZGVsYXkgPSA8MD47IGlu
IHJrMzU4OHMuZHRzaSksIHRoZSBmYW4Kc3BlZWRzIHVwIHRvIHRoZSBtaWRwb2ludCBjb29saW5n
IHN0YXRlIG9uY2UgdGhlIHBhY2thZ2UgdGVtcGVyYXR1cmUKYXBwcm9hY2hlcyA1NUMsIGFuZCB0
aGVuIGl0IGp1c3Qgc3RheXMgdGhlcmUgZm9yZXZlcjogaXQgZG9lc24ndCBzcGVlZAp1cCBhYm92
ZSB0aGUgbWlkcG9pbnQgZXZlbiBhcyB0aGUgdGVtcGVyYXR1cmUgY2xpbWJzIGFib3ZlIDcwQywg
bm9yCmRvZXMgaXQgc3BpbiBkb3duIGFzIGl0IGZhbGxzIGJhY2sgdG8gYXJvdW5kIDQ1Qy4KCklz
IHRoYXQgdGhlIGV4cGVjdGVkIGJlaGF2aW9yIGZvciB3aGVuIHRoZSBwb2xsaW5nIGlzIGRpc2Fi
bGVkPwoKSSBoYXZlbid0IHlldCBzdHVkaWVkIGluIGRldGFpbCBpZiBwYXNzaXZlIGNvb2xpbmcg
a2lja3MgaW4gY29ycmVjdGx5CndpdGggcG9sbGluZyBkaXNhYmxlZCwgYnV0IHRoaXMgYmVoYXZp
b3Igd2l0aCBhY3RpdmUgY29vbGluZyBsZWZ0IG1lCnF1aXRlIGNvbmZ1c2VkIC0gYW55IHBvaW50
ZXJzIHdvdWxkIGJlIG11Y2ggYXBwcmVjaWF0ZWQuCgpUaGFua3MgYSBsb3QsCkFsZXhleQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
