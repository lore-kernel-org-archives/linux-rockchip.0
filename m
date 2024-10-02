Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0513CF31B8
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Oct 2024 13:12:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ojon/zal0sb5oM4TTkutl5i2xrZJ+MzFYixzvFUSxfY=; b=wG4r6EsAlCcE7c
	+fpMXY6CwajZ1itOBCIRTjOEMv1hDPdZmBlslIm+d6p9+2nQAeFZUu2KXRqupT3rcMzuS4hJWyAPc
	+ZkLJtLu3OzBVSOYAdevMSW1DbYeX3T1uiCnC9J6ddipPLhgEOQ1SoZXvf0iTzR0P2KiW/O0crISe
	lbToKxTPtpTJc/BsuTGUkE5c9Isd07YSXnDzrXDqyRW7V+KDYKr9XNc5OSXep8+yTmYCtmmYBPX1j
	bmGd/yzcmifFF3M+/m8uTkeE+3rhUMPsAEfoH2jH5G3bbrdO8kFdW+I1KVXFd0J+R6Y9TWR4s/Wwd
	PRbTIa7fOLibJ09hDjSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svz9q-000000063ze-2q87;
	Wed, 02 Oct 2024 13:12:46 +0000
Received: from mail-il1-f169.google.com ([209.85.166.169])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svz9o-000000063xo-1Jva
	for linux-rockchip@lists.infradead.org;
	Wed, 02 Oct 2024 13:12:45 +0000
Received: by mail-il1-f169.google.com with SMTP id e9e14a558f8ab-3a0cc384a85so36296705ab.1
        for <linux-rockchip@lists.infradead.org>; Wed, 02 Oct 2024 06:12:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727874759; x=1728479559;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3pK+kjin/q50hNie7LoR7GwLI4Mu+qAhCcp1BuFD5Sk=;
        b=wyT7ISaB6mpf9G+w2FTuDNiXbxJvKDX3bALq+O2RXETDlPLYu0veHlaKYJrqYYBenA
         hoBWxdqK+DkazHuneKryaaipB2zNjZuoWwfrl7ZCOprt4mjdMNSrlmVNiGi9ue0jt5UU
         n90qL0+bKmeAjhFcyKTwJnE+5CZXdNrsu86MOM10gAVdZJHAqPal6oTjJMHqGRpZOF5B
         gW7lsGoeEE+ZiJDS29yaUib7jRIeJoHYiLA3Y2SG2DWgTNSIaYwRPw+icLt00K7StiVO
         S32Wbyn4MOy1ZAxYMn1LziazFS+iUgioCDPd+OvX4Ath0LCuNkkdTuFHhxARd5oxe+2q
         CqxA==
X-Forwarded-Encrypted: i=1; AJvYcCUfbYPDappcQcTDcxfQ0doOJ1XUjC0fRV3Rn031ZZ01l4U7/oYkJXGcpYKzWCs/WMZAFMe9li1QxGbu6SmhDA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxgCJfxpi6lUbEmUo9nOJ8PdtHkGaStM+aoL7wA7F35araSZ6YZ
	lQRR8LbuBJep5uhkHEYZD2zWhG+H2JluXK+8h3UjYI2Tl4Pnf/vsfVmd4Zro
X-Google-Smtp-Source: AGHT+IEUGM2c/Dne9sWN4OtDsfXN6xBiBraVTOltaQk+HbvDnxTbUjd6j8iBhEIhyEIO6a4PaeMzHw==
X-Received: by 2002:a05:6e02:1c27:b0:3a0:933d:d307 with SMTP id e9e14a558f8ab-3a36591ae4bmr25268585ab.8.1727874759268;
        Wed, 02 Oct 2024 06:12:39 -0700 (PDT)
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com. [209.85.166.46])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3a344d86a54sm36276865ab.22.2024.10.02.06.12.35
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Oct 2024 06:12:38 -0700 (PDT)
Received: by mail-io1-f46.google.com with SMTP id ca18e2360f4ac-8323b555a68so413020239f.2
        for <linux-rockchip@lists.infradead.org>; Wed, 02 Oct 2024 06:12:35 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUUR561526dNkwxbJsJ2kje5bMsRmGHwMDBpKEzVMLRxYulENbRjXZrhTKO18hD+LH9V4qOCVbZC3Mfz+kNqA==@lists.infradead.org
