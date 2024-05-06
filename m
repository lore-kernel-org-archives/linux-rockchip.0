Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7735FC25B5F
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 May 2024 12:54:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ygdZ2ViYA2HDcWv+IOXv27hliDk40+VPViZRjPCvMgk=; b=Uj3da4yZHxWov/
	2Gq/yN0wI+DFUwFWYgeSDqXU104uEwxZLWe4yhKEbjBvp610oW4j8urlZvKmfohUWYmxdXQ4KVZk0
	mZ50PcJOI2Bwr/jTWuYMdWqiOCuM7AH5/c+cj3ZAoPUu4eu60p7+euO/OC5/VOFrqv45Cla7eyy2C
	DvVlZO4O7mRQYoQcsU+rdncSqiXlOo5VKhVJ/HJQ0zZ+aeHv9Rk7o4TOkrZ+Y4CIy01xSj8bV22fv
	moGUZOKnH4VDJketFzmwGRrWK64ASqiN60K1QjDYTLxcbrE4gvj8JJLi4T2ce2HTHUosiT/67q2FS
	hIBZUPuaKsmb4fPRlBEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3xrM-00000007MkV-3JqU;
	Mon, 06 May 2024 12:54:24 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3xrI-00000007Mh8-0FwM;
	Mon, 06 May 2024 12:54:22 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-51f29e80800so2020174e87.2;
        Mon, 06 May 2024 05:54:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715000054; x=1715604854; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IYJUMLyOfuPVkBGsjqvkIOkmksaH29NkjD+X1QlY6WE=;
        b=WI0/PKLmYcJAQSka50V8D2Ywn+EFh5i74345xM0LALpyK5p8BZ3ftTGmB9GwNZTj3B
         nFyw/c2Oz+nDq3zo7RD5g51vpqakhtIw9EzGxt9Z6Lf1mMFjVmwHdBndno91lRQF4TDW
         1W9jfBSR/92yDPK1puHzjJHpY/8utTPHv4b3kXnHsCBVpsrKy1MAd+eNaYsU148WxSJk
         ESUaBS/0aSnXQlvscokpGDol7mGeVn0eeue08Kzi3S+rMGDkF9T4cMIKB8sLNxIPGIrb
         vIBKYKMKB/vhfyWhDWjt6RATG5RSE7YNdDs8Xl86ed9VMWnwkHNY+lCo5VOOwpiW49F+
         bMcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715000054; x=1715604854;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IYJUMLyOfuPVkBGsjqvkIOkmksaH29NkjD+X1QlY6WE=;
        b=rsWyJnUH403+6JAKZqgVGlJbVEyfqUrZkdaRdGo1gfw2Om0+9iVgNPEGbWTyEoERE1
         hsTsJCmSVWhKuxaMA5yAm6sx29P+zOxVnYH3YCjsMRHJ1iz7wcYnjSucqI68bXKyc4a3
         10KfGGkH1kQWgcv/EPHCj3HmkzwBY/f6rDAciOfxegrnysFpTDOvUfW5zclTPdw1JPQt
         bsTeHJN/7UNbKmt+WIpA62KOYhVRWiAR8+FXCMXK1VfmIGJlZUN5fbnhI1Juw86Cnx3N
         jQfcx3FsuELMGRzWXK1F+yf0YPWY8EGlAoxrIFGTLG3Kz3VQxpgFkHoeU8QTCpVwk2G8
         VQ6A==
X-Forwarded-Encrypted: i=1; AJvYcCWcZQnifExnZOij1wapA8Ltn3lKTxWD3IlsohRUV9lqqK1dvp3GghTr9f35Usll35GfpmgFTfRm6Ecmvl6GNyFj7kwTc8w6yW9J3P8Y2dLhJ8dzIG/dP3mnD4S24Zf3Z9wR9sLwteZD0pFNt6eabGvNwCrCoeC6h+8=
X-Gm-Message-State: AOJu0YzpN9TlgFp36FZarB08WP9w25kpGWkU1VDgTg4aZYyIAPANB5uA
	cCgg/husQ0HfrXVmAwbPs+fEdalvDMFYFmtATJikQBmziah6+sRhxK1aZbRFJSWWDF181jSYpA3
	1Q2IU0GmCi6yh4J78fHwKRyWQWew=
