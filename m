Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAF92CD37BE
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 May 2026 19:09:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+4LSq4Ax5MX7RJnLxBeNPgQ5YfAtndKv5v5FsraAG1s=; b=V4VzmL8maywgf1
	G1Lpw8y1fnrVeGOYoQitzoG6gbjQl8WSXBRE8kPLhwxiLZLmJtoqYSROsgB8YLov0E4D7JBd9cuSl
	aQeUyNY5TSmWiE1Yj+L9XRnusRrNEF7MC2UZpzHuku5SPBNM+ngeq+4fbf7s1ZkSGpNUxTgwi5uwe
	ZC/Owq8s8s4DXvoMMJOzjXtPzM4cyTdtIAixvFeAcDlH4MPs3/BvS+jFnAuild4U7RlaPnC2AD7op
	abDjycOmoecGkZ/5ByTWP5psAxcuUZy3c3lGU1hVfwwhgqLaHbSSFa24acQB7uEEUUtIgjMqnJoht
	jsg8H8GMjQrcbZL2eKcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMW09-0000000EZln-0Ckp;
	Mon, 11 May 2026 19:09:13 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMW06-0000000EZkl-2PzZ
	for linux-rockchip@lists.infradead.org;
	Mon, 11 May 2026 19:09:11 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-67da63ae541so8296661a12.0
        for <linux-rockchip@lists.infradead.org>; Mon, 11 May 2026 12:09:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778526548; cv=none;
        d=google.com; s=arc-20240605;
        b=ZoMGU7r/ouqGXl6zosAmC7num2AlHWKi8waWrwCG7fdm6mZU0BWuMd0J5f1e1sUbbi
         ACWqdcPzQQxeAfb+D/o7JDFe2uA9rUfK9dff/nNf7+o3ZV/bCbI4kMzAalvulfsy1HEx
         jvKm9seupHrbWmaRqYCUBoFdN4bVXoP2cdeVJYA18u25qa/HAVbHqDCrQ9QFM1YdAUW/
         CDTzbtqeiaUbjIYO4AZnKS7/BQqOtrGaXEuYJTNbKdIuTNggZ8vNuIrnvEXo9VdMF1qv
         uNZw/GAxwR3m4ILScvO2kKMq6p7EhxKg54VFx5jrBZBrmBQHzJBTwPjyZ3j2qvwaXGLw
         Y5MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=rOTjIaa1U5hMq9uBW5pbtBS83bE1arv/7hzssbbHaGU=;
        fh=yRtiOv/estlYp38YoGqukL2Gyr/DiMcy1uEIHIQCKWM=;
        b=DyOySRa6ZDPUHNQZRBeSkz8+hq1JymBakn8YZrhNqEtX4QjvCIVh+36zABO8ErIZlO
         OZ5SCUAcax9PjmMVybwJuqegjNAob6ijYF4hAqBphrl8WfVOyYP97ypD41kKKE2YWBPm
         bP2zPFigB+QtlmOSupR1kNPqQdVzGOaEVwmMsHQ3yvWENwEQuTITvmk76/NXUZpifOne
         rC0cla4Dq9icEJhMtKUBD71zDoZ10CnWThYlBWYfZmD9zO2DuLqxmr7FVNhl1zcejorQ
         ZQBZRrY+Twjji9SuHOk7S4T8vQ89boRh9h+M7mxEETQDRFXT+jDNtfJfPz5e/Bs4AcD3
         sQRw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778526548; x=1779131348; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rOTjIaa1U5hMq9uBW5pbtBS83bE1arv/7hzssbbHaGU=;
        b=VHI/qNWQUQSZbL+WKkjUV2KtVUoq3QmQFRgqtyweF7R/oaxeV6PZNAIRaozLJCqc4F
         AcS3Ek+qFg054a2bR9cPGLMWtLPXFSTDBf0DXx/+ORHK6oPEnaC2NNYVz6vT071K5cij
         rNVw7BHdQ4VQmAn+p2/WeGgPHbSaK3cYk6tD58b6uR2Bbld+kPxfx3ZjCMInvhCg1W69
         4N5nWkU9pvep62kFJ3En1nNGCw9Q/VJTAD7IL0QvvdrNBNXZ2L/NuUjE62SZPuuEMPrg
         wgDMlfnU1823w9HuLzbb0mjXfRKWb4T/SKoIBaIODPWyRA6F1GOxJnvge0l3m/HKzxwX
         Gj2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778526548; x=1779131348;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rOTjIaa1U5hMq9uBW5pbtBS83bE1arv/7hzssbbHaGU=;
        b=p8xJJQmaiuaDTbgsBPDYBUavzH9Qkil+ywOz5dxuscYpx7X0huHQ8bjyRPMx1swmci
         jI7V9bVNg6BSppNSzy9SEiwRYEsr918WOivjYeBlugmfje1LnRrqQn4KhpLMc89El3To
         EvK7G8UeXjoZDzbC+b4WS/oI34w9P9fkhEubm6qpFA3t3ukpBbiSVm2A7M4MTBPsrjvN
         VaAiBP1ylVyuli3+vCC3M7LHu75iZ0AEvDbcSXEhb0NN5hO94AZmeRfs+mJ+hBcb+eKP
         StI+5aA0BXuV21HtngNXoElmwF7fzx67v3uh085ZpcUMmFTWewSclsZyj/G78FUMg7pB
         WE5w==
