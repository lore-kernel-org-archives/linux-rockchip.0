Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E4A4CCD199
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 08:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:From:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=evW22bvu0r8+3ngMqcY1Bh27gh85KN1Y1wDZyerk7X8=; b=GqvuN86D5YDxHz
	VnZPaimF3hDDx4QZER5YNLX2wN0nEAgDkrWa0IxcA2N9yTPM3wmmnQFoS5O7YYsuIOAftjntepHIQ
	vrnCE3afcHQMNuo/SLNmuLKCZgVeN0n+sr202VehVG1zh6DnL4znQL0QehKRBbPnHrijLrYI1V0Nx
	08TTtZhkRg/JvQ58Oqz0OO6tkUa+1JuJx1c+k3aLuyB6Kc6zUvtwm8gz/+7fwq0hRZ6hUdqMqwfbd
	VwXBN4jw+a8PoA0IIlgIz9sJnNbz/VInBUBihq9z5qQffy06HHmzGR60919kq/kd6TtZrxu2K3G3U
	h6lxOLXZG1H/VVz7Lx3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAlbf-0000000CSkn-3N1I;
	Mon, 20 Oct 2025 08:51:07 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAlbZ-0000000CSho-3Dso
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Oct 2025 08:51:05 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-3f0ae439b56so3021481f8f.3
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Oct 2025 01:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760950260; x=1761555060; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2yGmBP/PkMxgu2wwxaNLMOWwQSg0wFQ20D8HmohcvME=;
        b=akoR3I5ydV+h0C/BgetzMaY1cQ0yoQPwOdg1dAMmiyE+kddqc3mlWA4e4DL8Yk+R5R
         yRseG2dxtAkR+tOzAnzIgL7MQ2k1nEmCa93e4LlPL83XMEikEIGSSzn4BsT+h1gpV0MV
         coZs2UXWkLtW8QNAKfhmm2VVEdsEsc2zq6bixIt7f8/W1Oy5eD0HdTIma5+dtpg4QlnX
         0OOSVnYg1vGS1a+7I+4QZxWEkIxGZnIgXPvb2G17WM9mzkfk8h5PQEvE3vW/wiFNfPt9
         d9bX9YUjkNeoJrmZM557U1TXbGCiqLHgy3fVa5enWnOdMqWeuwYNGalj/LDAaXu1MXtc
         Nsqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760950260; x=1761555060;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2yGmBP/PkMxgu2wwxaNLMOWwQSg0wFQ20D8HmohcvME=;
        b=kL0Bn4Y3bZxdu/H1KHwnukqsORKD4Ft40kgqjm1Xj7Hib+Njh33uA/UPlnpIG1FvO9
         eAGiUwKnYin+WkkUn4NPiuVIZRiNJxbaShQI1YiSDlEPB/z0f3QYaPfzGg01MTtO1YyL
         bUXlccsACPMYM6M8ut8ebZHQrvESrxlaRlVdHVw1P2gFWVq3tOQXDWSapnzEU6GXUlaU
         8oxmcuSw2WR3/frFBpx0ef01VyysfYBgVgohNRHx0aXxbBkdTd/wf/4J3uMRpW0FBrzZ
         4gtz/hW6W32O6qHuTWSmwiAFvr00NH0wlAmGUbOJG2AlfnY1ejm15362C4Jru9K3wQWT
         Pu0A==
X-Forwarded-Encrypted: i=1; AJvYcCWaR32Tfs81zOpS67vzBwqBUWBwxT8qCObOi+OAhDVVnACREft5vfBdfUWHaa6E68ZNUUvgJj8VmWl4f7+bZA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxb02EoJA0iTQlB4LvFqeJn5caxUBfOgHxVmsoytCPS4hgOwe0L
	CbMbHciFvnxIYwC9KWyWV1jh4f1HJUtL6+A74/dacr9mqb+17lVc8rs9
X-Gm-Gg: ASbGnctaTjf7T2lAblP/B1tq9q0E6nRClPll+K+/44UPQwPI2D/+qwh/glEITObPcKa
	heRAPxzQKCgVHYHZYz8ovqgPLZH1fO3fsemIdhr8w8fz34+BJqXJoykbsE9F/CyEUdrsTxon4/Z
	yaSTvnhYHJ3P2K1ewPyngvNTfBaM6yWRGRQG9aaPhFEXwL0eQhCkLTYzLB03RED/LtcTE7pXN7K
	PWNLynJaLoipT+DuzhLQaZuwZR0oP8NhIfTKpMqHUSn9v5xnzBe/FNVx2MwfJXY8HD5BCzxWiuf
	fMsPkD1iGHARC2me0OsSh6zwguc8Un8fTIKJ9Jec1lBdQanNy4RW9z0GMXkTwDyA/sRIZGPK2GE
	8A4YV04feDyDPmE5hOjVvXXo7PniAO0cE0BPdWY/VTFWAcOamA0UsIvbp7SMOX9JS+DhvGnfuHb
	NgE+PtSw+HVACqrCncYUF9kVRlVHFeGXCae2S+m2UVm1bg9pf5tg==
