Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA153C5475B
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Mar 2024 07:52:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SMWjun5aBa+WPMi9v4BSMTQ2d6vlrd8Da4j4VQFCOCE=; b=bMcvm48fhzUvjg
	2FKXOBpWr9aU0qOZYBlsTZs+yzsx9cnj5PyEke/yhFCBPDdAILm6iWOuq9qQGENek5odwfT0MNmRN
	T2GlOS+Vc2VbMTBpgK4NLjv9ObsAFXudbr5QbKNI5o/rpJ+GU6Oi2Z7vh/1GZUy3glaEyW+bxOCF+
	svZ1NclVkRE/bs0FnrgACCHI+RxPDucYAkoG7YE3b0hG1ckvwbf0baJ+C+M7sX13go9FftY7j+NyX
	0bw6A7/lw15xl4VgAM1/kFBjvrAhyWfMWV26Uh0Q1SgqpQmJCji66LkRgng4hMHYQ/u7pClzZNc3w
	Xf7h5q0b1u9lyC6DZTQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfxgp-0000000GnBT-0qMu;
	Fri, 01 Mar 2024 07:52:19 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfxgg-0000000Gn8M-3Vyp;
	Fri, 01 Mar 2024 07:52:12 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-56694fdec74so2248196a12.1;
        Thu, 29 Feb 2024 23:52:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709279528; x=1709884328; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TjRED4N553XEXI5Rtvk5JEdQ+G4+1D6ZpvBBjUxLoiM=;
        b=XVJqRYTSbEngEc2gMiV+nRvFhW0xd2wd49yQsi40YyvPUkEo+Ro9VfX5FADcNiWWy4
         INTXv0KTuYM4OPw0qFAHEY5Cc2QCStjVDdahFHlUzwnbvmf764mQgUyqNTntx4Fh/CJi
         wmkFq/kdmMjPzO3TqnXzb1gPD6fV4JpcHwxv9iP3IbADdmWOto128KMlQ3uQoEAeu+28
         jwmXPheiK5Umx+WOEp8WPADuI19sZCFOyj6IQEASONu4Mk7u2vrG3rpyOSi6LuMOnALe
         NVHzBs+3LWqg2notpJLZLweVCwQGj6fGQRF11NjXNZRk1HxDEznFmxI7luI2sJ5+gL/H
         Rq+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709279528; x=1709884328;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TjRED4N553XEXI5Rtvk5JEdQ+G4+1D6ZpvBBjUxLoiM=;
        b=ihA0k9VRL2QWZsFlZ744cB1ZIWluvp1tvVHCLB7lUAdRXzyUU8YAR9xv09ppVf+Oy/
         z0V8JZE4ngxdxMgDKpxC7wdP5oYKDyQpSBsMkJrIigBHhQIyTBy1ej08HpHv5RPkqHR6
         3UtH4EG5mcgvY6TjfT/00sRemi22l9ARNF3LIyeV0LxtQO/FaGWXb0kJZgp7MNtQPx6k
         p7C9FOzrfmnjXBGBPwl+22Qm1zCMC5ORRYJgk9ElfSXQ7Q3SmmBYnYulGYG2RZvQ7YAI
         L5caqh2eQorCdfi3viYFXRFx7EwVTFKvpqjUQPNDo201txxb79iXiKHiIzIzZj5qO+Dj
         73jA==
X-Forwarded-Encrypted: i=1; AJvYcCWRZ4GYz8Cl6jEgpGeCqk5Ej2erRJAaH4R31o2gDYIQ+kX4G78XHE+So+f//S5BTsAOvy1Hv+RBTDgZzCmH3pcaMTeANmp+a6ihlllQizgPwxw8lNycTumB30pOCn1iA6WXk7C8uw4GcED5qrGAdTI+Hp2QZZScvY0=
X-Gm-Message-State: AOJu0YxU/rkr5sXoXuCFZjwNDeDChC5gGRwmwbZOzu7YH+pAf7jUd+S7
	rJlODaQfzsCNteOKaP1pjica7GwPdWNAKyEHIfwJZh0OW/POq2jQrfU0WXqKWSoiA/UtZgnOaN8
	kUhlj8k3URM2q6aKjcUd5u3wjMFI=
