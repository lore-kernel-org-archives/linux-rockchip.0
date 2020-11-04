Return-Path: <SRS0=nVt2=EK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0124EC2D0A3
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2020 15:42:30 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 772D720732
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2020 15:42:29 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="kt5g2WWe";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="R2E/Db42"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 772D720732
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IoGNC6ltSg1um9nRa0dAP52E3ERra8d2MtySweDkaZg=; b=kt5g2WWebThwOMzw42zeRAtCG
	z01OLjFDJ+BhoxTMif+SGR3HL3tMnKtGX6rTF20Azr09ElWpHojI4DF3Gt9TqXQ/4bvkjcbWoaLQs
	KVKObNFgLooe8X4cYV1xtqIOo39oNRtZk7h3sgGxD0lV2fymIOOdY3W0U1CzsPairx6dAqENwhzWk
	nBHK1UDAoHJx9qYRYgJkTaQQq3T/bIxX6l/S1uOG5YGW4+0VMdxOfM/8u1mP5UP+JAjbm7eNdIRJ1
	DYNI4ArQvdNsKSKmoF+boayWL7d0XDT/by5nP+fmDP/Z0ctB/lWfZBraAN+2AULMRVBLY2zb7OUal
	xLVUc9kww==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kaKvW-0004AK-SU; Wed, 04 Nov 2020 15:42:22 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kaKvS-00048e-9S
 for linux-rockchip@lists.infradead.org; Wed, 04 Nov 2020 15:42:19 +0000
Received: by mail-vk1-xa42.google.com with SMTP id m3so4568663vki.12
 for <linux-rockchip@lists.infradead.org>; Wed, 04 Nov 2020 07:42:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=/FtdeSUhs74nhRFArqfFNBt0MhUao+F2IwHVVHi0aS0=;
 b=R2E/Db42MGI+YnyGlaOGsgu2dpWlTR02Cg/FLj+Kp3JW23/91+RSpJo6HIb2Vd2OxD
 UhNWS7AO+DC76rP5D8KfB+CIk1uhYDJJ6pcTAwzO6R7MNOTDwKRNW11SbspmVk4xCsEn
 47OyYvCfBw3qGLbqq+IDebwZRM8ydfmrcxmdE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=/FtdeSUhs74nhRFArqfFNBt0MhUao+F2IwHVVHi0aS0=;
 b=lAZDnQ1c4QyXrcTc45PfjXkYWfyjFBuzqHgT10Wu+BPRT8TavDo2x2j0wmzRitvJE+
 s61Y84FLgs3YjTyAYG5KDfk2GqZ/ejwUi6edA73h2LB04G0fyrK5Q8yp9E6UMEVg7KuG
 iKIj5z2dcar1QJC+hhSLdNPehNIHGqN5kb6GCNgLadvmg4k/eR5nqxC97Bx8IItOguS0
 h/4EmdfH5lYGjxQg8Wkh4p2I9Z67+mHLTYtojLOtyb9lV/nzeHkjPig5RccxV/Mej8VQ
 wyaVrGXJ4s6p1tSERLVDiDdMLBdlIShbmaN3ebzbfssySY5ZoyftEWRwXB7k8WxGXVyH
 jXaw==
X-Gm-Message-State: AOAM530pQuMZS8dDNkUmhINAA/N1re93A4Edj/h3NUxYFiM2yZDTW1FP
 k+UVoze1tI6sO8xMY/dtuz2+n8bvVntsNg==
X-Google-Smtp-Source: ABdhPJxNeUwaRGiU6ugnRhBm2tfphR6Bi6NbSN+f2bDDQuhia+pzBrjZEsr1ny9oSjkD07metyYJDQ==
X-Received: by 2002:a1f:ccc5:: with SMTP id c188mr19719231vkg.4.1604504535026; 
 Wed, 04 Nov 2020 07:42:15 -0800 (PST)
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com.
 [209.85.217.44])
 by smtp.gmail.com with ESMTPSA id z1sm300870vka.37.2020.11.04.07.42.14
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Nov 2020 07:42:14 -0800 (PST)
Received: by mail-vs1-f44.google.com with SMTP id y78so11699500vsy.6
 for <linux-rockchip@lists.infradead.org>; Wed, 04 Nov 2020 07:42:14 -0800 (PST)
X-Received: by 2002:a67:ef98:: with SMTP id r24mr8004994vsp.37.1604504533670; 
 Wed, 04 Nov 2020 07:42:13 -0800 (PST)
MIME-Version: 1.0
References: <20201104094950.2096-1-m.reichl@fivetechno.de>
 <4984701.vSXMUKeAfh@diego>
