Return-Path: <SRS0=ISdC=DA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE304C4363D
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 22:59:04 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 07700221EB
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 22:59:03 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="UnImngpw";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="TjGmnjBN"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 07700221EB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=joA1/99X61siyOXwLVliB+pEKIIoUuhEJ80iyUFZ9bo=; b=UnImngpw8LWVzuX8UA5xP0Rme
	rF1zH3yHh48vG0eCsljjqRweh3y0IZC5JTe7myTuY9yP42qrGu8RZc8aBartnlYhJRQIIrdCYZxWW
	o8YxozDjwk1onpw8Q23Mh9lG/DnWhhhSjHWXkMGRsIJ9jHWimHc+svUzmmbBP0PGcxA3qnF6Duzxq
	f7h6cWIG41JYeBPRfD9ZL7K4DaiB7Op25NkqCTNcBvMkqsXbpgzfiVaD6mrLdOBY45e69lgUCyQwF
	2UBfAn8F0NsQ8j88W87n1vuMIkLH6fUHi4N7z49nasxJMNXsPCc/jHI5RxauxFdrm+rLsRBh9b2mm
	p3zGYAfrg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kLDj2-00065w-0h; Wed, 23 Sep 2020 22:59:00 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kLDiz-00065S-6A
 for linux-rockchip@lists.infradead.org; Wed, 23 Sep 2020 22:58:58 +0000
Received: by mail-vk1-xa43.google.com with SMTP id t189so416143vka.10
 for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2020 15:58:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=KUcyOUNhR5UsokkyQ94a4ii3LLYD28adC2QTP+OIDig=;
 b=TjGmnjBNEhXonjSPC8gVEQi6bbGloQW3B4q/lqshpuQevSVOAFbLBZrTeaXdD/bfCe
 otUrtxwF90mDWhAB4x62rSFPVXGwXl2gjddnrYgqPQ8hM1no4LhsPXmR9eGkgs12l5g0
 olYvK9sKvol7Scw0f5VJOfa9gD1xOoUgBOWhA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=KUcyOUNhR5UsokkyQ94a4ii3LLYD28adC2QTP+OIDig=;
 b=o4WzmxTf5v37EKh8GXSXyOoBbX5DIY7GddM+NtC6PWyTycjbuw+/RMQgVe27+OBLaq
 5xqqqgZwR+eugdPQW3blF/T5TgB7aFkvLzUukxME9U6p6dlxtzHG8wnqi3F+7bNyPpM0
 lhAjNUYupquu2Hb7D9eA/A7DgHnXdmrvqSfMhx3X14VcYh5jnFoAgtgwbaCmjAu0S1oP
 Nrs0aQw8eAVBs7hjVEqIOOv7GuK2TzVm28p2xjfJuc+EJ0y268038t9aK7l4Ut8yT8Ha
 2GfE435lyu+3pTbXF1mdX3PKkyyIA8a2cYtjT1cDFzwMnICDxAWXgB0s+ZiIuolrdboW
 8SMw==
X-Gm-Message-State: AOAM531DjR5kyF+XVDeENZCqlKriC7lduMRq9R+jEygduunweTrL6rxQ
 SxH1BNrVTxUhg/BZ1pX514KFjYKl0ZOkRg==
X-Google-Smtp-Source: ABdhPJzKZYSGGT4czs7yRncZhHzQcb8zAf5MpC80pJ/HMP+KjbWHJrfuLIDyVtyW72EJh1OjQI7m/w==
X-Received: by 2002:a1f:9c12:: with SMTP id f18mr2100544vke.14.1600901935124; 
 Wed, 23 Sep 2020 15:58:55 -0700 (PDT)
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com.
 [209.85.217.41])
 by smtp.gmail.com with ESMTPSA id j76sm205155vkc.50.2020.09.23.15.58.54
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 23 Sep 2020 15:58:54 -0700 (PDT)
Received: by mail-vs1-f41.google.com with SMTP id e2so965041vsr.7
 for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2020 15:58:54 -0700 (PDT)
X-Received: by 2002:a67:8bc2:: with SMTP id n185mr2086730vsd.49.1600901933912; 
 Wed, 23 Sep 2020 15:58:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200922203107.2932-1-vicencb@gmail.com>
 <20200922203107.2932-2-vicencb@gmail.com>
 <50002e7b-d1f2-8209-fe65-7f60f036f7d3@rock-chips.com>