X-Google-Smtp-Source: AGHT+IEuu9HAQAASDPOvUv+eo4vaDmGpspytyOqJN4kLuzL+gyh+71AymJnLzYz3lQHVXAn61CiMQkJLULyWq0AKhf4=
X-Received: by 2002:a19:f51a:0:b0:51e:eeb1:f24b with SMTP id
 j26-20020a19f51a000000b0051eeeb1f24bmr5882309lfb.34.1715000053829; Mon, 06
 May 2024 05:54:13 -0700 (PDT)
MIME-Version: 1.0
References: <20240506-rk-dts-additions-v4-0-271023ddfd40@gmail.com>
 <20240506-rk-dts-additions-v4-2-271023ddfd40@gmail.com> <2543817.5xW6y1K4kI@bagend>
In-Reply-To: <2543817.5xW6y1K4kI@bagend>
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 6 May 2024 16:54:02 +0400
Message-ID: <CABjd4Yw-JA5=SfcgtVNYZN37hFbqf14Ut1yHTSz1YZiZ3NQ-pw@mail.gmail.com>
Subject: Re: [PATCH v4 2/6] arm64: dts: rockchip: enable thermal management on
 all RK3588 boards
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Dragan Simic <dsimic@manjaro.org>, Viresh Kumar <viresh.kumar@linaro.org>, 
	Chen-Yu Tsai <wens@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_055420_127836_93B97098 
X-CRM114-Status: GOOD (  23.20  )
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

