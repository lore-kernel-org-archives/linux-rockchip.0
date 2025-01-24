Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31A6BC02182
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jan 2025 03:15:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HbEgAvAY6cLv0jgb2wOVMH8Z165BbBjwFcpi7oQCMB4=; b=UopCqtDHJ1E0Nv
	V/Ms/oDrBxHJyzgMK1XmVHHAO+lOVaRn+5RgN0KBsNXX0aJ4oB8LKutOijyCR94g569o65xxbQ2qc
	tHXcqNxB8bSO4Soxbe6ARTCd145ctv2GNRPXshFQltQoLfUzUf88ttp1LROBnJvgZT46hnQL73t72
	+lWM/MlO8+L1ctV/EWSs81WcL72LSDWSRSpcQw2zemm6W+DSpnXCMCPaqpXG2Frvpmn9TDrnn2tvG
	aE/oTW5mGDp7YUqFQV4S1WleXOYlFU04ipg7bYc8v2xDyvKnTDWaBW829Ed7FRrkLtZUItKhAWTs9
	fHei02gqX3ki1SiUHQ0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tbAAS-0000000DmyQ-1n3k;
	Fri, 24 Jan 2025 03:15:36 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tbA99-0000000Dmok-0Md1
	for linux-rockchip@lists.infradead.org;
	Fri, 24 Jan 2025 03:14:16 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-30613037309so16369591fa.3
        for <linux-rockchip@lists.infradead.org>; Thu, 23 Jan 2025 19:14:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1737688451; x=1738293251; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EU/PQ4VJf1HAvGTZSkAiUG1imY6cPU+66kZ1BUgwrQI=;
        b=gG2+u0T8ZC3HoCzd86MMvw+KWvZ3qNhF8UY0vxWJMgD8bHskrn9NcjroPGJB3iXXzc
         iLiQnRkblosJ3rUUruraov2WJGr4aFP6naeAZl6lvGUgJ5k8ynO6egQPxVK09HGkRn7c
         X1c4q8fe9/AhYk1P0jOvsILj2ChRDuJN9Olqo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737688451; x=1738293251;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EU/PQ4VJf1HAvGTZSkAiUG1imY6cPU+66kZ1BUgwrQI=;
        b=kD+6esg6V3ATLhYWWw4EcKoQGblusXHTDskOCnPyUeUlXooePbb0IQdWLyihCFdzyv
         +UTiApe38FlOTvUPPWQ7hdLqCyyhCni2xxlL3a5g7xSFf64YpDt8fiSJBPHGmjOf3MyQ
         vdReNa4vqoZhZ39qRaPpwVramsZCkKMM547+3EWizKFNMEaPLGRC/sKxgJzEMiG2+GKu
         A3fkxXzcd9MXJEps0sOv4wpOQAB6QcDfVC43Bfd2Cn/EwPdSVpBUIUGCO60wlHPzsEFj
         9hFrJ5jFrNbKVWdLNjMDTn62F5IfsLUzjnHKfg2UCoi/ndab99fmH3JG/mw4gj/H5CgG
         AIUg==
X-Forwarded-Encrypted: i=1; AJvYcCVb+bEVpWPydi0TNfiFLeinb8JqCPeiqz/UYUlkWQhn5+fG9LX1CmZ9e2IQV99DsfVgkUlkL7XBkLsGe4BerA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz4qOIkEBH59kluMg/6o60nqN4f0wUQWJ+MQbrsOmDIXFfYhPbl
	t00uc2HbSsqSWRCHM80QvZzMYFCJWirmdziWrGSueLRslZf3kooZ4z8ZNOXBTJK1T1tGlW3u6ZN
	gd0RF
