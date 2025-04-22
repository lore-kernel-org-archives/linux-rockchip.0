Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24D9AC369C2
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Apr 2025 20:28:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=t2zhN00SUMwf3JjfvWiURMCHlo/UF7Nq2LptDaE+OQE=; b=TyXj5XbHWwTQw7Clh/m/4iQcK/
	LUgOzxgipuk5pdvywzKXzgMABcSiUWZCD8DSx7SDbq91H7WXUR2UOI4sHs0CEDy9QyfDmOn7CyIOE
	XQB5r9QdWxOIVddE2gBWiDsKowJm2JfUHHYl3x4SslwMdanqHuhTfsBTea2VpFY0iPuWCFDPF+mW4
	yBL8cv/Ujd+P6IB8XS53t5s3IFtHTP9Y9wxJijQ9dcAHawrnTdS0UCqjYLM5h5NI+gU3QEGOM5FiP
	70IacBwD7KJRwdF9D7Ci1polUxCcbJFjKquD51ej7mPLTD1/k1oMEYB/GO4nLnkYNoHr/6fIjEHOq
	N1y8F03w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7KDu-00000008Sar-2Sii;
	Tue, 22 Apr 2025 20:28:06 +0000
Received: from mail-oi1-x22a.google.com ([2607:f8b0:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7KC0-00000008S9k-2esr;
	Tue, 22 Apr 2025 20:26:09 +0000
Received: by mail-oi1-x22a.google.com with SMTP id 5614622812f47-3f9a7cbc8f1so1550608b6e.0;
        Tue, 22 Apr 2025 13:26:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745353567; x=1745958367; darn=lists.infradead.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WoutxDXMBduqXkCuqWjStm0QPuDtQY2bdrFerkEpW68=;
        b=fLay7akMI3MmWhoez3eb8u9ezVLKGDsZSUmQYYnhcF9o+VJs4M05+M5BnIW77xqMBv
         32HZZs8oU8nGHT1I1Hlwxh+LwAxcKgGqGd7AAa1onl6KG/ySNrTPxq0NV3Lxm7f3Axsg
         wBR5Ckv4YWbjZPg5gUgrtX3pWBeGmMn6Ta4tvq7owEa0MXv6Z8TK7sOBj9giUnSsqA+d
         mg6DURvJSfdZmBWwY8X4MHGCg346ldD9G97AXQouP1mID0m2l+dUD1/g5waIS1+hpga0
         koWNzpqkolTokaweiQWN8Tpg61CsggNfY3A8+3dTjHnp3xVhJuTDMDePc61YhVUeanX4
         lwdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745353567; x=1745958367;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WoutxDXMBduqXkCuqWjStm0QPuDtQY2bdrFerkEpW68=;
        b=OaFEKC11MGCyB5G4c6bJqnHst7QylZ342OgNgtZYVgbIk9K2TLTV/CfE0DX+BhHBLa
         0mIiK6+SnYkoqkj7n+eav+6OMTz2cbp3rQLii7rzQKpQRu5AZ6P+nWKKBzZrwKlW8LXS
         xMD8NdAmPrEDI1GQ+WbZVl289PmovjkDZULayxBmQ73AMh4ggF0UWWgHRaeVr5dFQlga
         acQuyiuy6PaBAKSwaADAEYLH1If6brfMx1FsJjUU54MDJvg4ZmOG9ZAlhEztS/8toqQy
         EI7qHkuzIO1rC4z0LwmueWas9InneHtq0KpcB3nCyX6ICnc5MOBLhkz7TBGhD8CiqNwZ
         ISvw==
X-Forwarded-Encrypted: i=1; AJvYcCVnztrLsskZrVQwNExEZLu4Ya5rcWo9V2iCvKSkDczZbiW5RYBvYoZVPiqhyaqf4FuqUwcpZfbiFrtGyRvpR7g=@lists.infradead.org, AJvYcCWscOi8aITW3WywWGMas28wk3rqwQ2RdRiDgyi/+JUr5V0aRZJd80VEqCAsBPbnDMBsz85oe0ecLd+/zr0mNS4z@lists.infradead.org
X-Gm-Message-State: AOJu0YzAzVF3j7i9K46ImUag0UsdVHtITKKVmGvoydqQGIF9+HyBtqvx
	7DNx1dWtCyiabFpGo+4hkOpLFSxYtW3dbBSCn9VIqegug382o4K8mH5wPIduMwCxpStOusSTRpu
	C6jws5dfBpDYfLdIHdjz6Y93W79s=
X-Gm-Gg: ASbGncsK6xrI8KlLxc42Fq+u5cCZAMm59fj8l9bndMWmNd2fOktJfdKf5j7evDOEDPu
	JAB6yLgUBfBw6vNZ6MQnE9OsHd4cZBG2lNAO+SZbaAqGUQS3WTNLPmIblYZVY000AINyBjV41qS
	E+DakxOdRdYvnv1eRcZ4kqd+rFV2BijTZreHlAx93lF/F9qLCm1yrENkc=
X-Google-Smtp-Source: AGHT+IFkAZywjoSDdkL2hP/eBGjk1HB0egz5l60coUbGPSwKPLGDjvJRBE1HdJHOzv6S/R4K/hCFH5XEocQXUmUdn/I=
X-Received: by 2002:a05:6870:ac10:b0:29e:2bbd:51cb with SMTP id
 586e51a60fabf-2d526d6e952mr9594105fac.24.1745353567025; Tue, 22 Apr 2025
 13:26:07 -0700 (PDT)
MIME-Version: 1.0
References: <20250318181930.1178256-1-anarsoul@gmail.com>
In-Reply-To: <20250318181930.1178256-1-anarsoul@gmail.com>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Tue, 22 Apr 2025 13:25:40 -0700
X-Gm-Features: ATxdqUH6-tftE_bForjP8SC5aE6ZcyndqNGbLVHkh__U5cPkKzAMq9GnA7-6_1s
Message-ID: <CA+E=qVc7tG7LXA86c_Urp0B3a+Oo6+ssZ_vDp8hvDDW-n1M6cA@mail.gmail.com>
Subject: Re: [PATCH] clk: rockchip: rk3568: Add PLL rate for 33.3MHz
To: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-clk@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_132608_666733_41BC7670 
X-CRM114-Status: GOOD (  13.84  )
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

T24gVHVlLCBNYXIgMTgsIDIwMjUgYXQgMTE6MTnigK9BTSBWYXNpbHkgS2hvcnV6aGljayA8YW5h
cnNvdWxAZ21haWwuY29tPiB3cm90ZToKPgo+IEFkZCBQTEwgcmF0ZSBmb3IgMzMuMyBNSHogdG8g
YWxsb3cgQlRUIEhETUk1IHNjcmVlbiB0byBydW4gYXQgaXRzIG5hdGl2ZQo+IG1vZGUgb2YgODAw
eDQ4MAoKUGluZwoKPiBTaWduZWQtb2ZmLWJ5OiBWYXNpbHkgS2hvcnV6aGljayA8YW5hcnNvdWxA
Z21haWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGstcmszNTY4LmMgfCAx
ICsKPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9jbGsvcm9ja2NoaXAvY2xrLXJrMzU2OC5jIGIvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xr
LXJrMzU2OC5jCj4gaW5kZXggNTNkMTBiMWM2MjdiLi4xYzczZTE4YTk4NjIgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXJrMzU2OC5jCj4gKysrIGIvZHJpdmVycy9jbGsv
cm9ja2NoaXAvY2xrLXJrMzU2OC5jCj4gQEAgLTg5LDYgKzg5LDcgQEAgc3RhdGljIHN0cnVjdCBy
b2NrY2hpcF9wbGxfcmF0ZV90YWJsZSByazM1NjhfcGxsX3JhdGVzW10gPSB7Cj4gICAgICAgICBS
SzMwMzZfUExMX1JBVEUoOTYwMDAwMDAsIDEsIDk2LCA2LCA0LCAxLCAwKSwKPiAgICAgICAgIFJL
MzAzNl9QTExfUkFURSg3ODc1MDAwMCwgNCwgMzE1LCA2LCA0LCAxLCAwKSwKPiAgICAgICAgIFJL
MzAzNl9QTExfUkFURSg3NDI1MDAwMCwgMiwgOTksIDQsIDQsIDEsIDApLAo+ICsgICAgICAgUksz
MDM2X1BMTF9SQVRFKDMzMzAwMDAwLCA0LCAxMTEsIDUsIDQsIDEsIDApLAo+ICAgICAgICAgeyAv
KiBzZW50aW5lbCAqLyB9LAo+ICB9Owo+Cj4gLS0KPiAyLjQ5LjAKPgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
