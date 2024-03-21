Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D781C54E58
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Mar 2024 08:16:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lYigzFQJcCRbM1QxPQZIGAEv3PHIGKOGb+mp25wvMVY=; b=GK81KqeHFDHPAm
	0VpAkW6ejzZZdj7tQr4erCfu0dzH1Kfr8nODrrUmI5SPPnd4FsMwL67wdWql1cNZVdA5W8rBziJlS
	m6Vs9SVKqu9Dsugb1+c6MD5I/fXFq4Qfy4PpjuhTE3nwzijxkAspA+yIZ4yuDDVOOyXk31r+DdgTh
	3I9SOIYDrdn3Gnr1KsTJ51yVKNg5Pz50EMrNVyLV5cdaXxjdXQrnabCawW7bJmZvcSNqMzSkDmFZn
	NucIg0MR5OWKlIbJSFZK88DVbyqAceH1ZuUu1Bty4nkjnALra59VRhgA1shCXfN+g5HW5qjYhy3bp
	cJ5GkmlB/MDLS5SowJbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnDb0-00000002Hdd-1Zjb;
	Thu, 21 Mar 2024 08:16:18 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnDaT-00000002HJY-0Pu2
	for linux-rockchip@lists.infradead.org;
	Thu, 21 Mar 2024 08:16:01 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-a46ea03c2a5so123152566b.1
        for <linux-rockchip@lists.infradead.org>; Thu, 21 Mar 2024 01:15:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711008941; x=1711613741; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=x816MoU6PHSK5OV4r96bOarzyV/+1Q+CoptfU+1txQM=;
        b=euJNrSZMC8mGGsM7MYh5MkxQGUZeUirb9OdHCL+NJcDy/XNWKBkDNoEL4SM74sF1WX
         9gjfq50u6jfR8lZ4nX7bHbyEe1rfwvktzS3EjUxaiRIKtiY8/bxC79D0OuJK1Cns8UCw
         tIGTXuP1K5lSgTEeY6kIKe/xGkDugcaTQYEgpW7CS62+VouSTL5FpOYF2sxY0kBS+bve
         /M3pAey10ltsxhRhMo3h1np2HsPKcN88w3X5xVm2L4cnrqFgPZyJNSaJesrUgnPB+N8g
         SVXQszxEd2D71frl20+zdieJYs568R6uZYDwmrfu2Q2+0FEHbaaYtejR6blnG6C83FYX
         tD0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711008941; x=1711613741;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x816MoU6PHSK5OV4r96bOarzyV/+1Q+CoptfU+1txQM=;
        b=GUoWIuUXy5rHrucYm089COkuSb70+5UVD8whCaUu0EFmEg8oQcT0gtSxjjIJBWJ7HJ
         G3xToWpTJahP5HXoWmYRkaYiLKkpxwkmI01m7P93Z71MjSJSvDhNgvJq4wF757rNLlI9
         iFGoglQH0hy5xBHQkxYELz9sJg+6OlsA5c7nUbv/KZhrzqsZ6HbPOgGgwC/ELLqA9OCw
         GI0hBEkmL8CiUVdGmZMHBgjFenmxtZ0IZCWAT3JD58iyor7O6ONoAho0KIHeL4YaCQ7w
         RFtvxm/btQhp+4O6YlQ8a8QvuERXNNYUjQ10aSs6rDQShxNxMBDLhA1O3U/U4a3FCrGP
         K0vw==
X-Forwarded-Encrypted: i=1; AJvYcCW4DLg93JHndxf8/4OhYEBWt45KCo9NSmxEndGTQj4KrEVrzK9j2R32FK+aEjs75D758sdG6wmz31LLreNZmEeEoqqkTGsSRMyEHMYLVeX9/igF
X-Gm-Message-State: AOJu0YxGHEoVM3XFkRSR+c35xuyENqgycarqgXzjddQK9rK2H56wqjH7
	+R5a0OP7s0jGE5gv8HiQUPjjNgaLbaZmPG832JleEPOk6cS9yTiazjO1mkYKHA0=
X-Google-Smtp-Source: AGHT+IEYkiatPL37N//Ix/BRdeKpjBwTSEgxXwfCLeLYT0Kun6SLo6VDUqL7zQG4KSTdCVIAtECJiQ==
X-Received: by 2002:a17:907:b9cf:b0:a46:f563:a642 with SMTP id xa15-20020a170907b9cf00b00a46f563a642mr1790488ejc.7.1711008941627;
        Thu, 21 Mar 2024 01:15:41 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id a4-20020a170906368400b00a44936527b5sm8253978ejc.99.2024.03.21.01.15.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Mar 2024 01:15:41 -0700 (PDT)