X-Gm-Gg: ASbGncs+GsJE0uSe/Xd3DgLItAG5jidKn16EAHUGxp4/bwtMj76WjqKn1lLLrnBlD/B
	KEhTY0K+clM1MceT58t3jRax1a0zsLNE73mlu7u38snAQZZKUNdtQNuXAdb9ztJRoZT+zABNgIk
	frgMkfv/AIxP0fmmLPjvWgPSsKcINIQCKgM6gg98MpQIUTOJ7/rFwGkKXZP11eFVhIWKUthEy+V
	iIoN4PWahtccS5JbSwFZ4DVezIXuCzZfQlrjtCPoACU2mX8SJTCzN8TYziae4zLPMmM+vfFhBPM
	K2N8Ed98ZEL1KQPlmaLWBDFCuMT/Y/9pGd7fMfzaqQdq433P
X-Google-Smtp-Source: AGHT+IER/K3VI1aA09QptQn0SH6Z43RShf22cArlO3GBUPlyx5V2LSj3QcJSorJyhng9lHu3mlzqeQ==
X-Received: by 2002:a05:651c:1305:b0:300:1dbd:b252 with SMTP id 38308e7fff4ca-3072ca60bc4mr80758891fa.7.1737688451235;
        Thu, 23 Jan 2025 19:14:11 -0800 (PST)
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com. [209.85.208.182])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3076baedb17sm2046921fa.53.2025.01.23.19.14.10
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jan 2025 19:14:10 -0800 (PST)
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-30229d5b229so15593181fa.0
        for <linux-rockchip@lists.infradead.org>; Thu, 23 Jan 2025 19:14:10 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWXGz0o+CvZgXMBX6NgVe3RLyfb0Uwt3lF8R5ZMT96BWzvtWNMoAh8c2978OPvAAnJBUj/2weOanudpzEpmDQ==@lists.infradead.org
X-Received: by 2002:a2e:bc1d:0:b0:302:264e:29dd with SMTP id
 38308e7fff4ca-3072cb0d869mr106369041fa.24.1737688449583; Thu, 23 Jan 2025
 19:14:09 -0800 (PST)
MIME-Version: 1.0
References: <20250123100747.1841357-1-damon.ding@rock-chips.com>
 <20250123100747.1841357-8-damon.ding@rock-chips.com> <fw74xd2hgwc7iodhh5wb3ovd26tzlsomgypx4hqlqrxl4k2mdf@pycb5ugojyhr>
