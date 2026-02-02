Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DB38E7DF16
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Feb 2026 18:06:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5FBvUr0KBSxEJYHNU08OlS0lPJoA8pMMGA1tRisp45o=; b=t3WJFjmHZiTSdj
	xzIzIQF0+gnMbep8+OlGKq0wwDP5TiGWAnoRQWUQ20vRVpL14WjQyiPVCLTzolcEq9BYIRxqOWoDB
	qeePbI9q9QowP/cb2TIYlDnEmO8NFdCVGzC1Md+XZF/SJYZnNrHm59oxA8FSsGg7wvUvmekBYPFEt
	+0kYD5eugcb8GuOggjTFE0nkWpNoy03sT2UXs9YPSki8Lt418ygMtWvJb6QwczxlJOYJ7If4LprB7
	yULP3/CH3eZA123W4AJ9kfTA8OX7lxm51+gCUqldYVVi8D3qnUYezxS8yjKYIMbk4AQyC00qRKRrT
	pmMBA8hQIp8+L52yx3Bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmyJQ-00000005OrY-3d0n;
	Mon, 02 Feb 2026 18:06:12 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmyJO-00000005Oqq-1w8H
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Feb 2026 18:06:11 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-658d4059b79so7065398a12.1
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Feb 2026 10:06:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770055567; cv=none;
        d=google.com; s=arc-20240605;
        b=HA6BuvQ/6FV/4viEpkSt/IeZzdjbpBshTceZfTsVcbezbcPUKmRSeVanDxNeyuwvoC
         4Q+pkXQhZJzbrJ84P0e61VykjB20vn/d4oCepaqvnxgpa3H4kpIMO6ynbT06sw94H45M
         7VqjeV0JXVAKt6f1nMiNdrshBxUYGCzjnfDu2RoYyo4STnfeqpwvQ6KKnC1qXMJ31fRB
         gKZ8M+2+lyis1Q6c3SJdVCUQMoTmYKY+kJSNtWSYYHfnWWFe+wTYwgIgx46ncv0uAF5W
         eu1YCJGuSgFY8+ckg821Jn5N5vvapSPIa+JUcizfJmiGgioGeAhIahWXE00eDZjyQpjg
         o9YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=hP28cdxrwSqvRO3deSNeh79vlUUMJieXCHAu3kVx4q4=;
        fh=d7qhdU4IpmcBLoYoXIWfz2+gbqXPQ983P6J2to7qgTQ=;
        b=LvLZN9lTzSb/kSbTu6WlZNUNeGkrpbFTASjHR/y516jhqpTG7iWXsF4UyExcBwKLrW
         2n+fgIqqeKteyHMFfx9h3XUgUpgYz74Sp0ZV6ocwHpCxdNuyeNnSQCh9YdJKaq6uYi4n
         yutGP2BrYFFf3Pjg3332Z4bSQht1hFG2k5zCQswL++OdyDFx3ogOaIwXBYOOm+qza9jQ
         AxYc4ZzkV15ThaAzF/yv1SoX4ZSsM/9A+G4KKOahqcp3wTFMenddmnIhR9LOdbgYrBEH
         noQ2wIeb3aKt3ehdY9Dvc4CR5/SxRlgZ5aUCUHo7Y96UPSWlV1KzFwS9MLnrBz0Zi0Fj
         Jjug==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770055567; x=1770660367; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hP28cdxrwSqvRO3deSNeh79vlUUMJieXCHAu3kVx4q4=;
        b=Viq91pAtTryaKmIlQoqp8G30dutCPW9gQpwIsVHIMi/rJ3s83uwUG7FmiH8VADOZgt
         DuiaYTVGia/9HsjjSla13soTludwUc4I5RkX0p3O/hsx4jGG9JHU0z0q0qru06pYpoJH
         LdIiIoABm6GCpat6ON65J0A035RBaakkheBEvcaQhmwQ2w0ma6bdy9Jq/DstREpy8gbQ
         uqb9sDcCSvMY5ijdKMh3AIMgDegw2gVuvkNltLET3Tk1dn8Iadfb6hPzw0mL51uqkmoY
         uDJ+e6V4SsAPHWNfWr29XzUmCDuCyXSH2wtO7Uy9RKZmpliio/pHVHLAaNBzenQzt3He
         iWrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770055567; x=1770660367;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hP28cdxrwSqvRO3deSNeh79vlUUMJieXCHAu3kVx4q4=;
        b=qSnVj7pXt4rRmwz7sJFQT1VF9vxAPnlTLkSEh0XUFkFB5FKR+b5uedb7sOkEUJlOTe
         KT2XKocp4Oo0wcgxgm/Gso+7BVh8YtLZ4r3Vv/xaaNi8lAH1iuP+NQLF+oUZmt3TtRMn
         T0HMzu6OuDf6Vvl9x+Aegwrh7PCG+6t9T9RGOy/HDK+eIqMjn9CTub70ye4WtrMyfl1w
         /+HIX4P4yVpECmnWaVOfskkSdNegWThXiXKGWpCg6565WSVlugfIjd5IRsHzljp9T7Wd
         gYOljjpUA9fLCJYJwNWHh6r+GZ/1K7em+Ig7+P5ivGZGMepGUxTDgq4xc56dG4mN2OGN
         JSKA==