X-Google-Smtp-Source: AGHT+IEZuzT5Fi6RwZkG3ZCBMeU/nFGgDtAhgLPA7LKZMuxVJQUCCBR14TWol1dcQMMPKI5tWNEmrQ==
X-Received: by 2002:a05:6000:1848:b0:428:4354:aa27 with SMTP id ffacd0b85a97d-4284354abc4mr2871879f8f.46.1760950259658;
        Mon, 20 Oct 2025 01:50:59 -0700 (PDT)
Received: from ?IPV6:2001:8f8:183b:9829:50b9:dafe:ddca:3ba4? ([2001:8f8:183b:9829:50b9:dafe:ddca:3ba4])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4710f29b559sm104370685e9.8.2025.10.20.01.50.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Oct 2025 01:50:59 -0700 (PDT)
Message-ID: <748fd61a-31fb-436f-b028-b47807a4860c@gmail.com>
Date: Mon, 20 Oct 2025 12:50:58 +0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Alexey Charkov <alchark@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add DSI LCD display on rk3576-evb1
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250925-rk3576-evb1-dsi-v1-1-c76fc3740abc@gmail.com>
 <CABjd4YwVfrzxYKM4cAG=-fMbw9OcQGZD20CVCG8FvC8phDsw+Q@mail.gmail.com>
 <5143458.iZASKD2KPV@phil>
