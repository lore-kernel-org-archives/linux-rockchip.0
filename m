Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D1F8C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Aug 2024 09:51:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eBwoc+mCDgvO+TdxEDuwCF1Ch4ROqx1/oyvWMghVR6o=; b=pywpH8D+TJ11tM
	MGm6TCxZ6LN7EpAVV2GJLg2iZjpsN9RNqmVIyQoxItcXKc7GyW7COO+a79mA+PAj/j+NqI7c7z6Sd
	qWvKKhIN8iZotlESPJguEZdEVagGSSmC47isxop9lXs7IGjJH7nZ0jcCbl1Us7hA7145+n5uxxqXQ
	KHa+s4hr90LNU9Mb7K32jSlpQ08mGAp+3Dv+X15WjctiYovbNiEaiMXWiH2f5HjGrXloJCJsPG7wL
	XBrujI68FAqk161k+GhPzzZWHqlC4SLBLVpSQglJhi8o1y33JS4UM8IxGHuxPScU+t0VLY0BFsEeP
	nZNkSajyO22ipmji//Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1setc0-0000000CUZG-2A2Q;
	Fri, 16 Aug 2024 09:51:12 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1setaR-0000000CUA1-0Tp2
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Aug 2024 09:49:36 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-52efd08e6d9so2189284e87.1
        for <linux-rockchip@lists.infradead.org>; Fri, 16 Aug 2024 02:49:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1723801773; x=1724406573; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rDRicemMaQ9tmYiX6MN/UubXh4KqHsRzOY0h3TLIrbw=;
        b=YCczY7/0iGXEYPGbdAkVJsGik8+z7R23cl0TWyEryF9mZoErKsYPzAtyPfXsNp1deV
         0bwDAkKb2UXo4HiMXcs3rmcLNUbgQU4GcS1fd7PPmhf51bY8jX17dSTxbTmQKMfBw2D8
         WtQSImXzSRK1EhmhYua8etGgV0OS7xgLxMJSlR6/867J2vRnFyAi7p2zBm4vVeAZzgH5
         46SlGhS0hDHxKyzJWEZIy2bHSYP8+lwkgZwikk7XIDLpqXob9L/wcVovx0vgl2rhnuG5
         48krD2NELD8HyTlB0axVDIRBgU+ixfgjCASrd1t+qsL5AQZjVB24kYGRj+mgatPBhLZk
         67RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723801773; x=1724406573;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rDRicemMaQ9tmYiX6MN/UubXh4KqHsRzOY0h3TLIrbw=;
        b=YTBnFb3XuStxOpArsUFNS2xc/d89BQmSmpb4WCCGer36L8STUvzylbHeTWtuzujlG9
         lXIWuBmqXqayJ57/huxPsdDY5I8s66RUyLzBPC5dFEvFQ2hmLBmRrWpLaPgjWJSHKJli
         22MUDFTJptPjFE4aOx6ZTs5l5ijmvTbSkyvdwYPt8AxTK3hO5gUcWLGQfdPDUnNlC7h8
         dlViS1AW5cnaYohmyb7rtRVV5sUVDLj/B3tQo+fawg1gKE6Va49bCCVyrqlKX2ldMEAY
         jcu2fBpiW3qVVz9e5Eg7bZuTvKchXeRGoFbEIn0RdFP5IOsz8quU/zjkl53PeYxu3UnM
         0m2g==
X-Forwarded-Encrypted: i=1; AJvYcCWOGonV7AK7ay8eqnhI7MM9VFzfllSvahISZhePi6XxwYBAsGzWVGRjcEX/UxQscJCU1B4by1AcYeUpItuq5c0m5qV+2Vb9AujgQhcjzKIdX0tX
X-Gm-Message-State: AOJu0YxA9eKITHAt42lI+Fzm8pXF1di9offIbdWZLoFG3RBmXoT0YZt1
	SWXzBpm+FGar5WGR91T1iwv3FRpoQJt19yK/z8sH6otwS9MfHL/pUsbTxfiKjHxyPArHfA5jh6o
	5B9FITnHu7rXnjCZhqhm2biJFGpFU0RoauiVDGQ==