In-Reply-To: <50002e7b-d1f2-8209-fe65-7f60f036f7d3@rock-chips.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 23 Sep 2020 15:58:42 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WKVHgqJAGfkcV-YM+=2if9aT5SS030Guh9gN-xT+Mi8A@mail.gmail.com>
Message-ID: <CAD=FV=WKVHgqJAGfkcV-YM+=2if9aT5SS030Guh9gN-xT+Mi8A@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] drm: rockchip: hdmi: fix clock rounding code
To: crj <algea.cao@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200923_185857_251343_0DDF6B90 
X-CRM114-Status: GOOD (  24.88  )
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
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 Vicente Bergas <vicencb@gmail.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksCgpPbiBUdWUsIFNlcCAyMiwgMjAyMCBhdCA2OjM4IFBNIGNyaiA8YWxnZWEuY2FvQHJvY2st
Y2hpcHMuY29tPiB3cm90ZToKPgo+Cj4g5ZyoIDIwMjAvOS8yMyA0OjMxLCBWaWNlbnRlIEJlcmdh
cyDlhpnpgZM6Cj4gPiBVbmRlciBjZXJ0YWluIGNvbmRpdGlvbnMgdm9wX2NydGNfbW9kZV9maXh1
cCByb3VuZHMgdGhlIGNsb2NrCj4gPiAxNDg1MDAwMDAgdG8gMTQ4NTAxMDAwIHdoaWNoIGxlYWRz
IHRvIHRoZSBmb2xsb3dpbmcgZXJyb3I6Cj4gPiBkd2hkbWktcm9ja2NoaXAgZmY5NDAwMDAuaGRt
aTogUEhZIGNvbmZpZ3VyYXRpb24gZmFpbGVkIChjbG9jayAxNDg1MDEwMDApCj4gPgo+ID4gVGhl
IGlzc3VlIHdhcyBmb3VuZCBvbiBSSzMzOTkgYm9vdGluZyB3aXRoIHUtYm9vdC4gVS1ib290IGNv
bmZpZ3VyZXMgdGhlCj4gPiBkaXNwbGF5IGF0IDI1NjB4MTQ0MCBhbmQgdGhlbiBsaW51eCBjb21l
cyB1cCB3aXRoIGEgYmxhY2sgc2NyZWVuLgo+ID4gQSB3b3JrYXJvdW5kIHdhcyB0byB1bi1wbHVn
IGFuZCByZS1wbHVnIHRoZSBIRE1JIGRpc3BsYXkuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogVmlj
ZW50ZSBCZXJnYXMgPHZpY2VuY2JAZ21haWwuY29tPgo+ID4gVGVzdGVkLWJ5OiBWaWNlbnRlIEJl
cmdhcyA8dmljZW5jYkBnbWFpbC5jb20+Cj4gPiAtLS0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL3Jv
Y2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYyB8IDcgKystLS0tLQo+ID4gICAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcC5jIGIvZHJpdmVycy9ncHUv
ZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYwo+ID4gaW5kZXggYzgwZjdkOWZkMTNmLi45
MmVmYmQ4OTlkZWUgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9j
a2NoaXBfZHJtX3ZvcC5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2No
aXBfZHJtX3ZvcC5jCj4gPiBAQCAtMTE3NiwxMiArMTE3Niw5IEBAIHN0YXRpYyBib29sIHZvcF9j
cnRjX21vZGVfZml4dXAoc3RydWN0IGRybV9jcnRjICpjcnRjLAo+ID4gICAgICAgICoKPiA+ICAg
ICAgICAqIDIuIEdldCB0aGUgY2xvY2sgZnJhbWV3b3JrIHRvIHJvdW5kIHRoZSByYXRlIGZvciB1
cyB0byB0ZWxsIHVzCj4gPiAgICAgICAgKiAgICB3aGF0IGl0IHdpbGwgYWN0dWFsbHkgbWFrZS4K
PiA+IC0gICAgICAqCj4gPiAtICAgICAgKiAzLiBTdG9yZSB0aGUgcm91bmRlZCB1cCByYXRlIHNv
IHRoYXQgd2UgZG9uJ3QgbmVlZCB0byB3b3JyeSBhYm91dAo+ID4gLSAgICAgICogICAgdGhpcyBp
biB0aGUgYWN0dWFsIGNsa19zZXRfcmF0ZSgpLgo+ID4gICAgICAgICovCj4gPiAgICAgICByYXRl
ID0gY2xrX3JvdW5kX3JhdGUodm9wLT5kY2xrLCBhZGp1c3RlZF9tb2RlLT5jbG9jayAqIDEwMDAg
KyA5OTkpOwo+ID4gLSAgICAgYWRqdXN0ZWRfbW9kZS0+Y2xvY2sgPSBESVZfUk9VTkRfVVAocmF0
ZSwgMTAwMCk7Cj4gPiArICAgICBhZGp1c3RlZF9tb2RlLT5jbG9jayA9IHJhdGUgLyAxMDAwOwo+
ID4KPiA+ICAgICAgIHJldHVybiB0cnVlOwo+ID4gICB9Cj4gPiBAQCAtMTM4MCw3ICsxMzc3LDcg
QEAgc3RhdGljIHZvaWQgdm9wX2NydGNfYXRvbWljX2VuYWJsZShzdHJ1Y3QgZHJtX2NydGMgKmNy
dGMsCj4gPgo+ID4gICAgICAgVk9QX1JFR19TRVQodm9wLCBpbnRyLCBsaW5lX2ZsYWdfbnVtWzBd
LCB2YWN0X2VuZCk7Cj4gPgo+ID4gLSAgICAgY2xrX3NldF9yYXRlKHZvcC0+ZGNsaywgYWRqdXN0
ZWRfbW9kZS0+Y2xvY2sgKiAxMDAwKTsKPiA+ICsgICAgIGNsa19zZXRfcmF0ZSh2b3AtPmRjbGss
IGFkanVzdGVkX21vZGUtPmNsb2NrICogMTAwMCArIDk5OSk7Cj4KPgo+IEluIHNvbWUgUksgcGxh
dGZvcm0sIHN1Y2ggYXMgUkszMzI4LCBkY2xrIGlzIGdlbmVyYXRlZCBieSB0aGUgSU5OTyBIRE1J
Cj4gUEhZIFBMTCwgd2hpY2ggc3VwcG9ydAo+Cj4gZnJhYyBkaXZpZGVyIGNhbiBzdXBwb3J0IGFu
eSBkY2xrIGZyZXF1ZW5jeS4gQW5kIFRoZSBQTEwgbXVzdCB1c2UgdGhlCj4gZXhhY3QgY2xvY2sg
dG8gZGV0ZXJtaW5lCj4KPiB0aGUgUExMIGNvbmZpZ3VyYXRpb24uIFNvIGFkanVzdGVkX21vZGUt
PmNsb2NrICogMTAwMCArIDk5OSBtYXkgY2F1c2UKPiBJTk5PIEhETUkgUEhZIFBMTAo+Cj4gY291
bGRuJ3QgZmluZCB0aGUgcmlnaHQgY29uZmlndXJhdGlvbi4gSU5OTyBIRE1JIFBIWSdzIGRyaXZl
ciBwYXRoIGlzOgo+Cj4gZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8taGRt
aS5jCgpJIGRvbid0IHRoaW5rIHlvdSdsbCBoYXZlIGEgcHJvYmxlbS4gIEFzc3VtaW5nIEknbSBs
b29raW5nIGF0IHRoZQpjb3JyZWN0IGNvZGUsIGluIHRoZSBmdW5jdGlvbiBpbm5vX2hkbWlfcGh5
X3JrMzIyOF9jbGtfcm91bmRfcmF0ZSgpCnlvdSd2ZSBnb3QgInJhdGUgPSAocmF0ZSAvIDEwMDAp
ICogMTAwMCIuICBJIGJlbGlldmUgdGhlIGNsb2NrCmZyYW1ld29yayBhdXRvbWF0aWNhbGx5IGNh
bGxzIHJvdW5kIHJhdGUgd2hlbiBzb21lb25lIHRyaWVzIHRvIHNldCB0aGUKcmF0ZSwgc28gdGhp
cyBzaG91bGQgY2xlYW4gdGhlIGNsb2NrIGJhY2sgdXAuCgpJZiBJJ20gbWlzdW5kZXJzdGFuZGlu
ZywgcGxlYXNlIHllbGwuCgotRG91ZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
