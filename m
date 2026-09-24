Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35945C98318
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2026 19:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=37bmDWRzBW07utFMJDyS0sWBSs8sG4AfzzxOWk6OgLY=; b=nPHxGxW6Sq5iOx
	9IYrNhCSj6n0F3exWf8DY9ycwLSCYE0YIiIeWzkFsnD/QWrL4jW6T9CYPwJGJGt77M940LOAId5ZX
	6OrigBRLEV20VxjLwtjhkjoFxqPGolMuUeJYm7n0n77VgK7e/9QfzHH53oH9U4D6CMXAt1A5vIb+4
	woAy62LD/A1UZuBwJ28cG9BFZSPd2j4qGa7+ZKbvZO8TRlKgGxE54bCh0176JNuyRpn2O8vgNK4cH
	NzTwbSXfENJLfiFVuWozbvALckdEMLwtqqac0XN6cozt3qR7AA8ROaebXRN4A2+gk128+PmbvVNXa
	r4xR91fuoMTZTi5betKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9oiz-0000000Bzj5-21b4;
	Thu, 24 Sep 2026 19:03:17 +0000
Received: from mail-lr2-x0f.google.com ([2a00:1450:4864:38::f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9oiw-0000000Bzhx-07WX
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Sep 2026 19:03:15 +0000
Received: by mail-lr2-x0f.google.com with SMTP id 38308e7fff4ca-3a49a10ee5aso583511fa.3
        for <linux-rockchip@lists.infradead.org>; Thu, 24 Sep 2026 12:03:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1790276592; cv=none;
        d=google.com; s=arc-20260327;
        b=JGrjjEPOCM2wmk+/FfvXtWjwvUnY8U+qLkoVFVzFLLQxqx0/sQeMuppkOSZ16PhJ3z
         QBSYhnH3FjpP26T6gt2ydCwAKqamQjHc7E87CTA3jn5kXYet0Lb/R8N/9FkX5TEQ7GwF
         RQfEYo1f+nVQPlEqVeNkI/evPYLGFjHwtWVVDyR9wuKpQ65WAE+FPF4pDBTYz5zoC6HP
         QU/XeFkylT7Wj9tXdPR3Q9WWRD7xMyT1cuJNdXYyW6ulo3OfTq/2aV2UzLBCYn90jpbm
         3w2aJOEGrX4qmCDkNWd1sIyL5F+BBr94RAHoxZRCIoFqQhv7283tdaPgjx0cKKI0saWO
         r3kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=EJ1c4rHsHJGZ/tEYJFAlykm9/fk5FPrkQdOE5F+Bc3A=;
        fh=ovr+lc/0xB3b0QZ1a40gVJ5/V7uF+o9ODh4sU/9dyhc=;
        b=MyGkNYKvNS1TXm+LRg1WQgKY1WE8oCcibB0ieS18DcaxE0Pl2PxyWQn5FTWAOyPWyl
         p/MLzrAlqsjxnewM1IFzHwaEhy+Ozt8vjOJ0XTPoGFaG/Frfa9bjGikKgYkStKuYqOeS
         oMubLmhnsUyFHLKB5axzoJaqHTeaZnY2fSuaKncjamPRbjiWhPF4b2opN5VhmSabeu3+
         +nSRUzIVrun9h32bVZN6PV6e0ZML64ttUeakud8s2dnldj5irelgGeBaXKwEIIXdakm7
         EfBcAz/wVZrOHRU59eL/5RAkOqBuTOaSsUE+/0rDnpRhTHTtUHn4i1HxJSpz/1Uw8ZlG
         sd9g==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wermuth-pl.20251104.gappssmtp.com; s=20251104; t=1790276592; x=1790881392; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=EJ1c4rHsHJGZ/tEYJFAlykm9/fk5FPrkQdOE5F+Bc3A=;
        b=JvylZQ4Wvx2cQoaeBhY8d2a2fRkcOmLVSJTEman79KXbDFPNWvGpZvlhPCeAXDXsVL
         OAx9DoDXFicvONLYn8cQ93mQrYkDDBuiarZA3QHiYVw0SBuL/LeiaGivJSnuHhM2Xx73
         k01LiElCupuRXxzJZLrQDuudl3tGN47e8WqcXLQhutRvXw5v5BV2Kv38lNxthXdjH+Vo
         a46KwKtCHQPLLFKUIno7JIzwYoME9KrJtF7BUJRc/3PipCXpQGoAE1HbzvGxxYEqNA6A
         DeWC9ADPxGUMfRLnPdXauXMMiVCRQp/bVZ9M1PL0+aY5RL6U6oLqgMzeS3stOCK5cooS
         ioTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790276592; x=1790881392;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=EJ1c4rHsHJGZ/tEYJFAlykm9/fk5FPrkQdOE5F+Bc3A=;
        b=kvwwteqiHQZLLVYKw4xnKRvV0YwAx407NNaX2EZBXEjaXLpAxjWeiAa28SRYDV5Tdp
         L3KRbltd+1Y2R9p2JAn3uwmnWMHzL4qbWIVGD73WJXwe2AHYphOuW5p84S/dUFaFbe8J
         Y6kowp7gob7QauaE0Kk6e7P162ZxQFhTh3m08nm6BQVmf7Me+iCUMmQl7d9mmXkj3vkz
         Q7zSGPlvxEyHB+rzdHA0Qx5RswvCyFF8ltNCglLCvvoO/uvuLQgnH2jVgekUN6mYyB0c
         Ti0EjHDJjM4Xc6Hp3ZP5C6lv0iYN48NJ85otzpepOUhad6+AwTKL08Vu6ELTick/n2WN
         /fEQ==
X-Forwarded-Encrypted: i=1; AKwUvBz5YR/9/UZF52sLeKtshUFf8FF0WSesTx2QZd72xbAwxA9TC0Ja6IRJhb+1gGqy7I7mhD1HXBrziatPIIqqDA==@lists.infradead.org
X-Gm-Message-State: AFuF++lszipzb3E/IK41+syfVANYNAP7MI8zAaAab3+YwiskZWmxQPcG
	lVdPHsY3NH4vEeARtvOUiOOuverGFA9I6Nrb4oLPgTVidKiK5GCyMUIvj9qy9ATYYfJfZah7HYT
	h0xoeqk1thfYe9+eK6sn7ScgtN7VoCvrMDyC0Y4vHkA==
X-Gm-Gg: AYBFou20BdsWCiveURGhL0MvGATAb04+WTV8Lwg26MHKg6K0pvO2Hev3jukmUnNpg6e
	IXIk6FAdr1BxNDF5LFCXHh49T5bbNF3AX4eafeAUVa+Z1AYfoQeKoFaHesVJ+UlQ64CXuF3Mdx2
	FLxYj99fMjz44EXpMJZW10mNJQi636ADWpwHlxm9UJjuB3ibZkTAQKz4kzQx1VaEBWGBIKfzuwq
	23GxsYISL4AO3oWz8xQEA2hlksregldsZ1559SB8wXIKF0lbOSpxd5EaGph2rUJpgNvrQputP+w
	Stc/DwgdRwKjawmzpu5H96ORTt1y6wK/501AbM/sNlokvepPCqpaln+W3YyTRmPBess=
X-Received: by 2002:a2e:bea8:0:b0:3a5:b507:dfb with SMTP id
 38308e7fff4ca-3a63c408eb4mr9542881fa.29.1790276591671; Thu, 24 Sep 2026
 12:03:11 -0700 (PDT)
MIME-Version: 1.0
References: <20260924071445.441822-1-adam@wermuth.pl> <20260924071445.441822-2-adam@wermuth.pl>
 <e03db2e9-085b-49ff-8d4a-bc112bc4ddd7@kwiboo.se>
In-Reply-To: <e03db2e9-085b-49ff-8d4a-bc112bc4ddd7@kwiboo.se>
From: Adam Wermuth <adam@wermuth.pl>
Date: Thu, 24 Sep 2026 21:03:00 +0200
X-Gm-Features: AclHuK9IKF3aAn5suDmSsCEFKxWsKS6ErHA9CID8WYyLrPR40kN4mqnvEj86JPs
Message-ID: <CABkrwJ6uvjS8bez6j0MZbp2Y+O9RhyU09YOLrUzHaeUEVC=Qkg@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Enable USB 2.0 host1 on Radxa
 ROCK 3B
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_120314_282382_E9AA8B8D 
X-CRM114-Status: GOOD (  20.81  )
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

SGkgSm9uYXMsCgpPbiBUaHUsIDI0IFNlcCAyMDI2IDY6MTIgUE0sIEpvbmFzIEthcmxtYW4gd3Jv
dGU6Cj4gVGhpcyBhbmQgbmV4dCBwYXRjaCBpcyBsaWtlbHkgYmVzdCBzdWl0ZWQgYXMgYW4gZHQt
b3ZlcmxheS4KClRoYW5rcyBmb3IgdGhlIHJldmlldy4gVGhhdCBtYWtlcyBzZW5zZSwgYXMgdGhl
IEIta2V5IHNsb3QgaXMgbm90CmFsd2F5cyBwb3B1bGF0ZWQuCgpGb3IgdjIgSSB3aWxsIG1vdmUg
dGhlIGhvc3QxIGVuYWJsZW1lbnQgYW5kIHRoZSBXV0FOIHBvd2VyLCBSRVNFVCMKYW5kIFdfRElT
QUJMRTEjIGhhbmRsaW5nIGludG8gYSBuZXcgcmszNTY4LXJvY2stM2Itd3dhbi5kdHNvIG92ZXJs
YXksCmFuZCBrZWVwIG9ubHkgdGhlIGZhbiBwYXRjaCBpbiB0aGUgYmFzZSBEVC4KCkFkYW0KCgpj
encuLCAyNCB3cnogMjAyNiBvIDE4OjEyIEpvbmFzIEthcmxtYW4gPGpvbmFzQGt3aWJvby5zZT4g
bmFwaXNhxYIoYSk6Cj4KPiBIaSBBZGFtLAo+Cj4gT24gOS8yNC8yMDI2IDk6MTQgQU0sIEFkYW0g
V2VybXV0aCB3cm90ZToKPiA+IFRoZSBVU0IgMi4wIGRhdGEgbGluZXMgb2YgdGhlIE0uMiBCLWtl
eSBzbG90IGFyZSByb3V0ZWQgdG8gVVNCMl9IT1NUMywKPiA+IHdoaWNoIGlzIHNlcnZlZCBieSB1
c2JfaG9zdDFfZWhjaS9vaGNpIHRocm91Z2ggdGhlIGhvc3QgcG9ydCBvZgo+ID4gdXNiMnBoeTEu
IEVuYWJsZSB0aGUgY29udHJvbGxlcnMgYW5kIHRoZSBQSFkgcG9ydCBzbyB0aGF0IG1vZHVsZXMg
aW4KPiA+IHRoZSBCLWtleSBzbG90LCBzdWNoIGFzIExURSBtb2RlbXMsIGNhbiBlbnVtZXJhdGUu
Cj4KPiBUaGlzIGFuZCBuZXh0IHBhdGNoIGlzIGxpa2VseSBiZXN0IHN1aXRlZCBhcyBhbiBkdC1v
dmVybGF5Lgo+Cj4gUmVnYXJkcywKPiBKb25hcwo+Cj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogQWRh
bSBXZXJtdXRoIDxhZGFtQHdlcm11dGgucGw+Cj4gPiAtLS0KPiA+ICBhcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU2OC1yb2NrLTNiLmR0cyB8IDEzICsrKysrKysrKysrKysKPiA+ICAx
IGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1yb2NrLTNiLmR0cyBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXJvY2stM2IuZHRzCj4gPiBpbmRleCAxNDlhNTMwNmJi
MDMuLmFkOWE5MWMwZDBkMCAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTY4LXJvY2stM2IuZHRzCj4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU2OC1yb2NrLTNiLmR0cwo+ID4gQEAgLTc1OCw2ICs3NTgsMTQgQEAgJnVzYl9o
b3N0MF94aGNpIHsKPiA+ICAgICAgIHN0YXR1cyA9ICJva2F5IjsKPiA+ICB9Owo+ID4KPiA+ICsm
dXNiX2hvc3QxX2VoY2kgewo+ID4gKyAgICAgc3RhdHVzID0gIm9rYXkiOwo+ID4gK307Cj4gPiAr
Cj4gPiArJnVzYl9ob3N0MV9vaGNpIHsKPiA+ICsgICAgIHN0YXR1cyA9ICJva2F5IjsKPiA+ICt9
Owo+ID4gKwo+ID4gICZ1c2JfaG9zdDFfeGhjaSB7Cj4gPiAgICAgICBzdGF0dXMgPSAib2theSI7
Cj4gPiAgfTsKPiA+IEBAIC03ODAsNiArNzg4LDExIEBAICZ1c2IycGh5MSB7Cj4gPiAgICAgICBz
dGF0dXMgPSAib2theSI7Cj4gPiAgfTsKPiA+Cj4gPiArJnVzYjJwaHkxX2hvc3Qgewo+ID4gKyAg
ICAgcGh5LXN1cHBseSA9IDwmdmNjNXYwX3VzYl9ob3N0PjsKPiA+ICsgICAgIHN0YXR1cyA9ICJv
a2F5IjsKPiA+ICt9Owo+ID4gKwo+ID4gICZ1c2IycGh5MV9vdGcgewo+ID4gICAgICAgcGh5LXN1
cHBseSA9IDwmdmNjNXYwX3VzYl9ob3N0PjsKPiA+ICAgICAgIHN0YXR1cyA9ICJva2F5IjsKPgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
