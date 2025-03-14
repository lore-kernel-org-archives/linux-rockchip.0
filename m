Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90A4BC28B28
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Mar 2025 02:37:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ybjL+UkkL0bHgNvTWOC9xWnP+I+r1EPe82qkDYp5u14=; b=utlC8kuk0puADM
	T5TKBHfid3ybgryOKwqm1RnWP2LV8E4dWM6J+EZHQoXPqqaFNlWBGUw8Zdz8QqGvxlpsNzb/bJtDe
	pv1rf0wluJxcdg4IN7ZjBy65A6IimNMq4J8fy67mx2TkpntBvfXj75hEnG0CM473CQHaBtTdD/jOX
	4E7k4UcTsZTPGkawQdYxAXROLj9FznpYcLpY5Dwg6YRYsCpJ7/cG4RIkjP6e6ebBZlqr/OWVJOtJU
	+qJNTxdeELMZqB7NCX8RxrodsI9OBZNL1rL46BUPFAINknLMMx2qLt9rhgX083IBqjPPqRIWldzJZ
	ACvyIoCOooclnKYnyVug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsuur-0000000CxPq-0IMJ;
	Fri, 14 Mar 2025 02:36:53 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsutH-0000000CxJN-44g5
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Mar 2025 02:35:17 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-5dccaaca646so2947097a12.0
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Mar 2025 19:35:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1741919714; x=1742524514; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=il06D9hr0Fc9RDaH12vgTcO4maMntEHFOsv/sipTbFw=;
        b=UTdxkK6hQwu+Fzne6myrScPjkuLBmtk4XO8qAx6arW+0vU/LnxhyyLU7P7q0P++lNt
         fJM99SGwco7xdf8+S6o9wk72d3bkEQiJtLzE3eZKjCbZHNoVxnbBhYHXd7hir+oCnm2C
         OMo+ivj4JNhVzTQGVQkkaGh+IVvAxb7i+hK9A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741919714; x=1742524514;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=il06D9hr0Fc9RDaH12vgTcO4maMntEHFOsv/sipTbFw=;
        b=Xbnr92SkLZbMBPhFkw0B72L7KgRB3OB2ef2gsU7FzDGcVpX0C2OwNep5M7ftiyqKNL
         mR6Ez/PD6znFjAqI1N4+9DaEupQcy8iH1iRGDBer5ANCTtvVcpN7EJ7edvvBlX9xWUKB
         y8je6w+voBcLRpkIRVa28wMPz/DZpiYcCli2vqfg4vAro+5XCE9SWpF23n7b5rEHq+Pf
         bI/buH6lFtm3kf5ymLumPo7uGhsS0hkoGlzLq46tZ9fmmgIeN9wwcCLV7AQRRgQvlSs9
         U4KSSDEztBcZohI7koeLkF2AkbOQAC/VxvW/D1gfEyY/A/h/4mL4+rjsxn8+BitEIpPD
         mLXQ==
X-Forwarded-Encrypted: i=1; AJvYcCXmQzL+fekqV+yn6C2mHe3m63i3CrI+2wv2qFhapQBGRIZK0xndS6IBpYb6qjnXUrYdRhBFcORtBYfPrVU0nA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwrBNGdhB6HLKIIe2z6Q8d5/AbF8d7BgDIXBRdMCICRny7viAeD
	ftigyL5B2Rjacu23S3jPpQq0aXM51kg+KNccReSgHVSJvn8jWxSG7QjA5Rgu21Y+5Tb65XuvEYa
	+8o4K
X-Gm-Gg: ASbGnctdArwjTZTmhpdfLhnmBJvHNUbgPapZzDJ27yNlpFYiNIS9PZwoMFaNtlJ1L4E
	zz6RckUwf/mz55aHszGGQI66+XcZ5GPZiyhEh0RubaRZvpJxiknNCu784Z/2vzZg7Wx5jbwV8t1
	fWUL0EoAGbENDQdqunwhxYrTL44EboRYNUBQULF1uQarMBNWHY4nxwx7bWr5Xl/HuxpuUwBdJ7W
	L1hf5U8OI4F3cmArJ+uU7Q4fC3dB4eLv2IjZZkx+nLT/vgd+94M/nopeau+CKg4lhxHoLtVmtQs
	unmWwiyP4rGO+CQaSudMQNAlynKaAWhHBT2yKfxxIyy0xN9+L0qiVvndz68FqGrZI+2FpMPkoU8
	cNKd3wJIZ