X-Google-Smtp-Source: AGHT+IEOKM2TDaDf2kpCzYd+hKnXahebUjnVZ+dJz6yZ+lQnN5+xluHc6aNdAXebEUqYLzLqfIOg3AADhHt3Vmh8zak=
X-Received: by 2002:a17:906:71d1:b0:a44:9cdb:9ec1 with SMTP id
 i17-20020a17090671d100b00a449cdb9ec1mr296185ejk.11.1709279527552; Thu, 29 Feb
 2024 23:52:07 -0800 (PST)
MIME-Version: 1.0
References: <20240229-rk-dts-additions-v3-0-6afe8473a631@gmail.com>
 <20240229-rk-dts-additions-v3-1-6afe8473a631@gmail.com> <5eb9193a44fb9f9b1e976412874cecef@manjaro.org>
 <CABjd4YzFuhfS9RhJ6svb9ZD0NqMT5B6GmqigHFLr8YG6FR5k=w@mail.gmail.com> <90d0cfd9b7d018e7332213f624f0f658@manjaro.org>
In-Reply-To: <90d0cfd9b7d018e7332213f624f0f658@manjaro.org>
From: Alexey Charkov <alchark@gmail.com>
Date: Fri, 1 Mar 2024 11:51:56 +0400
Message-ID: <CABjd4YxhL7m-neLFCQG5Aja2=stFdou7ji8m==UGPSSH-CybVw@mail.gmail.com>
Subject: Re: [PATCH v3 1/5] arm64: dts: rockchip: enable built-in thermal
 monitoring on RK3588
To: Dragan Simic <dsimic@manjaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Viresh Kumar <viresh.kumar@linaro.org>, Chen-Yu Tsai <wens@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_235210_941282_D63B4AA7 
X-CRM114-Status: GOOD (  41.83  )
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

