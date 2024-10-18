Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05844D2FFE6
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Oct 2024 10:18:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aZtqin4bGgGI+waqETQNCXK7Q5chg216m9S8ZSwRPmU=; b=fBTof2Yv2Hq+kG
	X2PHLwZKgHNQuHcLPxm7mIODPA496i0Evb+Nd9r3UY6zA6vbHsy77wsnryAxSiqC9V5/+60FM6Xt1
	YGlpMFtT+IlLRiCyJzsH/VanaM5a8ZdQgKD61eOL4PbIRlRNL2lWpbw3wLIZ2YYeb+q6id+GtrSei
	jCQrNk+E6GlLy4oNQ7bO2gfGsDoJoHd6gjKS/EGqDgc+GVqQGuUFPvwZQXkpayKAQlCdGJP6P5az8
	Q8YVSPWW4ADOEHKGEylvE/8FRJdAn1uRSfatzU7ECskZdeGDU2co1Wmb4+hiUT7JsfRdNBHRV2L7O
	MNus/+1RJRmkVD8A3mag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1k45-00000000KtP-0TVz;
	Fri, 18 Oct 2024 10:18:37 +0000
Received: from mail-yb1-xb33.google.com ([2607:f8b0:4864:20::b33])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1jpl-00000000HwK-1fiQ
	for linux-rockchip@lists.infradead.org;
	Fri, 18 Oct 2024 10:03:50 +0000
Received: by mail-yb1-xb33.google.com with SMTP id 3f1490d57ef6-e28e4451e0bso1698714276.0
        for <linux-rockchip@lists.infradead.org>; Fri, 18 Oct 2024 03:03:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729245828; x=1729850628; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qhb0Ic3bcpMXH2km/HoGTBWj+bbxwR5zeev1bJh+028=;
        b=rEXboEESi+qwrs+w3EbelB8Dz+dJ2qr4j/BhNljw59Or20BAaujwIZnH5z/Ba1zw4u
         3IQRSNbvS4s7Kljoy3m6vqacikwlCXwzvP138gr2G77WemddFzRCXqak9wEGbjScz07a
         DnuKNVA9vw0AgSm6AaccRQLVjPLdn+4rl5hivS6tyELTF/Y/Vb2TS4BPWSq2CjyKyquN
         OxiNutpotzVYbuDPGAEvmaS6AQXR3hWFKoEIdIfUm7APVq2QqdYuALiY1na97R0O6Lxz
         rfWstG1KKkmRR3EQ4Im59vFWiiJqFU2+7LxqvbcZ9dCPaG3ODSgE4DHP7L7pXCHijMb0
         p71w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729245828; x=1729850628;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qhb0Ic3bcpMXH2km/HoGTBWj+bbxwR5zeev1bJh+028=;
        b=eGCI7vDXcCBPoH5878Ie8lwar6NXbnQKRx/MCSFWc1ylwk2DkqDhwTuq3+vbgGzYqk
         M88dyjxkNkdpk/XqJ+bht8xz0pa9E86gSHP4c97OiYv0I1Zj/iFy+11AlmWdiSXtxRm4
         sGFlNkssKGDATLi1I4wRzILKEB9xprKuPY0qtkIzN215C2oHYsKpwBfmimu4dzFW9B37
         c6h97dAzD5pKxcKY8urUg/TxWMACJ8he3RBjKXjkfIq0NiUPbiqLxWNS0p7inIK/XuNl
         pkRxNgyWWh06gqLM5k5tRMDiFEDA8YaGUcilVtLEP9BhVvSVC1TkyZYRWEx6cuiQa91n
         GMMg==
X-Forwarded-Encrypted: i=1; AJvYcCXRSaO0hLU9t6QGwIT5EC9xFlzeSS/oHqNg0ZuTJh6srrKwIosEy5KjvtDj9zT8b+6P7GXIv33sVZm/3IJNDA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxplYOdqz90b9BXDwp+2fd8gngTGgeI2WcFf5o48oak4GelvcKA
	GwOoLesfFic+LWZikE4gXydPPSSOonX/mgCoqGrjU1Dw4mEJawAMPo+Tsoh6fpOuvpdRNwFTLan
	j/Qv8f8sRKINNEMRYV50wZvakwB9khbEysAgOOg==
