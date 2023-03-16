Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA394C6FD1D
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Mar 2023 00:17:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yUWfkthSeC/bdltxd4JEGid0U1U4yVwrOk1pSPIxvXY=; b=hNIjhA6KzwjLCT
	FJ0NgEiBJ7UKHEOKyjhBJk6oLBFT+O6REXkyDUKT9XqiBSc5AvGnYmaE9ToeX54htTZ16uQuhbQSO
	EHxrJISqQ3U3vXBJ4N5hQyfz1yab52OzTc2Vi7g3kPs8nxXJcjg3kE1Jx50xcxIvjLI6hEiLxeZB9
	pFUxcpmdD8az0hQtRZRiPN7baGWBx9WtBj99KiNYQJRqPuhY17XTjr4yOfxyD2llwIErrrD7kKwYM
	wbMnoaJQCPnrOXRcMFiMa1BHTc2D4L8hIKZfJOkpC3asPInuSWgFOpe+0YGOVR5kkzU70Lve/5gkL
	lPw0iFynsYarLT5XJuRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcbIm-00Eo6w-00;
	Thu, 16 Mar 2023 00:17:04 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcbIh-00Eo6H-34;
	Thu, 16 Mar 2023 00:17:01 +0000
Received: by mail-wr1-x42b.google.com with SMTP id r18so25578wrx.1;
        Wed, 15 Mar 2023 17:16:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678925817;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lTV9EnLtEgkBc71Ccit1w3PTMeFKwTnDyhAhw89XVNI=;
        b=hQ3dQ4U3LsqaKJ5WcJzbeOWMpFCEwWkMEhQyaeWkxDNosIIMYFJh5XPwDi0XutMGx3
         iWeL6vUkJrFVx851HEDZcEFrKA96ldy1hzI0eyixb9G2BVNjusRi+sRGBX8f3RrVLFuy
         ZWJaAxZ0NQRwPE0U5lneRBzHTh8Lob3yfWTEHY4f0QPNu0/UifRt51b+tRRjfWzBfQPb
         L1DynkWDgb5gq67C6Hb95hg+zcK+hASUdlXQb0em6ecML5TfoQJAfP3J7uVB2g24bra4
         Igdob8AJR/kAn9LTWjMk8r1HyUQn5NPhi5QGiRzpO1I1+XaM2CYCXZzuIj/aUldbv8DS
         YLdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678925817;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lTV9EnLtEgkBc71Ccit1w3PTMeFKwTnDyhAhw89XVNI=;
        b=ZsUtu9S08U+lFoCkzAypkhQl4YUPXQQlriTeWE26huoMqG67lEAT4vMGfhxzn3WWMY
         YUkpAuEc7FR88LuDbRl3aePVWSDrHKwJvMpbiAzIwCjhWgzG/5iVi6pYtYJgahgYfdZG
         PITGj2MFrXhwwIJXQ868ypRGELWUTwIhxwjpgojznpwg9IVICJReWex1wEHpJwYZ8R61
         Whzyuy3luLVWMGedlcizmqNQLkBPVdavSjIm+HdwXar7datrniEn38oR1Gj0Mh0YcQHZ
         +y+Xk6Pi5UCxFuNHU9InSoxbLuPG9mdwcXUwGuZ+ttdY6ZScL4fS9o1zxDscbFSuYT1/
         ocLw==
X-Gm-Message-State: AO0yUKUEKmCQV+C6e2YQP6tq9hdr5dJAD0aQk6DZfMc8LfOkvfpbjwi1
	JFwronOQelbm5fkwXYKKmXwyFbl51YElM9KuTSo=
X-Google-Smtp-Source: AK7set/pluI8RhE5QmBIHGlQNxPKXPr3AZKOWkXiMh/E85uReVoHRs8JGxaSYzON7hxQ26BbpJUfIjxf2X9EZICRXzY=
X-Received: by 2002:a5d:63d1:0:b0:2ce:ac97:6f51 with SMTP id
 c17-20020a5d63d1000000b002ceac976f51mr763875wrw.13.1678925817370; Wed, 15 Mar
 2023 17:16:57 -0700 (PDT)
MIME-Version: 1.0
References: <20230315160228.2362-1-cnsztl@gmail.com> <20230315160228.2362-5-cnsztl@gmail.com>
In-Reply-To: <20230315160228.2362-5-cnsztl@gmail.com>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Wed, 15 Mar 2023 17:16:30 -0700
Message-ID: <CA+E=qVei7T4T0FWhdUFnr5JbCWSgFbGLcmU2OHxx54yvnNR6mw@mail.gmail.com>
Subject: Re: [PATCH 4/5] arm64: dts: rockchip: fix gmac support for NanoPi R5S
To: Tianling Shen <cnsztl@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Jagan Teki <jagan@amarulasolutions.com>, Peter Geis <pgwipeout@gmail.com>, 
	Andy Yan <andyshrk@163.com>, Brian Norris <briannorris@chromium.org>, 
	Chris Morgan <macromorgan@hotmail.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Andrew Lunn <andrew@lunn.ch>, 
	Michael Riesch <michael.riesch@wolfvision.net>, Maya Matuszczyk <maccraft123mc@gmail.com>, 
	Andrew Powers-Holmes <aholmes@omnom.net>, Sascha Hauer <s.hauer@pengutronix.de>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_171700_008397_A1221ECF 
