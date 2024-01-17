Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99F5CC47422
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jan 2024 04:39:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r51AcS2Q6xCAmI1yUBevFd+k8f2Q6Fm3XsljEErhxv8=; b=IGHLQVnnwuqcac
	s4S9lspiqQEgkGTexpgWCiHfOGgbW4Vh74D00ATcjXznoL2uWmI6s0N16GHNGBtZN767oFLS12foM
	R/nRrjDVmLACYPueGb01O2lZJA3UCFe8XWb20JPLyhSXlp+IN90pVXDfEVziVPWWT9Px+5xrFW1Ji
	c6spJxBz+kSRmLRHRLO9pjw9wzRJUPceAqmKsr+qI2s2gQzMudrgXEndQH+s9BUhTfUwZkHsmmxUR
	t77e2nODr0pLlSmetx4+WI+Qs8FB2eXdGLWiL9e+LYyGI0VVhhyw/j4JBaHiU1HmGykooOx6tnhVf
	s735YW6ljHTewdU9jSaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPxhm-00EPTa-26;
	Wed, 17 Jan 2024 04:39:10 +0000
Received: from mail-ot1-f46.google.com ([209.85.210.46])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPxhi-00EPPn-27;
	Wed, 17 Jan 2024 04:39:07 +0000
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-6dec4b7b680so3677675a34.3;
        Tue, 16 Jan 2024 20:38:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705466332; x=1706071132;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xWM2eCTSdv+ykArKWuxIaHFUHWUoGfAR11YwSin65Ss=;
        b=aN/ZqFq2hh1Nsz26NQcU8uASdZWfVm+IjjD/vq1mlh7+BUEkRZJm7MMMZ8REkPBv6k
         FqG9o0w2Wl2fDPdY5e5XrA4Ry8Q3pXgAYAxyFMAb+yZCNeeo5FZHkkaKn1gNV+XHUyf6
         znnXrWRBBAxy5uqhJucQdOmHQnTtUdUU8JLlRW7rEnjC+ZKM3Z/lfQwY4MzFahh0G1c6
         aofm4ZTEtynT36S4Q/bFhM8XXvflMg3zseXxLE35LSJbufYzne+DgtVuAowVssbNWgE9
         8WomP1w12w8nTCHBRmu5GcK3BdO6if96xrJpcGvASN0oXW9q0JRs7JFb2q1XK/nI6rmG
         Je0g==
X-Gm-Message-State: AOJu0YwgnVE8X6+3czUVF/wKiGb9wdMklrB3t8bMvzBq5iDPEsDa0UlI
	c6dxD+i2hwQYDbLqLrsPluiuK6mi690=
X-Google-Smtp-Source: AGHT+IEyhXNr0CeyLDbozQKmuz/IucUWB1qqqyBpM2mnh44M/jgwPxYfa2CG+nwBYcKH3yDf4x99Pw==
X-Received: by 2002:a9d:7617:0:b0:6de:bd8e:be2b with SMTP id k23-20020a9d7617000000b006debd8ebe2bmr7910092otl.64.1705466331885;
        Tue, 16 Jan 2024 20:38:51 -0800 (PST)
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com. [209.85.210.44])
        by smtp.gmail.com with ESMTPSA id a22-20020a4ab796000000b0059610f4de98sm2238994oop.41.2024.01.16.20.38.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jan 2024 20:38:51 -0800 (PST)
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-6dddc655a60so5256812a34.2;
        Tue, 16 Jan 2024 20:38:51 -0800 (PST)
X-Received: by 2002:a05:6359:29c7:b0:175:9fdb:8345 with SMTP id
 qf7-20020a05635929c700b001759fdb8345mr5167276rwb.10.1705466330959; Tue, 16
 Jan 2024 20:38:50 -0800 (PST)