X-Google-Smtp-Source: AGHT+IG6+GNKdTTardBqrOSFafCoHKmDQ8VI6s29ziEBvjyDm72unVmqb/41tRAeouig0145z02Jy13eFHz5Np1TynU=
X-Received: by 2002:a05:690c:112:b0:6e3:34ee:6780 with SMTP id
 00721157ae682-6e5bf9e2dd9mr14707267b3.22.1729245827020; Fri, 18 Oct 2024
 03:03:47 -0700 (PDT)
MIME-Version: 1.0
References: <1728368130-37213-1-git-send-email-shawn.lin@rock-chips.com>
 <1728368130-37213-6-git-send-email-shawn.lin@rock-chips.com>
 <CAPDyKForpLcmkqruuTfD6kkJhp_4CKFABWRxFVYNskGL1tjO=w@mail.gmail.com>
 <3969bae0-eeb8-447a-86a5-dfdac0b136cd@rock-chips.com> <CAPDyKFo=GcHG2sGQBrXJ7VWyp59QOmbLCAvHQ3krUympEkid_A@mail.gmail.com>
 <98e0062c-aeb1-4bea-aa2b-4a99115c9da4@rock-chips.com>
In-Reply-To: <98e0062c-aeb1-4bea-aa2b-4a99115c9da4@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 18 Oct 2024 12:03:10 +0200
Message-ID: <CAPDyKFogrPEEe1A3Kghjj3-SSJT2xEoKfo_hU7KZk+d9bZxEYQ@mail.gmail.com>
Subject: Re: [PATCH v3 5/5] scsi: ufs: rockchip: initial support for UFS
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	"James E . J . Bottomley" <James.Bottomley@hansenpartnership.com>, 
	"Martin K . Petersen" <martin.petersen@oracle.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
	YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>, linux-scsi@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-pm@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_030349_496833_9161305D 
X-CRM114-Status: GOOD (  37.37  )
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

