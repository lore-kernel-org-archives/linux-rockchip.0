Return-Path: <SRS0=8xFb=ES=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92113C388F7
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2020 13:22:37 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1240A207BB
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2020 13:22:37 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="MhU0WG6R";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IrAl/NxV"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1240A207BB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aFGuWyr1+gwbvdoTgBvVWpQl//IXrtEXwQYqx1vzmCc=; b=MhU0WG6RGWH8AdQ9Qx8Q/NJO3
	BStXEioh9GO0W9ADRr3VBcNxbwA0WPnW/zXFvfZazqNkfOh5Go6JUdh2XhHqZjQiZtElrM7dzdRsJ
	X9YOjpSm/iSUZZ38EpgAYfLaUdPLVkRo4V/nBy+mIP8TwKFhh9LhDk9bS4aBPBIqtaGqdfshiUNE4
	mpp+YsvcNBRkOZkV1din2Q8pYez8ADRL6X+xuPq18JZmdMe5CoEuHTwYysMuy8IjbuTKg/5qHlYLS
	P/Mjb8CrB6bMw72RiRzi2HQbT+6VLWxjFFNrqh6WtcO/scMzDa2PQYyTJr1aylkO5JIX7XzZOQrU7
	0rBhPq7jw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kdCYa-0002ac-FY; Thu, 12 Nov 2020 13:22:32 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kdCYW-0002ZA-2F
 for linux-rockchip@lists.infradead.org; Thu, 12 Nov 2020 13:22:29 +0000
Received: by mail-wr1-x443.google.com with SMTP id j7so5996138wrp.3
 for <linux-rockchip@lists.infradead.org>; Thu, 12 Nov 2020 05:22:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=e7pBgBavWmbh88zcXl/zlYhiEN/3DVez/GFf+X/Rer4=;
 b=IrAl/NxVVTV1qdet4SUrnEtA0m3lNbiKHYEeuFpfH4n3CWgwZOQCFLriH0Mw+vEUjz
 l1l8iPqimV2fV5XFyGIUCgrllfodI3RC/eWT8ykCEnPGN2cSRxqhujLBwo2xZhxi1WF3
 dzl2R/Z97LcvPNTqz1J/BajwPJ0eAOYLPI+CMP6iCv8iZT7IE+F8L3Fo2pOaMd3zLA8C
 tDQmxvDqekI20g1Q92mmcCZZC5tNVLE9ME2yhnYmii7/bE9DLouMp8ngVX3u8bUPDhGb
 OBJhq+aZuaOQWGCEAd90iHJV8Vu3MjxoI7m2SghJ4afdnbFqhRPzbS7xGC/jl+zTee7D
 kbMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=e7pBgBavWmbh88zcXl/zlYhiEN/3DVez/GFf+X/Rer4=;
 b=lmIqj/IoRbGfj+KpMEDOx5O/nw9QIaHrSz7rS4B6PZ3hBM48eH8XcuxgkqF4Ccwpqu
 2Mqr9zKMPq4JRfVIjh2YRN94A+btzD89TRpJ3eb/wsXaNptve04gLaKSJSfrjU4HdWdD
 UVXypUXYoHxXvp7+Kna223bB6ZGZuUoztXL2N4kPEpmv/QCN28AEL8rWeipA83Iv9sw9
 pLGAW+/2/8fLZ4s0+MvPGhmWT0islgU+vxpmMwTnw23R/C8TUIkUGpdMz71lTEem+uLE
 xnnsvXtkdNzfJjXvYvI04FJApqjvp9lC4j65UD6S9VEYtNJyT/l+CNijkOXhf+7/xi/B
 JRgg==
X-Gm-Message-State: AOAM531BgQ0V3I/0wL/Qsopcuf9zjUXJo67ShqMqXytyO6QBmXrYOr+u
 jmFiuPoCspx2DlXQR4y0sUDqnw==
X-Google-Smtp-Source: ABdhPJwkg72DshracLWbmJBfGLTYAfMiRyOd6R2eNdOb6G5GA4JF8KLUpn154NbisRXDlMYBfEID8A==
X-Received: by 2002:adf:a54d:: with SMTP id j13mr33030337wrb.132.1605187346974; 
 Thu, 12 Nov 2020 05:22:26 -0800 (PST)
Received: from dell ([91.110.221.159])
 by smtp.gmail.com with ESMTPSA id t17sm6440829wmi.3.2020.11.12.05.22.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Nov 2020 05:22:26 -0800 (PST)
Date: Thu, 12 Nov 2020 13:22:24 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 05/25] soc: rockchip: io-domain: Remove incorrect and
 incomplete comment header
