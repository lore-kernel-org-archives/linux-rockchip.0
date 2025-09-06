Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECB18CA0FED
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Sep 2025 02:08:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3E4vJ5yhmRCXMNVyUb+HjIc5Lni/EUjlws1KWmrmVYw=; b=GrlGM3QcmgPDrU
	YdmBjskLIqf8KDqgbTQE6HJnX9uMKXj1Kcxt9VGXHKKd0JBT65wcy3n1zf6pTxszTfwfKRVx0fUxz
	PD4LgBTnTHd0Oh5IwSjz4IIGQnwcOz6gpaLuuVKtzB/JgSThSE3RcJrpE0whn2xBClXkxSyp2xb33
	4KyWSOQ7oT+DWnCD6C7AS9whHp+vlBiZyZsjUKqb7sRu154OZi6fZEN3oM3sRawL0K7lHz5slTGDI
	C42lZr2fKJuUY4LITFX7fhLpGzzwg5iCDygEiFQ/WM/uKcKFdQk0RfVmHpogv/yDltW6kIWCTdkbg
	8Yyrmg2VU8CF+YKXGMIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuiLf-000000062wH-0XcI;
	Sat, 06 Sep 2025 02:08:15 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uui4I-00000005yQs-0kEJ;
	Sat, 06 Sep 2025 01:50:19 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-3e249a4d605so1954528f8f.3;
        Fri, 05 Sep 2025 18:50:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757123416; x=1757728216; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9T8mhgY9nX4b1GTDoanzs4NGx5M5/HhR9wB18Kbszzk=;
        b=jPndKpKciuG48QxOk5fC4oXsbFg3c0z2GEdJ2brUSuCT1V9AZLY4sxv3r8b13N0dX1
         3Ve7FGaj+p4bUdpHz/5oi/jRhV/WCI4kPbGI6ViiM5bMPFXRd9EkSOvfD9mT2pd1J3Dz
         GL14jwet+4tsk5S1vqT0PhqkjgPFrPjzh/ybsxdH3BWfJJ6m9Txz3QZ/pPsjh22synf3
         UFcEtaIZdobRiLixcUmLmvkdFJLwMUjOwxuujEgAY8ghSnP98qfm0CVl8zKiKiQhx2mA
         SYhJsP093wXU66TQ1Jo8wkBXM9iSdkybeqbEzpaR4M58QpAT3TfQMeuxOLhOO/8GJO6A
         3BUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757123416; x=1757728216;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9T8mhgY9nX4b1GTDoanzs4NGx5M5/HhR9wB18Kbszzk=;
        b=RvTgIabfIuivc5mHLpWX6sErpEPs8l9OcLpHlCb/Ce39XBTU9rXFGHcrgJmvmklxgE
         XtNPXVQrmtyl5qImukOIY4Ygk/4wIDBchWHesXhH9KFvyNFGZ48EdoIRvOxs0I/vEVcx
         C7OPC6Y4M3lmK++32au2Fe2odPZ5V1DgTy7PD4KlA2FEUQDcdUaPxYQyzUzP1G7QlPuM
         HwnLo7FJWzVxot0DGK/biYjcgXo33J2HYozRssBli8eMBmvv5SSlBy2+cQzeCvRIIjQ+
         13whlqexBtoqJ+UAObvzNz/g+SE6xwc8KUDSO0Pu/6t7EGf0cIoYvUBgblxhpBa+zOIr
         hVSw==
X-Forwarded-Encrypted: i=1; AJvYcCUXb2Jay6iAhs/mmQucntGqUzCeQ9frvJzuRlOkiSUCE9q8/5ORHclMpgmH8b95V8bNeV9f7bk60BK4NoGMc+t6@lists.infradead.org, AJvYcCUY14qgRIFL39jvJDUsCBNFhAcP/W9LULLuE8VIqKCKwgYXt13q3Gg4hay0lnlGubriupVBWX49Lf4V8dYhmig=@lists.infradead.org
X-Gm-Message-State: AOJu0YyCagBFIZdStFAx7ibTwBJco8DrOTgqCPsGeGxNAXSOxLglUujx
	sITjHbsLDg6VISFLIEhy+2vzmrvgAhwZAanlyRJFeiNJHwv7wsEwXtsT+GnkKI5hVhiOeVfdr6I
	k/nibMUaBRu8nMMB92Y1B83hTAJXdoSo=
X-Gm-Gg: ASbGncsryNFDxYIRdr2OTrDgSNN+r2GXwNHtLYHN7cc80+PgbVLofYLS/9nOkZxZM+p
	PT4Gge5pX9uYmUP2Dyi6Pb4iWimlwY+1sFeoZrw2vzBlTn6fGBrhjoRfcb3+LotzmHAplwHyJdw
	GsWGT2ynD2PrAFxRwL0+4S8L7FDnRGl+bUtyKLfDp114hJjGe82+sMtYBbUPHQ9H1IJurkzOwrW
	ri+Yba5jxqkf3yQDgEbNS6rWn2jK5LJzIjYmRzCdsyPHFM=