X-Google-Smtp-Source: AGHT+IGLoNev3w5RByP0LRCD4k1pQXiVfVmFtoSpa2rI2/DMPkWR2ikDaMYib6VwSl2B4vHhzWHVdw==
X-Received: by 2002:a05:6402:27cc:b0:5e4:d52b:78a2 with SMTP id 4fb4d7f45d1cf-5e814f6aa87mr4973527a12.15.1741919713856;
        Thu, 13 Mar 2025 19:35:13 -0700 (PDT)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com. [209.85.208.42])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e8169b1602sm1396602a12.42.2025.03.13.19.35.13
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Mar 2025 19:35:13 -0700 (PDT)
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5e614da8615so3133126a12.1
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Mar 2025 19:35:13 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVBV2ECvx/5AEWDlHqgPjIHjBnrTQdYGgqPwdzKPqT2Im6bubZLq7r2j6V6Soluqh5Q4yVk5rMekTTJCB7pcw==@lists.infradead.org
X-Received: by 2002:a05:6512:238b:b0:549:88b8:ccad with SMTP id
 2adb3069b0e04-549c3f97e1amr221177e87.20.1741919289506; Thu, 13 Mar 2025
 19:28:09 -0700 (PDT)
MIME-Version: 1.0
References: <20250310104114.2608063-1-damon.ding@rock-chips.com> <20250310104114.2608063-9-damon.ding@rock-chips.com>
In-Reply-To: <20250310104114.2608063-9-damon.ding@rock-chips.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 13 Mar 2025 19:27:57 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XYt894pPyvRxHAe1LjCXEorzB3xBkAKZzE6Fntfac5GQ@mail.gmail.com>
X-Gm-Features: AQ5f1JrcEIf4cAvd2mSC-J3hgcRSHWlS6TAPo8G1EtX7yAuKQEhPcQq-mGynGdM
Message-ID: <CAD=FV=XYt894pPyvRxHAe1LjCXEorzB3xBkAKZzE6Fntfac5GQ@mail.gmail.com>
Subject: Re: [PATCH v8 08/13] drm/rockchip: analogix_dp: Add support to get
 panel from the DP AUX bus