SGVsbG8gRGllZGVyaWssCgpPbiBNb24sIE1heSA2LCAyMDI0IGF0IDQ6MjnigK9QTSBEaWVkZXJp
ayBkZSBIYWFzIDxkaWRpLmRlYmlhbkBja25vdy5vcmc+IHdyb3RlOgo+Cj4gSGksCj4KPiBPbiBN
b25kYXksIDYgTWF5IDIwMjQgMTE6MzY6MzMgQ0VTVCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPiA+
IFRoaXMgZW5hYmxlcyB0aGUgb24tY2hpcCB0aGVybWFsIG1vbml0b3Jpbmcgc2Vuc29yIChUU0FE
Qykgb24gYWxsCj4gPiBSSzM1ODgocykgYm9hcmRzIHRoYXQgZG9uJ3QgaGF2ZSBpdCBlbmFibGVk
IHlldC4gSXQgcHJvdmlkZXMgdGVtcGVyYXR1cmUKPiA+IG1vbml0b3JpbmcgZm9yIHRoZSBTb0Mg
YW5kIGVtZXJnZW5jeSB0aGVybWFsIHNodXRkb3ducywgYW5kIGlzIHRodXMKPiA+IGltcG9ydGFu
dCB0byBoYXZlIGluIHBsYWNlIGJlZm9yZSBDUFUgRFZGUyBpcyBlbmFibGVkLCBhcyBoaWdoIENQ
VQo+ID4gb3BlcmF0aW5nIHBlcmZvcm1hbmNlIHBvaW50cyBjYW4gb3ZlcmhlYXQgdGhlIGNoaXAg
cXVpY2tseSBpbiB0aGUKPiA+IGFic2VuY2Ugb2YgdGhlcm1hbCBtYW5hZ2VtZW50Lgo+ID4KPiA+
IFNpZ25lZC1vZmYtYnk6IEFsZXhleSBDaGFya292IDxhbGNoYXJrQGdtYWlsLmNvbT4KPiA+IC0t
LQo+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzICAg
ICAgICAgICAgICAgfCA0ICsrKysKPiA+ICA4IGZpbGVzIGNoYW5nZWQsIDMyIGluc2VydGlvbnMo
KykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
ODgtcm9jay01Yi5kdHMKPiA+IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgt
cm9jay01Yi5kdHMgaW5kZXgKPiA+IGI4ZTE1Yjc2YThhNi4uMjFlOTZjMjEyZGQ4IDEwMDY0NAo+
ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMK
PiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRz
Cj4gPiBAQCAtNzQyLDYgKzc0MiwxMCBAQCByZWd1bGF0b3Itc3RhdGUtbWVtIHsKPiA+ICAgICAg
IH07Cj4gPiAgfTsKPiA+Cj4gPiArJnRzYWRjIHsKPiA+ICsgICAgIHN0YXR1cyA9ICJva2F5IjsK
PiA+ICt9Owo+ID4gKwo+ID4gICZ1YXJ0MiB7Cj4gPiAgICAgICBwaW5jdHJsLTAgPSA8JnVhcnQy
bTBfeGZlcj47Cj4gPiAgICAgICBzdGF0dXMgPSAib2theSI7Cj4KPiBJIGJ1aWx0IGEga2VybmVs
IHdpdGggdjMgb2YgeW91ciBwYXRjaCBzZXQgYW5kIHNvbWVvbmUgdGVzdGVkIGl0IG9uIGEgUk9D
SyA1Qgo+ICdmb3IgbWUnIGFuZCBpdCBoYWQgdGhlIGZvbGxvd2luZyBsaW5lIGluIGRtZXNnOgo+
Cj4gcm9ja2NoaXAtdGhlcm1hbCBmZWMwMDAwMC50c2FkYzogTWlzc2luZyByb2NrY2hpcCxncmYg
cHJvcGVydHkKPgo+IEknbSBndWVzc2luZyB0aGF0IHR1cm5lZCB1cCBkdWUgdG8gZW5hYmxpbmcg
dHNhZGMsIGJ1dCAoYWxzbykgaW4gdjQgSSBkaWRuJ3QKPiBzZWUgYSBjaGFuZ2Ugd3J0ICJyb2Nr
Y2hpcCxncmYiLgo+IFNob3VsZCB0aGF0IGJlIGRvbmU/IChhc2tpbmc7IEkgZG9uJ3Qga25vdykK
CkknbSBnZXR0aW5nIHRoZSBzYW1lLiBOZWl0aGVyIHRoZSBtYWlubGluZSBUU0FEQyBkcml2ZXIg
WzFdLCBub3IgdGhlCmRvd25zdHJlYW0gb25lIFsyXSBzZWVtcyB0byB1c2UgdGhlIGdyZiBwb2lu
dGVyIG9uIFJLMzU4OCBhdCBhbGwuIEl0CnN0aWxsIHdvcmtzIGluIHNwaXRlIG9mIHRoYXQgd2Fy
bmluZywgYWx0aG91Z2ggSSBjYW4ndCBzZWUgaG93IChvciBpZikKaXQgY29uZmlndXJlcyB0aGUg
cmVzZXQgbWVjaGFuaXNtIHdpdGhvdXQgdGhvc2UgR1JGIHJlZ2lzdGVycy4KCkJlc3QgcmVnYXJk
cywKQWxleGV5CgpbMV0gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5l
bC9naXQvdG9ydmFsZHMvbGludXguZ2l0L3RyZWUvZHJpdmVycy90aGVybWFsL3JvY2tjaGlwX3Ro
ZXJtYWwuYyNuODE4ClsyXSBodHRwczovL2dpdGh1Yi5jb20vcmFkeGEva2VybmVsL2Jsb2Ivc3Rh
YmxlLTUuMTAtcm9jazUvZHJpdmVycy90aGVybWFsL3JvY2tjaGlwX3RoZXJtYWwuYyNMOTYxCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