In-Reply-To: <fw74xd2hgwc7iodhh5wb3ovd26tzlsomgypx4hqlqrxl4k2mdf@pycb5ugojyhr>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 23 Jan 2025 19:13:57 -0800
X-Gmail-Original-Message-ID: <CAD=FV=Ubi11ejFO8asRF57OYGb3fGEFo0mz_04-5yQ89PPw3_A@mail.gmail.com>
X-Gm-Features: AWEUYZmpYwl-43yyRfoSU5RN5Ja9L4Ubzk8XqMfyXD01azhGO7qYiYCgtmJtrGo
Message-ID: <CAD=FV=Ubi11ejFO8asRF57OYGb3fGEFo0mz_04-5yQ89PPw3_A@mail.gmail.com>
Subject: Re: [PATCH v6 07/14] drm/bridge: analogix_dp: Add support to get
 panel from the DP AUX bus
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250123_191415_118955_DC2B00CE 
X-CRM114-Status: GOOD (  35.79  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, vkoul@kernel.org, dri-devel@lists.freedesktop.org, sebastian.reichel@collabora.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, Damon Ding <damon.ding@rock-chips.com>, hjc@rock-chips.com, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksCgpPbiBUaHUsIEphbiAyMywgMjAyNSBhdCAzOjI14oCvQU0gRG1pdHJ5IEJhcnlzaGtvdgo8
ZG1pdHJ5LmJhcnlzaGtvdkBsaW5hcm8ub3JnPiB3cm90ZToKPgo+IE9uIFRodSwgSmFuIDIzLCAy
MDI1IGF0IDA2OjA3OjQwUE0gKzA4MDAsIERhbW9uIERpbmcgd3JvdGU6Cj4gPiBUaGUgbWFpbiBt
b2RpZmljYXRpb24gaXMgbW92aW5nIHRoZSBEUCBBVVggaW5pdGlhbGl6YXRpb24gZnJvbSBmdW5j
dGlvbgo+ID4gYW5hbG9naXhfZHBfYmluZCgpIHRvIGFuYWxvZ2l4X2RwX3Byb2JlKCkuIEluIG9y
ZGVyIHRvIGdldCB0aGUgRURJRCBvZgo+ID4gZURQIHBhbmVsIGR1cmluZyBwcm9iaW5nLCBpdCBp
cyBhbHNvIG5lZWRlZCB0byBhZHZhbmNlIFBNIG9wZXJhaW9ucyB0bwoKbml0OiBzL29wZXJhaW9u
cy9vcGVyYXRpb25zCgoKPiA+IGVuc3VyZSB0aGF0IGVEUCBjb250cm9sbGVyIGFuZCBwaHkgYXJl
IHByZXBhcmVkIGZvciBBVVggdHJhbnNtaXNzaW9uLgo+Cj4gVGhpcyBkb2Vzbid0IHNvdW5kIHJp
Z2h0LiBQZXIgdGhlIGRvY3VtZW50YXRpb24gb2YKPiBkcm1fZHBfYXV4Ojp0cmFuc2ZlcigpLCB0
aGUgZGV2aWNlIHNob3VsZCBwb3dlciBpdHNlbGYgdXAgaWYgdHJhbnNmZXIoKQo+IGlzIGNhbGxl
ZCB3aGVuIGl0IGlzIHBvd2VyZWQgb2ZmLiBUaGUgY2FsbGVyIG11c3Qgb25seSBlbnN1cmUgdGhh
dCB0aGUKPiBwYW5lbCBpcyBvbi4KPgo+IERvdWcsIHdoYXQncyB5b3VyIG9waW5pb24/CgpJIHRo
aW5rIG1heWJlIHRoZSBDTCBkZXNjcmlwdGlvbiBpcyBhIGJpdCBjb25mdXNpbmcsIGJ1dCBsb29r
aW5nIGF0CnRoZSBwYXRjaCBJIHRoaW5rIHRoYXQgdGhlIGdlbmVyYWwgaWRlYSBpcyBjb3JyZWN0
LiBkcm1fZHBfYXV4X2luaXQoKQppcyBleHBlY3RlZCB0byBiZSBjYWxsZWQgaW4gcHJvYmUoKSBh
bmQgbm90IGluIGJpbmQoKS4gLi4uYW5kIGluIG9yZGVyCmZvciBpdCB0byB3b3JrIHRoZW4gcG1f
cnVudGltZSBuZWVkcyB0byBiZSBlbmFibGVkIGF0IHByb2JlIGFuZCBub3QgYXQKYmluZC4gU28g
Ym90aCBvZiB0aG9zZSB0d28gdGhpbmdzIHRoYXQgdGhpcyBwYXRjaCBkb2VzIGFyZSAoaW4gbXkK
b3BpbmlvbikgY29ycmVjdC4KCgo+ID4gSW4gYWRkdGlvbiwgYWRkIGEgbmV3IGZ1bmN0aW9uIGFu
YWxvZ2l4X2RwX3JlbW92ZSgpIHRvIGVuc3VyZSBzeW1tZXRyeQo+ID4gZm9yIFBNIG9wZXJhdGlv
bnMuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogRGFtb24gRGluZyA8ZGFtb24uZGluZ0Byb2NrLWNo
aXBzLmNvbT4KPiA+Cj4gPiAtLS0KPiA+Cj4gPiBDaGFuZ2VzIGluIHY0Ogo+ID4gLSBVc2UgZG9u
ZV9wcm9iaW5nKCkgdG8gY2FsbCBkcm1fb2ZfZmluZF9wYW5lbF9vcl9icmlkZ2UoKSBhbmQKPiA+
ICAgY29tcG9uZW50X2FkZCgpIHdoZW4gZ2V0dGluZyBwYW5lbCBmcm9tIHRoZSBEUCBBVVggYnVz
Cj4gPgo+ID4gQ2hhbmdlcyBpbiB2NToKPiA+IC0gQWR2YW5jZSBQTSBvcGVyYXRpb25zIHRvIG1h
a2UgZURQIEFVWCB3b3JrIHdlbGwKPiA+Cj4gPiBDaGFuZ2VzIGluIHY2Ogo+ID4gLSBVc2UgZGV2
bV9wbV9ydW50aW1lX2VuYWJsZSgpIGluc3RlYWQgb2YgZGV2bV9hZGRfYWN0aW9uX29yX3Jlc2V0
KCkKPiA+IC0gQWRkIGEgbmV3IGZ1bmN0aW9uIGFuYWxvZ2l4X2RwX3JlbW92ZSgpIHRvIGVuc3Vy
ZSBzeW1tZXRyeSBmb3IgUE0KPiA+ICAgb3BlcmF0aW9ucwo+ID4gLS0tCj4gPiAgLi4uL2RybS9i
cmlkZ2UvYW5hbG9naXgvYW5hbG9naXhfZHBfY29yZS5jICAgIHwgNTcgKysrKysrKysrKy0tLS0t
LS0tLQo+ID4gIC4uLi9ncHUvZHJtL3JvY2tjaGlwL2FuYWxvZ2l4X2RwLXJvY2tjaGlwLmMgICB8
ICA0ICsrCj4gPiAgaW5jbHVkZS9kcm0vYnJpZGdlL2FuYWxvZ2l4X2RwLmggICAgICAgICAgICAg
IHwgIDEgKwo+ID4gIDMgZmlsZXMgY2hhbmdlZCwgMzQgaW5zZXJ0aW9ucygrKSwgMjggZGVsZXRp
b25zKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9n
aXgvYW5hbG9naXhfZHBfY29yZS5jIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9h
bmFsb2dpeF9kcF9jb3JlLmMKPiA+IGluZGV4IDgyNTFhZGZjZTJmOS4uMzBkYThhMTQzNjFlIDEw
MDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9k
cF9jb3JlLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9n
aXhfZHBfY29yZS5jCj4gPiBAQCAtMTY1OCwxNCArMTY1OCw0MiBAQCBhbmFsb2dpeF9kcF9wcm9i
ZShzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBhbmFsb2dpeF9kcF9wbGF0X2RhdGEgKnBsYXRf
ZGF0YSkKPiA+ICAgICAgIH0KPiA+ICAgICAgIGRpc2FibGVfaXJxKGRwLT5pcnEpOwoKbm90IHJl
bGF0ZWQgdG8geW91ciBwYXRjaCwgYnV0IHByb2JhYmx5IG5lZWRzIHRvIGJlIGEgcHJlcmVxdWlz
aXRlIG9mCnlvdXIgcGF0Y2g6IGluc3RlYWQgb2YgY2FsbGluZyBkaXNhYmxlX2lycSgpIGhlcmUs
IHlvdSBzaG91bGQgT1IgaW4KIklSUUZfTk9fQVVUT0VOIiB0byB0aGUgImlycV9mbGFncyIgb2Yg
ZGV2bV9yZXF1ZXN0X3RocmVhZGVkX2lycSgpLgpUaGF0IG5vdCBvbmx5IGNsb3NlcyBhIHBvdGVu
dGlhbCByYWNlIGNvbmRpdGlvbiBidXQgYWxzbyBtYWtlcyBhbGwgdGhlCmVycm9yIGhhbmRsaW5n
IG11Y2ggbW9yZSByb2J1c3QuCgoKPiA+ICsgICAgIGRwLT5hdXgubmFtZSA9ICJEUC1BVVgiOwo+
ID4gKyAgICAgZHAtPmF1eC50cmFuc2ZlciA9IGFuYWxvZ2l4X2RwYXV4X3RyYW5zZmVyOwo+ID4g
KyAgICAgZHAtPmF1eC5kZXYgPSBkcC0+ZGV2Owo+ID4gKyAgICAgZHJtX2RwX2F1eF9pbml0KCZk
cC0+YXV4KTsKCkZXSVc6IEkgd291bGQgaGlnaGx5IGVuY291cmFnZSB5b3UgdG8gKGluIGEgc2Vw
YXJhdGUgcGF0Y2gpIGFkZAp3YWl0X2hwZF9hc3NlcnRlZCgpIHN1cHBvcnQgaGVyZS4gSXQgaXMg
ZGVwcmVjYXRlZCB0byBub3QgaW1wbGVtZW50CndhaXRfaHBkX2Fzc2VydGVkKCkuIFNlZSB0aGUg
ZGVmaW5pdGlvbiBvZiAid2FpdF9ocGRfYXNzZXJ0ZWQiIGluCiJzdHJ1Y3QgZHJtX2RwX2F1eCIg
aWYgeW91J3JlIGdvaW5nIHRvIHN1cHBvcnQgZURQIHBhbmVscy4KCgo+ID4gKyAgICAgaWYgKElT
X0VOQUJMRUQoQ09ORklHX1BNKSkgewoKRG8gd2UgcmVhbGx5IHRydWx5IG5lZWQgdGhpcz8gSXMg
dGhlcmUgYW55b25lIGFjdHVhbGx5IHVzaW5nIHRoaXMKZHJpdmVyIHdpdGhvdXQgIkNPTkZJR19Q
TSIsIG9yIGNhbiB3ZSBqdXN0IGFzc3VtZSBDT05GSUdfUE0uIEZvciB0aGUKbW9zdCBwYXJ0IGRy
aXZlcnMgSSd2ZSBpbnRlcmFjdGVkIHdpdGgganVzdCBhc3N1bWUgQ09ORklHX1BNIGFuZAp0aGV5
J3JlIGEgbG90IHNpbXBsZXIgYmVjYXVzZSBvZiBpdC4gSWYgdGhlcmUncyB0cnVseSBhIG5lZWQg
dGhlbiB3ZQpjYW4ga2VlcCB0aGlzIGNvbXBsZXhpdHksIGJ1dCBJJ2QgcmF0aGVyIHdhaXQgdW50
aWwgdGhlcmUgaXMgYSB1c2VyLgpNYXliZSB5b3UgY291bGQgYWRkIHRoaXMgYXMgYSBkZXBlbmRl
bmN5IGluIHRoZSBLY29uZmlnIGlmIG5lZWRlZC4KCgo+ID4gKyAgICAgICAgICAgICBwbV9ydW50
aW1lX3VzZV9hdXRvc3VzcGVuZChkcC0+ZGV2KTsKPiA+ICsgICAgICAgICAgICAgcG1fcnVudGlt
ZV9zZXRfYXV0b3N1c3BlbmRfZGVsYXkoZHAtPmRldiwgMTAwKTsKPiA+ICsgICAgICAgICAgICAg
cmV0ID0gZGV2bV9wbV9ydW50aW1lX2VuYWJsZShkcC0+ZGV2KTsKPiA+ICsgICAgICAgICAgICAg
aWYgKHJldCkKPiA+ICsgICAgICAgICAgICAgICAgICAgICBnb3RvIGVycl9kaXNhYmxlX3BtX3J1
bnRpbWU7Cj4gPiArICAgICB9IGVsc2Ugewo+ID4gKyAgICAgICAgICAgICByZXQgPSBhbmFsb2dp
eF9kcF9yZXN1bWUoZHApOwo+ID4gKyAgICAgICAgICAgICBpZiAocmV0KQo+ID4gKyAgICAgICAg
ICAgICAgICAgICAgIGdvdG8gZXJyX2Rpc2FibGVfY2xrOwoKSU1POiBpZiBhbmFsb2dpeF9kcF9y
ZXN1bWUoKSBzdWNjZWVkcywgdXNlIGRldm1fYWRkX2FjdGlvbl9vcl9yZXNldCgpCnRvIGhhdmUg
YSBmdW5jdGlvbiBjYWxsIGFuYWxvZ2l4X2RwX3N1c3BlbmQoKS4gVGhlbiB5b3UgY2FuIGtlZXAg
dXNpbmcKImRldm0iIGZvciBldmVyeXRoaW5nIGFuZCB0b3RhbGx5IGdldCByaWQgb2YgdGhlIG5l
ZWQgZm9yIHRoZQphbmFsb2dpeF9kcF9yZW1vdmUoKSBmdW5jdGlvbi4KCgo+ID4gKyAgICAgfQo+
ID4gKwo+ID4gICAgICAgcmV0dXJuIGRwOwo+ID4KPiA+ICtlcnJfZGlzYWJsZV9wbV9ydW50aW1l
Ogo+ID4gKyAgICAgcG1fcnVudGltZV9kb250X3VzZV9hdXRvc3VzcGVuZChkcC0+ZGV2KTsKCllv
dSBkb24ndCBuZWVkIHRvIGNhbGwgcG1fcnVudGltZV9kb250X3VzZV9hdXRvc3VzcGVuZCgpLiBJ
ZiB5b3UKZW5hYmxlZCBwbV9ydW50aW1lIHdpdGggZGV2bV9wbV9ydW50aW1lX2VuYWJsZSgpIHRo
ZW4gaXQncyBkb2N1bWVudGVkCnRvIGhhbmRsZSBjYWxsaW5nIHBtX3J1bnRpbWVfZG9udF91c2Vf
YXV0b3N1c3BlbmQoKSBmb3IgeW91LiBTZWUgdGhlCmtlcm5lbCBkb2MgY29tbWVudCBmb3IgZGV2
bV9wbV9ydW50aW1lX2VuYWJsZSgpLiBTbyB5b3UgY2FuIGdldCByaWQgb2YKdGhpcy4KCgo+ID4g
IGVycl9kaXNhYmxlX2NsazoKPiA+ICAgICAgIGNsa19kaXNhYmxlX3VucHJlcGFyZShkcC0+Y2xv
Y2spOwo+ID4gICAgICAgcmV0dXJuIEVSUl9QVFIocmV0KTsKCkh1aD8gV2h5IHdvdWxkIHlvdSBj
YWxsICJlcnJfZGlzYWJsZV9jbGsiIGhlcmU/IFRoZSBvbmx5IHRoaW5nIHRoYXQKZW5hYmxlcyB0
aGUgY2xvY2sgaXMgYW5hbG9naXhfZHBfcmVzdW1lKCksIHJpZ2h0PyBUaGVyZSdzIHNvbWV0aGlu
ZwpmaXNoeSBoZXJlIGFuZCBpdCBwcmVkYXRlcyB5b3VyIHBhdGNoLiBJIHN1c3BlY3QgdGhlcmUg
d2VyZSBwcm9ibGVtcwppbiBjb21taXQgZjM3OTUyMzM5Y2MyICgiZHJtL2JyaWRnZTogYW5hbG9n
aXhfZHA6IGhhbmRsZSBjbG9jayB2aWEKcnVudGltZSBQTSIpLiBZb3Ugc2hvdWxkIGZpeCB0aGF0
IGluIGEgc2VwYXJhdGUgcGF0Y2ggYmVmb3JlIHlvdXJzLgoKCj4gPiArdm9pZCBhbmFsb2dpeF9k
cF9yZW1vdmUoc3RydWN0IGFuYWxvZ2l4X2RwX2RldmljZSAqZHApCj4gPiArewo+ID4gKyAgICAg
aWYgKElTX0VOQUJMRUQoQ09ORklHX1BNKSkKPiA+ICsgICAgICAgICAgICAgcG1fcnVudGltZV9k
b250X3VzZV9hdXRvc3VzcGVuZChkcC0+ZGV2KTsKPiA+ICsgICAgIGVsc2UKPiA+ICsgICAgICAg
ICAgICAgYW5hbG9naXhfZHBfc3VzcGVuZChkcCk7Cj4gPiArfQo+ID4gK0VYUE9SVF9TWU1CT0xf
R1BMKGFuYWxvZ2l4X2RwX3JlbW92ZSk7CgpTZWUgYWJvdmUuIFByb3BlciB1c2Ugb2YgImRldm0i
IHNob3VsZCBtZWFuIHlvdSBkb24ndCBuZWVkIGEgcmVtb3ZlKCkgZnVuY3Rpb24uCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