X-Forwarded-Encrypted: i=1; AFNElJ+ws8oX9a4t1naCKssvoDlxczOD1+ZpsmEQ5lZzJAw1CueTWmsfsMQ/NxlTbWJ1/7oHa68qgHZjos5q+l3RnA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxha0opyp1m/VjGECcOOBjzrsb8p+GfQDD/KF44dmgSEoW+jH69
	cTsMYb+5ewvD4I0BWmU8SroYI22W1pM4WHY2a1APAT4Rvanu0rxWTEq0TfesiDW/rVE1bjSCgyB
	PGk9wLEWmmeluyF7U3YrFtbxRuyvfAeqME8zw
X-Gm-Gg: Acq92OGSjFTJUvXQSi/oMax82f4WX6TX9woNXgLIQW3wEJyvLVomRhGh6q49wi42uTN
	937xm2vfKv+tyc4grntJXwfi+HGKjTNbfQQrvXEqMRsOPWBbg6G+C1V4HZQoAcQ19O0G3iAzupS
	HD1puI9W5Oyv/jrYf0WL63jzlnigzUQLt20/n9wy8+woC2RXpNplJWFPWTD+KImp9hS+UDeuzSx
	erImtyVMWH48ep9X05FTg1/ueNrsC0EoLVgn+Cbbcvf9N7+RV2yVMlvvhh678S73CGAcgyYoFSc
	obfL4GtE2jr04txJx+MZtcEfghqUpcngIfurHswAJb8o+TfbFQkBEMciQ+OCiO8++NHirsVeZno
	/i37DMLFon/jR2BhDv/J4eqrkeypnkcvc13Nc6YavaqyP4QbOV1oqkOzGex3zq7Qq0qhq
X-Received: by 2002:a05:6402:34ca:b0:67b:7d11:758e with SMTP id
 4fb4d7f45d1cf-67f709eda8emr5625760a12.11.1778526548340; Mon, 11 May 2026
 12:09:08 -0700 (PDT)
MIME-Version: 1.0
References: <20260511032252.361906-1-rosenp@gmail.com> <agH-ivEdw12_3OJz@redhat.com>
In-Reply-To: <agH-ivEdw12_3OJz@redhat.com>
From: Rosen Penev <rosenp@gmail.com>
Date: Mon, 11 May 2026 12:08:56 -0700
X-Gm-Features: AVHnY4KyFKhYps1EIl-0Wn5HhtmX4f1BubILShxhOA0VtEaA21RrQRgVM-Ihf6o
Message-ID: <CAKxU2N-nEx-=KFh9djQRGZVTR_HJTSrJYzAa8NR+4QcNvbkxqw@mail.gmail.com>
Subject: Re: [PATCH] clk: rockchip: Use flexible array for clock table
To: Brian Masney <bmasney@redhat.com>
Cc: linux-clk@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, 
	open list <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_120910_645846_DC02FF99 
X-CRM114-Status: GOOD (  22.45  )
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

