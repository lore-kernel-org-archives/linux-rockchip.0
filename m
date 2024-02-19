Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 994D5C48BC3
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Feb 2024 08:21:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yBuscGvvZHjzrrYOQe6evGX+pNwyRkq+y4cUEZG9yoA=; b=0gCmbzOIzp25eV
	1VpdP4moRH9DwmlfBusatOJxQpqxFwOM1RFYkrtuGclC1eWsZv2DjzdSLlMx+aEVZiaL4IJ6smDTo
	OB3wwYLKoc74R94dRIPTkVYB48alQU8hkdsWWSWGyD2BbljjQCOuZG68sV0+73lCUiSTvzxrncxMe
	/MqHg5w5lknN4R+N9gHpwxgS1WdFoh0RjycsxGs9hXdYj6J1Q9VqIPuxWlouIAfHHX3nbtIR1mEgZ
	m9qM6IPXrX6ljD7fdVuw97QhpIPrnqB+sfvkgAsBl9vxlKJIrVYgQkqbhhxmijzbx/oeB64svlUS9
	XfCybsAvOEpQTLVp/vEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbyti-00000009Xw9-0ZMz;
	Mon, 19 Feb 2024 08:21:10 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbytg-00000009XvI-1jXx;
	Mon, 19 Feb 2024 08:21:09 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-563ed3d221aso4117111a12.0;
        Mon, 19 Feb 2024 00:21:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708330866; x=1708935666; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mBKDXP+4q2FP5//e66ThZpAWcTrY4eAILWbq0sVnKpI=;
        b=f7MgKhCagOY3euPGDsWHf2i4HFAHAZRdBFtrDwBkuU56xm+i095HZUGIwnHTHS2wW2
         zq82R0YVtp5iFngLG/zN6Pv1p9fCNyJkJoPvKqoL/6/IEorgWPLCHTjHoJSunecNlkZI
         8mAdSXjDkgVmGYgrY2Y1MpM+C5nnCP+XHdpX5cViGhrJ4KPCD4zFiSKmsJuVVej9kmGW
         2GI7yIemRy/Q/p1WgMHRrPLwoEoqDqEqo4ufMlG1ZISG2fnOshHrKwQZIWLpLbMk0gIU
         BhyFG6mSm2XLUlVhf/Pnwv/Q/JjY8a76anUkDcpbFlkYCfvbwb3mJolz4FTTQEyIen7L
         H4Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708330866; x=1708935666;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mBKDXP+4q2FP5//e66ThZpAWcTrY4eAILWbq0sVnKpI=;
        b=WcCA+eOxr+xFAUFgbZD7aK5fax7EAf5OhyyXda3GFvpAnTIvdznKqJBwAPOKoHYvyE
         9i9m4NFjLuPB/KsN1lc+/TD09wEZYGdj/ckMVNmMZFFvGbaF05q9Fk6+QSiEE/LIJvr+
         v4rH24qTYLcPB0dCSsOGO+Dqn9oFBN6ki5VFHUmpA7sTUtKDrIqyv4I/2y3jUhDXVZzg
         +q99odDPzNxzSQJ0llmGW5v23XwKKNI1zTUC8e8iCxXwxOhOtArp+F0CHqaxI7Fivjk9
         wvm6BN2un4g4jdSoT1/irfF6uUpVKaKDAMey+PUAU38GUgwlgwAXyhMzYtJGeYllxwSm
         M57Q==
X-Forwarded-Encrypted: i=1; AJvYcCXK0StyxAjrAGxt5fw05bFzckbzOb2hiKed4AjSg/dyKIPdrU++A+px32MORB9doDuUrWRpEKd5+idZVKYLKPLtJAUANAS8x7B0WgPC0WhzIe1YjH0YIOqObcspCtyHbRlJYxNHRVXurLQvVr4KeFlydrCxOtbCdTY=
X-Gm-Message-State: AOJu0YzzaTjScoKUbC03p1ViHIzy93n6Cf+D5mbXstNPT161X9yldtT3
	e7ZElQ1WsNEZzj9k2u4OG15+w458YHyo8FODT5VRsQqn9dnAIqzAlxlxTEfDqgQVthLC2XDRR8M
	SdFXZy4GKskxFL2NqjMUhjkOk4Nk=
