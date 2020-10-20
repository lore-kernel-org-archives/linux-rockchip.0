Return-Path: <SRS0=P5PH=D3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4465C433DF
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2020 08:13:34 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 270AE2225F
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2020 08:13:34 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="qk/uFGIF";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=ffwll.ch header.i=@ffwll.ch header.b="JU+b83GX"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 270AE2225F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ffwll.ch
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eZjxz5zibg04sEtQItQEfXmM34eWq6YiiS/fR0rSzIk=; b=qk/uFGIFZXnorohufXbrOT1Pe
	1snOYNdPXEr6aNvTaVD8bxsFv6jb7ZZu684dT/QWLZyggFkcLeUWrvYBvWkXGJzT4Rj0F0JcliUEL
	DXKz9iawh3wE9QhQAfGEmWT+UO8OJpz7zIhpJskrvTX1iGwucixV0V36u1MeZ33J1S+pDmYQ516GO
	zX+CEFOrCmmnxMhCzXf4GRBi7ntR00GJTCVbz9F3tC2wwxm+LwHkM98JUQrG5lSNVuMbAvnlkpAUs
	RwVZWIBRI8cDAPXODNE5UTWMCU/4vkttRCZBzmCnmPPGILhktqeBT5KQK7euERildmMr33WZYH0VT
	bA2gHo7Dw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kUmls-0006K4-OD; Tue, 20 Oct 2020 08:13:28 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kUmlp-0006Iv-Q3
 for linux-rockchip@lists.infradead.org; Tue, 20 Oct 2020 08:13:27 +0000
Received: by mail-wm1-x344.google.com with SMTP id b127so840444wmb.3
 for <linux-rockchip@lists.infradead.org>; Tue, 20 Oct 2020 01:13:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to; bh=yjES9gaqH+r7PKEyUF//AteATy2JRLBioQzscOmtXtA=;
 b=JU+b83GXhEyYD9j42iFgaYqnEO9pM4i2Bnxt6a3R+hgfkw4l0pphxZBqjqWuycfUOv
 AregJP2jMrx2ZNIM+a1L2a+9YxvUrSigYexSKsti5xs69jqMYZqYUJ5KnsxGIXQmyfkN
 cRnfL+KygxgYnz3FGsyQquXL/4MJlSdYZ95ks=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=yjES9gaqH+r7PKEyUF//AteATy2JRLBioQzscOmtXtA=;
 b=mQUx7jHQhlxytqDuvQToGZwFKPJf1QGcy/aGw1Y5RUXPPddPaDIqq+4fHUJ7rWgZSK
 SgB/cTDFF5rD4Cnm3E2kngUCQeKIUlLmyjJ/Tvwdvvwldc3ySCyDFUNneStFumwgprxQ
 rqgKYbrD1ZSIWjlZgiChNEUuUvz/Fsp4AtqhVLI8GRpNfqdFTVAF14iyD517LTf4CCOL
 CtRirF5nX+EyxSN1SFksimWXhEY8RLHUPqbGE9rz63CtCnCUK8qfvKyxuL6/ppsWC3V/
 oR1sMc+ChwHbFb9SHX4fjnrtzuKHyMPMllm727pd+igV93ubXGd/TWtaRTHTckSLi1rn
 0VQw==
X-Gm-Message-State: AOAM530QsjUS4vPixjI9nfsdDT7TIjilkz1zQe7vQsy0wNmMZke01HUH
 KpIR/V9Emt67CjcapoJ168um1g==
X-Google-Smtp-Source: ABdhPJxnbA1ge0KCPiotTT9AHiVkZI9rcl5PStryqvQltSAM5y0gDcnp2H45cAeIHcdY9QnKtEvmcA==
X-Received: by 2002:a1c:e903:: with SMTP id q3mr1638057wmc.42.1603181604585;
 Tue, 20 Oct 2020 01:13:24 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id v17sm1917002wrc.23.2020.10.20.01.13.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Oct 2020 01:13:23 -0700 (PDT)
Date: Tue, 20 Oct 2020 10:13:21 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH v2] drm/of: Consider the state in which the ep is disabled
Message-ID: <20201020081321.GI401619@phenom.ffwll.local>
Mail-Followup-To: Kever Yang <kever.yang@rock-chips.com>,
 Sandy Huang <hjc@rock-chips.com>, heiko@sntech.de,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@linux.ie>, huangtao@rock-chips.com,
 andy.yan@rock-chips.com, linux-rockchip@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
References: <20200707112526.18438-1-hjc@rock-chips.com>
 <5c0cdb9d-8e35-fa0c-35b3-adfa7770fb30@rock-chips.com>
 <20201015152301.GE438822@phenom.ffwll.local>
 <e016801a-61aa-de6c-cb90-c62e03bdd067@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e016801a-61aa-de6c-cb90-c62e03bdd067@rock-chips.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201020_041325_995560_7F7C899B 
