Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8134BC433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Feb 2022 18:16:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gV14SWIgLIc9x/Hmbg4tU5TFgCQdVhxkzYPzF/nm9iM=; b=TJcbBX8AzSKryR
	Vkp4ykUprQ1+CtMNvU1QKtdCpfroUpaqp6RGafQmaRBst5jH0PQT1VbK8RlbuHzXQOWtlvLE5EG33
	ZIUS3X2/DXT/W1HJ2/2RxMFsa1PxY6ohbqh97qHmDlIAaKoxMVZCu5kWRnNBB6VS+2vQrW8tsPhtt
	1u7j5/VkCr5Bv75/LzISI4w0ivNtU8j3B+6ocIDbnmN8qJ5whyVcG9h63MSaFPi/na0kGmXFoaLmn
	r6C3xKr/KctOOUbmRn7yqLJ09+Tbd712sdAK/liqr8kNcUPBSpsJIv8FiIgv70r29jbXEd6Z4SqBQ
	UUIWs3T1hhjCcSJCUWhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nO1c8-008LjH-JU; Sat, 26 Feb 2022 18:16:16 +0000
Received: from mail-yb1-xb2b.google.com ([2607:f8b0:4864:20::b2b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nO1c5-008LiM-Pf; Sat, 26 Feb 2022 18:16:15 +0000
Received: by mail-yb1-xb2b.google.com with SMTP id j2so12379335ybu.0;
 Sat, 26 Feb 2022 10:16:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=LrEwaB+kbTeaznkd+BNx8jVuqDzOoWE98mZBP/QrouE=;
 b=IX95pwb0o0c1hdOQhpuOhe3OCnJ2Gb7GVrSZ6X1I2PH9tjuaE86tQRG/xSsVZvYINv
 XiYp6Fa/W2Ctg4q5bq8P7CmKiU4zAjOb5lWtmw8e+aFNTGNK9T/DjNXpjjXFouQ6do2u
 6g4R+0MsSjO0gkHAFPSNWQNiT2VZTOJAimfBV4M1ibAXdeAHP8Xt5KzAMCOo//ReGTby
 Ef/acwmtbJdtd5CgnBFTcv8y0hNbkttqPcFRiYs7bIO1Y6BCjBAVnm1UtsVVIQ1f1207
 GhYSBN6wAYrtX/jNMU/lVB9NLpVR/hVv8ZiYT4yIRboutW58uEXkYtPQcJx8br2gnguI
 hVnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=LrEwaB+kbTeaznkd+BNx8jVuqDzOoWE98mZBP/QrouE=;
 b=xptea4tsSMwj5KuyWQJruu6EfEu66BPWJsPeVVJIcuRtD4kKQN+HbRt6CrxwsaRurX
 WkJY+x+BCXv+7P8fhEjE0JoJD46cxZTynyYvUxYwgsnDSUG6yztfJSeygjPlzkr4ZPnB
 GWKaHTJp/jSrhasOsVga7UbmdU/55oPpWqMCNLbXl7qgSNOW0jg3l1XfjIoi53rP/wNv
 F1OWnCPrG2cn/PMEAxZz86MehQLgyQX/gN3xCpA471QH2eUBB/35V9HJilZ954BgM59r
 /5z0hleRvvUzSDXNUM0mZYN9z6rE14GvUP1a3B5eD4MjovhK4+MLjcifmCmfolxarxtW
 Oz5A==
X-Gm-Message-State: AOAM533Nu4t+pV4NVrbrwMGzSUV9rYnOPZ2EJKoW6Lef0Xud7jgRTDtc
 w9PaP8KnCuRZAcBXj2JV+2Ko80VF90R/M0sCdjw=
X-Google-Smtp-Source: ABdhPJx6p75lgdbg9+7oe/9Jb1gunfXQkp3m4E3iFa+ALW1LnJX8X5/l6U5lvNfO3suJC1cXRwg6JBfdicUwZAOWbcE=
X-Received: by 2002:a25:8490:0:b0:624:5f70:142a with SMTP id
 v16-20020a258490000000b006245f70142amr12382739ybk.173.1645899371404; Sat, 26
 Feb 2022 10:16:11 -0800 (PST)
MIME-Version: 1.0
References: <20220226135724.61516-1-linux@fw-web.de> <2815432.3mA4caTK8C@diego>
In-Reply-To: <2815432.3mA4caTK8C@diego>
From: Peter Geis <pgwipeout@gmail.com>
Date: Sat, 26 Feb 2022 13:15:59 -0500
Message-ID: <CAMdYzYro7r2nELu2O4TuxxtZLxNSv1e3iU5yBzjd7AQgHP+FPw@mail.gmail.com>
Subject: Re: [PATCH v1] arm64: dts: rockchip: Add sata2 node to rk356x
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Frank Wunderlich <linux@fw-web.de>, 
 Frank Wunderlich <frank-w@public-files.de>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>, 
 Michael Riesch <michael.riesch@wolfvision.net>,
 devicetree <devicetree@vger.kernel.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220226_101613_856884_4391CABC 
X-CRM114-Status: GOOD (  21.45  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

T24gU2F0LCBGZWIgMjYsIDIwMjIgYXQgMTowOCBQTSBIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250
ZWNoLmRlPiB3cm90ZToKPgo+IEhpIEZyYW5rLAo+Cj4gQW0gU2Ftc3RhZywgMjYuIEZlYnJ1YXIg
MjAyMiwgMTQ6NTc6MjQgQ0VUIHNjaHJpZWIgRnJhbmsgV3VuZGVybGljaDoKPiA+IEZyb206IEZy
YW5rIFd1bmRlcmxpY2ggPGZyYW5rLXdAcHVibGljLWZpbGVzLmRlPgo+ID4KPiA+IFJLMzU2eCBz
dXBwb3J0cyB1cCB0byAzIHNhdGEgY29udHJvbGxlcnMgd2hpY2ggd2VyZSBjb21wYXRpYmxlIHdp
dGggdGhlCj4gPiBleGlzdGluZyBzbnBzLGR3Yy1haGNpIGJpbmRpbmcuCj4gPgo+ID4gTXkgYm9h
cmQgaGFzIG9ubHkgc2F0YTIgY29ubmVjdGVkIHRvIGNvbWJwaHkyIHNvIG9ubHkgYWRkIHRoaXMg
b25lLgo+Cj4gaG93IGZhciBkb2VzIHRoZSBhZGRlZCBub2RlIGRpdmVyZ2UgZnJvbSB0aGUgdmVu
ZG9yIGtlcm5lbD8KPgo+IElmIGl0J3MgcHJldHR5IG11Y2ggc2ltaWxhciBiZXR3ZWVuIGJvdGgs
IHdlIGNhbiBhc3N1bWUgdGhlIG90aGVyIG5vZGVzCj4gc2hvdWxkIHdvcmsgcHJldHR5IHdlbGwg
YXMgd2VsbCBhbmQgdGhlcmVmb3JlIHNob3VsZCBhbGwgb2YgdGhlbSBhdCBvbmNlCj4gYW5kIGhv
cGUgZm9yIHRoZSBiZXN0PwoKVGhlcmUncyBlc3NlbnRpYWxseSB6ZXJvIGRpdmVyZ2VuY2UgKG1p
bnVzIHRoZSBjaGFuZ2UgZHVlIHRvIGNvbWJvcGh5CmNoYW5naW5nKSwgYW5kIGxpa2VseSB3b24n
dCBiZSB1bnRpbCB0aGUgYWhjaS1wbGF0Zm9ybS50eHQgaXMKY29udmVydGVkIHRvIHlhbWwuCgpJ
IGhhdmUgdGVzdGVkIGJvdGggU0FUQTEgYW5kIFNBVEEyIHN1Y2Nlc3NmdWxseSBvbiB0aGUgcmsz
NTY2LgpJIGRvbid0IGhhdmUgYW55IHJrMzU2OCBib2FyZHMgdGhhdCBhcmUgb3BlcmF0aW9uYWwg
eWV0IHRvIHRlc3QgU0FUQTAuCgo+Cj4gVGhhbmtzCj4gSGVpa28KPgo+ID4gU2lnbmVkLW9mZi1i
eTogRnJhbmsgV3VuZGVybGljaCA8ZnJhbmstd0BwdWJsaWMtZmlsZXMuZGU+Cj4gPiAtLS0KPiA+
ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2eC5kdHNpIHwgMTUgKysrKysrKysr
KysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKykKPiA+Cj4gPiBkaWZm
IC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NnguZHRzaSBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTZ4LmR0c2kKPiA+IGluZGV4IDdjZGVmODAwY2Iz
Yy4uN2I2YzhhMGM4Yjg0IDEwMDY0NAo+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1NnguZHRzaQo+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azM1NnguZHRzaQo+ID4gQEAgLTIzMCw2ICsyMzAsMjEgQEAgc2NtaV9zaG1lbTogc3JhbUAwIHsK
PiA+ICAgICAgICAgICAgICAgfTsKPiA+ICAgICAgIH07Cj4gPgo+ID4gKyAgICAgc2F0YTI6IHNh
dGFAZmM4MDAwMDAgewo+ID4gKyAgICAgICAgICAgICBjb21wYXRpYmxlID0gInNucHMsZHdjLWFo
Y2kiOwo+ID4gKyAgICAgICAgICAgICByZWcgPSA8MCAweGZjODAwMDAwIDAgMHgxMDAwPjsKPiA+
ICsgICAgICAgICAgICAgY2xvY2tzID0gPCZjcnUgQUNMS19TQVRBMj4sIDwmY3J1IENMS19TQVRB
Ml9QTUFMSVZFPiwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgPCZjcnUgQ0xLX1NBVEEyX1JY
T09CPjsKPiA+ICsgICAgICAgICAgICAgY2xvY2stbmFtZXMgPSAic2F0YSIsICJwbWFsaXZlIiwg
InJ4b29iIjsKPiA+ICsgICAgICAgICAgICAgaW50ZXJydXB0cyA9IDxHSUNfU1BJIDk2IElSUV9U
WVBFX0xFVkVMX0hJR0g+Owo+ID4gKyAgICAgICAgICAgICBpbnRlcnJ1cHQtbmFtZXMgPSAiaG9z
dGMiOwo+ID4gKyAgICAgICAgICAgICBwaHlzID0gPCZjb21icGh5MiBQSFlfVFlQRV9TQVRBPjsK
PiA+ICsgICAgICAgICAgICAgcGh5LW5hbWVzID0gInNhdGEtcGh5IjsKPiA+ICsgICAgICAgICAg
ICAgcG9ydHMtaW1wbGVtZW50ZWQgPSA8MHgxPjsKPiA+ICsgICAgICAgICAgICAgcG93ZXItZG9t
YWlucyA9IDwmcG93ZXIgUkszNTY4X1BEX1BJUEU+Owo+ID4gKyAgICAgICAgICAgICBzdGF0dXMg
PSAiZGlzYWJsZWQiOwo+ID4gKyAgICAgfTsKPiA+ICsKPiA+ICAgICAgIGdpYzogaW50ZXJydXB0
LWNvbnRyb2xsZXJAZmQ0MDAwMDAgewo+ID4gICAgICAgICAgICAgICBjb21wYXRpYmxlID0gImFy
bSxnaWMtdjMiOwo+ID4gICAgICAgICAgICAgICByZWcgPSA8MHgwIDB4ZmQ0MDAwMDAgMCAweDEw
MDAwPiwgLyogR0lDRCAqLwo+ID4KPgo+Cj4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
