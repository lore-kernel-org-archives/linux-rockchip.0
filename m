Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB0AAC761AF
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Apr 2023 19:27:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lv2p/fua9all0PGemy/fRS02QKvazQlN/HjGJAfvfvQ=; b=fC3sGYU9GQSTrd
	P4iFr79RwD32qLcSCPP6TAL/k3YXP66GJm/Op3mnoAFYqNFlMqGLBJS8h0kZLULNP9xCwug263v7U
	fL+bSqE8T1tBh6chR4KSntvDA663+jXRYW1IWq4LM1cmmXXuQbMyJPJAayY/0MDo57YwghHURo2zF
	D+YKuCUgLCoXugXSytw9VUqMlRokLC5lEGoUDVhQezTjW4W382kNmTgXIrc4V06YZbqwds/VOC1A9
	Bh/oJYxRXrZCsIJJqHVtS0Z5TACyerw4CW3fM0vyGLTZal4cJ5k2nViZ9ULTB8CEuXE0z7Hnarpq1
	apYBVDLd6MiwX/Bkq2YA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjPq8-00GORs-1h;
	Mon, 03 Apr 2023 19:27:40 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjPq5-00GOQc-0B;
	Mon, 03 Apr 2023 19:27:38 +0000
Received: by mail-ed1-x536.google.com with SMTP id y4so121687847edo.2;
        Mon, 03 Apr 2023 12:27:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680550055; x=1683142055;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=se3no2U1BEAjqgVkUIbiPXSr/UsK3c8ayHmiAOdc6i0=;
        b=UARtSgQC9EuQSnmSkoADr2dvvdSuJpxE7vadF3X6wLoCGOi0sFvwP2LoUBJ2XFNyIL
         0NYiwMV8vZpxV++leDIqavTa81a8JL1zbuPqdKC/ehXm8Hxe5GM5gw90LBIV80Z4SM9Y
         md+Fm2835dBY8U1o5w0QPWcy78b3nyFqPvk0ZVgR/CZAbbBIwV/NKvoWmP+fg7g1ER3K
         ejt6LbyGgDTMcKdmS3xqjD6x+lIFvVyM1+DvCnxvvSIhbjKHd96dr+iuOx4JQWM6CnLb
         S1suinDUUSTs/4fdJr5r2GmvZTlNXNPZ1RC3d5JlLsMpjOMs/qZ+0LhGjM6bM7WaaC3q
         yWjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680550055; x=1683142055;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=se3no2U1BEAjqgVkUIbiPXSr/UsK3c8ayHmiAOdc6i0=;
        b=I63SZFhPN0zAnwelfqhTKrPgrXOC9f5i+SUBQrxMRsUd9MhRsXZ2eN34jw3UO7g71S
         hsIcDXLJNTQBLvU7x1gxEIVXy5f0BKVBHLU5XB6poo9/33bpoilhheDEQM1Y351eCwsd
         xishqmGT+A8nGxQ/a9dMOVwxskcSI4FEudSdnEUxz/vHM/wWP472NurmYaJMO/MxxutF
         LjVCjITSH9KoJsgLuD5NO6niIBwoRmfiY3+IJ0d0WUDt4EddeTCqs6oUG8jEhKNrN9IE
         yw1HvPhDwwXl8zauiNB8LF67FP39LFp7tJNdfCINzPCZfK934XsT0lbbnKZ5bBufpbXh
         3P1A==
X-Gm-Message-State: AAQBX9c+OP4F6f49DKHDg5Kalh3w0R1Tra4cwRXxfzYDHTfj8xpRYEMQ
	0X7zxq2TEYlPzTSTpPVggeSQT/scm7pkXaEU+rE=
X-Google-Smtp-Source: AKy350Zp9LknbtnkEs+08Ept4WC1GhtU1o1/b9YwSKETN24Wpa6BvZayW5azg1Q+UbYSDX+WtMPzwF3uyq4N2FNX9Lw=
X-Received: by 2002:a17:906:2357:b0:931:cac0:60ff with SMTP id
 m23-20020a170906235700b00931cac060ffmr17646305eja.13.1680550054866; Mon, 03
 Apr 2023 12:27:34 -0700 (PDT)
MIME-Version: 1.0
References: <20230403105052.426135-1-cristian.ciocaltea@collabora.com>
 <20230403105052.426135-3-cristian.ciocaltea@collabora.com> <642b134c.4a0a0220.1d01a.5990@mx.google.com>
In-Reply-To: <642b134c.4a0a0220.1d01a.5990@mx.google.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 3 Apr 2023 15:27:22 -0400
Message-ID: <CAMdYzYrLjV97_Q2jhmNa9SJkraKXjttrZwovc=dmPTNLYnz5qg@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: rk3588-rock-5b: Add pwm-fan
To: Chris Morgan <macroalpha82@gmail.com>
Cc: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, Jean Delvare <jdelvare@suse.com>, 
	Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_122737_110986_6BBDC738 
X-CRM114-Status: GOOD (  21.89  )
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