X-Forwarded-Encrypted: i=1; AJvYcCVyexeH50VPm5+3AVKkyi3uRYKORqCafMCY0CNcCoLc+CO0duKzzaIF+Gsn6rbnrncnUSKBy+2AkAczSRXuEg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwsEysQpqqLep8QitruhXwsoyoYGXj1WbmkJwZbge28mxahb7es
	YSIdeIhWLvX/pKJBJwfDuI6q50Z9G2Q8hcV0V/gRcFsx3oJjp/j0zmxhZpf4VyLd72N/ejtFgue
	j5YhmjGzbmxqofVkcE5x9/vQJ5BVI22zfUw==
X-Gm-Gg: AZuq6aIH8wcQ8VtnLYxMgM5vNI5B1YD1cy/BVwyK5/ay7wTEykGSYURmuv9t0mSJTCs
	s00MbF4jpjFz6yGFMp4cHJPIblYmJYZlQEEelGin688+WycClVorvxiBI4/0v7qQZNBKSGBxnlO
	fWn5kYgQSl0YASP+2kKErl1Y828FPzYc0uGBkl4R+cZKZE67VhmY5+o6LmpWRMrEDMg3IO54fGk
	A4hNPSlfI1Svuno4Q0Cu3QbOBZ1T2llh/nhLXFisntlIEV3TF1d2t1/RojSVM4i7Cs=
X-Received: by 2002:a05:6402:3582:b0:658:bd60:43d0 with SMTP id
 4fb4d7f45d1cf-658de5915d5mr6621282a12.21.1770055567216; Mon, 02 Feb 2026
 10:06:07 -0800 (PST)
MIME-Version: 1.0
References: <20240809073610.2517-1-linux.amoon@gmail.com> <aXtpg0V_sifQEWHJ@grimm-nixos-ssd-2>
 <aXyHITrZ89Mmn8_J@ryzen> <CANAwSgTQ-cdyzd2WjHMYCY33p7um3CpjMeTzRO7vcd0fTF6X9Q@mail.gmail.com>
 <aYB0ctHF1ZeIIzbq@ryzen>
In-Reply-To: <aYB0ctHF1ZeIIzbq@ryzen>
From: Anand Moon <linux.amoon@gmail.com>
Date: Mon, 2 Feb 2026 23:35:48 +0530
X-Gm-Features: AZwV_QhVyDIKKP1nVuDrTcVF0I-NAOiYLCyqmT1Lu3YFL9MwXYNqEXtkEO2A9s8
Message-ID: <CANAwSgSR7AYCvMXSo5UskTF3LJToOnPV9JE4XBAUzrCbWGKD_w@mail.gmail.com>
Subject: Re: [PATCH v2] PCI: dw-rockchip: Enable async probe by default
To: Niklas Cassel <cassel@kernel.org>
Cc: Grimmauld <grimmauld@grimmauld.de>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260202_100610_677706_C49B6DB1 
X-CRM114-Status: GOOD (  33.27  )
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

