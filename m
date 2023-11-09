Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD2A7C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 09:55:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KeUenWvbL4qSDiqKj2JskKD/M65lnVsg3oEMeqEpkc0=; b=rAWvO3R798YFD3
	9zOpoJZhziB6BAfDTJwnN9rxkDLhn2Oo6wwOCjwrhXYiP1KapwL3PnHp1uuMHOODhvZBODaIG/EPR
	/HlV8au7pqxXyiH9kBC0Ts6G68aiIPjmWSNlx0diDPmq/A18u93CnZ01Nvt4N7qH+ps0Ia8RjyqJ5
	Qd65qtMQiChcHCnLcLYiruJXT9Gky7TrIM+fug9LUtRmqT4DDTOyzyvj6aGrIW/EJFeHxJdGt9gzl
	NoBECU+xzQdTehFQB96B5Q28SoyQb4grMnvriWfSQBmsEiiTh2RwZbadRQfdEbnX2QxnuIGqoO/QY
	xfYVGp8U1K7pxUtmqTfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r11l1-005q8k-26;
	Thu, 09 Nov 2023 09:55:27 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r11ky-005q7z-1E
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Nov 2023 09:55:25 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-9c773ac9b15so102936066b.2
        for <linux-rockchip@lists.infradead.org>; Thu, 09 Nov 2023 01:55:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1699523720; x=1700128520; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DilLKYDfiJHifO/My66ufTYoZBnb4NT+vvrqkX7FBNE=;
        b=jqiLGW67P4EbL5M7s8R2xxCF+HwG6kvuTX3h06yVNchxZScDYh2awuo41oeAdlcLD+
         Yx+eFZpzjG/lvH637CtRb3BC8Ahe93vxIf7qcLgecYSOnyFlLLJe79D7XFZgLFsNWXBv
         9JoUP9uY2mpD0pR9Rp+H5mG5P/n6sojjTpXgo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699523720; x=1700128520;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DilLKYDfiJHifO/My66ufTYoZBnb4NT+vvrqkX7FBNE=;
        b=FXD8RPL/SAbaZs6YuHddTxKkjkWn0JwIbPzVKOTnhxH1OjGWAnTTOfOruAbW6Dj3xr
         xeg8VreXonCiGfjzk11ZfgvsDfskQ9rYo+rWQMrcb9EPKkq7tFkPhMC8qyo/O7LWtwdM
         BavJJ8s6URYBfyi7JNAm6DYj3lDvgOEdMRcj6AHic6FNa8NoNieKtLuO8xsVqWMWfmcb
         XoXvZHycBu3WBS8ZY3dZ11URIvDVdc5meAUkFcv8G8cDWFU2gAfjiBdff2i9ZqEWBqJh
         4wz4DCU+ejM32AoDobI53TNahfaY3uF0fDAm0tQiGqU5tw6zuGaxTQzocpFwCFpIyDlu
         Ot1g==
X-Gm-Message-State: AOJu0YzAX+XghrVzuy305TtYYdep3WdfRvejOMm1uPy34K5wWR1XxTTs
	Fg19TY5bEYGhXve3uTaoDTEMQcJyTVGcCZdtJmkAyHS1
X-Google-Smtp-Source: AGHT+IGDt37MK5s7ZS82kIX3OtnCsTYAqRQHMZ3W5cI710Q8jAVWD3mkBio7CSELAh+Z+yQsIs/n8A==
X-Received: by 2002:a17:906:fd85:b0:9c6:1143:b52 with SMTP id xa5-20020a170906fd8500b009c611430b52mr3787236ejb.55.1699523720389;
        Thu, 09 Nov 2023 01:55:20 -0800 (PST)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com. [209.85.208.47])
        by smtp.gmail.com with ESMTPSA id k10-20020a17090646ca00b00985ed2f1584sm2301200ejs.187.2023.11.09.01.55.20
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Nov 2023 01:55:20 -0800 (PST)
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-53de0d1dc46so991312a12.3
        for <linux-rockchip@lists.infradead.org>; Thu, 09 Nov 2023 01:55:20 -0800 (PST)
