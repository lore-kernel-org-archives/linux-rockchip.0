Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B944E7717F
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Dec 2024 13:09:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l1DbXbPba876QfJOR2sefq0coU5kA+mudLhkq311FpU=; b=wrzqxrlzqIipk+
	Q30C8qaPwSZmh8V0ztzt6N1Q+bgTIlUjqra3duZ2BA5ZRoJBHuH6ut7c4RxmxoAupYqb4eDQ9HbpJ
	QtiTHOsFcb5/1t1SSOHyKZUjd/NAR+LWTzh5ZpyDP//aYjVlpiBiSHfBDIw7DLjX/wUzQ1Kb0fiWP
	f1hTggIED518PRjf1QHGLJo9E7Hui5hVm1uauGx7g7oUDvK34GUUCGjbnp/pXY9+t+IIEX4022CD1
	rpuTPu9OO6tSD9gwyDD0K12KYFiHLv7UcptxX2+uDcUV+LaTnOl1gXeZAL+IzDUkIt3b7Y6R8AFWz
	CZqgPukEflJ6bdS2dcLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKzz9-0000000BXN5-1AKy;
	Tue, 10 Dec 2024 13:09:07 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKzro-0000000BVqw-32Yj;
	Tue, 10 Dec 2024 13:01:33 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-5d3f28881d6so3074808a12.1;
        Tue, 10 Dec 2024 05:01:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733835690; x=1734440490; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bHLLYUb5aKmiYBywLpOydX2GHG7acjnCRadd5iwWBCE=;
        b=Fl+1Qfjh0JVlUhoLD6Won7IgkcOtH1CX3Igxr0ogju3R/uwHe4gcHXbs2RXjINxoCi
         JkYsf/TUz0VvDHZfvyXB+5QK9SND6hj3G8jpolOGEi05Cp/tfKFV9bhZyYiBwUUBdThb
         NXPPWRhuH98rEGg1Snd6TYqZBiSX7sCEDrNP2lPsSnObUnlgL9omx0J7FW7RVmKO3bW8
         tk3BiE1nQwnZ1iQQCI7mbd+E9qigd/IGEv7Om7bL4a1vrsUfK28LYOXrkoG+xhxJuxQV
         9N86NW9DDmhbYLkE83DpzmvF/kIOtR5U3ocT53q42xe0CrONXjq021t5HA+DVNX6p0eV
         WWNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733835690; x=1734440490;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bHLLYUb5aKmiYBywLpOydX2GHG7acjnCRadd5iwWBCE=;
        b=CHesIzc9iIS5JK4qAR7rJirr0XCkHWQX5MUkuyUxgnJeYcRcfdvs1s36bM9K+4hG/K
         E4QFzsmIkqScNlfd7ALfKFY3fZbuNlICixZfK78394Q4NUArGjVC5tvsUjeTQ8r4kTSy
         /Yw4w7sgQHUGkQEIydnySKd5lCli3R44bykkEnLLgEzxuByIZoKa99xpSF+HJw6K7oue
         JfZI4sTZ+8eN2vp0HizCVO4f7V9cTpYKJtMHIRs23lhDHsS9z3acRI4JXUX/3dOfwhRD
         +8G6V3HhD+2eaP5XkshO99a0OQksgGjdOuhGrJ/b5Wzc3TnlwONcjI0IzJUrPa87QbUI
         O15w==
X-Forwarded-Encrypted: i=1; AJvYcCU5A8lC0qsngu3IlzUvWtF7iMR87xdNQLlvqfr5X5Vm9dWcVG+gJgcQbIuxbXpXKkUOwBFo8bLBOPGb95/HPkwV@lists.infradead.org, AJvYcCWVdUCygmOaWfLEclVQr/P8nXgeZzeitvrgL9Za73ttFi0EwSO0U4IXlg0FqctwHT7NBjE70FfuQ91AhHeHcXA=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywxp6VdX6v1GZ+Z5mTIDPOpp1sB1eyUE1ly/MxrncrPc9Deui+T
	PnLA+dHh6eo37yolXCX20NCh1dP3QBOC4K11SsGxZh6VQykyQwBzIOytuY0Sd2tRg6gXqxzlMgF
	yw2h/1h4ptjLbEPUNtAlNXZnXxIY=
X-Gm-Gg: ASbGncv34B/ZmpOMSWm8Osnd8HdU+zP95/Tj3IO+iu3mQSNWLeb/sXj6pDzL028Glc5
	QIz3xf5lPoqCz+Yx3uBTBBmJaIKee+3FP+QhMuU5CjFCypyxUYRlDgafaiWQ=