X-Received: by 2002:a05:6602:134f:b0:82c:f30d:fc9b with SMTP id
 ca18e2360f4ac-834d853a0eemr362057239f.13.1727874755504; Wed, 02 Oct 2024
 06:12:35 -0700 (PDT)
MIME-Version: 1.0
References: <20240919091834.83572-1-sebastian.reichel@collabora.com> <CAPDyKFpWYnqLGdxXc4Wvt_3MNsYkCpRfTJMeUddZzpKTwnY4Rw@mail.gmail.com>
In-Reply-To: <CAPDyKFpWYnqLGdxXc4Wvt_3MNsYkCpRfTJMeUddZzpKTwnY4Rw@mail.gmail.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Wed, 2 Oct 2024 21:12:20 +0800
X-Gmail-Original-Message-ID: <CAGb2v65LCyd8tMHLruCFb4Sd_oAXmAHWRMOKcQZHkOvuZxROmA@mail.gmail.com>
Message-ID: <CAGb2v65LCyd8tMHLruCFb4Sd_oAXmAHWRMOKcQZHkOvuZxROmA@mail.gmail.com>
Subject: Re: [PATCH v2 0/6] Fix RK3588 GPU domain
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Elaine Zhang <zhangqing@rock-chips.com>, 
	=?UTF-8?Q?Adri=C3=A1n_Mart=C3=ADnez_Larumbe?= <adrian.larumbe@collabora.com>, 
	Boris Brezillon <boris.brezillon@collabora.com>, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_061244_379019_02E527E8 
