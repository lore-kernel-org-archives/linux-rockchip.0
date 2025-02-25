Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 092EEC021B8
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Feb 2025 01:44:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cbFnLp259Zayx+n7gmeGMyvQLKeJYmGLcCDLy/o+/Gw=; b=FwwhA8/EVG/VyA
	e/MWF3+t/R1UE/sbnrG3mUlj6yd4XCKf0znl0Z9/HjK2/vmWyMA0uX09ThvO8heTzxFrM3/pdXlsP
	DW8zY4he5mZ79J3KLRcPn49wsAjYmTqq+tnqqXV4OCH3uSwtP87FP5gpeVPu+iv46T+JeV4Xn7pnt
	knYgNA5chYPfSVmnolbohHBtMb+uIDZmolHPwS9PP5ZOyJqIkMCQrnsTE4nFUXfnY0f7BAThFbQzS
	pDoRZr30ZE1B57YvBwbNQZjoPpfu987ZxigSpDeoHTzJ5nlTmAd/6EwVuOssXeAfYPXUeCfZ7wVRA
	+fGuaDwclk/9LoSiRPWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmjzQ-0000000Fj6m-3vAn;
	Tue, 25 Feb 2025 01:44:04 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmjx0-0000000FimW-23ZX
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Feb 2025 01:41:35 +0000
Received: by mail-lj1-x241.google.com with SMTP id 38308e7fff4ca-30918c29da2so53678351fa.0
        for <linux-rockchip@lists.infradead.org>; Mon, 24 Feb 2025 17:41:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1740447692; x=1741052492; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bpinBTLgUsFr4FW8ynMBn6mnM1bFPNOn+l/M0TzxPak=;
        b=Lk/6jzAwd+JVJFJCn0vyFWwgdhiLSxMhibBrx6U4/VcDqD3yKmZt61R/azljxhAyTL
         NPBVvRNoSrzDNThb39uUSqUhOYjoHEZPM6S0G9SNJsXZpLSQuvabVgExbEoiSybw33GM
         Ivk9jmnLr4C0srpFbsub6w4ON59NYamqW8aZ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740447692; x=1741052492;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bpinBTLgUsFr4FW8ynMBn6mnM1bFPNOn+l/M0TzxPak=;
        b=LdM4BXs90bhlFa2gY/ejqJMtyG24msayLDvf7j9jicFLXrEfr0JZ4+r/DhHnYl555j
         AI61EbNf37I61yMaQqoKbJnJhoOTRqRRBa9MNzUbe00LQsoZur3i9w6QCFmYemux9np6
         Mi9YyllO1owTAmXzU7ytrsr+hibwwojMhiyTZZpaU1FL3P2y5oROKu1ZA82iVTW0POmf
         mL6iIxYozBgScIHH0ilqghNpJMKboTaz6zpl29CnWzJgJZJM4xalEFR30RyWmbNXfTCf
         d3Knp9TjQMoWJNHhA+feueZKrW0Dat/EGR8qPz5DqaL8ePN1LsfxWoB4zVQ6Piu+2zXh
         ON9A==
X-Forwarded-Encrypted: i=1; AJvYcCUf8DfXKMTU451kH15fXcPWrZQuE8I/4x2Qk7m1OITzkp9GVBZvIvXfRsuVM0jbmq4n4AwgSOFvUHrN+q4p8g==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyx5GVU7VTgsxP1DpbjO43y/PENnbmdzfhhf9ArSJMrIl3mot0F
	4o0eHL9K7/bFj0be3N9p0SfarbKX8FFSya60cOkm26Sfq6SvBwwUoy3hu3DY5KP9mWoWTWA286Q
	lvhXt