Message-ID: <a60f6017-bd19-431e-8cff-7d73f6f114fe@linaro.org>
Date: Thu, 21 Mar 2024 09:15:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: Add VEPU121 to rk3588
To: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>, linux-kernel@vger.kernel.org
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Dragan Simic <dsimic@manjaro.org>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Chris Morgan <macromorgan@hotmail.com>, Andy Yan <andy.yan@rock-chips.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux.dev
References: <20240320173736.2720778-1-linkmauve@linkmauve.fr>
 <20240320173736.2720778-4-linkmauve@linkmauve.fr>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240320173736.2720778-4-linkmauve@linkmauve.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240321_011545_788862_31DE7EF2 
X-CRM114-Status: GOOD (  12.69  )
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

T24gMjAvMDMvMjAyNCAxODozNywgRW1tYW51ZWwgR2lsIFBleXJvdCB3cm90ZToKPiBUaGUgVFJN
ICh2ZXJzaW9uIDEuMCBwYWdlIDM4NSkgbGlzdHMgZml2ZSBWRVBVMTIxIGNvcmVzLCBidXQgb25s
eSBmb3VyCj4gaW50ZXJydXB0cyBhcmUgbGlzdGVkIChvbiBwYWdlIDI0KSwgc28gSeKAmXZlIG9u
bHkgZW5hYmxlZCBmb3VyIG9mIHRoZW0KPiBmb3Igbm93Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEVt
bWFudWVsIEdpbCBQZXlyb3QgPGxpbmttYXV2ZUBsaW5rbWF1dmUuZnI+Cj4gLS0tCj4gIGFyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy5kdHNpIHwgODAgKysrKysrKysrKysrKysr
KysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDgwIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0t
Z2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLmR0c2kgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMuZHRzaQo+IGluZGV4IDJhMjNiNGRjMzZlNC4u
ZmU3N2I1NmFjOWEwIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTg4cy5kdHNpCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhz
LmR0c2kKPiBAQCAtMjQ4OCw2ICsyNDg4LDg2IEBAIGdwaW80OiBncGlvQGZlYzUwMDAwIHsKPiAg
CQl9Owo+ICAJfTsKPiAgCj4gKwlqcGVnX2VuYzA6IHZpZGVvLWNvZGVjQGZkYmEwMDAwIHsKPiAr
CQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU4OC12ZXB1MTIxIjsKPiArCQlyZWcgPSA8MHgw
IDB4ZmRiYTAwMDAgMHgwIDB4ODAwPjsKPiArCQlpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMTIyIElS
UV9UWVBFX0xFVkVMX0hJR0ggMD47Cj4gKwkJY2xvY2tzID0gPCZjcnUgQUNMS19KUEVHX0VOQ09E
RVIwPiwgPCZjcnUgSENMS19KUEVHX0VOQ09ERVIwPjsKPiArCQljbG9jay1uYW1lcyA9ICJhY2xr
IiwgImhjbGsiOwo+ICsJCWlvbW11cyA9IDwmanBlZ19lbmMwX21tdT47Cj4gKwkJcG93ZXItZG9t
YWlucyA9IDwmcG93ZXIgUkszNTg4X1BEX1ZEUFU+Owo+ICsJfTsKPiArCj4gKwlqcGVnX2VuYzBf
bW11OiBpb21tdUBmZGJhMDgwMCB7Cj4gKwkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1ODgt
aW9tbXUiOwoKSXQgZG9lcyBub3QgbG9vayBsaWtlIHlvdSB0ZXN0ZWQgdGhlIERUUyBhZ2FpbnN0
IGJpbmRpbmdzLiBQbGVhc2UgcnVuCmBtYWtlIGR0YnNfY2hlY2sgVz0xYCAoc2VlCkRvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy93cml0aW5nLXNjaGVtYS5yc3Qgb3IKaHR0cHM6Ly93
d3cubGluYXJvLm9yZy9ibG9nL3RpcHMtYW5kLXRyaWNrcy1mb3ItdmFsaWRhdGluZy1kZXZpY2V0
cmVlLXNvdXJjZXMtd2l0aC10aGUtZGV2aWNldHJlZS1zY2hlbWEvCmZvciBpbnN0cnVjdGlvbnMp
LgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
