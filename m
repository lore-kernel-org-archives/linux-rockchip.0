Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F59FCCA471
	for <linux-rockchip@archiver.kernel.org>; Sat,  4 Oct 2025 02:48:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r7wFPb46cql5E1Pkp6bh/G6He5oMKIVIeljGd/tpATU=; b=xqFtnGnE2Z1o1l
	tLy+RcGffWk8t33nHIqTAq3TqI0dyrDtjwbkghNhD70Li3RmoX8QArTF8CoIgEq6x0ARkY73O9dQ4
	nE9bCnJ7cW2BHABKeWjtBW0Jh/K2w21/MlMAH1U3h63S10+XdE9WLOwMzmHemUF0Czq2U7TmUfGpq
	xnhY9x7CRWiEkIrTXfcu+KY/7vF15nMKJr/VJIfJi41b2JpvVkFbAnw5UmjJuf1UaP07pSqtmqOi6
	DkJVuXrIBAe4+vfG/yqzMIPpIBxukS3M/Hu1pBgfqqObtWLFK3odUkCGvooNyEU4dAHEthyndykhP
	ZNZEwzHGvy8ThDe5eydg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4sJQ-0000000DOrq-3f62;
	Sat, 04 Oct 2025 02:47:56 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4sJO-0000000DOr9-0jHH
	for linux-rockchip@lists.infradead.org;
	Sat, 04 Oct 2025 02:47:55 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-42568669606so986193f8f.2
        for <linux-rockchip@lists.infradead.org>; Fri, 03 Oct 2025 19:47:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759546072; x=1760150872; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MtAjdiNI9QJq6177oR8Gwnx6QyorD8Daikje+IvnbRU=;
        b=WwGczu9lda5+Z/PRc01nKzITvU9FzjUIz+4/UzqZY9C6DnZcXecySp6ViT2v+NN6MA
         1hPHMEP5aMiYegSoi8vUT88qIhmvJ5jFAvqgmGy5w6eIRbrHa0iloLzbfFkcnFnk0l4g
         7rKF4l6bUtVpLDb86q0iunAHrJET7UCMw8PaEeCUBKeSRXC40+EbkEXcciV8jtgxOrCu
         nn7cO0/7P6OF0bBtV0SmshfO7UlxmOU7nSQSnitSrY4jxkQlVUeJKNB83gikQNeb4sJW
         UWMPQl+4zUjewMwmLISKDXx57YTf2cNxbWsTC5iEr7Fwt6PbpHAfCNBoIpO5Onv6g47r
         FIvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759546072; x=1760150872;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MtAjdiNI9QJq6177oR8Gwnx6QyorD8Daikje+IvnbRU=;
        b=me9WsDF4+IYFCLxNgdirk8PZs0X52Lvsi2zliGPSoqbnxrso/RsA0v+B0wxQEOjACq
         DmgcYUcz/a3qyLUaR6WrPU1R4/akqm5UgFDbM7v5jgbftjIuSOwcGNkQcppjclZPHxAW
         17rCxVvQNTVEjXK3p6eDJzLDc5urpAkWKPpOOGAc8vIKgxM7zOF0+ABoZv3+tKYXkIKe
         UTWH5WMs9H4Jods6o2RHD8za4mO9CBeutCO8W2sevbuqzPtprzphMzY5VranWh+Snq/+
         CIjES6i0S1++Utdl+JTDMqXXPBH6Sq6WFHMrx/NTP8Dk9V8NUGXuyUkcGFKrhmJx6meX
         ovwQ==
X-Forwarded-Encrypted: i=1; AJvYcCWSPySHC9Bq64m1XvqIWjyy761VSOV84f5WE7zlqjGOEMZzqEWRWALr3yP+6juJ9ZjM/xHcEnjG7NiGpa0aMw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwX406QpfwEQGZz+J56aOyxfZQgsCxK+0KT8kcKkS6ZB1fo0XI7
	wkZe/NdLe4DKLM1cxX1t3sUIFNJBxEivPsF/2U5CXb+ZBcoEYvqV+++BxJ7XexCkIW3FZNVGvkc
	BZEnUwDfj1OXswDP8nnP072KRjRotUho=