To: Damon Ding <damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_193516_007153_937F8D83 
X-CRM114-Status: GOOD (  18.87  )
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
Cc: heiko@sntech.de, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, maarten.lankhorst@linux.intel.com, mripard@kernel.org, dmitry.baryshkov@linaro.org, linux-arm-kernel@lists.infradead.org, neil.armstrong@linaro.org, hjc@rock-chips.com, boris.brezillon@collabora.com, tzimmermann@suse.de, andy.yan@rock-chips.com, krzk+dt@kernel.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksCgpPbiBNb24sIE1hciAxMCwgMjAyNSBhdCAzOjQy4oCvQU0gRGFtb24gRGluZyA8ZGFtb24u
ZGluZ0Byb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4KPiBNb3ZlIGRybV9vZl9maW5kX3BhbmVsX29y
X2JyaWRnZSgpIGEgbGl0dGxlIGxhdGVyIGFuZCBjb21iaW5lIGl0IHdpdGgKPiBjb21wb25lbnRf
YWRkKCkgaW50byBhIG5ldyBmdW5jdGlvbiByb2NrY2hpcF9kcF9saW5rX3BhbmVsKCkuIFRoZSBm
dW5jdGlvbgo+IHdpbGwgc2VydmUgYXMgZG9uZV9wcm9iaW5nKCkgY2FsbGJhY2sgb2YgZGV2bV9v
Zl9kcF9hdXhfcG9wdWxhdGVfYnVzKCksCj4gYWlkaW5nIHRvIHN1cHBvcnQgZm9yIG9idGFpbmlu
ZyB0aGUgZURQIHBhbmVsIHZpYSB0aGUgRFAgQVVYIGJ1cy4KPgo+IElmIGZhaWxlZCB0byBnZXQg
dGhlIHBhbmVsIGZyb20gdGhlIERQIEFVWCBidXMsIGl0IHdpbGwgdGhlbiB0cnkgdGhlIG90aGVy
Cj4gd2F5IHRvIGdldCBwYW5lbCBpbmZvcm1hdGlvbiB0aHJvdWdoIHRoZSBwbGF0Zm9ybSBidXMu
Cj4KPiBSZXZpZXdlZC1ieTogRG1pdHJ5IEJhcnlzaGtvdiA8ZG1pdHJ5LmJhcnlzaGtvdkBsaW5h
cm8ub3JnPgo+IFNpZ25lZC1vZmYtYnk6IERhbW9uIERpbmcgPGRhbW9uLmRpbmdAcm9jay1jaGlw
cy5jb20+Cj4KPiAtLS0KPgo+IENoYW5nZXMgaW4gdjQ6Cj4gLSBVc2UgZG9uZV9wcm9iaW5nKCkg
dG8gY2FsbCBkcm1fb2ZfZmluZF9wYW5lbF9vcl9icmlkZ2UoKSBhbmQKPiAgIGNvbXBvbmVudF9h
ZGQoKSB3aGVuIGdldHRpbmcgcGFuZWwgZnJvbSB0aGUgRFAgQVVYIGJ1cwo+Cj4gQ2hhbmdlcyBp
biB2NToKPiAtIFVzZSB0aGUgZnVuY3Rpb25zIGV4cG9ydGVkIGJ5IHRoZSBBbmFsb2dpeCBzaWRl
IHRvIGdldCB0aGUgcG9pbnRlcnMgb2YKPiAgIHN0cnVjdCBhbmFsb2dpeF9kcF9wbGF0X2RhdGEg
YW5kIHN0cnVjdCBkcm1fZHBfYXV4Lgo+IC0gVXNlIGRldl9lcnIoKSBpbnN0ZWFkIG9mIGRybV9l
cnIoKSBpbiByb2NrY2hpcF9kcF9wb3dlcm9uKCkuCj4KPiBDaGFuZ2VzIGluIHY2Ogo+IC0gS2Vl
cCBkcm1fZXJyKCkgaW4gcm9ja2NoaXBfZHBfcG93ZXJvbigpCj4gLSBQYXNzICdkcCcgaW4gZHJt
Xy4uLigpIHJhdGhlciB0aGFuICdkcC0+ZHJtX2RldicKPgo+IENoYW5nZXMgaW4gdjc6Cj4gLSBJ
bmNsdWRlIHRoZSBkcm1fZHBfYXV4X2J1cy5oIGZvciBkZXZtX29mX2RwX2F1eF9wb3B1bGF0ZV9i
dXMoKQo+IC0gVXNlIGRldl9lcnJfcHJvYmUoKSBmb3IgdGhlIHJldHVybiB2YWx1ZSBjaGVjayBv
Zgo+ICAgZGV2bV9vZl9kcF9hdXhfcG9wdWxhdGVfYnVzKCkKPiAtIFNlbGVjdCBEUk1fRElTUExB
WV9EUF9BVVhfQlVTIGlmIFJPQ0tDSElQX0FOQUxPR0lYX0RQCj4gLSBSZXN0b3JlIHRoZSBlcnJv
ciBjaGVjayBmb3IgZHJtX29mX2ZpbmRfcGFuZWxfb3JfYnJpZGdlKCkgd2hpY2ggd2FzCj4gICBy
ZW1vdmVkIGJ5IG1pc3Rha2UKPgo+IENoYW5nZXMgaW4gdjg6Cj4gLSBBZGQgY29tbWVudHMgd2hl
biBkcm1fb2ZfZmluZF9wYW5lbF9vcl9icmlkZ2UoKSByZXR1cm5zIC1FTk9ERVYKPiAtIFJlbW92
ZSBzb21lIHJlZHVuZGFudCByZXR1cm4gY2FzZXMKPiAtIEFkZCBjb21tZW50cyB3aGVuIGRldm1f
b2ZfZHBfYXV4X3BvcHVsYXRlX2J1cygpIHJldHVybnMgLUVOT0RFVgo+IC0tLQo+ICBkcml2ZXJz
L2dwdS9kcm0vcm9ja2NoaXAvS2NvbmZpZyAgICAgICAgICAgICAgfCAgMSArCj4gIC4uLi9ncHUv
ZHJtL3JvY2tjaGlwL2FuYWxvZ2l4X2RwLXJvY2tjaGlwLmMgICB8IDQyICsrKysrKysrKysrKysr
Ky0tLS0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAzNCBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygt
KQoKUmV2aWV3ZWQtYnk6IERvdWdsYXMgQW5kZXJzb24gPGRpYW5kZXJzQGNocm9taXVtLm9yZz4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