Message-ID: <20201112132224.GJ1997862@dell>
References: <20201103152838.1290217-1-lee.jones@linaro.org>
 <20201103152838.1290217-6-lee.jones@linaro.org>
 <20201112103344.GF1997862@dell> <40131312.rmDrfLbc3i@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <40131312.rmDrfLbc3i@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201112_082228_202753_416F670A 
X-CRM114-Status: GOOD (  16.03  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Liam Girdwood <lgirdwood@gmail.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Doug Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVGh1LCAxMiBOb3YgMjAyMCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cgo+IEFtIERvbm5lcnN0
YWcsIDEyLiBOb3ZlbWJlciAyMDIwLCAxMTozMzo0NCBDRVQgc2NocmllYiBMZWUgSm9uZXM6Cj4g
PiBPbiBUdWUsIDAzIE5vdiAyMDIwLCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiAKPiA+ID4gRml4ZXMg
dGhlIGZvbGxvd2luZyBXPTEga2VybmVsIGJ1aWxkIHdhcm5pbmcocyk6Cj4gPiA+IAo+ID4gPiAg
ZHJpdmVycy9zb2Mvcm9ja2NoaXAvaW8tZG9tYWluLmM6NTc6IHdhcm5pbmc6IENhbm5vdCB1bmRl
cnN0YW5kICAqIEBzdXBwbGllczogdm9sdGFnZSBzZXR0aW5ncyBtYXRjaGluZyB0aGUgcmVnaXN0
ZXIgYml0cy4KPiA+ID4gCj4gPiA+IENjOiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRl
Pgo+ID4gPiBDYzogTGlhbSBHaXJkd29vZCA8bGdpcmR3b29kQGdtYWlsLmNvbT4KPiA+ID4gQ2M6
IE1hcmsgQnJvd24gPGJyb29uaWVAa2VybmVsLm9yZz4KPiA+ID4gQ2M6ICJSYWZhZWwgSi4gV3lz
b2NraSIgPHJhZmFlbC5qLnd5c29ja2lAaW50ZWwuY29tPgo+ID4gPiBDYzogRG91ZyBBbmRlcnNv
biA8ZGlhbmRlcnNAY2hyb21pdW0ub3JnPgo+ID4gPiBDYzogbGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBMZWUgSm9uZXMgPGxlZS5qb25lc0Bs
aW5hcm8ub3JnPgo+ID4gPiAtLS0KPiA+ID4gIGRyaXZlcnMvc29jL3JvY2tjaGlwL2lvLWRvbWFp
bi5jIHwgMyAtLS0KPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCAzIGRlbGV0aW9ucygtKQo+ID4gPiAK
PiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc29jL3JvY2tjaGlwL2lvLWRvbWFpbi5jIGIvZHJp
dmVycy9zb2Mvcm9ja2NoaXAvaW8tZG9tYWluLmMKPiA+ID4gaW5kZXggZWVjZTk3Zjk3ZWY4Zi4u
ZDEzZDJkNDk3NzIwYiAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9zb2Mvcm9ja2NoaXAvaW8t
ZG9tYWluLmMKPiA+ID4gKysrIGIvZHJpdmVycy9zb2Mvcm9ja2NoaXAvaW8tZG9tYWluLmMKPiA+
ID4gQEAgLTUzLDkgKzUzLDYgQEAKPiA+ID4gIAo+ID4gPiAgc3RydWN0IHJvY2tjaGlwX2lvZG9t
YWluOwo+ID4gPiAgCj4gPiA+IC0vKioKPiA+ID4gLSAqIEBzdXBwbGllczogdm9sdGFnZSBzZXR0
aW5ncyBtYXRjaGluZyB0aGUgcmVnaXN0ZXIgYml0cy4KPiA+ID4gLSAqLwo+ID4gPiAgc3RydWN0
IHJvY2tjaGlwX2lvZG9tYWluX3NvY19kYXRhIHsKPiA+ID4gIAlpbnQgZ3JmX29mZnNldDsKPiA+
ID4gIAljb25zdCBjaGFyICpzdXBwbHlfbmFtZXNbTUFYX1NVUFBMSUVTXTsKPiA+IAo+ID4gQW55
IGlkZWEgd2hvIHdpbGwgcGljayB0aGlzIHVwPwo+IAo+IG1lIDotKQoKV2VsbCwgdGhhdCdzIGNl
cnRhaW5seSBhIHN0YXJ0LiA6KQoKV2hhdCBhcmUgeW91ciBwbGFucz8KCi0tIApMZWUgSm9uZXMg
W+adjueQvOaWr10KU2VuaW9yIFRlY2huaWNhbCBMZWFkIC0gRGV2ZWxvcGVyIFNlcnZpY2VzCkxp
bmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBcm0gU29DcwpGb2xsb3cgTGlu
YXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
