Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19C23CCA476
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Oct 2025 08:51:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Buuk7CdSCPNfBeYnv93wdFNkHWghzsf6fum8imfEf0=; b=v83PtRy8g42YMa
	2xD77j3E46w0KeOFnTIo35EHqK5chc2jm17OhRMKPoKPnl9SvQw59vJzPiAvOPormDx9rVTIK0ZKW
	1uN+aiCu81RTu9PUyhZr+K8Ez65HoNp8RtpO5buVHsiJ3cei4jbC6IOtj2e3tCP3UnXITi2jN8Gdf
	Mq5Tr/CnIfLqqI5OffN3xNkADFZuDM8kzQ/Qvwvqn/mNjD2vTIJLArbeIzphBtKJ3q1gVgTngC3xl
	0tKgdJ3Ako7mpFvjSsNXTHhulNxVRyw4rWjIrXD+Y5PMu7GaeQXCFYWMU2VPP+oUMY2MFf4KGUyRa
	jxcQ5BuzLQLWDOl4Ic2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8EHG-0000000Cejb-0ojS;
	Mon, 13 Oct 2025 08:51:34 +0000
Received: from mail-qv1-xf2f.google.com ([2607:f8b0:4864:20::f2f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8EHD-0000000CeiZ-1jKJ
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Oct 2025 08:51:32 +0000
Received: by mail-qv1-xf2f.google.com with SMTP id 6a1803df08f44-79ad9aa2d95so69548126d6.1
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Oct 2025 01:51:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760345490; x=1760950290; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qjn80fxqTnWd47bRID7zagiFWJvRCbz/QkHXqwtfnJI=;
        b=fgj/hNU251P+oh1BAcvhocVSKfAMvL3ST+0jz8qIBwByk8/CBwineZ7KoBlyQNzAY5
         ZJs0BZCFZIhVHmKDTwBenDbbEi6HbDTl0DtnRGKI2gD7ZIpqcnpVcO0UHdeO0m/Uxa/p
         nvK+6GzU0MDzVoka4Ajo2SXMR2K2G/j+Yp8MIP84+UI5qhTZ6Ma6PVC36zBzW55Ny6Yu
         bTHZIGR+VJmPplatPFPym2xpcjU1mj6MktZ/pnmd9g5tzsbZ0+3x2grfacxPtOqwGWmg
         qAyS/rjpmPm0fCtRkrus7DmZyF25bI1ZT0HNqAKsdHCkRhJpSYt4DQ/Cy7/iHnel+PnN
         Mpxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760345490; x=1760950290;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qjn80fxqTnWd47bRID7zagiFWJvRCbz/QkHXqwtfnJI=;
        b=h2cIwUlcCkfY9trcG88Jpo76t3HLXCtGBwl9vEOZtb5e4wyfplqMiEBQm/U1Yplgqz
         fga3+XDYKeW8dS/BMII/FMHmbu6yOovNO1wVOKYT3tjD+WXuzNhNFWA3t4h16C6TXs4d
         N20jMez12OQxQWUYH4BML49/yWyfbKDJFutC8Xo6nBaiiZpC4LC8rYOYsjqxvK0L/M0o
         1yTePQGRQAzhRFX+avaPrzaPhn2cV6WouRoICbEt+sVAer5oGauan9BBwRTSebo/RQc5
         tZpfGWu2/+cAB9fb6JjGzGdWTCMeEBEyudLBPFAzU2cZheXg/sfY/ZohpjJIBZN5U2yv
         r2/g==
X-Forwarded-Encrypted: i=1; AJvYcCWrGg1DxsON9eORnDahbHxhnfxiY0EZclRZBNSNPmef9WSuUc7+ESzCRt0S9eL1nG1XKExeBindXe8x42ym/w==@lists.infradead.org
X-Gm-Message-State: AOJu0YwCF6ZYEI9Lrg9eoBTlQP5mZGvfIJf5PkN7fVPwAcOV7bkpLhKA
	stiW9ukJ1LHNYx2HJrKKBVUY3X+4pCBheJ970ohGbg13Tdc/xgXiK4gR4qX/Kdyr9UYsC7ZjLwH
	Zj0fHA1tzcRbFqujCT0pL/jD91MYXs4k=
X-Gm-Gg: ASbGncuPU952r3ozm+sWg+nrqp/Nz7cHlSn6rEPeTzdIiBuYdHogA/Y5kbxaD1nAaRC
	2FzxUqRFnJX3yJVHaUm4J+IVebK99mOEp2OHT1Xn/7ZQRg7/wXHGuojUMNqSgvgEaZDRQc0ARvH
	ZcSAXqH/BsXgyNLMuRJZH5YJJuq8ERlWnhTO18mZz2xGqDTeO0kOrnOwSOR9YHY+SJknTG+Gj4N
	EfuPZCDYbsHGjvKaIhNrF5DFQBzoE5A18q19Q==
X-Google-Smtp-Source: AGHT+IH0ySB3maj/sC8FUBTcxwFiIagWYmPDEWGIQC6hjlTOe05KTYNWC9uE9sG+FKiibmlzh++7qDDMrC8I5v1tVfE=
X-Received: by 2002:a05:6214:2264:b0:78d:4b1a:5ac5 with SMTP id
 6a1803df08f44-87b2ef37479mr282594966d6.48.1760345489748; Mon, 13 Oct 2025
 01:51:29 -0700 (PDT)
MIME-Version: 1.0
References: <20251009084416.45542-4-jjm2473@gmail.com> <20251013070036.66901-1-amadeus@jmu.edu.cn>
In-Reply-To: <20251013070036.66901-1-amadeus@jmu.edu.cn>
From: Liangbin Lian <jjm2473@gmail.com>
Date: Mon, 13 Oct 2025 16:51:16 +0800
X-Gm-Features: AS18NWBHP3UXJATnpuEz0GehP1fSNqq1qliSBomIm1t4FH_TTzg2ldtvn1AzLb4
Message-ID: <CAP_9mL5=GmtJF3nSbfX6gRzPc=fAMrTOfMuOLyWFwq5D4OYUFw@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] arm64: dts: rockchip: add LinkEase EasePi R1
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, heiko@sntech.de, 
	krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_015131_456784_78E73663 
X-CRM114-Status: GOOD (  13.15  )
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

Q2h1a3VuIFBhbiA8YW1hZGV1c0BqbXUuZWR1LmNuPiDkuo4yMDI15bm0MTDmnIgxM+aXpeWRqOS4
gCAxNTowMeWGmemBk++8mgo+Cj4gSGksCj4KPiA+ICsgICAgIHJlZ3VsYXRvci12ZGQwdjk1LTI1
Z2xhbiB7Cj4gPiArICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsK
PiA+ICsgICAgICAgICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiA+ICsgICAgICAg
ICAgICAgcGluY3RybC0wID0gPCZwd3JfMjVnX3Bpbj47Cj4gPiArICAgICAgICAgICAgIGVuYWJs
ZS1hY3RpdmUtaGlnaDsKPiA+ICsgICAgICAgICAgICAgZ3BpbyA9IDwmZ3BpbzMgUktfUEIxIEdQ
SU9fQUNUSVZFX0hJR0g+Owo+ID4gKyAgICAgICAgICAgICByZWd1bGF0b3ItbmFtZSA9ICJ2ZGQw
djk1XzI1Z2xhbiI7Cj4gPiArICAgICAgICAgICAgIHJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0g
PDk1MDAwMD47Cj4gPiArICAgICAgICAgICAgIHJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDk1
MDAwMD47Cj4gPiArICAgICAgICAgICAgIHJlZ3VsYXRvci1ib290LW9uOwo+ID4gKyAgICAgICAg
ICAgICByZWd1bGF0b3ItYWx3YXlzLW9uOwo+Cj4gVGhlIHByb3BlcnR5IG9yZGVyIHNob3VsZCBi
ZSBjb25zaXN0ZW50IHdpdGggb3RoZXIgbm9kZXMuCj4KPiA+ICsgICAgICAgICAgICAgdmluLXN1
cHBseSA9IDwmdmNjM3YzX3N5cz47Cj4gPiArICAgICB9Owo+ID4gKwo+ID4gKyAgICAgdmNjM3Yz
X252bWU6IHJlZ3VsYXRvci12Y2MzdjMtbnZtZSB7Cj4gPiArICAgICAgICAgICAgIGNvbXBhdGli
bGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPiA+ICsgICAgICAgICAgICAgcmVndWxhdG9yLW5hbWUg
PSAidmNjM3YzX252bWUiOwo+ID4gKyAgICAgICAgICAgICByZWd1bGF0b3ItbWluLW1pY3Jvdm9s
dCA9IDwzMzAwMDAwPjsKPiA+ICsgICAgICAgICAgICAgcmVndWxhdG9yLW1heC1taWNyb3ZvbHQg
PSA8MzMwMDAwMD47Cj4gPiArICAgICAgICAgICAgIGVuYWJsZS1hY3RpdmUtaGlnaDsKPiA+ICsg
ICAgICAgICAgICAgZ3BpbyA9IDwmZ3BpbzAgUktfUEE1IEdQSU9fQUNUSVZFX0hJR0g+Owo+ID4g
KyAgICAgICAgICAgICB2aW4tc3VwcGx5ID0gPCZkY18xMnY+Owo+Cj4gU2FtZSBoZXJlLCBrZWVw
IGFscGhhYmV0aWNhbCBvcmRlci4KPgo+ID4gKyAgICAgICAgICAgICBwaW5jdHJsLW5hbWVzID0g
ImRlZmF1bHQiOwo+ID4gKyAgICAgICAgICAgICBwaW5jdHJsLTAgPSA8JnZjYzN2M19udm1lX2Vu
PjsKPiA+ICsgICAgIH07Cj4KPiA+ICsgICAgICAgICAgICAgc3RhdHVzX2xlZDogbGVkLXN0YXR1
cyB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgZ3Bpb3MgPSA8JmdwaW8yIFJLX1BENyBHUElP
X0FDVElWRV9ISUdIPjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBjb2xvciA9IDxMRURfQ09M
T1JfSURfR1JFRU4+Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGZ1bmN0aW9uID0gTEVEX0ZV
TkNUSU9OX1NUQVRVUzsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBsYWJlbCA9ICJncmVlbjpz
dGF0dXMiOwo+Cj4gVGhlICJsYWJlbCIgcHJvcGVydHkgaXMgZGVwcmVjYXRlZC4KPgo+ID4gKyZw
Y2llMngxIHsKPiA+ICsgICAgIHJlc2V0LWdwaW9zID0gPCZncGlvMyBSS19QQTQgR1BJT19BQ1RJ
VkVfSElHSD47Cj4KPiB2cGNpZTN2My1zdXBwbHkgaXMgbWlzc2luZy4KPgo+ID4gKyAgICAgc3Rh
dHVzID0gIm9rYXkiOwo+ID4gK307Cj4KPiA+ICsmcGNpZTN4MSB7Cj4gPiArICAgICBudW0tbGFu
ZXMgPSA8MT47Cj4gPiArICAgICByZXNldC1ncGlvcyA9IDwmZ3BpbzMgUktfUEEzIEdQSU9fQUNU
SVZFX0hJR0g+Owo+Cj4gdnBjaWUzdjMtc3VwcGx5IGlzIG1pc3NpbmcuCj4KPiA+ICsgICAgIHN0
YXR1cyA9ICJva2F5IjsKPiA+ICt9Owo+Cj4gPiArJnNkbW1jMCB7Cj4gPiArICAgICBtYXgtZnJl
cXVlbmN5ID0gPDE1MDAwMDAwMD47Cj4KPiBtYXgtZnJlcXVlbmN5IGhhcyBiZWVuIGRlZmluZWQg
aW4gcmszNTZ4LWJhc2UuZHRzaQo+Cj4gPiArICAgICBuby1zZGlvOwo+ID4gKyAgICAgbm8tbW1j
Owo+Cj4gbm8tbW1jIGFuZCBjYXAtbW1jLWhpZ2hzcGVlZCBhcmUgbXV0dWFsbHkgZXhjbHVzaXZl
Lgo+Cj4gPiArICAgICBidXMtd2lkdGggPSA8ND47Cj4gPiArICAgICBjYXAtbW1jLWhpZ2hzcGVl
ZDsKPgo+ID4gKy8qIE1pY3JvIFNEIGNhcmQgc2xvdCBpcyBub3QgcG9wdWxhdGVkICovCj4gPiAr
LyogV2lmaSBtb2R1bGUgaXMgbm90IHBvcHVsYXRlZCAqLwo+Cj4gV2h5IHdvdWxkIHlvdSBkZWZp
bmUgdGhlbSBpZiB0aGV5IGFyZW4ndCBvbiB0aGUgYm9hcmQ/Cj4KPiA+ICsmc2RtbWMyIHsKPiA+
ICsgICAgIG1heC1mcmVxdWVuY3kgPSA8MTUwMDAwMDAwPjsKPgo+IG1heC1mcmVxdWVuY3kgaGFz
IGJlZW4gZGVmaW5lZCBpbiByazM1NngtYmFzZS5kdHNpCj4KPiA+ICsgICAgIGJ1cy13aWR0aCA9
IDw0PjsKPiA+ICsgICAgIGRpc2FibGUtd3A7Cj4KPiBkaXNhYmxlLXdwIGRvZXMgbm90IHdvcmsg
d2l0aCBzZGlvCj4KPiA+ICsmdXNiMnBoeTBfb3RnIHsKPgo+IHBoeS1zdXBwbHkgaXMgbWlzc2lu
Zy4KPgo+ID4gKyAgICAgc3RhdHVzID0gIm9rYXkiOwo+ID4gK307CgpDaHVrdW4gUGFuOgogSGVs
bG8hCgpBbGwgZXhjZXB0IHVzYjJwaHkwX290ZyB3aWxsIGJlIGZpeGVkLgoKPiA+ICsmdXNiMnBo
eTBfb3RnIHsKPgo+IHBoeS1zdXBwbHkgaXMgbWlzc2luZy4KPgo+ID4gKyAgICAgc3RhdHVzID0g
Im9rYXkiOwo+ID4gK307CgpWQlVTIG9uIHVzYjJwaHkwX290ZyBpcyBmbG9hdGluZywgdGhpcyBV
U0IgcG9ydCBvbmx5IHdvcmtzIG9uCmRldmljZShwZXJpcGhlcmFsKSBtb2RlLgpwaHktc3VwcGx5
IGlzIG9wdGlvbmFsLCBzbyB0aGlzIHNob3VsZCBiZSBmaW5lLCByaWdodD8KCgogIExpYW5nYmlu
IExpYW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