X-Google-Smtp-Source: AGHT+IE+3dBsg9ycaXlihQEkFOTl6FWUvTA1IQqCmYlgGVvNU9+J2ICqAS0Ely7TDkGOnJtbTgHRvmD88oh1lqiohSs=
X-Received: by 2002:a05:6402:234f:b0:5d3:ba42:e9fa with SMTP id
 4fb4d7f45d1cf-5d41853edb2mr10277905a12.16.1733835688916; Tue, 10 Dec 2024
 05:01:28 -0800 (PST)
MIME-Version: 1.0
References: <20241210013010.81257-1-pgwipeout@gmail.com> <20241210013010.81257-6-pgwipeout@gmail.com>
 <14451790.lVVuGzaMjS@diego>
In-Reply-To: <14451790.lVVuGzaMjS@diego>
From: Peter Geis <pgwipeout@gmail.com>
Date: Tue, 10 Dec 2024 08:01:19 -0500
Message-ID: <CAMdYzYquzAnwbUidBjif3OXOcLaGD+3GdB79Op94BCno2ZtBAQ@mail.gmail.com>
Subject: Re: [PATCH 5/6] arm64: dts: rockchip: correct rk3328-roc regulator map
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Conor Dooley <conor+dt@kernel.org>, Diederik de Haas <didi.debian@cknow.org>, 
	Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Levin Du <djw@t-chip.com.cn>, Rob Herring <robh@kernel.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_050132_759787_59241223 
X-CRM114-Status: GOOD (  19.52  )
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