X-Google-Smtp-Source: AGHT+IEsJAubvCl5vdc5tgko+DNharyYkEwBy+6jjjKck75mGFBtNg4Xia6jN5YanvWhnw7HJrZgviXNXN/+a3bigfE=
X-Received: by 2002:a05:6402:1513:b0:561:33dd:621c with SMTP id
 f19-20020a056402151300b0056133dd621cmr9912390edw.7.1708330866311; Mon, 19 Feb
 2024 00:21:06 -0800 (PST)
MIME-Version: 1.0
References: <20240218065407.652213-1-zhangzj@rock-chips.com>
 <20240218085314.658223-1-zhangzj@rock-chips.com> <20240218085314.658223-2-zhangzj@rock-chips.com>
In-Reply-To: <20240218085314.658223-2-zhangzj@rock-chips.com>
From: Weizhao Ouyang <o451686892@gmail.com>
Date: Mon, 19 Feb 2024 16:20:55 +0800
Message-ID: <CAHk0HovRrm3=99eTNvs+4UmdC-LYSuuuuP1Tuobr7KYbD23tCQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] dt-bindings: arm: rockchip: Add Toybrick TB-RK3588X
To: Elon Zhang <zhangzj@rock-chips.com>
Cc: heiko@sntech.de, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, weizhao.ouyang@arm.com, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_002108_471269_FD1AF350 
X-CRM114-Status: GOOD (  12.09  )
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

T24gU3VuLCBGZWIgMTgsIDIwMjQgYXQgNDo1M+KAr1BNIEVsb24gWmhhbmcgPHpoYW5nempAcm9j
ay1jaGlwcy5jb20+IHdyb3RlOgo+Cj4gQWRkIGRldmljZXRyZWUgYmluZGluZyBmb3IgVG95YnJp
Y2sgVEItUkszNTg4WCBib2FyZCBmcm9tIFJvY2tjaGlwIFRveWJyaWNrLgo+Cj4gU2lnbmVkLW9m
Zi1ieTogRWxvbiBaaGFuZyA8emhhbmd6akByb2NrLWNoaXBzLmNvbT4KClJldmlld2VkLWJ5OiBX
ZWl6aGFvIE91eWFuZyA8d2Vpemhhby5vdXlhbmdAYXJtLmNvbT4KCkJSLApXZWl6aGFvCgo+IC0t
LQo+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwg
fCA1ICsrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1n
aXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwg
Yi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwKPiBp
bmRleCA1Y2Y1Y2JlZjJjZjUuLmQyOWRmOTdjN2IyNSAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwKPiArKysgYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwKPiBAQCAtODc4LDYg
Kzg3OCwxMSBAQCBwcm9wZXJ0aWVzOgo+ICAgICAgICAgICAgLSBjb25zdDogcm9ja2NoaXAscnYx
MTA4LWV2Ygo+ICAgICAgICAgICAgLSBjb25zdDogcm9ja2NoaXAscnYxMTA4Cj4KPiArICAgICAg
LSBkZXNjcmlwdGlvbjogUm9ja2NoaXAgVG95YnJpY2sgVEItUkszNTg4WCBib2FyZAo+ICsgICAg
ICAgIGl0ZW1zOgo+ICsgICAgICAgICAgLSBjb25zdDogcm9ja2NoaXAscmszNTg4LXRveWJyaWNr
LXgwCj4gKyAgICAgICAgICAtIGNvbnN0OiByb2NrY2hpcCxyazM1ODgKPiArCj4gICAgICAgIC0g
ZGVzY3JpcHRpb246IFRoZW9icm9tYSBTeXN0ZW1zIFBYMzAtdVE3IHdpdGggSGFpa291IGJhc2Vi
b2FyZAo+ICAgICAgICAgIGl0ZW1zOgo+ICAgICAgICAgICAgLSBjb25zdDogdHNkLHB4MzAtcmlu
Z25lY2staGFpa291Cj4gLS0KPiAyLjM0LjEKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