T24gTW9uLCBNYXkgMTEsIDIwMjYgYXQgOTowNuKAr0FNIEJyaWFuIE1hc25leSA8Ym1hc25leUBy
ZWRoYXQuY29tPiB3cm90ZToKPgo+IEhpIFJvc2VuLAo+Cj4gT24gU3VuLCBNYXkgMTAsIDIwMjYg
YXQgMDg6MjI6NTJQTSAtMDcwMCwgUm9zZW4gUGVuZXYgd3JvdGU6Cj4gPiBTdG9yZSB0aGUgY2xv
Y2sgbG9va3VwIHRhYmxlIGluIHRoZSBSb2NrY2hpcCBjbG9jayBwcm92aWRlcgo+ID4gYWxsb2Nh
dGlvbiBpbnN0ZWFkIG9mIGFsbG9jYXRpbmcgaXQgc2VwYXJhdGVseS4KPiA+Cj4gPiBUaGlzIHRp
ZXMgdGhlIHRhYmxlIGxpZmV0aW1lIGRpcmVjdGx5IHRvIHRoZSBwcm92aWRlciBhbmQgcmVtb3Zl
cyBhCj4gPiBzZXBhcmF0ZSBhbGxvY2F0aW9uIGZhaWx1cmUgcGF0aCB3aGlsZSBwcmVzZXJ2aW5n
IHRoZSBjbGtfb25lY2VsbF9kYXRhCj4gPiBsb29rdXAgaW50ZXJmYWNlLgo+ID4KPiA+IEFzc2lz
dGVkLWJ5OiBDb2RleDpHUFQtNS41Cj4gPiBTaWduZWQtb2ZmLWJ5OiBSb3NlbiBQZW5ldiA8cm9z
ZW5wQGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay5jIHwg
MTcgKysrKy0tLS0tLS0tLS0tLS0KPiA+ICBkcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGsuaCB8ICAy
ICsrCj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygt
KQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGsuYyBiL2RyaXZl
cnMvY2xrL3JvY2tjaGlwL2Nsay5jCj4gPiBpbmRleCBlZThjNzliOTM4ZDMuLmRiYjRiNmYzM2Fi
YiAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay5jCj4gPiArKysgYi9k
cml2ZXJzL2Nsay9yb2NrY2hpcC9jbGsuYwo+ID4gQEAgLTM1OSwyNiArMzU5LDIxIEBAIHN0YXRp
YyBzdHJ1Y3Qgcm9ja2NoaXBfY2xrX3Byb3ZpZGVyICpyb2NrY2hpcF9jbGtfaW5pdF9iYXNlKAo+
ID4gICAgICAgICAgICAgICB1bnNpZ25lZCBsb25nIG5yX2Nsa3MsIGJvb2wgaGFzX2xhdGVfY2xv
Y2tzKQo+ID4gIHsKPiA+ICAgICAgIHN0cnVjdCByb2NrY2hpcF9jbGtfcHJvdmlkZXIgKmN0eDsK
PiA+IC0gICAgIHN0cnVjdCBjbGsgKipjbGtfdGFibGU7Cj4gPiAgICAgICBzdHJ1Y3QgY2xrICpk
ZWZhdWx0X2Nsa192YWw7Cj4gPiAgICAgICBpbnQgaTsKPiA+Cj4gPiAgICAgICBkZWZhdWx0X2Ns
a192YWwgPSBFUlJfUFRSKGhhc19sYXRlX2Nsb2NrcyA/IC1FUFJPQkVfREVGRVIgOiAtRU5PRU5U
KTsKPiA+Cj4gPiAtICAgICBjdHggPSBremFsbG9jX29iaihzdHJ1Y3Qgcm9ja2NoaXBfY2xrX3By
b3ZpZGVyKTsKPiA+ICsgICAgIGN0eCA9IGt6YWxsb2NfZmxleCgqY3R4LCBjbGtfdGFibGUsIG5y
X2Nsa3MpOwo+ID4gICAgICAgaWYgKCFjdHgpCj4gPiAgICAgICAgICAgICAgIHJldHVybiBFUlJf
UFRSKC1FTk9NRU0pOwo+ID4KPiA+IC0gICAgIGNsa190YWJsZSA9IGt6YWxsb2Nfb2JqcyhzdHJ1
Y3QgY2xrICosIG5yX2Nsa3MpOwo+ID4gLSAgICAgaWYgKCFjbGtfdGFibGUpCj4gPiAtICAgICAg
ICAgICAgIGdvdG8gZXJyX2ZyZWU7Cj4gPiAtCj4gPiAgICAgICBmb3IgKGkgPSAwOyBpIDwgbnJf
Y2xrczsgKytpKQo+ID4gLSAgICAgICAgICAgICBjbGtfdGFibGVbaV0gPSBkZWZhdWx0X2Nsa192
YWw7Cj4gPiArICAgICAgICAgICAgIGN0eC0+Y2xrX3RhYmxlW2ldID0gZGVmYXVsdF9jbGtfdmFs
Owo+ID4KPiA+IC0gICAgIGN0eC0+cmVnX2Jhc2UgPSBiYXNlOwo+ID4gLSAgICAgY3R4LT5jbGtf
ZGF0YS5jbGtzID0gY2xrX3RhYmxlOwo+ID4gICAgICAgY3R4LT5jbGtfZGF0YS5jbGtfbnVtID0g
bnJfY2xrczsKPiA+ICsgICAgIGN0eC0+Y2xrX2RhdGEuY2xrcyA9IGN0eC0+Y2xrX3RhYmxlOwo+
Cj4gV2hlcmUncyB0aGUgX19jb3VudGVkX2J5PyBBbHNvIHN0cnVjdCBjbGtfb25lY2VsbF9kYXRh
IGlzIGVtYmVkZGVkCj4gaW5zaWRlIHN0cnVjdCByb2NrY2hpcF9jbGtfcHJvdmlkZXIsIGFuZCBJ
J20gbm90IHN1cmUgb2ZmaGFuZCBob3cKPiB0aGF0J2xsIHdvcmsuCk5vdCBwcmVzZW50LiBfX2Nv
dW50ZWRfYnkgZG9lcyBub3Qgd29yayB3aXRoIGVtYmVkZGVkIHN0cnVjdCBtZW1iZXJzLgpObyBu
ZWVkIHRvIGFkZCBvbmUgSU1PLgo+Cj4gQnJpYW4KPgo+Cj4gPiArICAgICBjdHgtPnJlZ19iYXNl
ID0gYmFzZTsKPiA+ICAgICAgIGN0eC0+Y3J1X25vZGUgPSBucDsKPiA+ICAgICAgIHNwaW5fbG9j
a19pbml0KCZjdHgtPmxvY2spOwo+ID4KPiA+IEBAIC0zODgsMTAgKzM4Myw2IEBAIHN0YXRpYyBz
dHJ1Y3Qgcm9ja2NoaXBfY2xrX3Byb3ZpZGVyICpyb2NrY2hpcF9jbGtfaW5pdF9iYXNlKAo+ID4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJyb2NrY2hp
cCxncmYiKTsKPiA+Cj4gPiAgICAgICByZXR1cm4gY3R4Owo+ID4gLQo+ID4gLWVycl9mcmVlOgo+
ID4gLSAgICAga2ZyZWUoY3R4KTsKPiA+IC0gICAgIHJldHVybiBFUlJfUFRSKC1FTk9NRU0pOwo+
ID4gIH0KPiA+Cj4gPiAgc3RydWN0IHJvY2tjaGlwX2Nsa19wcm92aWRlciAqcm9ja2NoaXBfY2xr
X2luaXQoc3RydWN0IGRldmljZV9ub2RlICpucCwKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Ns
ay9yb2NrY2hpcC9jbGsuaCBiL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay5oCj4gPiBpbmRleCA5
ZTM1MDNlMmZmYzIuLmQ0MDMzYmY3NTBmNSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvY2xrL3Jv
Y2tjaGlwL2Nsay5oCj4gPiArKysgYi9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGsuaAo+ID4gQEAg
LTYwNCw2ICs2MDQsNyBAQCBzdHJ1Y3Qgcm9ja2NoaXBfYXV4X2dyZiB7Cj4gPiAgICogQGdyZjog
cmVnbWFwIG9mIHRoZSBnZW5lcmFsLXJlZ2lzdGVyLWZpbGVzIHN5c2Nvbgo+ID4gICAqIEBhdXhf
Z3JmX3RhYmxlOiBoYXNodGFibGUgb2YgYXV4aWxpYXJ5IEdSRiByZWdtYXBzLCBpbmRleGVkIGJ5
IGdyZl90eXBlCj4gPiAgICogQGxvY2s6IG1haW50YWlucyBleGNsdXNpb24gYmV0d2VlbiBjYWxs
YmFja3MgZm9yIGEgZ2l2ZW4gY2xvY2stcHJvdmlkZXIuCj4gPiArICogQGNsa190YWJsZTogY2xv
Y2sgbG9va3VwIHRhYmxlLgo+ID4gICAqLwo+ID4gIHN0cnVjdCByb2NrY2hpcF9jbGtfcHJvdmlk
ZXIgewo+ID4gICAgICAgdm9pZCBfX2lvbWVtICpyZWdfYmFzZTsKPiA+IEBAIC02MTIsNiArNjEz
LDcgQEAgc3RydWN0IHJvY2tjaGlwX2Nsa19wcm92aWRlciB7Cj4gPiAgICAgICBzdHJ1Y3QgcmVn
bWFwICpncmY7Cj4gPiAgICAgICBERUNMQVJFX0hBU0hUQUJMRShhdXhfZ3JmX3RhYmxlLCBHUkZf
SEFTSF9PUkRFUik7Cj4gPiAgICAgICBzcGlubG9ja190IGxvY2s7Cj4gPiArICAgICBzdHJ1Y3Qg
Y2xrICpjbGtfdGFibGVbXTsKPiA+ICB9Owo+ID4KPiA+ICBzdHJ1Y3Qgcm9ja2NoaXBfcGxsX3Jh
dGVfdGFibGUgewo+ID4gLS0KPiA+IDIuNTQuMAo+ID4KPgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