T24gRnJpLCBNYXIgMSwgMjAyNCBhdCAxMDoxNOKAr0FNIERyYWdhbiBTaW1pYyA8ZHNpbWljQG1h
bmphcm8ub3JnPiB3cm90ZToKPgo+IE9uIDIwMjQtMDMtMDEgMDY6MjAsIEFsZXhleSBDaGFya292
IHdyb3RlOgo+ID4gT24gRnJpLCBNYXIgMSwgMjAyNCBhdCAxOjEx4oCvQU0gRHJhZ2FuIFNpbWlj
IDxkc2ltaWNAbWFuamFyby5vcmc+IHdyb3RlOgo+ID4+IFBsZWFzZSBzZWUgYWxzbyBzb21lIG5p
dHBpY2tzIGJlbG93LCB3aGljaCBJIGZvcmdvdCB0byBtZW50aW9uIGluCj4gPj4gbXkgZWFybGll
ciByZXNwb25zZS4gIEknbSBzb3JyeSBmb3IgdGhhdC4KPiA+Pgo+ID4+IE9uIDIwMjQtMDItMjkg
MjA6MjYsIEFsZXhleSBDaGFya292IHdyb3RlOgo+ID4+ID4gSW5jbHVkZSB0aGVybWFsIHpvbmVz
IGluZm9ybWF0aW9uIGluIGRldmljZSB0cmVlIGZvciBSSzM1ODggdmFyaWFudHMuCj4gPj4gPgo+
ID4+ID4gVGhpcyBhbHNvIGVuYWJsZXMgdGhlIFRTQURDIGNvbnRyb2xsZXIgdW5jb25kaXRpb25h
bGx5IG9uIGFsbCBib2FyZHMKPiA+PiA+IHRvIGVuc3VyZSB0aGF0IHRoZXJtYWwgcHJvdGVjdGlv
bnMgYXJlIGluIHBsYWNlIHZpYSB0aHJvdHRsaW5nIGFuZAo+ID4+ID4gZW1lcmdlbmN5IHJlc2V0
LCBvbmNlIE9QUHMgYXJlIGFkZGVkIHRvIGVuYWJsZSBDUFUgRFZGUy4KPiA+PiA+Cj4gPj4gPiBU
aGUgZGVmYXVsdCBzZXR0aW5ncyAodXNpbmcgQ1JVIGFzIHRoZSBlbWVyZ2VuY3kgcmVzZXQgbWVj
aGFuaXNtKQo+ID4+ID4gc2hvdWxkIHdvcmsgb24gYWxsIGJvYXJkcyByZWdhcmRsZXNzIG9mIHRo
ZWlyIHdpcmluZywgYXMgQ1JVIHJlc2V0cwo+ID4+ID4gZG8gbm90IGRlcGVuZCBvbiBhbnkgZXh0
ZXJuYWwgY29tcG9uZW50cy4gQm9hcmRzIHRoYXQgaGF2ZSB0aGUgVFNIVVQKPiA+PiA+IHNpZ25h
bCB3aXJlZCB0byB0aGUgcmVzZXQgbGluZSBvZiB0aGUgUE1JQyBtYXkgb3B0IHRvIHN3aXRjaCB0
byBHUElPCj4gPj4gPiB0c2h1dCBtb2RlIGluc3RlYWQgKHJvY2tjaGlwLGh3LXRzaHV0LW1vZGUg
PSA8MT47KQo+ID4+ID4KPiA+PiA+IEl0IHNlZW1zIHRob3VnaCB0aGF0IGRvd25zdHJlYW0ga2Vy
bmVscyBkb24ndCB1c2UgdGhhdCwgZXZlbiBmb3IKPiA+PiA+IHRob3NlIGJvYXJkcyB3aGVyZSB0
aGUgd2lyaW5nIGFsbG93cyBmb3IgR1BJTyBiYXNlZCB0c2h1dCwgc3VjaCBhcwo+ID4+ID4gUmFk
eGEgUm9jayA1QiBbMV0sIFsyXSwgWzNdCj4gPj4gPgo+ID4+ID4gWzFdCj4gPj4gPiBodHRwczov
L2dpdGh1Yi5jb20vcmFkeGEva2VybmVsL2Jsb2Ivc3RhYmxlLTUuMTAtcm9jazUvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMjTDU0MAo+ID4+ID4gWzJdCj4g
Pj4gPiBodHRwczovL2dpdGh1Yi5jb20vcmFkeGEva2VybmVsL2Jsb2Ivc3RhYmxlLTUuMTAtcm9j
azUvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLmR0c2kjTDU0MzMKPiA+PiA+
IFszXSBodHRwczovL2RsLnJhZHhhLmNvbS9yb2NrNS81Yi9kb2NzL2h3L3JhZHhhX3JvY2tfNWJf
djE0MjNfc2NoLnBkZgo+ID4+ID4gcGFnZSAxMSAoVFNBRENfU0hVVF9IKQo+ID4+ID4KPiA+PiA+
IFNpZ25lZC1vZmYtYnk6IEFsZXhleSBDaGFya292IDxhbGNoYXJrQGdtYWlsLmNvbT4KPiA+PiA+
IC0tLQo+ID4+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy5kdHNpIHwg
MTc2Cj4gPj4gPiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0KPiA+PiA+ICAxIGZpbGUg
Y2hhbmdlZCwgMTc1IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+PiA+Cj4gPj4gPiBk
aWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLmR0c2kKPiA+
PiA+IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLmR0c2kKPiA+PiA+IGlu
ZGV4IDM2YjFiN2FjZmU2YS4uOWJmMTk3MzU4NjQyIDEwMDY0NAo+ID4+ID4gLS0tIGEvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLmR0c2kKPiA+PiA+ICsrKyBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy5kdHNpCj4gPj4gPiBAQCAtMTAsNiArMTAsNyBA
QAo+ID4+ID4gICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9yZXNldC9yb2NrY2hpcCxyazM1ODgtY3J1
Lmg+Cj4gPj4gPiAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3BoeS9waHkuaD4KPiA+PiA+ICAjaW5j
bHVkZSA8ZHQtYmluZGluZ3MvYXRhL2FoY2kuaD4KPiA+PiA+ICsjaW5jbHVkZSA8ZHQtYmluZGlu
Z3MvdGhlcm1hbC90aGVybWFsLmg+Cj4gPj4gPgo+ID4+ID4gIC8gewo+ID4+ID4gICAgICAgY29t
cGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1ODgiOwo+ID4+ID4gQEAgLTIyMjUsNyArMjIyNiwxODAg
QEAgdHNhZGM6IHRzYWRjQGZlYzAwMDAwIHsKPiA+PiA+ICAgICAgICAgICAgICAgcGluY3RybC0x
ID0gPCZ0c2FkY19zaHV0PjsKPiA+PiA+ICAgICAgICAgICAgICAgcGluY3RybC1uYW1lcyA9ICJn
cGlvIiwgIm90cG91dCI7Cj4gPj4gPiAgICAgICAgICAgICAgICN0aGVybWFsLXNlbnNvci1jZWxs
cyA9IDwxPjsKPiA+PiA+IC0gICAgICAgICAgICAgc3RhdHVzID0gImRpc2FibGVkIjsKPiA+PiA+
ICsgICAgICAgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ID4+ID4gKyAgICAgfTsKPiA+PiA+ICsK
PiA+PiA+ICsgICAgIHRoZXJtYWxfem9uZXM6IHRoZXJtYWwtem9uZXMgewo+ID4+ID4gKyAgICAg
ICAgICAgICAvKiBzZW5zb3IgbmVhciB0aGUgY2VudGVyIG9mIHRoZSBTb0MgKi8KPiA+PiA+ICsg
ICAgICAgICAgICAgcGFja2FnZV90aGVybWFsOiBwYWNrYWdlLXRoZXJtYWwgewo+ID4+ID4gKyAg
ICAgICAgICAgICAgICAgICAgIHBvbGxpbmctZGVsYXktcGFzc2l2ZSA9IDwwPjsKPiA+PiA+ICsg
ICAgICAgICAgICAgICAgICAgICBwb2xsaW5nLWRlbGF5ID0gPDA+Owo+ID4+ID4gKyAgICAgICAg
ICAgICAgICAgICAgIHRoZXJtYWwtc2Vuc29ycyA9IDwmdHNhZGMgMD47Cj4gPj4gPiArCj4gPj4g
PiArICAgICAgICAgICAgICAgICAgICAgdHJpcHMgewo+ID4+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgcGFja2FnZV9jcml0OiBwYWNrYWdlLWNyaXQgewo+ID4+ID4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB0ZW1wZXJhdHVyZSA9IDwxMTUwMDA+Owo+ID4+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBoeXN0ZXJlc2lzID0gPDA+
Owo+ID4+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB0eXBlID0gImNy
aXRpY2FsIjsKPiA+PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIH07Cj4gPj4gPiAr
ICAgICAgICAgICAgICAgICAgICAgfTsKPiA+PiA+ICsgICAgICAgICAgICAgfTsKPiA+PiA+ICsK
PiA+PiA+ICsgICAgICAgICAgICAgLyogc2Vuc29yIGJldHdlZW4gQTc2IGNvcmVzIDAgYW5kIDEg
Ki8KPiA+PiA+ICsgICAgICAgICAgICAgYmlnY29yZTBfdGhlcm1hbDogYmlnY29yZTAtdGhlcm1h
bCB7Cj4gPj4gPiArICAgICAgICAgICAgICAgICAgICAgcG9sbGluZy1kZWxheS1wYXNzaXZlID0g
PDEwMD47Cj4gPj4gPiArICAgICAgICAgICAgICAgICAgICAgcG9sbGluZy1kZWxheSA9IDwwPjsK
PiA+PiA+ICsgICAgICAgICAgICAgICAgICAgICB0aGVybWFsLXNlbnNvcnMgPSA8JnRzYWRjIDE+
Owo+ID4+ID4gKwo+ID4+ID4gKyAgICAgICAgICAgICAgICAgICAgIHRyaXBzIHsKPiA+PiA+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8qIHRocmVzaG9sZCB0byBzdGFydCBjb2xsZWN0
aW5nIHRlbXBlcmF0dXJlCj4gPj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKiBz
dGF0aXN0aWNzIGUuZy4gd2l0aCB0aGUgSVBBIGdvdmVybm9yCj4gPj4gPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgKi8KPiA+Pgo+ID4+IFNlZSwgSSdtIG5vdCBhIG5hdGl2ZSBFbmds
aXNoIHNwZWFrZXIsIGJ1dCBJJ3ZlIHNwZW50IGEgbG90IG9mIHRpbWUKPiA+PiBhbmQgZWZmb3J0
IGltcHJvdmluZyBteSBFbmdsaXNoIHNraWxscy4gIFRodXMsIHBlcmhhcHMgdGhlc2UgY29tbWVu
dHMKPiA+PiBtYXkgb3IgbWF5IG5vdCBzZWVtIGxpa2UgdW5uZWNlc3Nhcnkgbml0cGlja2luZywg
ZGVwZW5kaW5nIG9uIGhvdyBtdWNoCj4gPj4gc29tZW9uZSBwYXlzIGF0dGVudGlvbiB0byB3cml0
aW5nIHN0eWxlIGluIGdlbmVyYWwsIGJ1dCBJJ2xsIHJpc2sgdG8KPiA+PiBiZSBhbm5veWluZyBh
bmQgc3RhdGUgdGhlc2UgY29tbWVudHMgYW55d2F5LiA6KQo+ID4+Cj4gPj4gVGhlIGNvbW1lbnQg
YWJvdmUgY291bGQgYmUgd3JpdHRlbiBpbiBhIG11Y2ggbW9yZSBjb25kZW5zZWQgZm9ybSBsaWtl
Cj4gPj4gdGhpcywgd2hpY2ggd291bGQgYWxzbyBiZSBhIGJpdCBtb3JlIGFjY3VyYXRlOgo+ID4+
Cj4gPj4KPiA+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8qIElQQSB0aHJlc2hv
bGQsIHdoZW4gSVBBIGdvdmVybm9yIGlzCj4gPj4gdXNlZCAqLwo+ID4+Cj4gPj4gSU9XLCB3ZSdy
ZSB3cml0aW5nIGFsbCB0aGlzIGZvciBzb21lb25lIHRvIHJlYWQgbGF0ZXIsIGJ1dCB3ZSBzaG91
bGQKPiA+PiAoYW5kIGNhbikgcGVyZmVjdGx5IHJlYXNvbmFibHkgZXhwZWN0IHNvbWUgYWxyZWFk
eSBleGlzdGluZyBiYWNrZ3JvdW5kCj4gPj4ga25vd2xlZGdlIGZyb20gdGhlIHJlYWRlcnMuICBJ
biBvdGhlciB3b3Jkcywgd2Ugc2hvdWxkIGJlIGFzIGNvbmNpc2UKPiA+PiBhcyBwb3NzaWJsZS4K
PiA+Cj4gPiBJbiBmYWN0LCB0aGUgcG93ZXIgYWxsb2NhdGlvbiBnb3Zlcm5vciBjb2RlIGl0c2Vs
ZiBkb2Vzbid0IGNhbGwgdGhvc2UKPiA+IHRyaXBzIHRocmVzaG9sZCBvciB0YXJnZXQgYXMgeW91
ciBzdWdnZXN0ZWQgd29yZGluZyB3b3VsZCBpbXBseS4KPiA+IEluc3RlYWQsIGl0IGNhbGxzIHRo
ZW0gInN3aXRjaCBvbiB0ZW1wZXJhdHVyZSIgYW5kICJtYXhpbXVtIGRlc2lyZWQKPiA+IHRlbXBl
cmF0dXJlIiBbMV0uIE1heWJlIHdlIGNhbiBjYWxsIHRoZW0gdGhhdCBpbiB0aGUgY29tbWVudHMg
KGFuZAo+ID4gYWxzbyBhdm9pZCBjYWxsaW5nIHRoZSBnb3Zlcm5vciBJUEEsIGJlY2F1c2UgdXBz
dHJlYW0gY29kZSBvbmx5IGNhbGxzCj4gPiBpdCBhICJwb3dlciBhbGxvY2F0b3IiKS4KPgo+IEht
bSwgYnV0ICJJUEEiIGlzIHN0aWxsIG1lbnRpb25lZCBpbiBleGFjdGx5IHRocmVlIHBsYWNlcyBp
biB0aGUgZmlsZXMKPiB1bmRlciBkcml2ZXJzL3RoZXJtYWwuICBJIHRoaW5rIHRoYXQgd2FycmFu
dHMgdGhlIHVzZSBvZiAiSVBBIiwgd2hpY2gKPiBpcyBhbHNvIHdpZGVseSB1c2VkIHByZXR0eSBt
dWNoIGV2ZXJ5d2hlcmUuCj4KPiBQZXJoYXBzIGEgd2luLXdpbiB3b3VsZCBiZSB0byBoYXZlIG9u
bHkgdGhlIHZlcnkgZmlyc3Qgb2YgdGhlIGNvbW1lbnRzCj4gbGlrZSB0aGlzLCB0byBpbnRyb2R1
Y2UgIklQQSIgYXMgYW4gYWNyb255bToKPgo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgLyogUG93ZXIgYWxsb2NhdG9yIChJUEEpIHRoZXJtYWwKPiBnb3Zlcm5vciAgICAgICAq
Lwo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLyogc3dpdGNoLW9uIHBvaW50
LCB3aGVuIElQQSBnb3Zlcm5vcgo+IGlzIHVzZWQgICAqLwoKWWVzLCBnb29kIHBvaW50LCB0aGFu
a3MhCgo+IE5leHQsICJ0aGUgdGFyZ2V0IHRlbXBlcmF0dXJlIiBpcyBtZW50aW9uZWQgbW9yZSB0
aGFuIGEgZmV3IHRpbWVzIGluCj4gZHJpdmVycy90aGVybWFsL2dvdl9wb3dlcl9hbGxvY2F0b3Iu
Yywgd2hpY2ggSSBiZWxpZXZlIG1ha2VzIHRoZSB1c2UKPiBvZiAiSVBBIHRhcmdldCIgcGVyZmVj
dGx5IHZhbGlkLiAgQWN0dWFsbHksIGxldCdzIHVzZSAiSVBBIHRhcmdldAo+IHRlbXBlcmF0dXJl
IiwgaWYgeW91IGFncmVlLCB0byBtYWtlIGl0IHNlbGYgZGVzY3JpcHRpdmUuCgpPciBwZXJoYXBz
IHNpbXBseSAidGFyZ2V0IHRlbXBlcmF0dXJlIj8gU3RlcHdpc2UgZ292ZXJub3Igd2lsbCBhbHNv
CnVzZSB0aGlzIHRyaXAgYXMgaXRzIHRhcmdldCwgc28gaXQncyBub3QgSVBBIHNwZWNpZmljLCB1
bmxpa2UgdGhlCnN3aXRjaC1vbiBwb2ludC4KCj4gRmluYWxseSwgdGhlIHRocmVzaG9sZC4uLiAg
QmFzZWQgb24KPiBkcml2ZXJzL3RoZXJtYWwvZ292X3Bvd2VyX2FsbG9jYXRvci5jLAo+IEkgdGhp
bmsgIklQQSBzd2l0Y2gtb24gcG9pbnQiIHdvdWxkIGJlIGEgZ29vZCBjaG9pY2UsIHdoaWNoIEkg
YWxyZWFkeQo+IHVzZWQgYWJvdmUgaW4gdGhlIHByb3Bvc2VkIG9wZW5pbmcgY29tbWVudC4KCkFn
cmVlZCwgdGhhdCBzb3VuZHMgZ29vZCB0byBtZSwgd2lsbCByZWZsZWN0IGluIHRoZSBuZXh0IGl0
ZXJhdGlvbi4KVGhhbmtzIGZvciBicmluZ2luZyBpdCB1cCEKCkJlc3QsCkFsZXhleQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