X-Gm-Gg: ASbGncuRSLodP95RiUl1WpAyP5w6Nl2AdCVQYIuwvdbpY5AcLEUnbiTrfp+EdYNVp/B
	qVm/6WGzpULIEJ/OA4Cg7rlQdXcmze+N+Luoxb0lStgig8T+AnQC1VAn51mjtdf2jsMqGKPmVUh
	z6vOUg8FqhcumoW9sETNlpE9lDCMrKJIr6BpE9Xkoe6bVBPEu2G87N3vwcK2ncq+yB+YziIGobD
	VhGMkd8mvFWlRdlKgox3l48E2y4t/JQvXLR9m7PJfn7KEwACEuXfRXKuYhFCPA=
X-Google-Smtp-Source: AGHT+IFP0EzTt+6wIVfHmxt/KikNMHr5T66NnDvbjm6SJmZ/lIChMWvnF31X9JuWRj+NipMrPRhiPCMm5xgtZpXESC4=
X-Received: by 2002:a05:6000:2311:b0:424:2275:63cd with SMTP id
 ffacd0b85a97d-425671c0e00mr3412456f8f.48.1759546071609; Fri, 03 Oct 2025
 19:47:51 -0700 (PDT)
MIME-Version: 1.0
References: <20251002034708.19248-1-laurent.pinchart@ideasonboard.com>
 <20251002034708.19248-4-laurent.pinchart@ideasonboard.com>
 <CALWfF7Lhz2brif4xepWZ71mRqMmXKzxqd=0_hO_b6aF6_GkffQ@mail.gmail.com> <20251003023955.GA1492@pendragon.ideasonboard.com>