Content-Language: en-US
In-Reply-To: <5143458.iZASKD2KPV@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_015101_825400_411DB62A 
X-CRM114-Status: GOOD (  27.15  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CgpPbiBNb24sIE9jdCAyMCwgMjAyNSBhdCAxMjozMeKAr1BNIEhlaWtvIFN0dWVibmVyIDxoZWlr
b0BzbnRlY2guZGU+IHdyb3RlOgo+Cj4gQW0gTW9udGFnLCAyMC4gT2t0b2JlciAyMDI1LCAxMDox
OTo1MSBNaXR0ZWxldXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIEFsZXhleSBDaGFya292
Ogo+ID4gT24gVGh1LCBTZXAgMjUsIDIwMjUgYXQgMTI6MzjigK9BTSBBbGV4ZXkgQ2hhcmtvdiA8
YWxjaGFya0BnbWFpbC5jb20+IHdyb3RlOgo+ID4gPgo+ID4gPiBBZGQgc3VwcG9ydCBmb3IgdGhl
IFJvY2tjaGlwIFc1NTI3OTNEQkEtVjEwIExDRCt0b3VjaHNjcmVlbiBhc3NlbWJseSB3aGljaAo+
ID4gPiBjb21lcyBwaHlzaWNhbGx5IGF0dGFjaGVkIHRvIFJvY2tjaGlwIFJLMzU3NiBFVkIxIGJv
YXJkcy4KPiA+ID4KPiA+ID4gVGhlIGRpc3BsYXkgcGFydCBpcyBkcml2ZW4gYnkgdGhlIG9uLWNo
aXAgTUlQSSBEU0kgY29udHJvbGxlciwgYW5kIHRoZQo+ID4gPiB0b3VjaHNjcmVlbiBpcyBjb25u
ZWN0ZWQgb3ZlciBJMkMuCj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IEFsZXhleSBDaGFya292
IDxhbGNoYXJrQGdtYWlsLmNvbT4KPiA+ID4gLS0tCj4gPiA+IE5vdGUgdGhhdCBiYWNrbGlnaHQg
c3VwcG9ydCBpcyBsZWZ0IG91dCBmb3Igbm93LCBhcyBpdCBkZXBlbmRzIG9uIFBXTQo+ID4gPiBz
dXBwb3J0IFswXSB3aGljaCBoYXMgbm90IHlldCBiZWVuIG1lcmdlZC4KPiA+ID4KPiA+ID4gQSB3
b3JrYXJvdW5kIGlzIHNpbXBseSBgZ3Bpb3NldCAtYyAwIDEzPTFgIHRvIHNldCB0aGUgcmVzcGVj
dGl2ZSBHUElPCj4gPiA+IHBpbiBoaWdoIGFuZCB0aHVzIHRvIGxpZ2h0IHVwIHRoZSBkaXNwbGF5
IHVuY29uZGl0aW9uYWxseS4KPiA+ID4KPiA+ID4gWzBdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L2xrbWwvMjAyNTA2MDItcmszNTc2LXB3bS12Mi0wLWE2NDM0YjBjZTYwY0Bjb2xsYWJvcmEuY29t
Lwo+ID4gPiAtLS0KPiA+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LWV2
YjEtdjEwLmR0cyB8IDg5ICsrKysrKysrKysrKysrKysrKysrKysrKwo+ID4gPiAgMSBmaWxlIGNo
YW5nZWQsIDg5IGluc2VydGlvbnMoKykKPiA+Cj4gPiBIaSBIZWlrbywKPiA+Cj4gPiBBbnkgdGhv
dWdodHMgYWJvdXQgdGhpcyBvbmU/IENhbiB3ZSBwZXJoYXBzIGdldCBpdCBtZXJnZWQgZm9yIC1u
ZXh0Pwo+Cj4gRG9lcyB0aGUgZ3Bpby1iYWNrbGlnaHQgd29yayBvbiB0aGF0IGRldmljZT8KPiBU
aGF0IHdvdWxkIG1ha2UgdGhlIGdwaW9zZXQgaGFjayB1bm5lY2Vzc2FyeS4KCkkndmUgZ290IGEg
bG9jYWwgcGF0Y2ggdXNpbmcgcHdtLWdwaW8gYW5kIHB3bS1iYWNrbGlnaHQgYXMgYSBzdG9wLWdh
cCAKc29sdXRpb24sIGJ1dCBJIGRvbid0IHRoaW5rIGl0J3Mgd29ydGggbWVyZ2luZyB1cHN0cmVh
bSwgYmVjYXVzZSB0aGUgCmJhY2tsaWdodCBpcyBzdXBwb3NlZCB0byBiZSBkcml2ZW4gYnkgdGhl
IGhhcmR3YXJlIFBXTSBvbiB0aGUgc2FtZSBwaW4gCihub3QgYml0LWJhbmdpbmcgdGhlIEdQSU8g
bGluZSkuIEFmdGVyIGFsbCwgTmljb2xhcyBoYXMgYmVlbiB3b3JraW5nIG9uIAphZGRpbmcgYSBw
cm9wZXIgaGFyZHdhcmUgUFdNIGRyaXZlciBmb3IgUkszNTc2LgoKVGhlIGRpc3BsYXkgaXRzZWxm
IHdvcmtzIHdpdGhvdXQgUFdNIHN1cHBvcnQsIGFuZCBzbyBkb2VzIHRoZSB0b3VjaHNjcmVlbi4K
Ck15IHRlbXAgcGF0Y2ggZ29lcyBsaWtlIHRoaXM6CgotLS0KICBhcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU3Ni1ldmIxLXYxMC5kdHMgfCAxNSArKysrKysrKysrKysrKysKICAxIGZp
bGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTc2LWV2YjEtdjEwLmR0cyAKYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU3Ni1ldmIxLXYxMC5kdHMKaW5kZXggZjIwY2Q2ZjJjMDc5Li41YzI3ZmZm
MDM1NjkgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LWV2
YjEtdjEwLmR0cworKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni1ldmIx
LXYxMC5kdHMKQEAgLTU4LDYgKzU4LDE0IEBAIGJ1dHRvbi12b2wtdXAgewogIAkJfTsKICAJfTsK
CisJYmFja2xpZ2h0OiBiYWNrbGlnaHQgeworCQljb21wYXRpYmxlID0gInB3bS1iYWNrbGlnaHQi
OworCQlicmlnaHRuZXNzLWxldmVscyA9IDwyMCAyMjA+OworCQlkZWZhdWx0LWJyaWdodG5lc3Mt
bGV2ZWwgPSA8MTAwPjsKKwkJbnVtLWludGVycG9sYXRlZC1zdGVwcyA9IDwyMDA+OworCQlwd21z
ID0gPCZsY2RfYmxfcHdtIDAgMjUwMDAgMD47CisJfTsKKwogIAloZG1pLWNvbiB7CiAgCQljb21w
YXRpYmxlID0gImhkbWktY29ubmVjdG9yIjsKICAJCXR5cGUgPSAiYSI7CkBAIC03OCw2ICs4Niwx
MiBAQCB3b3JrX2xlZDogbGVkLTAgewogIAkJfTsKICAJfTsKCisJbGNkX2JsX3B3bTogcHdtIHsK
KwkJI3B3bS1jZWxscyA9IDwzPjsKKwkJY29tcGF0aWJsZSA9ICJwd20tZ3BpbyI7CisJCWdwaW9z
ID0gPCZncGlvMCBSS19QQjUgR1BJT19BQ1RJVkVfSElHSD47CisJfTsKKwogIAl2YnVzNXYwX3R5
cGVjOiByZWd1bGF0b3ItdmJ1czV2MC10eXBlYyB7CiAgCQljb21wYXRpYmxlID0gInJlZ3VsYXRv
ci1maXhlZCI7CiAgCQlyZWd1bGF0b3ItbmFtZSA9ICJ2YnVzNXYwX3R5cGVjIjsKQEAgLTI3Nyw2
ICsyOTEsNyBAQCBwYW5lbEAwIHsKICAJCWNvbXBhdGlibGUgPSAid2FuY2hhbmdsb25nLHc1NTI3
OTNiYWEiLCAicmF5ZGl1bSxybTY3MjAwIjsKICAJCXJlZyA9IDwwPjsKCisJCWJhY2tsaWdodCA9
IDwmYmFja2xpZ2h0PjsKICAJCWlvdmNjLXN1cHBseSA9IDwmdmNjM3YzX2xjZF9uPjsKICAJCXJl
c2V0LWdwaW9zID0gPCZncGlvMyBSS19QQjUgR1BJT19BQ1RJVkVfTE9XPjsKICAJCXZkZC1zdXBw
bHkgPSA8JnZjYzN2M19sY2Rfbj47Ci0tIAoKQmVzdCByZWdhcmRzLApBbGV4ZXkKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