X-CRM114-Status: GOOD (  30.75  )
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
Reply-To: wens@csie.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gV2VkLCBPY3QgMiwgMjAyNCBhdCA3OjAw4oCvUE0gVWxmIEhhbnNzb24gPHVsZi5oYW5zc29u
QGxpbmFyby5vcmc+IHdyb3RlOgo+Cj4gT24gVGh1LCAxOSBTZXB0IDIwMjQgYXQgMTE6MTgsIFNl
YmFzdGlhbiBSZWljaGVsCj4gPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+IHdyb3Rl
Ogo+ID4KPiA+IEhpLAo+ID4KPiA+IEkgZ290IGEgcmVwb3J0LCB0aGF0IHRoZSBMaW51eCBrZXJu
ZWwgY3Jhc2hlcyBvbiBSb2NrIDVCIHdoZW4gdGhlIHBhbnRob3IKPiA+IGRyaXZlciBpcyBsb2Fk
ZWQgbGF0ZSBhZnRlciBib290aW5nLiBUaGUgY3Jhc2ggc3RhcnRzIHdpdGggdGhlIGZvbGxvd2lu
Zwo+ID4gc2hvcnRlbmVkIGVycm9yIHByaW50Ogo+ID4KPiA+IHJvY2tjaGlwLXBtLWRvbWFpbiBm
ZDhkODAwMC5wb3dlci1tYW5hZ2VtZW50OnBvd2VyLWNvbnRyb2xsZXI6IGZhaWxlZCB0byBzZXQg
ZG9tYWluICdncHUnLCB2YWw9MAo+ID4gcm9ja2NoaXAtcG0tZG9tYWluIGZkOGQ4MDAwLnBvd2Vy
LW1hbmFnZW1lbnQ6cG93ZXItY29udHJvbGxlcjogZmFpbGVkIHRvIGdldCBhY2sgb24gZG9tYWlu
ICdncHUnLCB2YWw9MHhhOWZmZgo+ID4gU0Vycm9yIEludGVycnVwdCBvbiBDUFU0LCBjb2RlIDB4
MDAwMDAwMDBiZTAwMDQxMSAtLSBTRXJyb3IKPiA+Cj4gPiBUaGlzIHNlcmllcyBmaXJzdCBkb2Vz
IHNvbWUgY2xlYW51cHMgaW4gdGhlIFJvY2tjaGlwIHBvd2VyIGRvbWFpbgo+ID4gZHJpdmVyIGFu
ZCBjaGFuZ2VzIHRoZSBkcml2ZXIsIHNvIHRoYXQgaXQgbm8gbG9uZ2VyIHRyaWVzIHRvIGNvbnRp
bnVlCj4gPiB3aGVuIGl0IGZhaWxzIHRvIGVuYWJsZSBhIGRvbWFpbi4gVGhpcyBnZXRzIHJpZCBv
ZiB0aGUgU0Vycm9yIGludGVycnVwdAo+ID4gYW5kIGxvbmcgYmFja3RyYWNlcy4gQnV0IHRoZSBr
ZXJuZWwgc3RpbGwgaGFuZ3Mgd2hlbiBpdCBmYWlscyB0byBlbmFibGUKPiA+IGEgcG93ZXIgZG9t
YWluLiBJIGhhdmUgbm90IGRvbmUgZnVydGhlciBhbmFseXNpcyB0byBjaGVjayBpZiB0aGF0IGNh
bgo+ID4gYmUgYXZvaWRlZC4KPiA+Cj4gPiBMYXN0IGJ1dCBub3QgbGVhc3QgdGhpcyBwcm92aWRl
cyBhIGZpeCBmb3IgdGhlIEdQVSBwb3dlciBkb21haW4gZmFpbGluZwo+ID4gdG8gZ2V0IGVuYWJs
ZWQgLSBhZnRlciBzb21lIHRlc3RpbmcgZnJvbSBteSBzaWRlIGl0IHNlZW1zIHRvIHJlcXVpcmUg
dGhlCj4gPiBHUFUgdm9sdGFnZSBzdXBwbHkgdG8gYmUgZW5hYmxlZC4KPiA+Cj4gPiBJJ20gbm90
IHJlYWxseSBoYXBweSBhYm91dCB0aGUgaGFjayB0byBnZXQgYSByZWd1bGF0b3IgZm9yIGEgc3Vi
LW5vZGUsCj4gPiB3aGljaCBJIHRvb2sgb3ZlciBmcm9tIHRoZSBNZWRpYXRlayBkcml2ZXIuIEkg
ZGlzY3Vzc2VkIHRoaXMgd2l0aAo+ID4gQ2hlbi1ZdSBUc2FpIGFuZCBIZWlrbyBTdMO8Ym5lciBh
dCBPU1MgRVUgYW5kIHRoZSBwbGFuIGlzOgo+ID4KPiA+IDEuIE1lcmdlIFJvY2tjaGlwIFBNIGRv
bWFpbiBkcml2ZXIgd2l0aCB0aGlzIGhhY2sgZm9yIG5vdywgc2luY2UgRFJNIENJCj4gPiAgICBw
ZW9wbGUgbmVlZCBpdAo+ID4gMi4gQ2hlbi1ZdSB3aWxsIHdvcmsgb24gYSBzZXJpZXMsIHdoaWNo
IGZpeGVzIHRoZSBoYWNrIGluIE1lZGlhdGVrIGJ5Cj4gPiAgICBpbnRyb2R1Y2luZyBhIG5ldyBk
ZXZtX3JlZ3VsYXRvcl9nZXQgZnVuY3Rpb24gdGFraW5nIGFuIERUIG5vZGUgYXMKPiA+ICAgIGFk
ZGl0aW9uYWwgYXJndW1lbnQKPiA+IDMuIFJvY2tjaGlwIFBNIGRvbWFpbiBsYXRlciB3aWxsIHN3
aXRjaCB0byB0aGF0IG9uY2UgaXQgaGFzIGxhbmRlZAo+Cj4gSSBoYXZlIGp1c3QgcXVldWVkIHVw
IDIpIG9uIG15IG5leHQgYnJhbmNoLgo+Cj4gTXkgc3VnZ2VzdGlvbiBpcyB0byBza2lwIHRoZSBp
bnRlcm1lZGlhdGUgc3RlcCBpbiAxKSBhbmQgZ28gZGlyZWN0bHkKPiBmb3IgMykgaW5zdGVhZCwg
dW5sZXNzIHlvdSB0aGluayB0aGVyZSBpcyBhIHByb2JsZW0gd2l0aCB0aGF0LCBvZgo+IGNvdXJz
ZT8KCkkgZG9uJ3QgdGhpbmsgd2Ugd2VyZSBleHBlY3RpbmcgdGhpbmdzIHRvIGdldCBtZXJnZWQg
c28gc29vbi4gQW5kIElJUkMKU2ViYXN0aWFuIHdlbnQgb24gdmFjYXRpb24gYWZ0ZXIgUGx1bWJl
cnMgZm9yIHR3byB3ZWVrcy4KCkNoZW5ZdQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