X-Received: by 2002:a5d:64a9:0:b0:32f:7f09:160f with SMTP id
 m9-20020a5d64a9000000b0032f7f09160fmr4230407wrp.12.1699523312965; Thu, 09 Nov
 2023 01:48:32 -0800 (PST)
MIME-Version: 1.0
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-57-benjamin.gaignard@collabora.com>
 <20231109094311.yzmmn4vvskmrk4tk@chromium.org> <2f5ad14b-528d-4656-84d8-f85467c5b475@collabora.com>
In-Reply-To: <2f5ad14b-528d-4656-84d8-f85467c5b475@collabora.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 9 Nov 2023 18:48:15 +0900
X-Gmail-Original-Message-ID: <CAAFQd5CH=NoDUJArp=6_28WSgkQ3jTMR3SOyx1iYro-7e4c2hA@mail.gmail.com>
Message-ID: <CAAFQd5CH=NoDUJArp=6_28WSgkQ3jTMR3SOyx1iYro-7e4c2hA@mail.gmail.com>
Subject: Re: [PATCH v14 56/56] media: test-drivers: Use helper for DELETE_BUFS ioctl
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: mchehab@kernel.org, m.szyprowski@samsung.com, ming.qian@nxp.com, 
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, 
	gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl, 
	nicolas.dufresne@collabora.com, linux-media@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, 
	kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_015524_442491_E2A68B10 
X-CRM114-Status: GOOD (  18.14  )
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