X-Google-Smtp-Source: AGHT+IHmg3osOqkxcBCw6cd7nvM2A++r8/levkFNphPgMqmwsQ1uao1fGoTVrUEpZE7F0Rv9IbVTyfY3p5N41sjhPZo=
X-Received: by 2002:a05:6512:3044:b0:530:ae22:a6f0 with SMTP id
 2adb3069b0e04-5331c6927bemr1824198e87.5.1723801772449; Fri, 16 Aug 2024
 02:49:32 -0700 (PDT)
MIME-Version: 1.0
References: <20240815071651.3645949-1-ye.zhang@rock-chips.com> <20240815071651.3645949-4-ye.zhang@rock-chips.com>
In-Reply-To: <20240815071651.3645949-4-ye.zhang@rock-chips.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 16 Aug 2024 11:49:21 +0200
Message-ID: <CAMRc=Me6XHGsmoRLBK3rb90=v7j9ChABMZjkVn4j5WQdzVv96A@mail.gmail.com>
Subject: Re: [PATCH v1 3/5] gpio: rockchip: Set input direction in irq_request_resources
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: linus.walleij@linaro.org, heiko@sntech.de, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, tao.huang@rock-chips.com, 
	finley.xiao@rock-chips.com, tim.chen@rock-chips.com, 
	elaine.zhang@rock-chips.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240816_024935_166038_F75BE55E 
X-CRM114-Status: GOOD (  12.51  )
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

T24gVGh1LCBBdWcgMTUsIDIwMjQgYXQgOToxN+KAr0FNIFllIFpoYW5nIDx5ZS56aGFuZ0Byb2Nr
LWNoaXBzLmNvbT4gd3JvdGU6Cj4KPiBTZXQgaW5wdXQgZGlyZWN0aW9uIHRvIGF2b2lkIEZMQUdf
SVNfT1VUIGluIGdwaW9jaGlwX2xvY2tfYXNfaXJxCj4KClRoYXQgSSBjYW4gdGVsbCBmcm9tIHRo
ZSBjb2RlLiBUaGUgY29tbWl0IG1lc3NhZ2Ugc2hvdWxkIHNheSAqd2h5Kgp5b3UncmUgZG9pbmcg
c29tZXRoaW5nLgoKQmFydAoKPiBTaWduZWQtb2ZmLWJ5OiBZZSBaaGFuZyA8eWUuemhhbmdAcm9j
ay1jaGlwcy5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3Bpby9ncGlvLXJvY2tjaGlwLmMgfCAyICsr
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwaW8vZ3Bpby1yb2NrY2hpcC5jIGIvZHJpdmVycy9ncGlvL2dwaW8tcm9ja2NoaXAuYwo+
IGluZGV4IGIyZjI2YTE2YjFmNi4uODk0OTMyNGVkODE2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3Bpby9ncGlvLXJvY2tjaGlwLmMKPiArKysgYi9kcml2ZXJzL2dwaW8vZ3Bpby1yb2NrY2hpcC5j
Cj4gQEAgLTQ3NSw2ICs0NzUsOCBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX2lycV9yZXFyZXMoc3Ry
dWN0IGlycV9kYXRhICpkKQo+ICAgICAgICAgc3RydWN0IGlycV9jaGlwX2dlbmVyaWMgKmdjID0g
aXJxX2RhdGFfZ2V0X2lycV9jaGlwX2RhdGEoZCk7Cj4gICAgICAgICBzdHJ1Y3Qgcm9ja2NoaXBf
cGluX2JhbmsgKmJhbmsgPSBnYy0+cHJpdmF0ZTsKPgo+ICsgICAgICAgcm9ja2NoaXBfZ3Bpb19k
aXJlY3Rpb25faW5wdXQoJmJhbmstPmdwaW9fY2hpcCwgZC0+aHdpcnEpOwo+ICsKPiAgICAgICAg
IHJldHVybiBncGlvY2hpcF9yZXFyZXNfaXJxKCZiYW5rLT5ncGlvX2NoaXAsIGQtPmh3aXJxKTsK
PiAgfQo+Cj4gLS0KPiAyLjM0LjEKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
