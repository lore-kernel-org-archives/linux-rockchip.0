Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 105BEC3DA66
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Aug 2023 07:10:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EN1/iaveyVKJJNUIbnYpmDoCfviOD40ek7Qp3D+uDBI=; b=yDbGxFz6aJHaP0
	BFB01VcTGN/x8f5zzMZlkNqsNjs7sxI175WqIfidRsgitCL8vyZsFaRoxqHTOZOXKeYHn5mpiZSar
	dPpPv3KBGPa2ovsedhu9mFxlvbVYv07bLTccZj0Wdprub9fnZacuZjQGlxKJQmY8gyiXjBXtvDdc4
	UKzIGwBQJgEBMJ1JzKBPAPzmwsMMuw8jbtLwvu2gxa4OwWpuvfuA25jS9ZTj30M0ciP7exBoXrUfg
	VFB5GOIe1Gie9FJL26QvIKhNOZDNwwK5u1ppxZ0fcfxlu9rA6neY8SsnWIDjc0inCxLPt2644nN3N
	zEk1ng3Bgebr3SzLw0JA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZQxQ-004WEu-2t;
	Fri, 25 Aug 2023 07:10:12 +0000
Received: from mail-vk1-xa2f.google.com ([2607:f8b0:4864:20::a2f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZQxN-004WDe-1r
	for linux-rockchip@lists.infradead.org;
	Fri, 25 Aug 2023 07:10:11 +0000
Received: by mail-vk1-xa2f.google.com with SMTP id 71dfb90a1353d-48d109dc6beso246209e0c.1
        for <linux-rockchip@lists.infradead.org>; Fri, 25 Aug 2023 00:10:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1692947406; x=1693552206;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x5EX+gwEzyeXF6XC8LlxAhzlJjAglCGWrtHefzLPF+8=;
        b=LJadvTAQbkRD+f2MXTNggP1h9mqxL1WMjnMYDI16hPt+7eD1BS/AnNFT3Z+Y5SAtF2
         bPujg8GPq0w8RmF19iA5PaTICmJjLrGjZoYZgtiPA8GjS0cq/LT4S3XPHwiHkV+kwccA
         dNsW3KnbQ8J0x6mwSaR9lTfpZo8lFrZQcnVOE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692947406; x=1693552206;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x5EX+gwEzyeXF6XC8LlxAhzlJjAglCGWrtHefzLPF+8=;
        b=CP87k0NAVsW9j4NSnYmBPSAAvLON2/rRZBQdtsBvlWM8Mv77EpUg6rRqCNng3qXHV1
         ZtCsvy2pTIC6XncVKDO7UTmhsSUQZHr7X9PspfLGwmJbUyiLtfMGWb6fVq9AkZjRT8Wd
         DzJXG0oZjnBXrDLuUiHRcURI1O4qBnGiu4B5PQMoPAhooKt7ryGk0/ARs9BaSQDVVrYN
         mRXJYXbsNKbMd+McR6ZRhVv/0j0GIQhSYunsi2dP3+M/9Z+RKxS/h6sy7G1xxpiAOz+i
         ZAaQd9cwHQULY1rWhjER1lUu9HNefDYczGs5hYfSLXIEub+s7aecaDeupIMdypzvjOrU
         M8Ww==
X-Gm-Message-State: AOJu0Yy17ZnIoAS5ZBK1ezi/ggC+74qUDyOoK4KIRSJPJLlj64OFeyQ2
	tQ6AGem6VAPC3N/VzVFhrXtIp1F9gYPAXxyb9qmzWg==
X-Google-Smtp-Source: AGHT+IELhk/HTvcIhwAadwlBpkdyC2BiGJq2vICCqJaShJfw+ZzEb2D437iYFlXAbO2f7fxTazAzhv3Nk+9AeByo1g8=
X-Received: by 2002:a05:6102:4ae:b0:44e:9113:ac58 with SMTP id
 r14-20020a05610204ae00b0044e9113ac58mr4394723vsa.6.1692947406554; Fri, 25 Aug
 2023 00:10:06 -0700 (PDT)
MIME-Version: 1.0
References: <20230824013858.303105-1-marex@denx.de> <CAHCN7xLDmMv7T_fT7vY3iq+KMWuPM9tBP_2AJ-X04L7ZTRWPOw@mail.gmail.com>
 <80d9a66f-c703-6057-e084-1a6d2214d775@denx.de>
In-Reply-To: <80d9a66f-c703-6057-e084-1a6d2214d775@denx.de>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 25 Aug 2023 15:09:55 +0800
Message-ID: <CAGXv+5GQFtCAYbfSbEJeHA4Os0O6WuD64V-xcZ9uDD33HbuhhQ@mail.gmail.com>
Subject: Re: [PATCH] media: hantro: Check whether reset op is defined before use
To: Marek Vasut <marex@denx.de>
Cc: Adam Ford <aford173@gmail.com>, linux-media@vger.kernel.org, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230825_001009_656169_4F5B0DF7 
X-CRM114-Status: GOOD (  18.50  )
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

T24gVGh1LCBBdWcgMjQsIDIwMjMgYXQgOTowOOKAr1BNIE1hcmVrIFZhc3V0IDxtYXJleEBkZW54
LmRlPiB3cm90ZToKPgo+IE9uIDgvMjQvMjMgMTI6MzksIEFkYW0gRm9yZCB3cm90ZToKPiA+IE9u
IFdlZCwgQXVnIDIzLCAyMDIzIGF0IDg6MznigK9QTSBNYXJlayBWYXN1dCA8bWFyZXhAZGVueC5k
ZT4gd3JvdGU6Cj4gPj4KPiA+PiBUaGUgaS5NWDhNTS9OL1AgZG9lcyBub3QgZGVmaW5lIHRoZSAu
cmVzZXQgb3Agc2luY2UgcmVzZXQgb2YgdGhlIFZQVSBpcwo+ID4+IGRvbmUgYnkgZ2VucGQuIENo
ZWNrIHdoZXRoZXIgdGhlIC5yZXNldCBvcCBpcyBkZWZpbmVkIGJlZm9yZSBjYWxsaW5nIGl0Cj4g
Pj4gdG8gYXZvaWQgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlLgo+ID4+Cj4gPj4gTm90ZSB0aGF0
IHRoZSBGaXhlcyB0YWcgaXMgc2V0IHRvIHRoZSBjb21taXQgd2hpY2ggcmVtb3ZlZCB0aGUgcmVz
ZXQgb3AKPiA+PiBmcm9tIGkuTVg4TSBIYW50cm8gRzIgaW1wbGVtZW50YXRpb24sIHRoaXMgaXMg
YmVjYXVzZSBiZWZvcmUgdGhpcyBjb21taXQKPiA+PiBhbGwgdGhlIGltcGxlbWVudGF0aW9ucyBk
aWQgZGVmaW5lIHRoZSAucmVzZXQgb3AuCj4gPgo+ID4gSSBhbSBzdXJwcmlzZWQgSSBkaWRuJ3Qg
aGF2ZSBpc3N1ZXMgd2hlbiBJIHdhcyB0ZXN0aW5nIHRoZSA4TVEgYW5kCj4gPiA4TU0sIGJ1dCB0
aGlzIG1ha2VzIHNlbnNlLgo+Cj4gWW91IG5lZWQgdG8gdHJpZ2dlciB0aGUgVlBVIHdhdGNoZG9n
IHRvIHRyaWdnZXIgdGhlIGNyYXNoLCB0aGF0IG1lYW5zCj4geW91IGhhdmUgdG8gZ2V0IHRoZSBW
UFUgaW50byBzb21lIHdlaXJkIHN0YXRlIHdoZXJlIGl0IGZhaWxzIHRvIGRlY29kZQo+IGZyYW1l
LiBUaGVuIGl0IHRyaWdnZXJzIHRoZSByZXNldCBhbmQgLi4uIGJvb20uCj4KPiBTZWUgdGhpcyBw
YXRjaCwgdGhhdCBjb250YWlucyBhIGdzdHJlYW1lciBpbnZvY2F0aW9uIHRvIGdlbmVyYXRlIHN1
Y2gKPiB0cmlnZ2VyIGNvbmRpdGlvbiBpbnB1dCBkYXRhOgo+Cj4gW1BBVENIXSBtZWRpYTogdmVy
aXNpbGljb246IERvIG5vdCBlbmFibGUgRzIgcG9zdHByb2MgZG93bnNjYWxlIGlmCj4gc291cmNl
IGlzIG5hcnJvd2VyIHRoYW4gZGVzdGluYXRpb24KPgo+ICIKPiBUbyBnZW5lcmF0ZSBpbnB1dCB0
ZXN0IGRhdGEgdG8gdHJpZ2dlciB0aGlzIGJ1ZywgdXNlIGUuZy46Cj4gJCBnc3QtbGF1bmNoLTEu
MCB2aWRlb3Rlc3RzcmMgIQo+IHZpZGVvL3gtcmF3LHdpZHRoPTI3MixoZWlnaHQ9MjU2LGZvcm1h
dD1JNDIwICEgXAo+ICAgICAgICAgICAgICAgICAgIHZwOWVuYyAhIG1hdHJvc2thbXV4ICEgZmls
ZXNpbmsgbG9jYXRpb249L3RtcC90ZXN0LnZwOQo+IFRvIHRyaWdnZXIgdGhlIGJ1ZyB1cG9uIGRl
Y29kaW5nIChub3RlIHRoYXQgdGhlIE5WMTIgbXVzdCBiZSBmb3JjZWQsIGFzCj4gdGhhdCBhc3N1
cmVzIHRoZSBvdXRwdXQgZGF0YSB3b3VsZCBwYXNzIHRoZSBHMiBwb3N0cHJvYyk6Cj4gJCBnc3Qt
bGF1bmNoLTEuMCBmaWxlc3JjIGxvY2F0aW9uPS90bXAvdGVzdC52cDkgISBtYXRyb3NrYWRlbXV4
ICEKPiB2cDlwYXJzZSAhIFwKPiAgICAgICAgICAgICAgICAgICB2NGwyc2x2cDlkZWMgISB2aWRl
by94LXJhdyxmb3JtYXQ9TlYxMiAhIHZpZGVvY29udmVydAo+ICEgZmJkZXZzaW5rCj4gIgoKRG9l
cyBpdCBjb21wbGV0ZWx5IHJlY292ZXIgYWZ0ZXJ3YXJkcz8gSW4gbXkgcHJldmlvdXMgdHJpYWxz
IHRoZSBoYXJkd2FyZQplbmRlZCB1cCBpbiBzb21lIGJpenphcmUgc3RhdGU6IHdoaWxlIGRlY29k
aW5nIHN1Y2NlZWRzLCB0aGUgb3V0cHV0J3MgbWQ1c3VtCmRpZG4ndCBtYXRjaCB1cC4KCkNoZW5Z
dQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