T24gVGh1LCBOb3YgOSwgMjAyMyBhdCA2OjQ24oCvUE0gQmVuamFtaW4gR2FpZ25hcmQKPGJlbmph
bWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4KPiBMZSAwOS8xMS8yMDIzIMOg
IDEwOjQzLCBUb21hc3ogRmlnYSBhIMOpY3JpdCA6Cj4gPiBPbiBUdWUsIE9jdCAzMSwgMjAyMyBh
dCAwNTozMTowNFBNICswMTAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToKPiA+PiBBbGxvdyB0
ZXN0IGRyaXZlcnMgdG8gdXNlIERFTEVURV9CVUZTIGJ5IGFkZGluZyB2YjJfaW9jdGxfZGVsZXRl
X2J1ZnMoKSBoZWxwZXIuCj4gPj4KPiA+PiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFy
ZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KPiA+PiAtLS0KPiA+PiAgIGRyaXZl
cnMvbWVkaWEvdGVzdC1kcml2ZXJzL3ZpY29kZWMvdmljb2RlYy1jb3JlLmMgfCAgMiArKwo+ID4+
ICAgZHJpdmVycy9tZWRpYS90ZXN0LWRyaXZlcnMvdmltYy92aW1jLWNhcHR1cmUuYyAgICB8ICAy
ICsrCj4gPj4gICBkcml2ZXJzL21lZGlhL3Rlc3QtZHJpdmVycy92aXNsL3Zpc2wtdmlkZW8uYyAg
ICAgIHwgIDIgKysKPiA+PiAgIGRyaXZlcnMvbWVkaWEvdGVzdC1kcml2ZXJzL3ZpdmlkL3Zpdmlk
LWNvcmUuYyAgICAgfCAxMyArKysrKysrKysrLS0tCj4gPj4gICA0IGZpbGVzIGNoYW5nZWQsIDE2
IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gPj4KPiA+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9tZWRpYS90ZXN0LWRyaXZlcnMvdmljb2RlYy92aWNvZGVjLWNvcmUuYyBiL2RyaXZlcnMv
bWVkaWEvdGVzdC1kcml2ZXJzL3ZpY29kZWMvdmljb2RlYy1jb3JlLmMKPiA+PiBpbmRleCA2OWNi
ZTJjMDk0ZTEuLmYxNGE4ZmQ1MDZkMCAxMDA2NDQKPiA+PiAtLS0gYS9kcml2ZXJzL21lZGlhL3Rl
c3QtZHJpdmVycy92aWNvZGVjL3ZpY29kZWMtY29yZS5jCj4gPj4gKysrIGIvZHJpdmVycy9tZWRp
YS90ZXN0LWRyaXZlcnMvdmljb2RlYy92aWNvZGVjLWNvcmUuYwo+ID4+IEBAIC0xMzM5LDYgKzEz
MzksNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHY0bDJfaW9jdGxfb3BzIHZpY29kZWNfaW9jdGxf
b3BzID0gewo+ID4+ICAgICAgLnZpZGlvY19wcmVwYXJlX2J1ZiAgICAgPSB2NGwyX20ybV9pb2N0
bF9wcmVwYXJlX2J1ZiwKPiA+PiAgICAgIC52aWRpb2NfY3JlYXRlX2J1ZnMgICAgID0gdjRsMl9t
Mm1faW9jdGxfY3JlYXRlX2J1ZnMsCj4gPj4gICAgICAudmlkaW9jX2V4cGJ1ZiAgICAgICAgICA9
IHY0bDJfbTJtX2lvY3RsX2V4cGJ1ZiwKPiA+PiArICAgIC52aWRpb2NfZGVsZXRlX2J1ZnMgICAg
ID0gdjRsMl9tMm1faW9jdGxfZGVsZXRlX2J1ZnMsCj4gPj4KPiA+PiAgICAgIC52aWRpb2Nfc3Ry
ZWFtb24gICAgICAgID0gdjRsMl9tMm1faW9jdGxfc3RyZWFtb24sCj4gPj4gICAgICAudmlkaW9j
X3N0cmVhbW9mZiAgICAgICA9IHY0bDJfbTJtX2lvY3RsX3N0cmVhbW9mZiwKPiA+PiBAQCAtMTcy
NSw2ICsxNzI2LDcgQEAgc3RhdGljIGludCBxdWV1ZV9pbml0KHZvaWQgKnByaXYsIHN0cnVjdCB2
YjJfcXVldWUgKnNyY192cSwKPiA+PiAgICAgIGRzdF92cS0+bWVtX29wcyA9ICZ2YjJfdm1hbGxv
Y19tZW1vcHM7Cj4gPj4gICAgICBkc3RfdnEtPnRpbWVzdGFtcF9mbGFncyA9IFY0TDJfQlVGX0ZM
QUdfVElNRVNUQU1QX0NPUFk7Cj4gPj4gICAgICBkc3RfdnEtPmxvY2sgPSBzcmNfdnEtPmxvY2s7
Cj4gPj4gKyAgICBkc3RfdnEtPnN1cHBvcnRzX2RlbGV0ZV9idWZzID0gdHJ1ZTsKPiA+IFNpbmNl
IHdlIGhhdmUgdG8gZXhwbGljaXRseSBwcm92aWRlIHRoZSB2aWRpb2NfZGVsZXRlX2J1ZnMgY2Fs
bGJhY2sgYW55d2F5LAo+ID4gaXMgdGhlcmUgYW55IHZhbHVlIGluIGhhdmluZyBhIHNlcGFyYXRl
IHN1cHBvcnRzX2RlbGV0ZV9idWZzIGZsYWc/IE9yIHdlCj4gPiBlbnZpc2lvbiB0aGF0IHNvbWUg
ZHJpdmVycyB3b3VsZCBzdXBwb3J0IGRlbGV0aW5nIGJ1ZmZlcnMgb25seSBmb3Igc29tZQo+ID4g
cXVldWVzPwo+Cj4gVGhhdCBleGFjdGx5IHRoZSBjYXNlIGZvciBIYW50cm8gZHJpdmVyLCBpdCBj
YW4gc3VwcG9ydCBkZWxldGluZyBidWZmZXJzIG9uCj4gY2FwdHVyZSBxdWV1ZSBidXQgbm90IG9u
IG91dHB1dCBxdWV1ZS4KCkZhaXIgZW5vdWdoLgoKQmVzdCByZWdhcmRzLApUb21hc3oKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
