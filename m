Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98DB5C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Aug 2024 12:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D4NKUVb+6hNwTr9J/kiY/U5Kv4g78NqiTFMDyFNE+gE=; b=Bc5LA6zaeDBBoJ
	EgOwANqIeIhf/vHcDWACTXrJuoRpsrFmUW9yVI3M6Hvnladzc2EGKoeoV51ERxYtUhSzc0qxCmbrx
	fn21wq6b28P3UY0BvC90yJZdPt7i5GZKv6RYtZ9s97l1DHQyYclR5yFyua4ywwEUn1PcOG7t38JVb
	uMAOQwhAf51H1GYynysWC77qvqUzwziRh0isV5t8Nm6meDHZGS9HGQaOj+dF2pRA4DGxM5+WP2ceu
	hOUzbHsKtzL2E7DqnVHFaq+Q/eLs5TEEPFiYwh3l+Zy8lHJj2hiy8tH69rOZV2E3e12vTERg9W9lm
	q9AhcYl4jy62haBLXJ5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sg1pm-00000001UIr-17h5;
	Mon, 19 Aug 2024 12:50:06 +0000
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sg1pQ-00000001UCz-2jZy;
	Mon, 19 Aug 2024 12:49:46 +0000
Received: by mail-ot1-x336.google.com with SMTP id 46e09a7af769-70943713472so1828077a34.2;
        Mon, 19 Aug 2024 05:49:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724071783; x=1724676583; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YdQ6wlpcd6zBFrPcEejABqSNBgPTmAausutHEMyFQb0=;
        b=PYBOWNC6L8NE6qZgrI44jRQU4eITKrf4XI8DiGX0IWXpnVn43vAJ5ibGGC0h7I2EdV
         AanVaJet6yYRAF5ZeRWFUqi4o6VOg2iB2VjeH7YdnWXX5+Ns9IYMBR8LN9SE0QH5zXgw
         aeSzT0bzsqtOZZvfJS7VlrUqXfqWYbT7cnqwNC6vP1dTg6ELbshpVUL5yRqgQWM/6Tec
         1wuFaD7mQXq0zw6nrPPHSSgww/fxbAjmgUxQOL/mdqbJ3rSue1GHOjBW1h7ctCoGhnWx
         k0CoaZ2gxfB1ML+DZ1GyFGTTL1qtKpcD93CagwkUVCjrC/gCNWVV14D1HcuVIdXhyMPM
         WAeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724071783; x=1724676583;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YdQ6wlpcd6zBFrPcEejABqSNBgPTmAausutHEMyFQb0=;
        b=NxUfkBbz1k7TDMeI7FNM0dqPocBzVXB6xf48c3eAxg9aaq+4BpmcVaxA2kdintUiEc
         jELOJTovCh5zsmvN5SCXj3/h8knX2h6aKSF1ELoGK7NEs4Hu1EAFyQhZXWv0kI6d1wh0
         EDfbuMfoTs0M1wX7OdldhSRrKOM/s2RJ0C+9sC/AlwKOP5ZH8wjKB9oGr8Jaj4DN5hS7
         E9qekApVS+ITRz3T7rcirIMaICjMrPs40aES9uRslw6TCjsh9dqOcyP0+CcJwsF5Sjlu
         TKEUu2hQPfhtWR+KIKdIXZMOskZFc+qbfB8KC19112Nr6c4Kdwr+xBo99I+DLoO3GJrI
         c0Xw==
X-Forwarded-Encrypted: i=1; AJvYcCUTXNAUnkQ2mMapbS+/NTN1bT2Vqp5hnvmFpTmxxKHTWihNS15wMx/QraBrSeDj0Ombb7bK73L9wcuBLwd3oQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YywkTArot8PNB/ygtCGoo62Awc6EZlkmDJTyOVOz0cUrvpSOBm1
	H2vxFVT1yR4VeF7zTubmZrCOA2NLZsOLy67dBHkNOqb/iorVkHcibs+snZqecusbhdoriGMF5xn
	71GUMo9RcCcqJa1HdZ1/Bnzwp0h0=
X-Google-Smtp-Source: AGHT+IE15N0b76vGw7BFec9cXVhf38hULEmoTKL9SUvo9UL2HXloC4b5WXGxGQys+J/XAy9a6e+WeCdIzkhXZxd2VUs=
X-Received: by 2002:a05:6830:6602:b0:708:d84d:f62a with SMTP id
 46e09a7af769-70cac89c004mr14821717a34.22.1724071783245; Mon, 19 Aug 2024
 05:49:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAAMcf8Dts3=6CxNCLZBvXsdFHpaOs9mL2NJ8TMPU5+duray6-g@mail.gmail.com>
 <CAAMcf8DZu4B2AN+=8xP3wuknqUtD-e-v+Ej31=08ibPfyL+dGw@mail.gmail.com>