T24gTW9uLCBBcHIgMywgMjAyMyBhdCAxOjU24oCvUE0gQ2hyaXMgTW9yZ2FuIDxtYWNyb2FscGhh
ODJAZ21haWwuY29tPiB3cm90ZToKPgo+IE9uIE1vbiwgQXByIDAzLCAyMDIzIGF0IDAxOjUwOjUy
UE0gKzAzMDAsIENyaXN0aWFuIENpb2NhbHRlYSB3cm90ZToKPiA+IEFkZCB0aGUgbmVjZXNzYXJ5
IERUIGNoYW5nZXMgZm9yIHRoZSBSb2NrIDVCIGJvYXJkIHRvIGVuYWJsZSBzdXBwb3J0IGZvcgo+
ID4gdGhlIFBXTSBjb250cm9sbGVkIGhlYXQgc2luayBmYW4uCj4KPiBIb25lc3QgcXVlc3Rpb24s
IGJ1dCBzaG91bGQgd2UgYmUgYWRkaW5nIHRoaXMgdG8gdGhlIGJvYXJkIGZpbGUgaWYgbm90Cj4g
ZXZlcnkgZGV2aWNlIGhhcyBhIFBXTSBmYW4gKHRoZXkgYWxsIGhhdmUgdGhlIHNvY2tldCBmb3Ig
dGhlIGZhbiwgYnV0Cj4gbm90IHRoZSBmYW4pPyBGb3IgZXhhbXBsZSBJIGhhdmUgYSBwYXNzaXZl
bHkgY29vbGVkIGNhc2UgdGhhdCBkb2Vzbid0Cj4gaW5jbHVkZSBhIGZhbi4KCkFjdGl2ZSBjb29s
aW5nIHNob3VsZCBiZSBzZXQgdXAgdG8gdGFrZSBlZmZlY3QgYmVmb3JlIHRocm90dGxpbmcuIElm
Cml0IGlzIHRoZXJlIGdyZWF0LCAoZXNwZWNpYWxseSBpZiBpdCBoYXMgZmVlZGJhY2spLCBpZiBp
dCBkb2Vzbid0CmV4aXN0IGl0IHJlYWxseSBkb2Vzbid0IGFmZmVjdCBhbnl0aGluZyBiZWNhdXNl
IHRoZSB0aHJvdHRsaW5nIHdpbGwKa2ljayBpbiBhcyBuZWNlc3NhcnkuCgo+Cj4gVGhhbmsgeW91
LAo+IENocmlzIE1vcmdhbi4KPgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IENyaXN0aWFuIENpb2Nh
bHRlYSA8Y3Jpc3RpYW4uY2lvY2FsdGVhQGNvbGxhYm9yYS5jb20+Cj4gPiAtLS0KPiA+ICBhcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0cyB8IDEyICsrKysrKysr
KysrKwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspCj4gPgo+ID4gZGlmZiAt
LWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzIGIv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMKPiA+IGluZGV4
IDk1ODA1Y2IwYWRmYS4uYmQ3NGQ5ZGEyYzE3IDEwMDY0NAo+ID4gLS0tIGEvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMKPiA+ICsrKyBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzCj4gPiBAQCAtMTcsNiArMTcsMTQg
QEAgY2hvc2VuIHsKPiA+ICAgICAgICAgICAgICAgc3Rkb3V0LXBhdGggPSAic2VyaWFsMjoxNTAw
MDAwbjgiOwo+ID4gICAgICAgfTsKPiA+Cj4gPiArICAgICBmYW46IHB3bS1mYW4gewo+ID4gKyAg
ICAgICAgICAgICBjb21wYXRpYmxlID0gInB3bS1mYW4iOwo+ID4gKyAgICAgICAgICAgICBjb29s
aW5nLWxldmVscyA9IDwwIDk1IDE0NSAxOTUgMjU1PjsKPiA+ICsgICAgICAgICAgICAgZmFuLXN1
cHBseSA9IDwmdmNjNXYwX3N5cz47Cj4gPiArICAgICAgICAgICAgIHB3bXMgPSA8JnB3bTEgMCA1
MDAwMCAwPjsKPiA+ICsgICAgICAgICAgICAgI2Nvb2xpbmctY2VsbHMgPSA8Mj47Cj4gPiArICAg
ICB9Owo+ID4gKwo+ID4gICAgICAgdmNjNXYwX3N5czogdmNjNXYwLXN5cy1yZWd1bGF0b3Igewo+
ID4gICAgICAgICAgICAgICBjb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7Cj4gPiAgICAg
ICAgICAgICAgIHJlZ3VsYXRvci1uYW1lID0gInZjYzV2MF9zeXMiOwo+ID4gQEAgLTI3LDYgKzM1
LDEwIEBAIHZjYzV2MF9zeXM6IHZjYzV2MC1zeXMtcmVndWxhdG9yIHsKPiA+ICAgICAgIH07Cj4g
PiAgfTsKPiA+Cj4gPiArJnB3bTEgewo+ID4gKyAgICAgc3RhdHVzID0gIm9rYXkiOwo+ID4gK307
Cj4gPiArCj4gPiAgJnNkaGNpIHsKPiA+ICAgICAgIGJ1cy13aWR0aCA9IDw4PjsKPiA+ICAgICAg
IG5vLXNkaW87Cj4gPiAtLQo+ID4gMi40MC4wCj4gPgo+Cj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
PiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