SGkgTmlrbGFzLAoKT24gTW9uLCAyIEZlYiAyMDI2IGF0IDE1OjI1LCBOaWtsYXMgQ2Fzc2VsIDxj
YXNzZWxAa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiBTYXQsIEphbiAzMSwgMjAyNiBhdCAwMzow
ODo0MlBNICswNTMwLCBBbmFuZCBNb29uIHdyb3RlOgo+ID4gPgo+ID4gSeKAmXZlIGF0dGVtcHRl
ZCB0byByZXByb2R1Y2UgdGhlIHdhcm5pbmcgYnV0IHdhcyB1bmFibGUgdG8gdHJpZ2dlciBpdCBs
b2NhbGx5Lgo+ID4KPiA+IEkgaGF2ZSB0ZXN0ZWQgd2l0aCB0aGUgYnVpbHQtaW4gbW9kdWxlCj4g
PiBDT05GSUdfUjgxNjk9eQo+ID4gQ09ORklHX1I4MTY5X0xFRFM9eQo+ID4KPiA+IEFzIHdlbGwg
YXMgdGhlIG1vZHVsZQo+ID4gQ09ORklHX1I4MTY5PW0KPiA+IENPTkZJR19SODE2OV9MRURTPXkK
PiA+Cj4KPiBJJ20gcnVubmluZyB3aXRoOgo+IENPTkZJR19SODE2OT15Cj4gQ09ORklHX1BIWUxJ
Qj15Cj4gQ09ORklHX1JFQUxURUtfUEhZPXkKPiBDT05GSUdfUkVBTFRFS19QSFlfSFdNT049eQo+
CkkgZmVlbCBDT05GSUdfUjgxNjkgc2hvdWxkIG5vdCBiZSBidWlsdCBpbnRvIHRoZSBrZXJuZWwg
aW1hZ2UuClNpbmNlIHRoZSBkcml2ZXIgaXMgcmVnaXN0ZXJlZCB2aWEgbW9kdWxlX3BjaV9kcml2
ZXIocnRsODE2OV9wY2lfZHJpdmVyKSwKaXQgaXMgaW50ZW5kZWQgdG8gYmUgbG9hZGVkIGFzIGEg
bW9kdWxlLiBJbiBhZGRpdGlvbiwgdGhpcyBkcml2ZXIKcmVxdWlyZXMgZXh0ZXJuYWwgZmlybXdh
cmUKZHVyaW5nIGluaXRpYWxpemF0aW9uLCB3aGljaCBjb3VsZCBtYWtlIGEgYnVpbHTigJFpbiBj
b25maWd1cmF0aW9uIHByb2JsZW1hdGljLgpLZWVwaW5nIGl0IG1vZHVsYXIgZW5zdXJlcyBwcm9w
ZXIgZmlybXdhcmUgbG9hZGluZyBhbmQgYXZvaWRzCmVhcmx54oCRYm9vdCBmYWlsdXJlcy4KCj4g
Q09ORklHX1BDSUVfUk9DS0NISVBfRFc9eQo+IENPTkZJR19QQ0lFX1JPQ0tDSElQX0RXX0hPU1Q9
eQo+IENPTkZJR19QSFlfUk9DS0NISVBfTkFORU5HX0NPTUJPX1BIWT15Cj4gKFBIWSBmb3IgdGhl
IFBDSWUgMngpCj4KPiAkIGNhdCAvcHJvYy9jbWRsaW5lCj4gcm9vdD0vZGV2L25mcyBuZnNyb290
PTE5Mi4xNjguMS4xMDovc3J2L25mcy9yb290ZnNfcmMsbmZzdmVycz00IGlwPWRoY3AgZWFybHlj
b24gcm9vdHdhaXQgbG9nbGV2ZWw9OAo+Cj4gQ29uc2lkZXJpbmcgdGhhdCBhbGwgUEhZIGRyaXZl
cnMgKGZvciBib3RoIEV0aGVybmV0IGFuZCBQQ0llKSwKPiBhbmQgZHJpdmVycyAoZm9yIGJvdGgg
RXRoZXJuZXQgYW5kIFBDSWUpIGFyZSBidWlsdCBhcyBidWlsdC1pbiwKPiBoYXZpbmcgbmZzcm9v
dD0gb24gdGhlIGtlcm5lbCBjb21tYW5kIGxpbmUgc2hvdWxkIGJlIG5vIGlzc3VlLgo+Cj4gQnV0
LCBwZXJoYXBzIHRoYXQgaXMgdGhlIHJlYXNvbiB3aHkgeW91IGNhbm5vdCByZXByb2R1Y2UgaXQ/
ClRoYW5rcyBmb3Igc2hhcmluZyB5b3VyIHNldHVwLgo+Cj4KPiA+ID4KPiA+ID4gSGF2aW5nIGFz
eW5jIHByb2JpbmcgZm9yIHRoZSBSb2NrY2hpcCBQQ0llIGNvbnRyb2xsZXIgZHJpdmVyLCB3aGlj
aCBpcwo+ID4gPiB1c2VkIGEgTE9UIG9mIHJvY2tjaGlwIGJhc2VkIFNvQ3MsIGlzIGEgZ29vZCB0
aGluZywgc28gSSBkb24ndCB0aGluayBpdAo+ID4gPiBpcyByaWdodCB0byBhdm9pZCBlbmFibGlu
ZyBhc3luYyBwcm9iaW5nIGp1c3QgYmVjYXVzZSBpdCByZXN1bHRzIGluIGEKPiA+ID4gc3BsYXQg
b24gYSBzaW5nbGUgcm9ja2NoaXAgYmFzZWQgYm9hcmQgKHJvY2s1YikuCj4gPiA+Cj4gPiBZZXMs
IHRoaXMgY291bGQgaGVscCBpbiB0aGUgbW9kdWxlIHByb2JlIHBjaSBtb2R1bGUuCj4gPgo+ID4g
RWFybGllciwgSSB0aG91Z2h0IGdtYWMgd2lsbCBjb250cm9sIHRoZSByODE2OSBtb2R1bGUsIGJ1
dCBJIHdhcyB3cm9uZy4KPiA+IENvdWxkIHlvdSBwbGVhc2UgdHJ5IHRoZXNlIGNoYW5nZXMgYXQg
eW91ciBlbmQ/IFRoZXNlIGNoYW5nZXMgYXJlCj4gPiByZWxhdGVkIHRvIE1JTU8uLgo+ID4KPiA+
ICQgZ2l0IGRpZmYgLi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTVi
LTVicC01dC5kdHNpCj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1ODgtcm9jay01Yi01YnAtNXQuZHRzaQo+ID4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU4OC1yb2NrLTViLTVicC01dC5kdHNpCj4gPiBpbmRleCBiM2U3NmFkMmQ4Njku
LmZiM2E4YmE0MDg1YSAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszNTg4LXJvY2stNWItNWJwLTV0LmR0c2kKPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWItNWJwLTV0LmR0c2kKPiA+IEBAIC00NzcsNyArNDc3
LDYgQEAgJnBjaWUyeDFsMCB7Cj4gPiAgJnBjaWUyeDFsMiB7Cj4gPiAgICAgICAgIHBpbmN0cmwt
bmFtZXMgPSAiZGVmYXVsdCI7Cj4gPiAgICAgICAgIHBpbmN0cmwtMCA9IDwmcGNpZTJfMl9yc3Q+
Owo+ID4gLSAgICAgICByZXNldC1ncGlvcyA9IDwmZ3BpbzMgUktfUEIwIEdQSU9fQUNUSVZFX0hJ
R0g+Owo+ID4gICAgICAgICB2cGNpZTN2My1zdXBwbHkgPSA8JnZjYzN2M19wY2llMngxbDI+Owo+
ID4gICAgICAgICBzdGF0dXMgPSAib2theSI7Cj4gPiAgfTsKPiA+IEBAIC01MzUsNiArNTM0LDEy
IEBAIHBjaWUzX3ZjYzN2M19lbjogcGNpZTMtdmNjM3YzLWVuIHsKPiA+ICAgICAgICAgICAgICAg
ICB9Owo+ID4gICAgICAgICB9Owo+ID4KPiA+ICsgICAgICAgcnRsODIxMWYgewo+ID4gKyAgICAg
ICAgICAgICAgIHJ0bDgyMTFmXzBfcnN0OiBydGw4MjExZi0wLXJzdCB7Cj4gPiArICAgICAgICAg
ICAgICAgICAgICAgICByb2NrY2hpcCxwaW5zID0gPDMgUktfUEIwIFJLX0ZVTkNfR1BJTyAmcGNm
Z19wdWxsX25vbmU+Owo+ID4gKyAgICAgICAgICAgICAgIH07Cj4gPiArICAgICAgIH07Cj4gPiAr
Cj4gPiAgICAgICAgIHVzYiB7Cj4gPiAgICAgICAgICAgICAgICAgdXNiYzBfaW50OiB1c2JjMC1p
bnQgewo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgcm9ja2NoaXAscGlucyA9IDwzIFJLX1BC
NCBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9ub25lPjsKPiA+IEBAIC01NTAsNiArNTU1LDE5IEBA
ICZwd20xIHsKPiA+ICAgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ID4gIH07Cj4gPgo+ID4gKyZt
ZGlvMCB7Cj4gPiArICAgICAgIHJnbWlpX3BoeTA6IGV0aGVybmV0LXBoeUAxIHsKPiA+ICsgICAg
ICAgICAgICAgICAvKiBSVEw4MjExRiAqLwo+ID4gKyAgICAgICAgICAgICAgIGNvbXBhdGlibGUg
PSAiZXRoZXJuZXQtcGh5LWlkMDAxYy5jOTE2IjsKPiA+ICsgICAgICAgICAgICAgICByZWcgPSA8
MHgxPjsKPiA+ICsgICAgICAgICAgICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ID4g
KyAgICAgICAgICAgICAgIHBpbmN0cmwtMCA9IDwmcnRsODIxMWZfMF9yc3Q+Owo+ID4gKyAgICAg
ICAgICAgICAgIHJlc2V0LWFzc2VydC11cyA9IDwyMDAwMD47Cj4gPiArICAgICAgICAgICAgICAg
cmVzZXQtZGVhc3NlcnQtdXMgPSA8MTAwMDAwPjsKPiA+ICsgICAgICAgICAgICAgICByZXNldC1n
cGlvcyA9IDwmZ3BpbzMgUktfUEIwIEdQSU9fQUNUSVZFX0xPVz47Cj4gPiArICAgICAgIH07Cj4g
PiArfTsKPiA+ICsKPiA+ICAmcmtubl9jb3JlXzAgewo+ID4gICAgICAgICBucHUtc3VwcGx5ID0g
PCZ2ZGRfbnB1X3MwPjsKPiA+ICAgICAgICAgc3JhbS1zdXBwbHkgPSA8JnZkZF9ucHVfczA+Owo+
ID4KPgo+IEkgdHJpZWQgeW91ciBwYXRjaCBhYm92ZSwgYnV0IEkgc3RpbGwgc2VlIHRoZSBzcGxh
dC4KPgo+IEJ1dCBhcyBJIHNhaWQsIEkgZG9uJ3QgdGhpbmsgdGhlIHNwbGF0IHNob3VsZCBiZSBh
IHNob3dzdG9wcGVyLgpUaGFua3MgZm9yIGNsYXJpZnlpbmcgdGhpcyBpc3N1ZS4gSSB3aWxsIHJl
c3VibWl0IG9uY2UgSSBoYXZlCmNvbmR1Y3RlZCBmdXJ0aGVyIHRlc3RpbmcuCj4KPiBLaW5kIHJl
Z2FyZHMsCj4gTmlrbGFzCgpUaGFua3MKLUFuYW5kCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