X-CRM114-Status: GOOD (  17.37  )
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

T24gV2VkLCBNYXIgMTUsIDIwMjMgYXQgOTowMuKAr0FNIFRpYW5saW5nIFNoZW4gPGNuc3p0bEBn
bWFpbC5jb20+IHdyb3RlOgo+Cj4gLSBDaGFuZ2VkIHBoeS1tb2RlIHRvIHJnbWlpLgo+Cj4gLSBG
aXhlZCBwdWxsIHR5cGUgaW4gcGluY3RybCBmb3IgZ21hYzAuCj4KPiAtIFJlbW92ZWQgZHVwbGlj
YXRlIHByb3BlcnRpZXMgaW4gbWRpbyBub2RlLgo+ICAgVGhlc2UgcHJvcGVydGllcyBhcmUgZGVm
aW5lZCBpbiB0aGUgZ21hYzAgbm9kZSBhbHJlYWR5Lgo+Cj4gU2lnbmVkLW9mZi1ieTogVGlhbmxp
bmcgU2hlbiA8Y25zenRsQGdtYWlsLmNvbT4KPiAtLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1NjgtbmFub3BpLXI1cy5kdHMgfCA3ICsrLS0tLS0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1uYW5vcGktcjVzLmR0cyBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LW5hbm9waS1yNXMuZHRzCj4gaW5kZXggZTlhZGY1
ZTY2NTI5Li4yYTExMThmMTVjMjkgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1NjgtbmFub3BpLXI1cy5kdHMKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU2OC1uYW5vcGktcjVzLmR0cwo+IEBAIC01Nyw3ICs1Nyw3IEBACj4gICAg
ICAgICBhc3NpZ25lZC1jbG9jay1yYXRlcyA9IDwwPiwgPDEyNTAwMDAwMD47Cj4gICAgICAgICBj
bG9ja19pbl9vdXQgPSAib3V0cHV0IjsKPiAgICAgICAgIHBoeS1oYW5kbGUgPSA8JnJnbWlpX3Bo
eTA+Owo+IC0gICAgICAgcGh5LW1vZGUgPSAicmdtaWktaWQiOwo+ICsgICAgICAgcGh5LW1vZGUg
PSAicmdtaWkiOwo+ICAgICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiAgICAgICAg
IHBpbmN0cmwtMCA9IDwmZ21hYzBfbWlpbQo+ICAgICAgICAgICAgICAgICAgICAgICZnbWFjMF90
eF9idXMyCj4gQEAgLTc5LDkgKzc5LDYgQEAKPiAgICAgICAgICAgICAgICAgcmVnID0gPDE+Owo+
ICAgICAgICAgICAgICAgICBwaW5jdHJsLTAgPSA8JmV0aF9waHkwX3Jlc2V0X3Bpbj47Cj4gICAg
ICAgICAgICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gLSAgICAgICAgICAgICAg
IHJlc2V0LWFzc2VydC11cyA9IDwxMDAwMD47Cj4gLSAgICAgICAgICAgICAgIHJlc2V0LWRlYXNz
ZXJ0LXVzID0gPDUwMDAwPjsKPiAtICAgICAgICAgICAgICAgcmVzZXQtZ3Bpb3MgPSA8JmdwaW8w
IFJLX1BDNCBHUElPX0FDVElWRV9MT1c+OwoKSG1tLCBJIGRvbid0IHNlZSBSS19QQzQgYmVpbmcg
dXNlZCBhbnl3aGVyZSBlbHNlLiBnbWFjMCBoYXMgUktfUEM1IGFzCnNuc3AscmVzZXQtZ3Bpby4g
U28gaXQgZXNzZW50aWFsbHkgZHJvcHMgcmVzZXQgZm9yIHRoZSBQSFkuIElzIGl0CmV4cGVjdGVk
PwoKPiAgICAgICAgIH07Cj4gIH07Cj4KPiBAQCAtMTE1LDcgKzExMiw3IEBACj4gICZwaW5jdHJs
IHsKPiAgICAgICAgIGdtYWMwIHsKPiAgICAgICAgICAgICAgICAgZXRoX3BoeTBfcmVzZXRfcGlu
OiBldGgtcGh5MC1yZXNldC1waW4gewo+IC0gICAgICAgICAgICAgICAgICAgICAgIHJvY2tjaGlw
LHBpbnMgPSA8MCBSS19QQzQgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfZG93bj47Cj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgcm9ja2NoaXAscGlucyA9IDwwIFJLX1BDNCBSS19GVU5DX0dQSU8g
JnBjZmdfcHVsbF91cD47Cj4gICAgICAgICAgICAgICAgIH07Cj4gICAgICAgICB9Owo+Cj4gLS0K
PiAyLjE3LjEKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