In-Reply-To: <20251003023955.GA1492@pendragon.ideasonboard.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Fri, 3 Oct 2025 21:47:40 -0500
X-Gm-Features: AS18NWBrForcP1ZJaY1o0FouRlxOZ1iOrUYR8RE7nxfTY4DfB1KYllAo5n58YSg
Message-ID: <CALWfF7K19Pa5889Kp_rDLD8nDxMEhqMb6er1tKYkTV906fRWXw@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add rk3588s-orangepi-cm5-base
 device tree
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251003_194754_243125_1CCFB585 
X-CRM114-Status: GOOD (  27.33  )
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
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Cenk Uluisik <cenk.uluisik@googlemail.com>, Muhammed Efe Cetin <efectn@6tel.net>, Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, Kever Yang <kever.yang@rock-chips.com>, Maxime Ripard <mripard@kernel.org>, Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org, Algea Cao <algea.cao@rock-chips.com>, Ondrej Jirman <megi@xff.cz>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVGh1LCBPY3QgMiwgMjAyNSBhdCA5OjQw4oCvUE0gTGF1cmVudCBQaW5jaGFydAo8bGF1cmVu
dC5waW5jaGFydEBpZGVhc29uYm9hcmQuY29tPiB3cm90ZToKPgo+IEhpIEppbW15LAo+Cj4gT24g
VGh1LCBPY3QgMDIsIDIwMjUgYXQgMDc6MDE6NTNQTSAtMDUwMCwgSmltbXkgSG9uIHdyb3RlOgo+
ID4gQSBmZXcgbml0cGlja3MgYmVsb3cKPiA+Cj4gPiBbIHNuaXAgXQo+ID4gPiArCj4gPiA+ICsj
aW5jbHVkZSAicmszNTg4cy1vcmFuZ2VwaS1jbTUuZHRzaSIKPiA+ID4gKwo+ID4gPiArLyB7Cj4g
PiA+ICsgICAgICAgbW9kZWwgPSAiWHVubG9uZyBPcmFuZ2UgUGkgQ001IEJhc2UiOwo+ID4gPiAr
ICAgICAgIGNvbXBhdGlibGUgPSAieHVubG9uZyxvcmFuZ2VwaS1jbTUtYmFzZSIsICJ4dW5sb25n
LG9yYW5nZXBpLWNtNSIsICJyb2NrY2hpcCxyazM1ODhzIjsKPiA+ID4gKwo+ID4gPiArICAgICAg
IGFsaWFzZXMgewo+ID4gPiArICAgICAgICAgICAgICAgZXRoZXJuZXQwID0gJmdtYWMxOwo+ID4g
PiArICAgICAgICAgICAgICAgbW1jMCA9ICZzZGhjaTsKPiA+Cj4gPiBTaW5jZSBzZGhjaSBpcyBl
bmFibGVkIGluIHRoZSBTb00uZHRzaSwgdGhpcyBhbGlhcyBzaG91bGQgcHJvYmFibHkgZ28KPiA+
IHRoZXJlIGluc3RlYWQuCj4KPiBHb29kIHBvaW50LCBJJ2xsIGRvIHRoYXQuCj4KPiA+ID4gKyAg
ICAgICAgICAgICAgIG1tYzEgPSAmc2RtbWM7Cj4gPiA+ICsgICAgICAgfTsKPiA+ID4gKwo+ID4K
PiA+IFsgc25pcCBdCj4gPgo+ID4gPiArCj4gPiA+ICsgICAgICAgdmJ1c181djA6IHZidXMtNXYw
IHsKPiA+ID4gKyAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsK
PiA+ID4gKyAgICAgICAgICAgICAgIHJlZ3VsYXRvci1uYW1lID0gInZidXNfNXYwIjsKPiA+ID4g
KyAgICAgICAgICAgICAgIHJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDUwMDAwMDA+Owo+ID4g
PiArICAgICAgICAgICAgICAgcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8NTAwMDAwMD47Cj4g
PiA+ICsgICAgICAgICAgICAgICBlbmFibGUtYWN0aXZlLWhpZ2g7Cj4gPiA+ICsgICAgICAgICAg
ICAgICBncGlvID0gPCZncGlvMCBSS19QRDMgR1BJT19BQ1RJVkVfSElHSD47Cj4gPiA+ICsgICAg
ICAgICAgICAgICB2aW4tc3VwcGx5ID0gPCZ2Y2M1djBfc3lzPjsKPiA+ID4gKyAgICAgICAgICAg
ICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gPiA+ICsgICAgICAgICAgICAgICBwaW5j
dHJsLTAgPSA8JnZidXNfNXYwX2VuX3Bpbj47Cj4gPgo+ID4gVGhlIHByb3BlcnR5IG5hbWVzIGlu
IHRoZXNlIHJlZ3VsYXRvcnMgYXJlIG5vdCBhcyBvcmdhbml6ZWQgYXMgdGhlCj4gPiByZWd1bGF0
b3JzIGZvciB0aGUgQ1BVL05QVS4KPgo+IFdoaWNoIHByb3BlcnRpZXMgaW4gcGFydGljdWxhciA/
IFRoZXJlIGFyZSBtb3JlIHByb3BlcnRpZXMgaW4gdGhlc2UKPiByZWd1bGF0b3JzLCBidXQgb3Ro
ZXJ3aXNlIHRoZSBvcmRlciBzZWVtIHRvIG1hdGNoLgo+Cj4gPiA+ICsgICAgICAgfTsKPiA+ID4g
Kwo+ID4gPiArICAgICAgIHZjY18zdjM6IHJlZ3VsYXRvci12Y2MtM3YzIHsKPiA+ID4gKyAgICAg
ICAgICAgICAgIGNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPiA+ID4gKyAgICAgICAg
ICAgICAgIHJlZ3VsYXRvci1uYW1lID0gInZjY18zdjMiOwo+ID4gPiArICAgICAgICAgICAgICAg
cmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MzMwMDAwMD47Cj4gPiA+ICsgICAgICAgICAgICAg
ICByZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwzMzAwMDAwPjsKPiA+ID4gKyAgICAgICAgICAg
ICAgIHN0YXJ0dXAtZGVsYXktdXMgPSA8NTAwMDA+Owo+ID4gPiArICAgICAgICAgICAgICAgZW5h
YmxlLWFjdGl2ZS1oaWdoOwo+ID4gPiArICAgICAgICAgICAgICAgZ3BpbyA9IDwmZ3BpbzQgUktf
UEEzIEdQSU9fQUNUSVZFX0hJR0g+Owo+ID4gPiArICAgICAgICAgICAgICAgdmluLXN1cHBseSA9
IDwmdmNjNXYwX3N5cz47Cj4gPiA+ICsgICAgICAgICAgICAgICBwaW5jdHJsLW5hbWVzID0gImRl
ZmF1bHQiOwo+ID4gPiArICAgICAgICAgICAgICAgcGluY3RybC0wID0gPCZ2Y2NfM3YzX2VuX3Bp
bj47Cj4gPiA+ICsgICAgICAgfTsKVGhlIG1ham9yaXR5IG9mIHRoZSBwcm9wZXJ0aWVzIHNob3Vs
ZCBiZSBpbiBhbHBoYWJldGljYWwgb3JkZXIuIFNvIHRoZQpzdGFydHVwLWRlbGF5LXVzIGFuZCB2
aW4tc3VwcGx5IGFyZSBvdXQgb2YgcGxhY2UuCgo+ID4gPiArCj4gPiA+ICsgICAgICAgdmNjNXYw
X3N5czogcmVndWxhdG9yLXZjYy01djAgewo+ID4gPiArICAgICAgICAgICAgICAgY29tcGF0aWJs
ZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+ID4gPiArICAgICAgICAgICAgICAgcmVndWxhdG9yLW5h
bWUgPSAidmNjNXYwX3N5cyI7Cj4gPiA+ICsgICAgICAgICAgICAgICByZWd1bGF0b3ItYWx3YXlz
LW9uOwo+ID4gPiArICAgICAgICAgICAgICAgcmVndWxhdG9yLWJvb3Qtb247Cj4gPiA+ICsgICAg
ICAgICAgICAgICByZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw1MDAwMDAwPjsKPiA+ID4gKyAg
ICAgICAgICAgICAgIHJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDUwMDAwMDA+Owo+ID4gPiAr
ICAgICAgIH07Cj4gPiA+ICt9Owo+ID4KPiA+IFsgc25pcCBdCj4gPgo+ID4gPiArCj4gPiA+ICsm
Z21hYzEgewo+ID4gPiArICAgICAgIGNsb2NrX2luX291dCA9ICJvdXRwdXQiOwo+ID4gPiArICAg
ICAgIHBoeS1oYW5kbGUgPSA8JnJnbWlpX3BoeT47Cj4gPiA+ICsgICAgICAgcGh5LW1vZGUgPSAi
cmdtaWktaWQiOwo+ID4gPiArICAgICAgIHBoeS1zdXBwbHkgPSA8JnZjY18zdjM+Owo+ID4gPiAr
ICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gPiA+ICsgICAgICAgcGluY3RybC0w
ID0gPCZnbWFjMV9taWltCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICZnbWFjMV9yeF9idXMy
Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICZnbWFjMV90eF9idXMyCj4gPiA+ICsgICAgICAg
ICAgICAgICAgICAgICZnbWFjMV9yZ21paV9jbGsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAg
JmdtYWMxX3JnbWlpX2J1cz47Cj4gPiA+ICsgICAgICAgdHhfZGVsYXkgPSA8MHg0Mj47Cj4gPgo+
ID4gV2hlbiB1c2luZyAicmdtaWktaWQiLCB0eF9kZWxheSB3aWxsIGJlIGlnbm9yZWQuIERvZXMg
dGhlIGV0aGVybmV0Cj4gPiB3b3JrIHdpdGhvdXQgdGhpcyBwcm9wZXJ0eT8KPgo+IEkgaGF2ZSB0
byBjb25mZXNzIHRoaXMgd2FzIGJsaW5kbHkgY29waWVkIGZyb20gdGhlIEJTUCA6LS8gSSdsbCBk
cm9wIHRoZQo+IHByb3BlcnR5IGFuZCB0ZXN0Lgo+Cj4gPiBTZWUgdGhlIGNvbW1lbnQgYnkgSm9u
YXMgaW4gYW5vdGhlciByZXZpZXcuCj4gPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1y
b2NrY2hpcC9kYTc1Mjc5MC1kYTE3LTRkMjYtYjliMi04MjQwYjM4YjMyNzZAa3dpYm9vLnNlLwo+
ID4KPiA+ID4gKyAgICAgICBzdGF0dXMgPSAib2theSI7Cj4gPiA+ICt9Owo+ID4gPiArCj4gPiA+
ICsmZ3B1IHsKPiA+ID4gKyAgICAgICBtYWxpLXN1cHBseSA9IDwmdmRkX2dwdV9zMD47Cj4gPiA+
ICsgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ID4gPiArfTsKPiA+Cj4gPiBUaGlzIGlzIGEgZmVh
dHVyZSBpbiB0aGUgU29DIGl0c2VsZiwgc28gaXQncyBub3QgYm9hcmQgc3BlY2lmaWMgYW5kCj4g
PiBjYW4gYmUgcHV0IGludG8gdGhlIFNvTS5kdHNpLgo+Cj4gSSdtIGEgYml0IGluIHR3byBtaW5k
cyBoZXJlLiBJZiBhIGNhcnJpZXIgYm9hcmQgZG9lc24ndCBoYXZlIGEgZGlzcGxheQo+IG91dHB1
dCwgdGhlIEdQVSBpc24ndCB2ZXJ5IHVzZWZ1bCAoYWx0aG91Z2ggaW4gdGhlb3J5IHRoZSBHUFUg
Y2FuIGJlCj4gdXNlZCB3aXRob3V0IGEgZGlzcGxheSkuIFRoYXQncyB3aHkgSSBkZWNpZGVkIHRv
IGVuYWJsZSBpdCBpbiB0aGUKPiBjYXJyaWVyIGJvYXJkLiBJIHN1cHBvc2UgaXQgZG9lc24ndCBo
dXJ0IHRvIGVuYWJsZSBpdCBpbiB0aGUgU29NLCB3b3JzdAo+IGNhc2UgaXQgd29uJ3QgYmUgdXNl
ZCBhbmQgc28gd29uJ3QgYmUgcG93ZXJlZCB1cC4gSSdsbCBtb3ZlIGl0IHRvIHRoZQo+IFNvTS4K
VGhlIG5pY2UgdGhpbmcgYWJvdXQgdGhlIEc2MTAgR1BVIGlzIHRoYXQgT3BlbkNMIHN1cHBvcnQg
dmlhIE1lc2EncwpSdXN0SUNMIHdhcyBhZGRlZCBlYXJsaWVyIHRoaXMgeWVhci4gU28gZXZlbiBp
biBhIGhlYWRsZXNzIGNsdXN0ZXIsCnRoZSBHUFUgY2FuIHN0aWxsIGJlIHVzZWZ1bC4KCj4KPiA+
IFsgc25pcCBdCj4gPgo+ID4gPiArCj4gPiA+ICsmcGRfZ3B1IHsKPiA+ID4gKyAgICAgICBkb21h
aW4tc3VwcGx5ID0gPCZ2ZGRfZ3B1X3MwPjsKPiA+ID4gK307Cj4gPgo+ID4gU2FtZSBjb21tZW50
IHJlZ2FyZGluZyBtb3ZpbmcgdG8gdGhlIFNvTS5kdHNpCj4KPiBPSy4KPgo+IC0tCj4gUmVnYXJk
cywKPgo+IExhdXJlbnQgUGluY2hhcnQKCkppbW15CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