X-Gm-Gg: ASbGncuHLPGYdS/ZSq2htD+WTch9ndOkX/R4EZkWivjfoRDkf+EMC45+V+/wbUIkluk
	TcCNSrTQhDwmHdE9+gZFsNtuG1UmR67Vu2dhfiEy+IEUZFdBwoac7oU5P57ff2Zie4oKe9h4CHh
	q9e6l45fzmM2w8d+jV5q/8MtN6ZzwS6MqB/dWhAo94w55VW9K1VP/xudMtW+fUB7CkbDDuwW/mt
	OOk4qw6+LhHFJah2hof7JEEip4BxJBtNiYlMMi2Icq0gXlmv4lwMRifz96T6Tz+UfUFWd15mMUa
	K+almHwYLw0Va8iOpSyqUZvjukIkUYAvtsP1Xtgg6pUQCOaJys08laV/+TqXw8hZaWQ/OQ==
X-Google-Smtp-Source: AGHT+IH22PiuLluVmBzy5NNuWGzg+gh/f2Wz877Jt1zpLwJBi3vm/VbVBZCK59H4/S9ScrvYs5Gj3w==
X-Received: by 2002:ac2:4e06:0:b0:545:2fa9:8cf5 with SMTP id 2adb3069b0e04-548510eec38mr458692e87.49.1740447691679;
        Mon, 24 Feb 2025 17:41:31 -0800 (PST)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com. [209.85.208.174])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-548514f4e40sm46581e87.204.2025.02.24.17.41.29
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2025 17:41:31 -0800 (PST)
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-30918c29da2so53677811fa.0
        for <linux-rockchip@lists.infradead.org>; Mon, 24 Feb 2025 17:41:29 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXMhxMtObxeEGtM4Mv/kAHHfIXdZVPheHAO3mlgndNDOqUSUjzsK2mPCFvuyHiJxaKCgwQTOuyaH2xhLhjvLw==@lists.infradead.org
X-Received: by 2002:a05:6512:12d3:b0:545:5a5:b69f with SMTP id
 2adb3069b0e04-548510cd51bmr337321e87.9.1740447688736; Mon, 24 Feb 2025
 17:41:28 -0800 (PST)
MIME-Version: 1.0
References: <20250224081325.96724-1-damon.ding@rock-chips.com> <20250224081325.96724-10-damon.ding@rock-chips.com>
In-Reply-To: <20250224081325.96724-10-damon.ding@rock-chips.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 24 Feb 2025 17:41:17 -0800
X-Gmail-Original-Message-ID: <CAD=FV=WoigDDTG6wTK0smsxASVfK5BzzW6KNpKWq97v4GAgvmw@mail.gmail.com>
X-Gm-Features: AWEUYZnKr8Y-H4FsK-guhyhHxicg1iDHnSI-Q2A1gzO1kxk46bWqe3yORiZ3SvY
Message-ID: <CAD=FV=WoigDDTG6wTK0smsxASVfK5BzzW6KNpKWq97v4GAgvmw@mail.gmail.com>
Subject: Re: [PATCH v7 09/15] drm/bridge: analogix_dp: Add support to get
 panel from the DP AUX bus