T24gRnJpLCAxOCBPY3QgMjAyNCBhdCAxMToyMCwgU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1j
aGlwcy5jb20+IHdyb3RlOgo+Cj4gSGkgVWxmLAo+Cj4g5ZyoIDIwMjQvMTAvMTggMTc6MDcsIFVs
ZiBIYW5zc29uIOWGmemBkzoKPiA+IE9uIFRodSwgMTAgT2N0IDIwMjQgYXQgMDM6MjEsIFNoYXdu
IExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPiB3cm90ZToKPiA+Pgo+ID4+IEhpIFVsZgo+
ID4+Cj4gPj4g5ZyoIDIwMjQvMTAvOSAyMToxNSwgVWxmIEhhbnNzb24g5YaZ6YGTOgo+ID4+PiBb
Li4uXQo+ID4+Pgo+ID4+Pj4gKwo+ID4+Pj4gK3N0YXRpYyBpbnQgdWZzX3JvY2tjaGlwX3J1bnRp
bWVfc3VzcGVuZChzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gPj4+PiArewo+ID4+Pj4gKyAgICAgICBz
dHJ1Y3QgdWZzX2hiYSAqaGJhID0gZGV2X2dldF9kcnZkYXRhKGRldik7Cj4gPj4+PiArICAgICAg
IHN0cnVjdCB1ZnNfcm9ja2NoaXBfaG9zdCAqaG9zdCA9IHVmc2hjZF9nZXRfdmFyaWFudChoYmEp
Owo+ID4+Pj4gKyAgICAgICBzdHJ1Y3QgZ2VuZXJpY19wbV9kb21haW4gKmdlbnBkID0gcGRfdG9f
Z2VucGQoZGV2LT5wbV9kb21haW4pOwo+ID4+Pgo+ID4+PiBwZF90b19nZW5wZCgpIGlzbid0IHNh
ZmUgdG8gdXNlIGxpa2UgdGhpcy4gSXQncyBzb2xlbHkgdG8gYmUgdXNlZCBieQo+ID4+PiBnZW5w
ZCBwcm92aWRlciBkcml2ZXJzLgo+ID4+Pgo+ID4+Pj4gKwo+ID4+Pj4gKyAgICAgICBjbGtfZGlz
YWJsZV91bnByZXBhcmUoaG9zdC0+cmVmX291dF9jbGspOwo+ID4+Pj4gKwo+ID4+Pj4gKyAgICAg
ICAvKgo+ID4+Pj4gKyAgICAgICAgKiBTaG91bGRuJ3QgcG93ZXIgZG93biBpZiBycG1fbHZsIGlz
IGxlc3MgdGhhbiBsZXZlbCA1Lgo+ID4+Pgo+ID4+PiBDYW4geW91IGVsYWJvcmF0ZSBvbiB3aHkg
d2UgbXVzdCBub3QgcG93ZXItb2ZmIHRoZSBwb3dlci1kb21haW4gd2hlbgo+ID4+PiBsZXZlbCBp
cyBsZXNzIHRoYW4gNT8KPiA+Pj4KPiA+Pgo+ID4+IEJlY2F1c2UgdWZzaGNkIGRyaXZlciBhc3N1
bWUgdGhlIGNvbnRyb2xsZXIgaXMgYWN0aXZlIGFuZCB0aGUgbGluayBpcyBvbgo+ID4+IGlmIGxl
dmVsIGlzIGxlc3MgdGhhbiA1LiBTbyB0aGUgZGVmYXVsdCByZXN1bWUgcG9saWN5IHdpbGwgbm90
IHRyeSB0bwo+ID4+IHJlY292ZXIgdGhlIHJlZ2lzdGVycyB1bnRpbCB0aGUgZmlyc3QgZXJyb3Ig
aGFwcGVuZWQuIE90aGVyd2lzZSBpZiB0aGUKPiA+PiBsZXZlbCBpcyA+PTUsIGl0IGFzc3VtZXMg
dGhlIGNvbnRyb2xsZXIgaXMgb2ZmIGFuZCB0aGUgbGluayBpcyBkb3duLAo+ID4+IHRoZW4gaXQg
d2lsbCByZXN0b3JlIHRoZSByZWdpc3RlcnMgYW5kIGxpbmsuCj4gPj4KPiA+PiBBbmQgdGhlIGxl
dmVsIGlzIGNoYW5nZWFibGUgdmlhIHN5c2ZzLgo+ID4KPiA+IE9rYXksIHRoYW5rcyBmb3IgY2xh
cmlmeWluZy4KPiA+Cj4gPj4KPiA+Pj4gV2hhdCBoYXBwZW5zIGlmIHdlIHBvd2VyLW9mZiBhbnl3
YXkgd2hlbiB0aGUgbGV2ZWwgaXMgbGVzcyB0aGFuIDU/Cj4gPj4+Cj4gPj4+PiArICAgICAgICAq
IFRoaXMgZmxhZyB3aWxsIGJlIHBhc3NlZCBkb3duIHRvIHBsYXRmb3JtIHBvd2VyLWRvbWFpbiBk
cml2ZXIKPiA+Pj4+ICsgICAgICAgICogd2hpY2ggaGFzIHRoZSBmaW5hbCBkZWNpc2lvbi4KPiA+
Pj4+ICsgICAgICAgICovCj4gPj4+PiArICAgICAgIGlmIChoYmEtPnJwbV9sdmwgPCBVRlNfUE1f
TFZMXzUpCj4gPj4+PiArICAgICAgICAgICAgICAgZ2VucGQtPmZsYWdzIHw9IEdFTlBEX0ZMQUdf
UlBNX0FMV0FZU19PTjsKPiA+Pj4+ICsgICAgICAgZWxzZQo+ID4+Pj4gKyAgICAgICAgICAgICAg
IGdlbnBkLT5mbGFncyAmPSB+R0VOUERfRkxBR19SUE1fQUxXQVlTX09OOwo+ID4+Pgo+ID4+PiBU
aGUgZ2VucGQtPmZsYWdzIGlzIG5vdCBzdXBwb3NlZCB0byBiZSBjaGFuZ2VkIGxpa2UgdGhpcyAt
IGFuZAo+ID4+PiBlc3BlY2lhbGx5IG5vdCBmcm9tIGEgZ2VucGQgY29uc3VtZXIgZHJpdmVyLgo+
ID4+Pgo+ID4+PiBJIGFtIHRyeWluZyB0byB1bmRlcnN0YW5kIGEgYml0IG1vcmUgb2YgdGhlIHVz
ZSBjYXNlIGhlcmUuIExldCdzIHNlZQo+ID4+PiBpZiB0aGF0IGhlbHBzIG1lIHRvIHBvdGVudGlh
bGx5IHN1Z2dlc3QgYW4gYWx0ZXJuYXRpdmUgYXBwcm9hY2guCj4gPj4+Cj4gPj4KPiA+PiBJIHdh
cyBub3QgZmFtaWxpYXIgd2l0aCB0aGUgZ2VucGQgcGFydCwgc28gSSBoYXZlbid0IGNvbWUgdXAg
d2l0aAo+ID4+IGFub3RoZXIgc29sdXRpb24uIEl0IHdvdWxkIGJlIGdyZWF0IGlmIHlvdSBjYW4g
Z3VpZGUgbWUgdG8gdGhlIHJpZ2h0Cj4gPj4gd2F5Lgo+ID4KPiA+IEkgaGF2ZSBiZWVuIHBsYXlp
bmcgd2l0aCB0aGUgZXhpc3RpbmcgaW5mcmFzdHJ1Y3R1cmUgd2UgaGF2ZSBhdCBoYW5kCj4gPiB0
byBzdXBwb3J0IHRoaXMsIGJ1dCBJIG5lZWQgYSBmZXcgbW9yZSBkYXlzIHRvIGJlIGFibGUgdG8g
cHJvcG9zZQo+ID4gc29tZXRoaW5nIGZvciB5b3UuCj4gPgo+Cj4gTXVjaCBhcHByZWNpYXRlLgo+
Cj4gPj4KPiA+Pj4+ICsKPiA+Pj4+ICsgICAgICAgcmV0dXJuIHVmc2hjZF9ydW50aW1lX3N1c3Bl
bmQoZGV2KTsKPiA+Pj4+ICt9Cj4gPj4+PiArCj4gPj4+PiArc3RhdGljIGludCB1ZnNfcm9ja2No
aXBfcnVudGltZV9yZXN1bWUoc3RydWN0IGRldmljZSAqZGV2KQo+ID4+Pj4gK3sKPiA+Pj4+ICsg
ICAgICAgc3RydWN0IHVmc19oYmEgKmhiYSA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwo+ID4+Pj4g
KyAgICAgICBzdHJ1Y3QgdWZzX3JvY2tjaGlwX2hvc3QgKmhvc3QgPSB1ZnNoY2RfZ2V0X3Zhcmlh
bnQoaGJhKTsKPiA+Pj4+ICsgICAgICAgaW50IGVycjsKPiA+Pj4+ICsKPiA+Pj4+ICsgICAgICAg
ZXJyID0gY2xrX3ByZXBhcmVfZW5hYmxlKGhvc3QtPnJlZl9vdXRfY2xrKTsKPiA+Pj4+ICsgICAg
ICAgaWYgKGVycikgewo+ID4+Pj4gKyAgICAgICAgICAgICAgIGRldl9lcnIoaGJhLT5kZXYsICJm
YWlsZWQgdG8gZW5hYmxlIHJlZiBvdXQgY2xvY2sgJWRcbiIsIGVycik7Cj4gPj4+PiArICAgICAg
ICAgICAgICAgcmV0dXJuIGVycjsKPiA+Pj4+ICsgICAgICAgfQo+ID4+Pj4gKwo+ID4+Pj4gKyAg
ICAgICByZXNldF9jb250cm9sX2Fzc2VydChob3N0LT5yc3QpOwo+ID4+Pj4gKyAgICAgICB1c2xl
ZXBfcmFuZ2UoMSwgMik7Cj4gPj4+PiArICAgICAgIHJlc2V0X2NvbnRyb2xfZGVhc3NlcnQoaG9z
dC0+cnN0KTsKPiA+Pj4+ICsKPiA+Pj4+ICsgICAgICAgcmV0dXJuIHVmc2hjZF9ydW50aW1lX3Jl
c3VtZShkZXYpOwo+ID4+Pj4gK30KPiA+Pj4+ICsKPiA+Pj4+ICtzdGF0aWMgaW50IHVmc19yb2Nr
Y2hpcF9zeXN0ZW1fc3VzcGVuZChzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gPj4+PiArewo+ID4+Pj4g
KyAgICAgICBzdHJ1Y3QgdWZzX2hiYSAqaGJhID0gZGV2X2dldF9kcnZkYXRhKGRldik7Cj4gPj4+
PiArICAgICAgIHN0cnVjdCB1ZnNfcm9ja2NoaXBfaG9zdCAqaG9zdCA9IHVmc2hjZF9nZXRfdmFy
aWFudChoYmEpOwo+ID4+Pj4gKwo+ID4+Pj4gKyAgICAgICAvKiBQYXNzIGRvd24gZGVzaXJlZCBz
cG1fbHZsIHRvIEZpcm13YXJlICovCj4gPj4+PiArICAgICAgIGFybV9zbWNjY19zbWMoUk9DS0NI
SVBfU0lQX1NVU1BFTkRfTU9ERSwgUk9DS0NISVBfU0xFRVBfUERfQ09ORklHLAo+ID4+Pj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgaG9zdC0+cGRfaWQsIGhiYS0+c3BtX2x2bCA8IDUgPyAxIDog
MCwgMCwgMCwgMCwgMCwgTlVMTCk7Cj4gPj4+Cj4gPj4+IENhbiB5b3UgcGxlYXNlIGVsYWJvcmF0
ZSBvbiB3aGF0IGdvZXMgb24gaGVyZT8gSXMgdGhpcyB0dXJuaW5nIG9mZiB0aGUKPiA+Pj4gcG93
ZXItZG9tYWluIHRoYXQgdGhlIGRldiBpcyBhdHRhY2hlZCB0byAtIG9yIHdoYXQgaXMgYWN0dWFs
bHkKPiA+Pj4gaGFwcGVuaW5nPwo+ID4+Pgo+ID4+Cj4gPj4gVGhpcyBzbWMgY2FsbCBpcyB0cnlp
bmcgdG8gYXNrIGZpcm13YXJlIG5vdCB0byB0dXJuIG9mZiB0aGUgcG93ZXItZG9taWFuCj4gPj4g
dGhhdCB0aGUgVUZTIGlzIGF0dGFjaGVkIHRvIGFuZCBhbHNvIG5vdCB0byB0dXJuIG9mZiB0aGUg
cG93ZXIgb2YgVUZTCj4gPj4gY29ubnRyb2xsZXIuCj4gPgo+ID4gT2theSwgdGhhbmtzIGZvciBj
bGFyaWZ5aW5nIQo+ID4KPiA+IEEgZm9sbG93IHVwIHF1ZXN0aW9uLCBkb24ndCB5b3UgbmVlZCB0
byBtYWtlIGEgY29ycmVzcG9uZGluZyBzbWMgY2FsbAo+ID4gdG8gaW5mb3JtIHRoZSBGVyB0aGF0
IGl0J3Mgb2theSB0byB0dXJuIG9mZiB0aGUgcG93ZXItZG9tYWluIGF0IHNvbWUKPiA+IHBvaW50
Pwo+ID4KPgo+IFllcy4gRWFjaCB0aW1lIGVudGVyaW5nIHNsZWVwLCB3ZSB0ZWFjaCBGVyBpZiBp
dCBuZWVkIHRvIHR1cm4gb2ZmIG9yCj4ga2VlcCBwb3dlci1kb21haW4sIGZvciBpbnN0YW5jZSAi
aGJhLT5zcG1fbHZsIDwgNSA/IDEgOiAwIiAsIDAgbWVhbnMKPiBvZmYgYW5kIDEgbWVhbnMgb24u
CgpJIHNlZS4gU28geW91IG5lZWQgdG8gbWFrZSB0aGUgY2FsbCBlYWNoIHRpbWUgd2hlbiBlbnRl
cmluZyB0aGUgc3lzdGVtIHN1c3BlbmQ/CgpPciB3b3VsZCBpdCBiZSBva2F5IHRvIGp1c3QgbWFr
ZSBpdCBvbmNlLCB3aGVuIHRoZSBzcG1fbHZsIGlzIGNoYW5nZWQ/CgpBbm90aGVyIHdheSB0byBk
ZWFsIHdpdGggaXQsIHdvdWxkIGJlIHRvIG1ha2UgdGhlIHNtYyBjYWxsIGVhY2ggdGltZQp0aGUg
cG93ZXItZG9tYWluIGlzIHR1cm5lZC1vbiwgYmFzZWQgb24gc3BtX2x2bCB0b28gb2YgY291cnNl
LgoKV291bGQgdGhhdCB3b3JrPwoKWy4uLl0KCktpbmQgcmVnYXJkcwpVZmZlCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
