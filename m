Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08A78CCD193
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 08:20:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3SGfqi8mlwg2VylDC/N8wLJqiJsvqKxOryMfCB9AP0Q=; b=AONSWetqNodhPa
	UVQ+QvdrFkLWaD7V2Y7qk1IHFM5M40dV7JvQtGvJfL76Ejs1hq9Bh8tv0H6swq5XmI8vlX68uNJSi
	hxP/WYz/Wj47ycKZI0FdIZF46IEUOarV3uUii4EMLF0rbAnSTqYhue9W/o9+eMo33NbQYhBuc+z8j
	PF/VDYl5hw/644K86SgpoytYwb7I24dYD+ixDbTxX2RRPK4X4Y72Z00W9fuXW6vH/uGIQj84alZ6U
	O/wFksvbrfCyeU4Y4R7HSlFW3GpTIeua0g0/JKHJYfS2YLFVVWiD/Aqytd4omr0hYgMupySHRpfk5
	62D+7z3s3uG5rMqfDKCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAl7c-0000000CKzl-3fWu;
	Mon, 20 Oct 2025 08:20:04 +0000
Received: from mail-qk1-x731.google.com ([2607:f8b0:4864:20::731])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAl7a-0000000CKyF-0bNj
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Oct 2025 08:20:03 +0000
Received: by mail-qk1-x731.google.com with SMTP id af79cd13be357-816ac9f9507so729072285a.1
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Oct 2025 01:20:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760948400; x=1761553200; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=krtDUBIIbBhf5txhvHZ8ViDPiZJA8hj1zGguCfZUNVQ=;
        b=WgXYjiuMqZq0mWphobYIT/PCVgW9eMRa5WaQAwHGPQBFQiVDCw5JPBcZG51cIY5c1Z
         ikMYdxmcmz3YwpjgM9T9jhsGxQ6Lzrf3perBgc/NFKHqr1II8a6ZgSDc7VbSv8BzO0aV
         Gapm01BGxaS4mo3bLw79lWp7ZZfl3OgjWoqx2Dr5yerWE78RvUoBFA+/kwiG5Mx4Q6Tz
         kaDGap1BSMbC+2PnuzC59WW7ApdXKvfH+ccubSEOjSKVfpqlhVJ7PTu/56zOJOBr0yMs
         KPJkWdrJcxWsUAeqtm3zQGvdLEN9bouC8gVh72Hpxmlqn+sL0dwqhm5u+iUgO74rtGIb
         /KfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760948400; x=1761553200;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=krtDUBIIbBhf5txhvHZ8ViDPiZJA8hj1zGguCfZUNVQ=;
        b=bXKI7SdE5CQ8AoKc7NrqUd8rpdxYWvONRW/4G5+kNZWoWNLQWlTc/fiqcGA15WDY9d
         Lr2qUh6SNUbvKzusDkIrD+8nHq/r3iZ0czP12xgoBftkPQarfeTBIAzVYUmRbDR0U037
         LjCHj5KM7ebdGLeM4ao8uLOE/w/ArfB7ZtZg/K70ueSgyaWHNFTGTXl5pPdIVwJSA6ee
         luHu6PzDw9x1yDeer1hbb397a/58wP+2mKGOEK4vMe8gQVI/w80S8eL1JYf3WvRBYx1x
         LCKAaquPI0935e1/7RmmkY9yBrEvTFKWB5pLLG/BT84rZ+8sFXD08hR/pbVw7yfW1fWS
         gMvA==
X-Forwarded-Encrypted: i=1; AJvYcCXsCyeOiCfQm8z8W8A6kM4zYkk3x3zc4I06f8J4JI/xzjIJ+uBHZdxiE6Im7erRYe+vNmYUH3B7CTwUdTwx/w==@lists.infradead.org
X-Gm-Message-State: AOJu0YwN6EPRF/Ex7yTfGT3U6jT/b+fCgDjoE4ROf9moSsef0FFRaktC
	28ROgdccrP9XjIFzNtc1gH3U62LU5a4LzvWxS81K4anGJ3w1suLoM4HyKctp+YAozGzbkcZy7Y4
	jLvUPeTPlMJ6++Sbx6av89/To8fLh3sg=