X-CRM114-Status: GOOD (  25.17  )
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
Cc: huangtao@rock-chips.com, heiko@sntech.de, David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sandy Huang <hjc@rock-chips.com>, Maxime Ripard <mripard@kernel.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 dri-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 andy.yan@rock-chips.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gTW9uLCBPY3QgMTksIDIwMjAgYXQgMTE6NDM6NTNBTSArMDgwMCwgS2V2ZXIgWWFuZyB3cm90
ZToKPiBIaSBEYW5pZWwsCj4gCj4gT24gMjAyMC8xMC8xNSDkuIvljYgxMToyMywgRGFuaWVsIFZl
dHRlciB3cm90ZToKPiA+IE9uIFdlZCwgT2N0IDE0LCAyMDIwIGF0IDA5OjQ4OjQzQU0gKzA4MDAs
IEtldmVyIFlhbmcgd3JvdGU6Cj4gPiA+IEhpIE1haW50YWluZXJzLAo+ID4gPiAKPiA+ID4gIMKg
wqDCoCBEb2VzIHRoaXMgcGF0Y2ggcmVhZHkgdG8gbWVyZ2U/Cj4gPiBXb3VsZCBtYXliZSBiZSBn
b29kIHRvIGdldCBzb21lIGFja3MgZnJvbSBvdGhlciBkcml2ZXJzIHVzaW5nIHRoaXMsIHRoZW4K
PiA+IFNhbmR5IGNhbiBwdXNoIHRvIGRybS1taXNjLW5leHQuCj4gCj4gVGhhbmtzIGZvciB5b3Vy
IHJlcGx5LCBJIGNhbiB1bmRlcnN0YW5kIG1vcmUgJ2Fja3MnIHdpbGwgYmUgYmV0dGVyLCBidXQK
PiB0aGVyZSBpcyBubyBjb21tZW50cyBvYmplY3QgdG8gdGhpcyBwYXRjaAo+IAo+IG9yIGFueSAn
TkFLJyBjb21tb24gZm9yIG1vcmUgdGhlbiAzIG1vbnRocywgbWFpbnRhaW5lcnMgc2hvdWxkIG1v
dmUgdG8gbmV4dAo+IHN0ZXAuCgpJIGV4cGVjdCB5b3UgdG8gcG9rZSByZWxldmFudCBkcml2ZXIg
bWFpbnRhaW5lcnMgZGlyZWN0bHkgZm9yIHRoZXNlIGFja3MuClRoYXQgd2FzIHRoZSBwdXJwb3Nl
IG9mIG15IG1haWwuIEFsbCBjb21tdW5pY2F0aW9uIGdvaW5nIHRocm91Z2gKbWFpbnRhaW5lcnMs
IGJlaW5nIGV4Y2x1c2l2ZWx5IG9yY2hlc3RyYXRlZCBieSBtYWludGFpbmVycywganVzdCBkb2Vz
bid0CnNjYWxlLiBTbyBub3QgYW4gb3B0aW9uIGZvciBhIGJpZyBzdWJzeXN0ZW0gbGlrZSBkcml2
ZXJzL2dwdS4KCkhvcGUgdGhhdCBtYWtlcyBpdCBjbGVhci4KCkZvciBtZXJnaW5nIFNhbmR5IGhh
cyBjb21taXQgcmlnaHRzIHRvIGRybS1taXNjLCBzbyB0aGF0J3Mgbm90IHRoZQpwcm9ibGVtLgoK
Q2hlZXJzLCBEYW5pZWwKCj4gCj4gCj4gVGhhbmtzLAo+IAo+IC0gS2V2ZXIKPiAKPiA+IC1EYW5p
ZWwKPiA+ID4gT24gMjAyMC83Lzcg5LiL5Y2INzoyNSwgU2FuZHkgSHVhbmcgd3JvdGU6Cj4gPiA+
ID4gZG9uJ3QgbWFzayBwb3NzaWJsZV9jcnRjcyBpZiByZW1vdGUtcG9pbnQgaXMgZGlzYWJsZWQu
Cj4gPiA+ID4gCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogU2FuZHkgSHVhbmcgPGhqY0Byb2NrLWNo
aXBzLmNvbT4KPiA+ID4gPiAtLS0KPiA+ID4gPiAgICBkcml2ZXJzL2dwdS9kcm0vZHJtX29mLmMg
fCAzICsrKwo+ID4gPiA+ICAgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKPiA+ID4g
PiAKPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9vZi5jIGIvZHJpdmVy
cy9ncHUvZHJtL2RybV9vZi5jCj4gPiA+ID4gaW5kZXggZmRiMDVmYmY3MmEwLi41NjVmMDVmNWYx
MWIgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9vZi5jCj4gPiA+ID4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9vZi5jCj4gPiA+ID4gQEAgLTY2LDYgKzY2LDkgQEAg
dWludDMyX3QgZHJtX29mX2ZpbmRfcG9zc2libGVfY3J0Y3Moc3RydWN0IGRybV9kZXZpY2UgKmRl
diwKPiA+ID4gPiAgICAJdWludDMyX3QgcG9zc2libGVfY3J0Y3MgPSAwOwo+ID4gPiA+ICAgIAlm
b3JfZWFjaF9lbmRwb2ludF9vZl9ub2RlKHBvcnQsIGVwKSB7Cj4gPiA+ID4gKwkJaWYgKCFvZl9k
ZXZpY2VfaXNfYXZhaWxhYmxlKGVwKSkKPiA+ID4gPiArCQkJY29udGludWU7Cj4gPiA+ID4gKwo+
ID4gPiA+ICAgIAkJcmVtb3RlX3BvcnQgPSBvZl9ncmFwaF9nZXRfcmVtb3RlX3BvcnQoZXApOwo+
ID4gPiA+ICAgIAkJaWYgKCFyZW1vdGVfcG9ydCkgewo+ID4gPiA+ICAgIAkJCW9mX25vZGVfcHV0
KGVwKTsKPiA+ID4gTG9va3MgZ29vZCB0byBtZS4KPiA+ID4gCj4gPiA+IAo+ID4gPiBSZXZpZXdl
ZC1ieTogS2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KPiAKPiAKPiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGRyaS1kZXZlbCBt
YWlsaW5nIGxpc3QKPiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwKCi0tIApEYW5p
ZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxv
Zy5mZndsbC5jaAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