X-Google-Smtp-Source: AGHT+IG6oix8mLMZHDuSE3WNnpjGJG/3AhhOv3u2JxvodBrLWsljciM9kQJmzeRwfNEpuDP8Q7Dg/c797dvznUQWxEc=
X-Received: by 2002:a05:6000:2883:b0:3e3:f332:73f0 with SMTP id
 ffacd0b85a97d-3e64c693923mr284627f8f.49.1757123415784; Fri, 05 Sep 2025
 18:50:15 -0700 (PDT)
MIME-Version: 1.0
References: <20250905090115.718622-1-dkx@t-chip.com.cn>
In-Reply-To: <20250905090115.718622-1-dkx@t-chip.com.cn>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Fri, 5 Sep 2025 20:50:04 -0500
X-Gm-Features: Ac12FXwbiLHfVMuDhY7SOkXke4RxqgSQCIhrk8FrjSiEnCfjNXAuJcrVNoPzTFc
Message-ID: <CALWfF7+6dTqLRHYKHL1iBf9YknLQ5yTrwPur8VySmjiy3mzh0Q@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add devicetree for the ROC-RK3588-RT
To: Kaison Deng <dkx@t-chip.com.cn>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Wayne Chou <zxf@t-chip.com.cn>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Dragan Simic <dsimic@manjaro.org>, 
	Jonas Karlman <jonas@kwiboo.se>, FUKAUMI Naoki <naoki@radxa.com>, Peter Robinson <pbrobinson@gmail.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250905_185018_218323_4D366F8C 
X-CRM114-Status: GOOD (  19.01  )
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