To: Damon Ding <damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250224_174134_532776_05FE79B6 
X-CRM114-Status: GOOD (  25.54  )
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
Cc: heiko@sntech.de, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, robh@kernel.org, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, dmitry.baryshkov@linaro.org, linux-arm-kernel@lists.infradead.org, neil.armstrong@linaro.org, linux-kernel@vger.kernel.org, boris.brezillon@collabora.com, andy.yan@rock-chips.com, krzk+dt@kernel.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksCgpPbiBNb24sIEZlYiAyNCwgMjAyNSBhdCAxMjoxNOKAr0FNIERhbW9uIERpbmcgPGRhbW9u
LmRpbmdAcm9jay1jaGlwcy5jb20+IHdyb3RlOgo+Cj4gVGhlIG1haW4gbW9kaWZpY2F0aW9uIGlz
IG1vdmluZyB0aGUgRFAgQVVYIGluaXRpYWxpemF0aW9uIGZyb20gZnVuY3Rpb24KPiBhbmFsb2dp
eF9kcF9iaW5kKCkgdG8gYW5hbG9naXhfZHBfcHJvYmUoKS4gSW4gb3JkZXIgdG8gZ2V0IHRoZSBF
RElEIG9mCj4gZURQIHBhbmVsIGR1cmluZyBwcm9iaW5nLCBpdCBpcyBhbHNvIG5lZWRlZCB0byBh
ZHZhbmNlIFBNIG9wZXJhdGlvbnMgdG8KPiBlbnN1cmUgdGhhdCBlRFAgY29udHJvbGxlciBhbmQg
cGh5IGFyZSBwcmVwYXJlZCBmb3IgQVVYIHRyYW5zbWlzc2lvbi4KPgo+IEFkZGl0aW9uYWxseSwg
YWRkIHN1cHBvcnQgZm9yICZkcm1fZHBfYXV4LndhaXRfaHBkX2Fzc2VydGVkKCkgdG8gaGVscAo+
IGNvbmZpcm0gdGhlIEhQRCBzdGF0ZSBiZWZvcmUgZG9pbmcgQVVYIHRyYW5zZmVycy4KCk1heWJl
IG1vdmUgdGhlIGFkZGl0aW9uIG9mIHRoZSBhbmFsb2dpeF9kcGF1eF93YWl0X2hwZF9hc3NlcnRl
ZCgpIHRvIGEKc2VwYXJhdGUgcGF0Y2g/CgoKPiBTaWduZWQtb2ZmLWJ5OiBEYW1vbiBEaW5nIDxk
YW1vbi5kaW5nQHJvY2stY2hpcHMuY29tPgo+Cj4gLS0tCj4KPiBDaGFuZ2VzIGluIHY0Ogo+IC0g
VXNlIGRvbmVfcHJvYmluZygpIHRvIGNhbGwgZHJtX29mX2ZpbmRfcGFuZWxfb3JfYnJpZGdlKCkg
YW5kCj4gICBjb21wb25lbnRfYWRkKCkgd2hlbiBnZXR0aW5nIHBhbmVsIGZyb20gdGhlIERQIEFV
WCBidXMKPgo+IENoYW5nZXMgaW4gdjU6Cj4gLSBBZHZhbmNlIFBNIG9wZXJhdGlvbnMgdG8gbWFr
ZSBlRFAgQVVYIHdvcmsgd2VsbAo+Cj4gQ2hhbmdlcyBpbiB2NjoKPiAtIFVzZSBkZXZtX3BtX3J1
bnRpbWVfZW5hYmxlKCkgaW5zdGVhZCBvZiBkZXZtX2FkZF9hY3Rpb25fb3JfcmVzZXQoKQo+IC0g
QWRkIGEgbmV3IGZ1bmN0aW9uIGFuYWxvZ2l4X2RwX3JlbW92ZSgpIHRvIGVuc3VyZSBzeW1tZXRy
eSBmb3IgUE0KPiAgIG9wZXJhdGlvbnMKPgo+IENoYW5nZXMgaW4gdjc6Cj4gLSBGaXggdGhlIG1p
c3NwZWxsaW5nIG9mIHdvcmQgJ29wZXJhdGlvbnMnIGluIGNvbW1pdCBtZXNzYWdlCj4gLSBSZW1v
dmUgdGhlIGNoZWNrIHJlbGF0ZWQgdG8gQ09ORklHX1BNCj4gLSBSZW1vdmUgdGhlIHVubmVjZXNz
YXJ5IGNhbGwgdG8gcG1fcnVudGltZV9kb250X3VzZV9hdXRvc3VzcGVuZCgpIGlmCj4gICBkZXZt
X3BtX3J1bnRpbWVfZW5hYmxlKCkgZmFpbHMKPiAtIFJlbW92ZSB1bm5lY2Vzc2FyeSBmdW5jdGlv
biBhbmFsb2dpeF9kcF9yZW1vdmUoKQo+IC0gQWRkIG5ldyBmdW5jdGlvbiBhbmFsb2dpeF9kcGF1
eF93YWl0X2hwZF9hc3NlcnRlZCgpCj4gLS0tCj4gIC4uLi9kcm0vYnJpZGdlL2FuYWxvZ2l4L2Fu
YWxvZ2l4X2RwX2NvcmUuYyAgICB8IDM3ICsrKysrKysrKysrKysrLS0tLS0KPiAgMSBmaWxlIGNo
YW5nZWQsIDI4IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9jb3JlLmMgYi9kcml2
ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4X2RwX2NvcmUuYwo+IGluZGV4IGE1
N2UwNmQzMDNhMS4uZmY4MWMzN2RiZTFkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9i
cmlkZ2UvYW5hbG9naXgvYW5hbG9naXhfZHBfY29yZS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9jb3JlLmMKPiBAQCAtMTU0OCw2ICsxNTQ4LDIy
IEBAIHN0YXRpYyBzc2l6ZV90IGFuYWxvZ2l4X2RwYXV4X3RyYW5zZmVyKHN0cnVjdCBkcm1fZHBf
YXV4ICphdXgsCj4gICAgICAgICByZXR1cm4gcmV0Owo+ICB9Cj4KPiArc3RhdGljIGludCBhbmFs
b2dpeF9kcGF1eF93YWl0X2hwZF9hc3NlcnRlZChzdHJ1Y3QgZHJtX2RwX2F1eCAqYXV4LCB1bnNp
Z25lZCBsb25nIHdhaXRfdXMpCj4gK3sKPiArICAgICAgIHN0cnVjdCBhbmFsb2dpeF9kcF9kZXZp
Y2UgKmRwID0gdG9fZHAoYXV4KTsKPiArICAgICAgIGludCB2YWw7Cj4gKyAgICAgICBpbnQgcmV0
Owo+ICsKPiArICAgICAgIHBtX3J1bnRpbWVfZ2V0X3N5bmMoZHAtPmRldik7Cj4gKwo+ICsgICAg
ICAgcmV0ID0gcmVhZHhfcG9sbF90aW1lb3V0KGFuYWxvZ2l4X2RwX2RldGVjdF9ocGQsIGRwLCB2
YWwsICF2YWwsIHdhaXRfdXMgLyAxMDAsIHdhaXRfdXMpOwoKTW9yZSB0aGFuIGhhcHB5IGlmIHNv
bWVvbmUgZWxzZSB3YW50cyB0byBvdmVycnVsZSBtZSwgYnV0IGl0IHNlZW1zCndlaXJkIHRoYXQg
eW91J3JlIGxvb3Bpbmcgb3ZlciBhIGZ1bmN0aW9uIHRoYXQgYWxyZWFkeSBoYXMgYSBsb29wLgpT
aG91bGRuJ3QgeW91IGJlIGNhbGxpbmcgYW5hbG9naXhfZHBfZ2V0X3BsdWdfaW5fc3RhdHVzKCkg
ZGlyZWN0bHk/Ci4uLmFuZCBpZiAiZHAtPmZvcmNlX2hwZCIgeW91IHByb2JhYmx5IHNob3VsZG4n
dCBiZSBwb2xsaW5nIGF0IGFsbC4gSWYKSFBEIGlzIG5vdCBob29rZWQgdXAgSSB0aGluayB3ZSBk
ZWNpZGVkIGluIHNuNjVkc2k4NiB0aGF0IHdlIHNob3VsZApqdXN0IHNsZWVwIGZvciB0aGUgbWF4
aW11bSB0aW1lIChjaG9vc2luZyBhIGNvbnNlcnZhdGl2ZSB2YWx1ZSBpZiB0b2xkCnRvIHdhaXQg
Zm9yZXZlcikuCgoKQXNpZGUgZnJvbSB0aGF0IGFuZCB0aGUgaWRlYSBvZiBtb3ZpbmcKYW5hbG9n
aXhfZHBhdXhfd2FpdF9ocGRfYXNzZXJ0ZWQoKSB0byBhIHNlcGFyYXRlIHBhdGNoIHRoaXMgbG9v
a3MgZ29vZAp0byBtZS4KCgotRG91ZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
