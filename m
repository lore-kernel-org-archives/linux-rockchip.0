Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C69C9C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Nov 2023 10:02:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tjgl68f67yBrCCn9EsTeGb5htBMZuRPt+4Ust39Eovw=; b=3ajt+yjZF5hzEJ
	j/CM4x5oY5sPXvKNFVpKz41FYFvJwKgNTCTvvOKBjb3Tn6ybg/99XjtGwzRcOyPOqH8GU3qBmSVgg
	vqsT29fB8MXBmjXc1OAMMJJ/zxQdUuwionQFUpOmt7itzwJg0Di5jyhDD+7RHXJ+NuFkzYdRKq9NV
	CSQwJRu7Imn+hhLUlogDeBWobhcZPDt/pwurtJhd+/KhOvhJhdnMWpCjuUS+TrNcTUdk3ohOkhll7
	hHItftkbD/qD1KEnmcPT//RkKjCwrEIVa3cd75PIggvO+aGRQsT680hO88gKxW0lrXWYhTPMvTcCx
	/DjTK261kQvf/u2dlgBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7YRh-0021fP-2P;
	Mon, 27 Nov 2023 10:02:29 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7YRZ-0021dT-2A
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Nov 2023 10:02:23 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-50aa8c0af41so5091633e87.1
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Nov 2023 02:02:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1701079338; x=1701684138; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XAjnvuy3bIc5fGjb9nb5ctNWWJSrBAlAyEp3sSpRk/w=;
        b=GIger5CkyZ+A+xlQQWwYfNZ/ccF75AyVk6U6/GPxq6wZN50jl9qgUWerHfl9z02xs2
         tKxJl5Si/2RlKb0rpa00Shi5ps6Me25RC5f6QvYUfMJhGk082NXc5cfml/y/g9e5LEs9
         GmF/z2qm/iboKoRCCctpM7MK6kyGCXUiPDO5E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701079338; x=1701684138;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XAjnvuy3bIc5fGjb9nb5ctNWWJSrBAlAyEp3sSpRk/w=;
        b=cXWZzzA1XygEChrrYXG4pzOBwzZwS6PtO6RxzLEaU92eq6kPu+BtvKQFAIA2yWOCKn
         F8V9Q0NloyfVvFh9DZtM2XsbfNNxqJe1GEA2QIhKadO2NEmM4iVIczbANDEordmGiHQa
         pza43ho95khNFMUoGi+zZ8e+FzWGnLeeAffbZ5MRw2bCa+UyhZdZE5f04xZBD++jkUD7
         QVFgqUaCu66M04PN+tsQRFe5ciae1STqhqSK/LJkknlDFUG9oOtTfMyAHIDgVodzT7uP
         Gt4py4/SGl/PyQNd6vQmH0bPIpTMzF4Dzv/4dkFaXkSqIsOli7W9Y7ZeFzKBtggDISKy
         Nqwg==
X-Gm-Message-State: AOJu0Yziu3MMAyvYtZAcUWZcwVZNU6rZLDRzICRSSNpoP7JcQa//UKbx
	LdTTUE7fcrGGypDS5ADpi1hc+NldYrU1a4frqaQ3HA==
X-Google-Smtp-Source: AGHT+IF0wnC4g6yMuKCAZGpA/zZCG8U/CbU78D4eogjx5O8ynkFaH3hUcJ5lQcoAWF8HMw6ivUX1mBRPScw1wHlbvCM=
X-Received: by 2002:ac2:532d:0:b0:509:366b:a01c with SMTP id
 f13-20020ac2532d000000b00509366ba01cmr2846168lfh.14.1701079337688; Mon, 27
 Nov 2023 02:02:17 -0800 (PST)
MIME-Version: 1.0
References: <20231127081511.1911706-1-lukasz.luba@arm.com>
In-Reply-To: <20231127081511.1911706-1-lukasz.luba@arm.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 27 Nov 2023 18:02:06 +0800
Message-ID: <CAGXv+5EgDk2B_FYo9hNiLVogq+mww1j140W4hsDhywExzgpf2g@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add dynamic-power-coefficient to
 rk3399 GPU
To: Lukasz Luba <lukasz.luba@arm.com>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, 
	conor+dt@kernel.org, daniel.lezcano@linaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_020221_735832_0B814059 