X-Gm-Gg: ASbGncuinOoIf1onKkKB7uo20Ie9SzHU9nALx2/khLmOiMKhNbWAtwlZs3BfoVFsero
	0a5MwkkIqBuali3I1FunmwoGQGzDl0Ak215ydzHBwX0R9OesvdQAnlBIAD9hczHkl2waJuYHzNF
	G6/yS2PZmo9ryvPCBvFlA1Y+Rd82wV8ma9h+fdkRFhgxFsDLA0i9JLlgSTe45gXGZCrOdHola3R
	X5xpY5vsaKowskfr1mPClnsbeuA5/3XDj43btPKWO/P6SmC469ymymqhbw+b+xgwSPDVWZwaeb7
	K8UamZ1MNJhJ/tkPQw==
X-Google-Smtp-Source: AGHT+IH00fZSiLlpv5/iK2nqClbPVqEOFs6NjYUaaUpZZ81WenopkIUOdg2ZPbRIOvaCbrU3WZ4RbOVGHG7Hebvs9Kw=
X-Received: by 2002:a05:622a:55:b0:4b3:4fa9:4cd2 with SMTP id
 d75a77b69052e-4e89cfb2443mr191567221cf.33.1760948400448; Mon, 20 Oct 2025
 01:20:00 -0700 (PDT)
MIME-Version: 1.0
References: <20250925-rk3576-evb1-dsi-v1-1-c76fc3740abc@gmail.com>
In-Reply-To: <20250925-rk3576-evb1-dsi-v1-1-c76fc3740abc@gmail.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 20 Oct 2025 12:19:51 +0400
X-Gm-Features: AS18NWCBDCEZzvVwJX4XETqmgmCCBqTdNAVD0aLBXbcVgyOY6pJqe52HL1dPqJA
Message-ID: <CABjd4YwVfrzxYKM4cAG=-fMbw9OcQGZD20CVCG8FvC8phDsw+Q@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add DSI LCD display on rk3576-evb1
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_012002_205112_D3F80A8A 
X-CRM114-Status: GOOD (  15.40  )
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

T24gVGh1LCBTZXAgMjUsIDIwMjUgYXQgMTI6MzjigK9BTSBBbGV4ZXkgQ2hhcmtvdiA8YWxjaGFy
a0BnbWFpbC5jb20+IHdyb3RlOgo+Cj4gQWRkIHN1cHBvcnQgZm9yIHRoZSBSb2NrY2hpcCBXNTUy
NzkzREJBLVYxMCBMQ0QrdG91Y2hzY3JlZW4gYXNzZW1ibHkgd2hpY2gKPiBjb21lcyBwaHlzaWNh
bGx5IGF0dGFjaGVkIHRvIFJvY2tjaGlwIFJLMzU3NiBFVkIxIGJvYXJkcy4KPgo+IFRoZSBkaXNw
bGF5IHBhcnQgaXMgZHJpdmVuIGJ5IHRoZSBvbi1jaGlwIE1JUEkgRFNJIGNvbnRyb2xsZXIsIGFu
ZCB0aGUKPiB0b3VjaHNjcmVlbiBpcyBjb25uZWN0ZWQgb3ZlciBJMkMuCj4KPiBTaWduZWQtb2Zm
LWJ5OiBBbGV4ZXkgQ2hhcmtvdiA8YWxjaGFya0BnbWFpbC5jb20+Cj4gLS0tCj4gTm90ZSB0aGF0
IGJhY2tsaWdodCBzdXBwb3J0IGlzIGxlZnQgb3V0IGZvciBub3csIGFzIGl0IGRlcGVuZHMgb24g
UFdNCj4gc3VwcG9ydCBbMF0gd2hpY2ggaGFzIG5vdCB5ZXQgYmVlbiBtZXJnZWQuCj4KPiBBIHdv
cmthcm91bmQgaXMgc2ltcGx5IGBncGlvc2V0IC1jIDAgMTM9MWAgdG8gc2V0IHRoZSByZXNwZWN0
aXZlIEdQSU8KPiBwaW4gaGlnaCBhbmQgdGh1cyB0byBsaWdodCB1cCB0aGUgZGlzcGxheSB1bmNv
bmRpdGlvbmFsbHkuCj4KPiBbMF0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDI1MDYw
Mi1yazM1NzYtcHdtLXYyLTAtYTY0MzRiMGNlNjBjQGNvbGxhYm9yYS5jb20vCj4gLS0tCj4gIGFy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LWV2YjEtdjEwLmR0cyB8IDg5ICsrKysr
KysrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgODkgaW5zZXJ0aW9ucygrKQoK
SGkgSGVpa28sCgpBbnkgdGhvdWdodHMgYWJvdXQgdGhpcyBvbmU/IENhbiB3ZSBwZXJoYXBzIGdl
dCBpdCBtZXJnZWQgZm9yIC1uZXh0PwoKVGhhbmtzIGEgbG90LApBbGV4ZXkKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