T24gVHVlLCBEZWMgMTAsIDIwMjQgYXQgNTo1NOKAr0FNIEhlaWtvIFN0w7xibmVyIDxoZWlrb0Bz
bnRlY2guZGU+IHdyb3RlOgo+Cj4gQW0gRGllbnN0YWcsIDEwLiBEZXplbWJlciAyMDI0LCAwMjoz
MDowOSBDRVQgc2NocmllYiBQZXRlciBHZWlzOgo+ID4gVGhlIHJrMzMyOC1yb2MtY2MgaW5wdXQg
cG93ZXIgaXMgc291cmNlZCBmcm9tIGEgbWljcm8tdXNiIHBvcnQsIHdoaWxlCj4gPiB0aGUgcmsz
MzI4LXJvYy1wYyBpbnB1dCBwb3dlciBpcyBzb3VyY2VkIGZyb20gYSB1c2ItYyBwb3J0LiBCb3Ro
IGlucHV0cwo+ID4gYXJlIDV2ZGMgb25seS4gUmVtb3ZlIHRoZSAxMnYgaW5wdXQgZnJvbSB0aGUg
ZGV2aWNlIHRyZWUuCj4KPiBmdWxsIHN0b3AuIFBsZWFzZSBkb24ndCBkbyAiV2hpbGUgd2UgYXJl
IGF0IGl0IiBjb21taXRzLgo+Cj4gPiBXaGlsZSB3ZSBhcmUgYXQgaXQsIGFkZCBtaXNzaW5nIHZv
bHRhZ2VzIGFuZCBzdXBwbHkgdG8gdmNjX3BoeSwgbWlzc2luZwo+ID4gdm9sdGFnZXMgdG8gdmNj
X2hvc3QxXzV2LCBhbmQgc3RhbmRhcmRpemUgdGhlIG9yZGVyIG9mIHJlZ3VsYXRvcgo+ID4gcHJv
cGVydGllcyBhbW9uZyB0aGUgZml4ZWQgcmVndWxhdG9ycy4KPgo+IFRoaXMgc2Vjb25kIHBhcnQg
d2FudHMgdG8gYmUgaXRzIG93biBjb21taXQgOi0pIC4KClRoYW5rIHlvdSwgeW91J3JlIHJpZ2h0
IEkgd2FzIHRvcm4gYmV0d2VlbiBkb2luZyBub3QgZW5vdWdoIGFuZCBkb2luZwp0b28gbXVjaCBh
bmQgZW5kZWQgdXAgZG9pbmcgYm90aC4gVGhpbmtpbmcgYWJvdXQgaXQgbm93IHRoaXMgc2hvdWxk
IGJlCmF0IGxlYXN0IHRocmVlIHBhdGNoZXM6Ci0gUG93ZXIgaW5wdXQKLSBEcm9wIHRoZSBwaHkg
cmVndWxhdG9yIChpdCdzIGRpcmVjdGx5IHRpZWQgdG8gdmNjX2lvLCBub3QgYSBzZXBhcmF0ZSBk
ZXZpY2UpCi0gQ29zbWV0aWMgY2hhbmdlcy4KClRoYW5rcyBhZ2FpbiEKUGV0ZXIKCj4KPiBUaGFu
a3MKPiBIZWlrbwo+Cj4gPiBGaXhlczogMjE3MWY0ZmRhYzA2ICgiYXJtNjQ6IGR0czogcm9ja2No
aXA6IGFkZCByb2MtcmszMzI4LWNjIGJvYXJkIikKPiA+IFNpZ25lZC1vZmYtYnk6IFBldGVyIEdl
aXMgPHBnd2lwZW91dEBnbWFpbC5jb20+Cj4gPiAtLS0KPiA+Cj4gPiAgYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazMzMjgtcm9jLmR0c2kgfCAyMyArKysrKysrKysrKysrLS0tLS0tLQo+
ID4gIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQo+ID4K
PiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1yb2Mu
ZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LXJvYy5kdHNpCj4gPiBp
bmRleCBmNzgyYzgyMjBkZDMuLjY5ODQzODdmZjhiMyAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LXJvYy5kdHNpCj4gPiArKysgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1yb2MuZHRzaQo+ID4gQEAgLTI0LDIyICsyNCwyMyBA
QCBnbWFjX2Nsa2luOiBleHRlcm5hbC1nbWFjLWNsb2NrIHsKPiA+ICAgICAgICAgICAgICAgI2Ns
b2NrLWNlbGxzID0gPDA+Owo+ID4gICAgICAgfTsKPiA+Cj4gPiAtICAgICBkY18xMnY6IHJlZ3Vs
YXRvci1kYy0xMnYgewo+ID4gKyAgICAgLyogZmVkIGZyb20gcGFzc2l2ZSB1c2IgaW5wdXQgY29u
bmVjdG9yICovCj4gPiArICAgICBkY181djogcmVndWxhdG9yLWRjLTV2IHsKPiA+ICAgICAgICAg
ICAgICAgY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+ID4gLSAgICAgICAgICAgICBy
ZWd1bGF0b3ItbmFtZSA9ICJkY18xMnYiOwo+ID4gKyAgICAgICAgICAgICByZWd1bGF0b3ItbmFt
ZSA9ICJkY181diI7Cj4gPiAgICAgICAgICAgICAgIHJlZ3VsYXRvci1hbHdheXMtb247Cj4gPiAg
ICAgICAgICAgICAgIHJlZ3VsYXRvci1ib290LW9uOwo+ID4gLSAgICAgICAgICAgICByZWd1bGF0
b3ItbWluLW1pY3Jvdm9sdCA9IDwxMjAwMDAwMD47Cj4gPiAtICAgICAgICAgICAgIHJlZ3VsYXRv
ci1tYXgtbWljcm92b2x0ID0gPDEyMDAwMDAwPjsKPiA+ICsgICAgICAgICAgICAgcmVndWxhdG9y
LW1pbi1taWNyb3ZvbHQgPSA8NTAwMDAwMD47Cj4gPiArICAgICAgICAgICAgIHJlZ3VsYXRvci1t
YXgtbWljcm92b2x0ID0gPDUwMDAwMDA+Owo+ID4gICAgICAgfTsKPiA+Cj4gPiAgICAgICB2Y2Nf
c2Q6IHJlZ3VsYXRvci1zZG1tYyB7Cj4gPiAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAicmVn
dWxhdG9yLWZpeGVkIjsKPiA+ICsgICAgICAgICAgICAgcmVndWxhdG9yLW5hbWUgPSAidmNjX3Nk
IjsKPiA+ICAgICAgICAgICAgICAgZ3BpbyA9IDwmZ3BpbzAgUktfUEQ2IEdQSU9fQUNUSVZFX0xP
Vz47Cj4gPiAgICAgICAgICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gPiAgICAg
ICAgICAgICAgIHBpbmN0cmwtMCA9IDwmc2RtbWMwbTFfcGluPjsKPiA+ICAgICAgICAgICAgICAg
cmVndWxhdG9yLWJvb3Qtb247Cj4gPiAtICAgICAgICAgICAgIHJlZ3VsYXRvci1uYW1lID0gInZj
Y19zZCI7Cj4gPiAgICAgICAgICAgICAgIHJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDMzMDAw
MDA+Owo+ID4gICAgICAgICAgICAgICByZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwzMzAwMDAw
PjsKPiA+ICAgICAgICAgICAgICAgdmluLXN1cHBseSA9IDwmdmNjX2lvPjsKPiA+IEBAIC01MCwy
MiArNTEsMjUgQEAgdmNjX3NkaW86IHJlZ3VsYXRvci1zZG1tY2lvIHsKPiA+ICAgICAgICAgICAg
ICAgc3RhdGVzID0gPDE4MDAwMDAgMHgxPiwgPDMzMDAwMDAgMHgwPjsKPiA+ICAgICAgICAgICAg
ICAgcmVndWxhdG9yLW5hbWUgPSAidmNjX3NkaW8iOwo+ID4gICAgICAgICAgICAgICByZWd1bGF0
b3ItdHlwZSA9ICJ2b2x0YWdlIjsKPiA+ICsgICAgICAgICAgICAgcmVndWxhdG9yLWFsd2F5cy1v
bjsKPiA+ICAgICAgICAgICAgICAgcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MTgwMDAwMD47
Cj4gPiAgICAgICAgICAgICAgIHJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDMzMDAwMDA+Owo+
ID4gLSAgICAgICAgICAgICByZWd1bGF0b3ItYWx3YXlzLW9uOwo+ID4gICAgICAgICAgICAgICB2
aW4tc3VwcGx5ID0gPCZ2Y2Nfc3lzPjsKPiA+ICAgICAgIH07Cj4gPgo+ID4gICAgICAgdmNjX2hv
c3QxXzV2OiB2Y2Nfb3RnXzV2OiByZWd1bGF0b3ItdmNjLWhvc3QxLTV2IHsKPiA+ICAgICAgICAg
ICAgICAgY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+ID4gKyAgICAgICAgICAgICBy
ZWd1bGF0b3ItbmFtZSA9ICJ2Y2NfaG9zdDFfNXYiOwo+ID4gICAgICAgICAgICAgICBlbmFibGUt
YWN0aXZlLWhpZ2g7Cj4gPiAgICAgICAgICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7
Cj4gPiAgICAgICAgICAgICAgIHBpbmN0cmwtMCA9IDwmdXNiMjBfaG9zdF9kcnY+Owo+ID4gLSAg
ICAgICAgICAgICByZWd1bGF0b3ItbmFtZSA9ICJ2Y2NfaG9zdDFfNXYiOwo+ID4gICAgICAgICAg
ICAgICByZWd1bGF0b3ItYWx3YXlzLW9uOwo+ID4gKyAgICAgICAgICAgICByZWd1bGF0b3ItbWlu
LW1pY3Jvdm9sdCA9IDw1MDAwMDAwPjsKPiA+ICsgICAgICAgICAgICAgcmVndWxhdG9yLW1heC1t
aWNyb3ZvbHQgPSA8NTAwMDAwMD47Cj4gPiAgICAgICAgICAgICAgIHZpbi1zdXBwbHkgPSA8JnZj
Y19zeXM+Owo+ID4gICAgICAgfTsKPiA+Cj4gPiArICAgICAvKiBzb3VyY2VkIGZyb20gdXNiIGlu
cHV0IHRocm91Z2ggM0EgZnVzZSAqLwo+ID4gICAgICAgdmNjX3N5czogcmVndWxhdG9yLXZjYy1z
eXMgewo+ID4gICAgICAgICAgICAgICBjb21wYXRpYmxlID0gInJlZ3VsYXRvci1maXhlZCI7Cj4g
PiAgICAgICAgICAgICAgIHJlZ3VsYXRvci1uYW1lID0gInZjY19zeXMiOwo+ID4gQEAgLTczLDcg
Kzc3LDcgQEAgdmNjX3N5czogcmVndWxhdG9yLXZjYy1zeXMgewo+ID4gICAgICAgICAgICAgICBy
ZWd1bGF0b3ItYm9vdC1vbjsKPiA+ICAgICAgICAgICAgICAgcmVndWxhdG9yLW1pbi1taWNyb3Zv
bHQgPSA8NTAwMDAwMD47Cj4gPiAgICAgICAgICAgICAgIHJlZ3VsYXRvci1tYXgtbWljcm92b2x0
ID0gPDUwMDAwMDA+Owo+ID4gLSAgICAgICAgICAgICB2aW4tc3VwcGx5ID0gPCZkY18xMnY+Owo+
ID4gKyAgICAgICAgICAgICB2aW4tc3VwcGx5ID0gPCZkY181dj47Cj4gPiAgICAgICB9Owo+ID4K
PiA+ICAgICAgIHZjY19waHk6IHJlZ3VsYXRvci12Y2MtcGh5IHsKPiA+IEBAIC04MSw2ICs4NSw5
IEBAIHZjY19waHk6IHJlZ3VsYXRvci12Y2MtcGh5IHsKPiA+ICAgICAgICAgICAgICAgcmVndWxh
dG9yLW5hbWUgPSAidmNjX3BoeSI7Cj4gPiAgICAgICAgICAgICAgIHJlZ3VsYXRvci1hbHdheXMt
b247Cj4gPiAgICAgICAgICAgICAgIHJlZ3VsYXRvci1ib290LW9uOwo+ID4gKyAgICAgICAgICAg
ICByZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwzMzAwMDAwPjsKPiA+ICsgICAgICAgICAgICAg
cmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MzMwMDAwMD47Cj4gPiArICAgICAgICAgICAgIHZp
bi1zdXBwbHkgPSA8JnZjY19pbz47Cj4gPiAgICAgICB9Owo+ID4KPiA+ICAgICAgIGxlZHMgewo+
ID4KPgo+Cj4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