X-CRM114-Status: GOOD (  17.53  )
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

T24gTW9uLCBOb3YgMjcsIDIwMjMgYXQgNDoxNOKAr1BNIEx1a2FzeiBMdWJhIDxsdWthc3oubHVi
YUBhcm0uY29tPiB3cm90ZToKPgo+IEFkZCBkeW5hbWljLXBvd2VyLWNvZWZmaWNpZW50IHRvIHRo
ZSBHUFUgbm9kZS4gVGhhdCB3aWxsIGNyZWF0ZSBFbmVyZ3kKPiBNb2RlbCBmb3IgdGhlIEdQVSBi
YXNlZCBvbiB0aGUgY29lZmZpY2llbnQgYW5kIE9QUCB0YWJsZSBpbmZvcm1hdGlvbi4KPiBJdCB3
aWxsIGVuYWJsZSBtZWNoYW5pc20gc3VjaCBhcyBEVE1QIG9yIElQQSB0byB3b3JrIHdpdGggdGhl
IEdQVSBEVkZTLgo+IEluIHNpbWlsYXIgd2F5IHRoZSBFbmVyZ3kgTW9kZWwgZm9yIENQVXMgaW4g
cmszMzk5IGlzIGNyZWF0ZWQsIHNvIGJvdGgKPiBhcmUgYWxpZ25lZCBpbiBwb3dlciBzY2FsZS4g
VGhlIG1heGltdW0gcG93ZXIgdXNlZCBmcm9tIHRoaXMgY29lZmZpY2llbnQKPiBpcyAxLjVXIGF0
IDYwME1Iei4KPgo+IFNpZ25lZC1vZmYtYnk6IEx1a2FzeiBMdWJhIDxsdWthc3oubHViYUBhcm0u
Y29tPgo+IC0tLQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS5kdHNpIHwg
MSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+Cj4gZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzM5OS5kdHNpCj4gaW5kZXggOWRhMGI2ZDc3YzhkLi44N2NmZGY1NzBi
MTkgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkuZHRz
aQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LmR0c2kKPiBAQCAt
MjExMyw2ICsyMTEzLDcgQEAgZ3B1OiBncHVAZmY5YTAwMDAgewo+ICAgICAgICAgICAgICAgICBp
bnRlcnJ1cHQtbmFtZXMgPSAiam9iIiwgIm1tdSIsICJncHUiOwo+ICAgICAgICAgICAgICAgICBj
bG9ja3MgPSA8JmNydSBBQ0xLX0dQVT47Cj4gICAgICAgICAgICAgICAgICNjb29saW5nLWNlbGxz
ID0gPDI+Owo+ICsgICAgICAgICAgICAgICBkeW5hbWljLXBvd2VyLWNvZWZmaWNpZW50ID0gPDI2
NDA+OwoKRm9yIHJlZmVyZW5jZSwgaW4gdGhlIENocm9tZU9TIGRvd25zdHJlYW4gdjUuMTAga2Vy
bmVsIHdlIGhhdmU6CgpncHVfcG93ZXJfbW9kZWw6IHBvd2VyX21vZGVsIHsKICAgICAgICBjb21w
YXRpYmxlID0gImFybSxtYWxpLXNpbXBsZS1wb3dlci1tb2RlbCI7CiAgICAgICAgc3RhdGljLWNv
ZWZmaWNpZW50ID0gPDQxMTUyMj47CiAgICAgICAgZHluYW1pYy1jb2VmZmljaWVudCA9IDw5Nzc+
OwogICAgICAgIHRzID0gPDMyMDAwIDQ3MDAgKC04MCkgMj47CiAgICAgICAgdGhlcm1hbC16b25l
ID0gImdwdSI7Cn07CgpUaGlzIGlzIGZvciB0aGUgTWFsaSBrYmFzZS4KCkNoZW5ZdQoKPiAgICAg
ICAgICAgICAgICAgcG93ZXItZG9tYWlucyA9IDwmcG93ZXIgUkszMzk5X1BEX0dQVT47Cj4gICAg
ICAgICAgICAgICAgIHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gICAgICAgICB9Owo+IC0tCj4gMi4y
NS4xCj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKPiBsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