MIME-Version: 1.0
References: <20240116204103.29318-1-twoerner@gmail.com> <20240116204103.29318-2-twoerner@gmail.com>
In-Reply-To: <20240116204103.29318-2-twoerner@gmail.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Wed, 17 Jan 2024 12:38:39 +0800
X-Gmail-Original-Message-ID: <CAGb2v67KfNR_U_Qz85aqY1D0DKE9mo-X_L8MGvT7cdcZGUHVUg@mail.gmail.com>
Message-ID: <CAGb2v67KfNR_U_Qz85aqY1D0DKE9mo-X_L8MGvT7cdcZGUHVUg@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: rock-pi-e: fix location of snps properties
To: Trevor Woerner <twoerner@gmail.com>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_203906_723002_4CB785AC 
X-CRM114-Status: GOOD (  16.07  )
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
Reply-To: wens@csie.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gV2VkLCBKYW4gMTcsIDIwMjQgYXQgNDo0MeKAr0FNIFRyZXZvciBXb2VybmVyIDx0d29lcm5l
ckBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gQSBudW1iZXIgb2Ygc25wcyAoU3lub3BzeXMpIHByb3Bl
cnRpZXMgYXJlIG5vdCBpbiB0aGVpciBjb3JyZWN0IGxvY2F0aW9uLgoKTm9wZS4gSWYgeW91IHJl
YWQgdGhlIHNucHMsZHdtYWMueWFtbCBiaW5kaW5nIGZpbGUsIHlvdSdsbCBzZWUgdGhhdCB0aGVz
ZQpwcm9wZXJ0aWVzIGhhdmUgYmVlbiBkZXByZWNhdGVkLiBUaGV5IGFyZSBwcm9wZXJ0aWVzIHBl
cnRhaW5pbmcgdG8gdGhlIFBIWQphbmQgc2hvdWxkIGJlIGRlc2NyaWJlZCB1bmRlciB0aGUgUEhZ
IG5vZGUuIFN1cHBvcnQgZm9yIHJlc2V0IEdQSU9zIG9uIFBIWQpkZXZpY2VzIGluIHBoeWxpYiBo
YXMgYmVlbiB0aGVyZSBzaW5jZSB2NC4xNi4gVGhlIHNucHMgcHJlZml4ZWQgcHJvcGVydGllcwp3
ZXJlIGRlcHJlY2F0ZWQgaW4gdjUuMy4KCkNoZW5ZdQoKPiBGaXhlczogYjkxOGU4MWYyMTQ1ICgi
YXJtNjQ6IGR0czogcm9ja2NoaXA6IHJrMzMyODogQWRkIFJhZHhhIFJPQ0sgUGkgRSIpCj4gU2ln
bmVkLW9mZi1ieTogVHJldm9yIFdvZXJuZXIgPHR3b2VybmVyQGdtYWlsLmNvbT4KPiAtLS0KPiAg
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjgtcm9jay1waS1lLmR0cyB8IDEwICsr
KysrLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMo
LSkKPgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1y
b2NrLXBpLWUuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjgtcm9jay1w
aS1lLmR0cwo+IGluZGV4IDA5NmNmYTE5MDM2ZS4uMDczOWI4ZmVjODZlIDEwMDY0NAo+IC0tLSBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LXJvY2stcGktZS5kdHMKPiArKysg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1yb2NrLXBpLWUuZHRzCj4gQEAg
LTE1MCw4ICsxNTAsMTEgQEAgJmdtYWMyaW8gewo+ICAgICAgICAgcGh5LW1vZGUgPSAicmdtaWki
Owo+ICAgICAgICAgcGh5LXN1cHBseSA9IDwmdmNjX2lvPjsKPiAgICAgICAgIHBpbmN0cmwtbmFt
ZXMgPSAiZGVmYXVsdCI7Cj4gLSAgICAgICBwaW5jdHJsLTAgPSA8JnJnbWlpbTFfcGlucz47Cj4g
KyAgICAgICBwaW5jdHJsLTAgPSA8JnJnbWlpbTFfcGlucz4sIDwmZXRoX3BoeV9yZXNldF9waW4+
Owo+ICAgICAgICAgc25wcyxhYWw7Cj4gKyAgICAgICBzbnBzLHJlc2V0LWdwaW8gPSA8JmdwaW8x
IFJLX1BDMiBHUElPX0FDVElWRV9MT1c+Owo+ICsgICAgICAgc25wcyxyZXNldC1hY3RpdmUtbG93
Owo+ICsgICAgICAgc25wcyxyZXNldC1kZWxheXMtdXMgPSA8MCAxMDAwMCA1MDAwMD47Cj4gICAg
ICAgICBzbnBzLHJ4cGJsID0gPDB4ND47Cj4gICAgICAgICBzbnBzLHR4cGJsID0gPDB4ND47Cj4g
ICAgICAgICB0eF9kZWxheSA9IDwweDI2PjsKPiBAQCAtMTY1LDEzICsxNjgsMTAgQEAgbWRpbyB7
Cj4KPiAgICAgICAgICAgICAgICAgcnRsODIxMTogZXRoZXJuZXQtcGh5QDEgewo+ICAgICAgICAg
ICAgICAgICAgICAgICAgIHJlZyA9IDwxPjsKPiAtICAgICAgICAgICAgICAgICAgICAgICBwaW5j
dHJsLTAgPSA8JmV0aF9waHlfaW50X3Bpbj4sIDwmZXRoX3BoeV9yZXNldF9waW4+Owo+ICsgICAg
ICAgICAgICAgICAgICAgICAgIHBpbmN0cmwtMCA9IDwmZXRoX3BoeV9pbnRfcGluPjsKPiAgICAg
ICAgICAgICAgICAgICAgICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ICAgICAgICAg
ICAgICAgICAgICAgICAgIGludGVycnVwdC1wYXJlbnQgPSA8JmdwaW8xPjsKPiAgICAgICAgICAg
ICAgICAgICAgICAgICBpbnRlcnJ1cHRzID0gPDI0IElSUV9UWVBFX0xFVkVMX0xPVz47Cj4gLSAg
ICAgICAgICAgICAgICAgICAgICAgcmVzZXQtYXNzZXJ0LXVzID0gPDEwMDAwPjsKPiAtICAgICAg
ICAgICAgICAgICAgICAgICByZXNldC1kZWFzc2VydC11cyA9IDw1MDAwMD47Cj4gLSAgICAgICAg
ICAgICAgICAgICAgICAgcmVzZXQtZ3Bpb3MgPSA8JmdwaW8xIFJLX1BDMiBHUElPX0FDVElWRV9M
T1c+Owo+ICAgICAgICAgICAgICAgICB9Owo+ICAgICAgICAgfTsKPiAgfTsKPiAtLQo+IDIuNDMu
MC43Ni5nMWE4N2M4NDJlY2UzCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