In-Reply-To: <4984701.vSXMUKeAfh@diego>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 4 Nov 2020 07:42:01 -0800
X-Gmail-Original-Message-ID: <CAD=FV=V2Vv0bv-exiZ6VrOtfMM5TVpjATO04qaXeGWDRu+6vyw@mail.gmail.com>
Message-ID: <CAD=FV=V2Vv0bv-exiZ6VrOtfMM5TVpjATO04qaXeGWDRu+6vyw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Assign a fixed index to mmc devices
 on rk3399-roc-pc boards.
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201104_104218_413931_E870EB8E 
X-CRM114-Status: GOOD (  23.12  )
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
Cc: Rob Herring <robh@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Markus Reichl <m.reichl@fivetechno.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Mark Brown <broonie@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksCgpPbiBXZWQsIE5vdiA0LCAyMDIwIGF0IDI6NTEgQU0gSGVpa28gU3TDvGJuZXIgPGhlaWtv
QHNudGVjaC5kZT4gd3JvdGU6Cj4KPiBIaSBNYXJrdXMsCj4KPiBBbSBNaXR0d29jaCwgNC4gTm92
ZW1iZXIgMjAyMCwgMTA6NDk6NDUgQ0VUIHNjaHJpZWIgTWFya3VzIFJlaWNobDoKPiA+IFJlY2Vu
dGx5IGludHJvZHVjZWQgYXN5bmMgcHJvYmUgb24gbW1jIGRldmljZXMgY2FuIHNodWZmbGUgYmxv
Y2sgSURzLgo+ID4gUGluIHRoZW0gdG8gZml4ZWQgdmFsdWVzIHRvIGVhc2UgYm9vdGluZyBpbiBl
dmlyb25tZW50cyB3aGVyZSBVVUlEcwo+ID4gYXJlIG5vdCBwcmFjdGljYWwuIFVzZSBuZXdseSBp
bnRyb2R1Y2VkIGFsaWFzZXMgZm9yIG1tY2JsayBkZXZpY2VzIGZyb20gWzFdLgo+ID4KPiA+IFsx
XQo+ID4gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMTc0NzY2OS8KPiA+Cj4g
PiBTaWduZWQtb2ZmLWJ5OiBNYXJrdXMgUmVpY2hsIDxtLnJlaWNobEBmaXZldGVjaG5vLmRlPgo+
ID4gLS0tCj4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9jLXBjLmR0
c2kgfCA1ICsrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQo+ID4KPiA+
IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2MtcGMu
ZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvYy1wYy5kdHNpCj4g
PiBpbmRleCBlN2E0NTlmYTQzMjIuLmJjOTQ4MmI1OTQyOCAxMDA2NDQKPiA+IC0tLSBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvYy1wYy5kdHNpCj4gPiArKysgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2MtcGMuZHRzaQo+ID4gQEAgLTEzLDYg
KzEzLDExIEBAIC8gewo+ID4gICAgICAgbW9kZWwgPSAiRmlyZWZseSBST0MtUkszMzk5LVBDIEJv
YXJkIjsKPiA+ICAgICAgIGNvbXBhdGlibGUgPSAiZmlyZWZseSxyb2MtcmszMzk5LXBjIiwgInJv
Y2tjaGlwLHJrMzM5OSI7Cj4gPgo+ID4gKyAgICAgYWxpYXNlcyB7Cj4gPiArICAgICAgICAgICAg
IG1tYzAgPSAmc2RtbWM7Cj4gPiArICAgICAgICAgICAgIG1tYzEgPSAmc2RoY2k7Cj4gPiArICAg
ICB9Owo+ID4gKwo+Cj4gQW55IHJlYXNvbiBmb3IgdGhpcyBvZGVyaW5nPwo+Cj4gSS5lLiBzb21l
IHByZXZpb3VzIGluY2FybmF0aW9ucyBoYWQgaXQgb3JkZXJlZCBhcyAoZW1tYywgbW1jLCBzZGlv
KS4KPiBUaGlzIGlzIGFsc28gdHJ1ZSBmb3IgdGhlIENocm9tZU9TIG91dC1vZi10cmVlIHVzYWdl
IG9mIHRob3NlLCB0aGUKPiByazMzOTkgZHRzIGluIHRoZSBjaHJvbWVvcy00LjQgdHJlZSBhbHNv
IG9yZGVycyB0aGlzIGFzIHNkaGNpLCBzZG1tYywgc2Rpby4KPgo+IEFuZCBJIGd1ZXNzIGEgZnVy
dGhlciBxdWVzdGlvbiB3b3VsZCBiZSB3aGVuIHdlJ3JlIGRvaW5nIGFyYml0YXJ5IG9yZGVyaW5n
cwo+IGFueXdheSwgd2h5IGlzIHRoaXMgbm90IGluIHJrMzM5OS5kdHNpIDstKSA/CgpUaG91Z2gg
SSBwZXJzb25hbGx5IGxpa2UgdGhlIGlkZWEgb2YgZU1NQywgd2hpY2ggaXMgdHlwaWNhbGx5CmJ1
aWx0LWluLCBhcyBiZWluZyB0aGUgIjAiIG51bWJlciwgSSdtIHBlcnNvbmFsbHkgaGFwcHkgd2l0
aCBhbnkKbnVtYmVyaW5nIHNjaGVtZSB0aGF0J3MgY29uc2lzdGVudC4gIE9yZGVyaW5nIHRoZW0g
YnkgYmFzZSBhZGRyZXNzIGlzCk9LIHcvIG1lIGFuZCBzZWVtcyBsZXNzIGNvbnRyb3ZlcnNpYWwu
ICBUaGF0IHNlZW1zIGxpa2UgaXQgY291bGQgZ28gaW4KcmszMzk5LmR0c2kgYW5kIHRoZW4gaWYg
YSBwYXJ0aWN1bGFyIGJvYXJkIHdhbnRlZCBhIGRpZmZlcmVudCBvcmRlcgp0aGV5IGNvdWxkIG92
ZXJyaWRlIGl0IGluIHRoZWlyIGJvYXJkIGZpbGUuICBUaGUgZG93bnNpZGUgb2YgcHV0dGluZwpp
biByazMzOTkgaXMgdGhhdCBib2FyZHMgdGhhdCBkb24ndCBoYXZlIGFsbCBTRC9NTUMgaW50ZXJm
YWNlcyBlbmFibGVkCndvdWxkIGRlZmluaXRlbHkgZ2V0IGEgbmV3IG51bWJlciBjb21wYXJlZCB0
byBvbGQga2VybmVscywgYnV0CmhvcGVmdWxseSB0aGlzIGlzIHRoZSBsYXN0IHRpbWU/CgotRG91
ZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