T24gRnJpLCBTZXAgNSwgMjAyNSBhdCA5OjMy4oCvQU0gS2Fpc29uIERlbmcgPGRreEB0LWNoaXAu
Y29tLmNuPiB3cm90ZToKPgo+IFRoZSBGaXJlZmx5IFJPQy1SSzM1ODgtUlQgaXMgUkszNTg4IGJh
c2VkIFNCQyBmZWF0dXJpbmc6Cj4KPiAtIFRGIGNhcmQgc2xvdAo+IC0gTlZNRSAyMjQyIHNvY2tl
dApDb3VsZCB5b3UgdXBkYXRlIHRoZSBjb21taXQgZGVzY3JpcHRpb24gdG8gbWF0Y2ggZGV2aWNl
IHRyZWUuIEl0IGxvb2tzCmxpa2UgdGhlIE0uMiAyMjQyIHNvY2tldCBpcyBjb25maWd1cmVkIGFz
IGEgU0FUQSAoaS5lLiAic2F0YTIiKQppbnN0ZWFkIG9mIE5WTUUuCgpJcyB0aGUgTS4yIHNsb3Qg
YWxzbyB3aXJlZCBmb3IgTlZNRSBvcGVyYXRpb24/IElmIHNvLCB3aWxsIHlvdSBiZQpwcm92aWRp
bmcgYSBEVCBvdmVybGF5IHRvIHVzZSBpdCBpbiB0aGF0IG1vZGU/CgpodHRwczovL3dpa2kudC1m
aXJlZmx5LmNvbS9lbi9ST0MtUkszNTg4LVJUL3VzYWdlX3NhdGEuaHRtbCNzb2Z0d2FyZS1jb25m
aWd1cmF0aW9uCgo+IC0gMXggVVNCIDMuMCBQb3J0LCAxeCBVU0IgMi4wIFBvcnQsIDF4IFR5cGVj
IFBvcnQKPiAtIDF4IEhETUkgMi4xIG91dCwgMXggSERNSSAyLjAgb3V0Cj4gLSAyeCBHaWdhYml0
IEV0aGVybmV0LCAxeCAyLjVHIEV0aGVybmV0Cj4gLSBNLjIgRS1LRVkgZm9yIEV4dGVuZGVkIFdp
RkkgYW5kIEJsdWV0b29saAo+IC0gRVM4Mzg4IG9uLWJvYXJkIHNvdW5kIGNvZGVjIC0gamFjayBp
bi9vdXQKPiAtIFJUQwo+IC0gTEVEOiBXT1JLLCBESVkKPiAtIEJUQiBjb25uZWN0b3IgZm9yIFBD
aWUsIFVBUlQsIFVTQiwgQ0FOLCBTQVJBREMsIEdQSU8KPgo+IFNpZ25lZC1vZmYtYnk6IEthaXNv
biBEZW5nIDxka3hAdC1jaGlwLmNvbS5jbj4KPiAtLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9NYWtlZmlsZSAgICAgICAgIHwgICAgMSArCj4gIC4uLi9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1ODgtcm9jLXJ0LmR0cyB8IDExMjAgKysrKysrKysrKysrKysrKysKPiAgMiBm
aWxlcyBjaGFuZ2VkLCAxMTIxIGluc2VydGlvbnMoKykKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvYy1ydC5kdHMKPgo+IGRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlIGIvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZQo+IGluZGV4IDlkNTZkNDE0NmIyMC4uYWQ2ODRlMzgz
MWJjIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUK
PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlCj4gQEAgLTE4MSw2
ICsxODEsNyBAQCBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTg4LW9yYW5nZXBp
LTUtbWF4LmR0Ygo+ICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTg4LW9yYW5n
ZXBpLTUtcGx1cy5kdGIKPiAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzU4OC1v
cmFuZ2VwaS01LXVsdHJhLmR0Ygo+ICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmsz
NTg4LXF1YXJ0enBybzY0LmR0Ygo+ICtkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmsz
NTg4LXJvYy1ydC5kdGIKPiAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzU4OC1y
b2NrLTUtaXR4LmR0Ygo+ICBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTg4LXJv
Y2stNWIuZHRiCj4gIGR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazM1ODgtcm9jay01
Yi1wY2llLWVwLmR0Ym8KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1ODgtcm9jLXJ0LmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4
LXJvYy1ydC5kdHMKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4u
MWQ1MDAwOWQzMTUzCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTg4LXJvYy1ydC5kdHMKCltzbmlwXQoKPiArCj4gKyZoZG1pMCB7Cj4gKyAg
ICAgICBzdGF0dXMgPSAib2theSI7Cj4gK307Cj4gKwo+ICsmaGRtaTBfaW4gewo+ICsgICAgICAg
aGRtaTBfaW5fdnAwOiBlbmRwb2ludCB7Cj4gKyAgICAgICAgICAgICAgIHJlbW90ZS1lbmRwb2lu
dCA9IDwmdnAwX291dF9oZG1pMD47Cj4gKyAgICAgICB9Owo+ICt9Owo+ICsKPiArJmhkbWkwX291
dCB7Cj4gKyAgICAgICBoZG1pMF9vdXRfY29uOiBlbmRwb2ludCB7Cj4gKyAgICAgICAgICAgICAg
IHJlbW90ZS1lbmRwb2ludCA9IDwmaGRtaTBfY29uX2luPjsKPiArICAgICAgIH07Cj4gK307CkRv
ZXMgdGhlIGJvYXJkIHN1cHBvcnQgaGRtaTBfc291bmQgYW5kIGhkbWkxX3NvdW5kIChhbmQgdGhl
CmNvcnJlc3BvbmRpbmcgaTJzNV84Y2ggYW5kIGkyczZfOGNoKT8KCj4gKwo+ICsmaGRtaTEgewo+
ICsgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ICt9OwoKW3NuaXBdCgo+ICsKPiArJnNkaGNpIHsK
PiArICAgICAgIGJ1cy13aWR0aCA9IDw4PjsKPiArICAgICAgIG5vLXNkaW87Cj4gKyAgICAgICBu
by1zZDsKPiArICAgICAgIG5vbi1yZW1vdmFibGU7Cj4gKyAgICAgICBtYXgtZnJlcXVlbmN5ID0g
PDIwMDAwMDAwMD47Cj4gKyAgICAgICBtbWMtaHM0MDAtMV84djsKPiArICAgICAgIG1tYy1oczQw
MC1lbmhhbmNlZC1zdHJvYmU7ClRoZXNlIHByb3BlcnRpZXMgc2hvdWxkIGJlIGluIGFscGhhYmV0
aWNhbCBvcmRlci4KCj4gKyAgICAgICBzdGF0dXMgPSAib2theSI7Cj4gK307Cj4gKwo+ICsmc2Rt
bWMgewo+ICsgICAgICAgYnVzLXdpZHRoID0gPDQ+Owo+ICsgICAgICAgY2FwLXNkLWhpZ2hzcGVl
ZDsKPiArICAgICAgIGRpc2FibGUtd3A7Cj4gKyAgICAgICBtYXgtZnJlcXVlbmN5ID0gPDE1MDAw
MDAwMD47Cj4gKyAgICAgICBuby1zZGlvOwo+ICsgICAgICAgbm8tbW1jOwo+ICsgICAgICAgc2Qt
dWhzLXNkcjEwNDsKPiArICAgICAgIHZtbWMtc3VwcGx5ID0gPCZ2Y2MzdjNfc2RfczA+Owo+ICsg
ICAgICAgdnFtbWMtc3VwcGx5ID0gPCZ2Y2Npb19zZF9zMD47Cj4gKyAgICAgICBzdGF0dXMgPSAi
b2theSI7Cj4gK307CgpKaW1teQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