In-Reply-To: <CAAMcf8DZu4B2AN+=8xP3wuknqUtD-e-v+Ej31=08ibPfyL+dGw@mail.gmail.com>
From: Vicente Bergas <vicencb@gmail.com>
Date: Mon, 19 Aug 2024 14:49:32 +0200
Message-ID: <CAAMcf8A59MqhZEswC5VmKZyThG7oG=ztEYd_yfuOwvGTvKzMow@mail.gmail.com>
Subject: Re: [BUG] Rockchip SPI: Runtime PM usage count underflow!
To: Huang-Huang Bao <i@eh5.me>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-spi@vger.kernel.org, 
	Heiko Stuebner <heiko@sntech.de>, Linus Walleij <linus.walleij@linaro.org>, 
	Sasha Levin <sashal@kernel.org>
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240819_054944_709346_7B32A94B 
X-CRM114-Status: GOOD (  19.57  )
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

T24gTW9uLCBBdWcgMTksIDIwMjQgYXQgNDoxMuKAr0FNIFZpY2VudGUgQmVyZ2FzIDx2aWNlbmNi
QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBPbiBTdW4sIEF1ZyAxOCwgMjAyNCBhdCA4OjEz4oCvUE0g
VmljZW50ZSBCZXJnYXMgPHZpY2VuY2JAZ21haWwuY29tPiB3cm90ZToKPiA+Cj4gPiBIaSwKPiA+
IGkgYW0gYSB1c2VyIG9mIHRoZSBDT05GSUdfU1BJX1NQSURFViBkZXZpY2UuCj4gPiBJdCBzdG9w
cGVkIHdvcmtpbmcgYmV0d2VlbiA2LjggYW5kIDYuMTAuNS4KPiA+IFRoZSBTUEkgYnVzIGl0c2Vs
ZiByZXBvcnRzIG5vIGVycm9ycyB0byB1c2Vyc3BhY2UsIGJ1dCBubyBkZXZpY2VzCj4gPiBhcHBl
YXIgY29ubmVjdGVkIHRvIHRoZSBidXMuCj4gPiBUaGUgcGxhdGZvcm0gdXNlZCBpcyBSSzMzMjgu
Cj4gPiBUaGUgb25seSBzcGktcmVsYXRlZCBtZXNzYWdlIGluIGRtZXNnIGlzOgo+ID4gcm9ja2No
aXAtc3BpIGZmMTkwMDAwLnNwaTogUnVudGltZSBQTSB1c2FnZSBjb3VudCB1bmRlcmZsb3chCj4g
Pgo+ID4gUGxlYXNlLCBjYW4gc29tZWJvZHkgcmV2aWV3IHRoaXMgaXNzdWU/Cj4gPgo+ID4gUmVn
YXJkcywKPiA+ICAgVmljZW50ZS4KPgo+IEkndmUgdHJpZWQgdG8gYmlzZWN0LCBidXQgdGhlcmUg
aXMgc29tZSBzdHJhbmdlIGJlaGF2aW91cjoKPiBUaGUgbWVzc2FnZSAiUnVudGltZSBQTSB1c2Fn
ZSBjb3VudCB1bmRlcmZsb3chIiBjYW4gYWxzbyBhcHBlYXIgb24gYQo+IGdvb2Qga2VybmVsLgo+
IEluIG9yZGVyIHRvIGhhdmUgYSByZWFzb2JsZSBpdGVyYXRpb24gc3BlZWQsIGkgYW0gdXBkYXRp
bmcgdGhlIGtlcm5lbCB2aWEga2V4ZWMuCj4gSWYgYSBnb29kIGtlcm5lbCAoNi42LjMwKSBpcyBj
b2xkLWJvb3RlZCwgdGhlbiwgYWxsIHRoZSBrZXJuZWxzCj4ga2V4ZWMnZCBmcm9tIGl0IHdvcmsg
dG9vLgo+IElmIGEgYmFkIGtlcm5lbCAoNi4xMC41KSBpcyBjb2xkLWJvb3RlZCwgdGhlbiBhIDYu
Ni4zMCBpcyBrZXhlYydkIGFuZAo+IHRoZW4gdGhlIHNhbWUgNi4xMC41IGlzIGtleGVjJ2QgaXQg
YmVjb21lcyBhIGdvb2Qgb25lLgoKQWRkZWQ6Ckh1YW5nLUh1YW5nIEJhbyA8aUBlaDUubWU+Ckxp
bnVzIFdhbGxlaWogPGxpbnVzLndhbGxlaWpAbGluYXJvLm9yZz4KU2FzaGEgTGV2aW4gPHNhc2hh
bEBrZXJuZWwub3JnPgoKVGhlIGZpcnN0IG9mZmVuZGluZyBjb21taXQgaXM6CjI5ZDgxMDFmYjk0
NDI1NDQwNzdlNjhlMjc4MzlhMTk3OWY4NTYzM2QgcGluY3RybDogcm9ja2NoaXA6IGZpeCBwaW5t
dXgKYml0cyBmb3IgUkszMzI4IEdQSU8yLUIgcGlucwoKSSd2ZSBhbHNvIHRlc3RlZCA2LjEwLjYg
d2l0aCBpdCByZXZlcnRlZCAoYW5kCjQ1NjQ0N2ZmMWZlM2MyOGUyZmQ3YjU3YTc5NjUwZjYyMjQ1
YzY0MjggYW5kCjcxMjdjNjhjNzZmMTIwMzY3YjlhNTA1M2Y1MjRkZjBiNjAzZDRhNDggYXMgZGVw
ZW5kZW5jaWVzKSBhbmQgU1BJCndvcmtzIGZpbmUuCgpSZWdhcmRzLAogIFZpY2VudGUuCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
