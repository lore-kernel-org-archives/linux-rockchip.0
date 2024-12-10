Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E990AE7717D
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Dec 2024 01:46:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kL/4ZB3BbqIeEEsrKZUbqp5phKIrEoI8LKxWUQNyYBw=; b=FsFufG3+YqM6vA
	Q0Mg+LXKmbaUO+7V5CwOAw4OEh04i8KesTE9DPiYD+fkLRpLF/6SmS4CW+KsViCrwWLRGxpctiA21
	s3xLMx67E36RDL03u1oR86XxjDeRO/3RX/ijFewErd6kjK9OkaBJL3p/fVs45J+abyC0tnB4qsQVF
	qJUl6/lXGU/IBGHv+t7BlKzH9ktS+Te15+89WCO4UjkTyBwwyHYsTBmIbEIKDKlbVhAkwpX+36e7M
	Db/5XbjP0WHy8f8zXJsHCcdxvJaIXHAdsv0H0Z8aSsBgOz4vDIFJq3i/26M1VV8b/4Wk+mrYGG24Z
	vpjuu4mUq6DFmYfvABCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKpKY-00000009s0s-3eqd;
	Tue, 10 Dec 2024 01:46:30 +0000
Received: from mail-yb1-xb2a.google.com ([2607:f8b0:4864:20::b2a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKpJU-00000009rnp-17i9
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Dec 2024 01:45:26 +0000
Received: by mail-yb1-xb2a.google.com with SMTP id 3f1490d57ef6-e399e904940so3991937276.2
        for <linux-rockchip@lists.infradead.org>; Mon, 09 Dec 2024 17:45:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733795123; x=1734399923; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bDeSzNmG0r25Rn5nUf/295MidZQ+oiAWsebYRxIgxz4=;
        b=iJTRixxELwHlvqumVPCRHsESWu/UftTwzWUDonlNatUCL8qyXZf6X/UduvgG4FezSl
         6+zR7dlBVXryCkEasv3d+VgNTAPNz/m8aW9l2CoctTt2jB1dMzsBdweyinBjuc2g7ixZ
         7DBvGa95VwXe4y50gP8VbOGh7bygayHs1OhvSRVp4zCS8fGTR4FTrHjh/QmvkOmH/cch
         NghhXtYNuzXONSFi/WE7U8/67YUlYjE3mi9oX7X0ZaEu3UBBYHkt1J9lCG9xbHnabwjo
         7cPau7XhRvs7cPWOY69M2prdvlfk3wxEwYevATezfK9z7ODQexcEf56PyVqd6TAiS75s
         K9Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733795123; x=1734399923;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bDeSzNmG0r25Rn5nUf/295MidZQ+oiAWsebYRxIgxz4=;
        b=sj1Z7463aXhBiEmH7VNLawRE3kEhubeWVamJofcm9/bE5vZI0KWG+e3rnGZD1T6bDN
         wF+3QG6sMDRPYmTb8xMkhlz157YM2A3YJlsPO6MrSgXe7zj6mzjuf0sMFgMLgHsnU3a3
         HOzlDGbLLrf5yQuNdcJlqAvbkA83IF+hQ52VwswKOU8umWpeHd+SKMlOtMbLyWCkzb67
         vKFZkViHgGOWGl76TOC2rlKCrwZcBH5IM5i3Uq67Je0ti8gWUIXe7FbN6o/BJDmeAfGW
         X2mp0qwS/0uEg5yS3gygRmN0Mrwur2n7M7eLUxnwh30G5jbPLuClqYI8yLAcggo2cqQf
         VRxQ==
X-Forwarded-Encrypted: i=1; AJvYcCVUMg6ni4W1FYMhWMoEHcNv6Wmh5WYZAh+gxI0bKJoByNCK//OwDaaHZtphblRHLYPoLaJrnT0vGfTii3DfsA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzCi/5wwkWPmP0sSOevbDHd93ZFxyCsrjq1KH/LssYyiy8rfSHU
	0yl68UvPff2RQoOvfD9uNvztfPvBLI6V0K/UJC/kVD4idXox1qyM++kNtLQ5koh2Bg8Y1wjTbKO
	G9QGpMoVi+pxTtw1WKs9kxQ6r1Avd+ALEiLUbkg==
X-Gm-Gg: ASbGncuC0QBXCmWJSQGcMeE+7jXnRU//4IZgzBLvt+KV1gdUjvaZDc4bklMVAYM4Zzz
	78smam+OYAe/xd0QPpGzMh8YBeEVsAQWyQFIr
X-Google-Smtp-Source: AGHT+IH9FYdZyuYf6+rQs47uyzndT1wVwnYcReW2ltFVfptMntuMiqQM909xz0QThYmGJkZYxK5rC55WkYQfh3JUnOo=
X-Received: by 2002:a05:6902:150b:b0:e38:b2fb:f57d with SMTP id
 3f1490d57ef6-e3a0b12a8c7mr11436978276.28.1733795122949; Mon, 09 Dec 2024
 17:45:22 -0800 (PST)
MIME-Version: 1.0
References: <20241203165450.1501219-1-heiko@sntech.de> <20241209150619.33998-1-dse@thaumatec.com>
 <D67AV178CEBD.3QA9VD4ZPRNQ1@cknow.org> <2203458.KiezcSG77Q@diego>
 <4e015ea9.960.193ae0c236a.Coremail.andyshrk@163.com> <ay5hbnqqjhopaqof6z7j2rzm2bc6xa2vbzan2ak3if6wzmyip2@kqh7gtrajnm2>
 <33e2c5db.1300.193ae284b6d.Coremail.andyshrk@163.com>
In-Reply-To: <33e2c5db.1300.193ae284b6d.Coremail.andyshrk@163.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 10 Dec 2024 03:45:11 +0200
Message-ID: <CAA8EJprLA09NP0KAztc5eoAMkGcrom84jg_pcbNcwN0FAaSLrw@mail.gmail.com>
Subject: Re: Re: [PATCH v3 0/3] drm/rockchip: Add driver for the new DSI2 controller
To: Andy Yan <andyshrk@163.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Daniel Semkowicz <dse@thaumatec.com>, Diederik de Haas <didi.debian@cknow.org>, andy.yan@rock-chips.com, 
	Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, jernej.skrabec@gmail.com, jonas@kwiboo.se, 
	krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	neil.armstrong@linaro.org, quentin.schulz@cherry.de, rfoss@kernel.org, 
	robh@kernel.org, tzimmermann@suse.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_174525_162294_4EDA4447 
X-CRM114-Status: GOOD (  22.59  )
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

T24gVHVlLCAxMCBEZWMgMjAyNCBhdCAwMzoyMiwgQW5keSBZYW4gPGFuZHlzaHJrQDE2My5jb20+
IHdyb3RlOgo+Cj4KPiBIaSBEbWl0cnksCj4KPiDlnKggMjAyNC0xMi0xMCAwOTowMTozOO+8jCJE
bWl0cnkgQmFyeXNoa292IiA8ZG1pdHJ5LmJhcnlzaGtvdkBsaW5hcm8ub3JnPiDlhpnpgZPvvJoK
PiA+T24gVHVlLCBEZWMgMTAsIDIwMjQgYXQgMDg6NTA6NTFBTSArMDgwMCwgQW5keSBZYW4gd3Jv
dGU6Cj4gPj4KPiA+Pgo+ID4+IEhpLAo+ID4+Cj4gPj4gQXQgMjAyNC0xMi0xMCAwNzoxMjoyNiwg
IkhlaWtvIFN0w7xibmVyIiA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZToKPiA+PiA+QW0gTW9udGFn
LCA5LiBEZXplbWJlciAyMDI0LCAxNzoxMTowMyBDRVQgc2NocmllYiBEaWVkZXJpayBkZSBIYWFz
Ogo+ID4+ID4+IEhpLAo+ID4+ID4+Cj4gPj4gPj4gT24gTW9uIERlYyA5LCAyMDI0IGF0IDQ6MDYg
UE0gQ0VULCBEYW5pZWwgU2Vta293aWN6IHdyb3RlOgo+ID4+ID4+ID4gT24gMDMuMTIuMjQgMjE6
NTQsIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+ID4+ID4+ID4gPiBUaGlzIHNlcmllcyBhZGRzIGEg
YnJpZGdlIGFuZCBnbHVlIGRyaXZlciBmb3IgdGhlIERTSTIgY29udHJvbGxlciBmb3VuZAo+ID4+
ID4+ID4gPiBpbiB0aGUgcmszNTg4IHNvYyBmcm9tIFJvY2tjaGlwLCB0aGF0IGlzIGJhc2VkIG9u
IGEgU3lub3BzaXMgSVAgYmxvY2suCj4gPj4gPj4gPiA+Cj4gPj4gPj4gPgo+ID4+ID4+ID4gSSBk
aWQgbW9yZSB0ZXN0cyB3aXRoIGRpZmZlcmVudCBMVkRTIGRpc3BsYXlzLiBJIHRlc3RlZCBmb2xs
b3dpbmcKPiA+PiA+PiA+IGNvbmZpZ3VyYXRpb25zIHdpdGggRFNJL0xWRFMgYnJpZGdlOgo+ID4+
ID4+ID4gLSAxMDI0eDYwMEA2MC4wMQo+ID4+ID4+ID4gLSAxMDI0eDc2OEA2MC4wMgo+ID4+ID4+
ID4gLSAxMjgweDgwMEA2MC4wNwo+ID4+ID4+ID4gLSAxMzY2eDc2OEA2MC4wNgo+ID4+ID4+ID4K
PiA+PiA+PiA+IEFsbCBvZiB0aGVtIHdvcmtlZCB3aXRob3V0IGlzc3VlcywgZXhjZXB0IDEzNjZ4
NzY4Lgo+ID4+ID4+ID4gV2l0aCB0aGlzIHJlc29sdXRpb24sIHZpZGVvIGlzIGJsdXJyeSwgYW5k
IG9mZnNldCBpbmNvcnJlY3RseQo+ID4+ID4+ID4gdG8gdGhlIGxlZnQuIFRoZXJlIGFyZSBhbHNv
IHJlcGVhdGluZyBlcnJvcnMgb24gdGhlIGNvbnNvbGU6Cj4gPj4gPj4gPgo+ID4+ID4+ID4gICBy
b2NrY2hpcC1kcm0gZGlzcGxheS1zdWJzeXN0ZW06IFtkcm1dICpFUlJPUiogUE9TVF9CVUZfRU1Q
VFkgaXJxIGVyciBhdCB2cDMKPiA+PiA+PiA+Cj4gPj4gPj4gPiBJbiBjb3JyZWN0IG9wZXJhdGlv
biB3aXRoIG90aGVyIHJlc29sdXRpb25zLCB0aGVyZSBpcyBubyBlcnJvci4KPiA+PiA+PiA+IEkg
YW0gbm90IHN1cmUgaWYgdGhpcyBpcyBhIHByb2JsZW0gaW4geW91ciBzZXJpZXMgb3IgcmF0aGVy
IGluIFZPUDIKPiA+PiA+PiA+IGRyaXZlci4KPiA+PiA+Cj4gPj4gPlRoaXMgcmVhbGx5IHNvdW5k
cyBsaWtlIHNvbWV0aGluZyBpcyB3cm9uZyBvbiB0aGUgdm9wIHNpZGUuCj4gPj4gPlRoZSBpbnRl
cnJ1cHQgaXMgcGFydCBvZiB0aGUgdm9wLCB0aGUgZGl2aXNhYmxlIGJ5IDQgdGhpbmdzIGxpa2Vs
eSB0b28uCj4gPj4KPiA+PiBUaGlzIGlzIGEgaGFyZHdhcmUgbGltaXRhdGlvbiBvbiB2b3Agc2lk
ZToKPiA+PiBUaGUgaG9yaXpvbnRhbCByZXNvbHV0aW9uIG11c3QgYmUgNCBwaXhlbCBhbGlnbmVk
Lgo+ID4KPiA+VGhlbiBtb2RlX3ZhbGlkKCkgYW5kIGF0b21pY19jaGVjaygpIG11c3QgcmVqZWN0
IG1vZGVzIHRoYXQgZG9uJ3QgZml0Lgo+Cj4gV2Ugcm91bmQgZG93biB0byA0IHBpeGVsIGFsaWdu
ZWQgaW4gbW9kZV9maXh1cCBpbiBvdXIgYnNwIGtlcm5lbCwKCldoYXQgaXMgbWVhbnQgYnkgdGhl
ICJic3Aga2VybmVsIiBoZXJlPyBJIGRvbid0IHNlZSBpdCBiZWluZyBwcmVzZW50CmluIHRoZSBt
YWlubGluZSBrZXJuZWwuIFNvLCBpZiB0aGUgbW9kZSBpcyB1bnN1cHBvcnRlZCwgaXQgc2hvdWxk
IGJlCnJlamVjdGVkLgoKPiBiZWNhdXNlIHNvbWV0aW1lcywgc29tZSBib2FyZHMgZG8gaW5kZWVk
IGNob29zZSBhIHNjcmVlbiB0aGF0IGlzIG5vdCA0IHBpeGVsIGFsaWduZWQKPiA+Cj4gPj4KPiA+
Pgo+ID4+Cj4gPgo+ID4tLQo+ID5XaXRoIGJlc3Qgd2lzaGVzCj4gPkRtaXRyeQoKCgotLSAKV2l0
aCBiZXN0IHdpc2hlcwpEbWl0cnkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
