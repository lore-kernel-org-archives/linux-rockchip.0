Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6180C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Mar 2023 15:22:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RrdDOquvkUob1I3nmBEyZxSmxFNUP/++TL2l432UJtI=; b=Yf1hyB6l7no2F7
	20APvaDoe8hTRV84j9pOsFdEkTMGdUMKem0VBxCeQRblbGcBgIAiSNvGnbjBZ3a3CDj3GlwBZXbiS
	3CXgB123GT41mF7eulF7URdVi8vKMXL43xtoQLUz6JBi2EvW2poMqKqrhVBvIWpWCblJgU5r01qYn
	1tB46/CRqFksJ3nC4qE6APaF2M10aRY6X5WIotAZEPAUtZMUPvhv2fj+zQ5GRjPrHyKqXZbHUqJ9j
	9KRpGnfPBObYuNy9lNp1IYZIt8OrdKLaJ6WcHbvQQ2M8bGHQ2QUmGj1Vt1dBJhMvp6h2JFpziB9lX
	yOem4BG3X+NDpzDJb3/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbk00-006POh-PR; Mon, 13 Mar 2023 15:22:08 +0000
Received: from mail-pg1-x529.google.com ([2607:f8b0:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbjzy-006PMk-1Q
	for linux-rockchip@lists.infradead.org; Mon, 13 Mar 2023 15:22:07 +0000
Received: by mail-pg1-x529.google.com with SMTP id z10so7106278pgr.8
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Mar 2023 08:22:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678720924;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CTyO/9ZmM0cOmu22LQH6dmHPpqco2vKj6dSQiP5p41s=;
        b=ppZnoxVR5AAfpU/KGZzcxQFGGxNOObkyF8LxhcD8i/ha8cuhaX6Zv6yog6C3mhwHG6
         d0CejPsiVMgr3tpgCLyQrrGm+JHnmcL6uzmOhijtsl5w6PVMS8SyeoE9su81jhk5KKuu
         kuWb/+EVfHLQyw6KoPRSGba96PEXjMbd/73xDgv3wc5BGcAFjiyn11O4vW/Chl3uu8A5
         q3CJp9ZIHxEGFEtE/s/EkFomntEngiceOnxY/piq51O7EZnmMWRqpYIQPnnfdR2VDfw2
         O+LL2PQ8srn3es2Lt/NtyfHRI7eFJNwFyzUa/FsYu9Dq9UQrpby5xeJpNfa4R8cMP0rt
         5FAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678720924;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CTyO/9ZmM0cOmu22LQH6dmHPpqco2vKj6dSQiP5p41s=;
        b=0OsgKXiS7tgKHz2KTkz1aGdn0BEKAaoMs0KURXpFJRWb9rUxu+c1uBvVpxx+rtl5dD
         OaOycceF+CKxvbORfWcgV9h20zJKeFl602l6qmbuCKlz0c2HFPB6vUBm6VEou1fTy7Xm
         2HAW28tGO23zWuyEEW8VUN7mS6B3F/tTB4pC9gCzyCRv7KFh4ZjCTeknDRuYeCMqolQu
         shYFf9J+f2EKNWAsRn9/Xk1qwaI/nAZO6LAOvi15z02rWWaDsuVV2pDEvr9DtEo3/8ai
         wmN/XEL/K51BCUPsY4PkBR8/suf8aZ/6GRSLOk5NHnUTjz7D8eKOArFpb7r0tHKQArBJ
         /JSA==
X-Gm-Message-State: AO0yUKX2m5nhC+vXrDfjTcNu+Rdj78Dhkm8tqnzzeed5q1t2d0X0rehu
	3KoeAesmH05CY2c1gyKzlFwau033vgNdSGOiBUE=
X-Google-Smtp-Source: AK7set+I6a1Y0f7B4akZS8xTngpVdq0U6WFlHI9NnjzD6BomZZWSD4VR9IDEHPUqTRpPEa+y4/JzdGvAIf7JwIU9pMM=
X-Received: by 2002:a65:6687:0:b0:502:f20a:6e0a with SMTP id
 b7-20020a656687000000b00502f20a6e0amr3733876pgw.0.1678720924097; Mon, 13 Mar
 2023 08:22:04 -0700 (PDT)
MIME-Version: 1.0
References: <20230307154157.1184826-1-zyytlz.wz@163.com> <43b48f87-2343-5855-e6c2-8f30319687c5@xs4all.nl>
In-Reply-To: <43b48f87-2343-5855-e6c2-8f30319687c5@xs4all.nl>
From: Zheng Hacker <hackerzheng666@gmail.com>
Date: Mon, 13 Mar 2023 23:21:52 +0800
Message-ID: <CAJedcCz_CT9wMexVyt1bH_SPUYV=Lq3V5LY5aus5PYd7hQACTw@mail.gmail.com>
Subject: Re: [PATCH] media: hantro: fix use after free bug in hantro_remove
 due to race condition
To: Hans Verkuil <hverkuil@xs4all.nl>
Cc: Zheng Wang <zyytlz.wz@163.com>, ezequiel@vanguardiasur.com.ar, 
	p.zabel@pengutronix.de, mchehab@kernel.org, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	1395428693sheep@gmail.com, alex000young@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_082206_100408_56EDFC2D 
X-CRM114-Status: GOOD (  22.77  )
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

SGFucyBWZXJrdWlsIDxodmVya3VpbEB4czRhbGwubmw+IOS6jjIwMjPlubQz5pyIMTPml6Xlkajk
uIAgMjM6MDjlhpnpgZPvvJoKPgo+IE9uIDA3LzAzLzIwMjMgMTY6NDEsIFpoZW5nIFdhbmcgd3Jv
dGU6Cj4gPiBJbiBoYW50cm9fcHJvYmUsIHZwdS0+d2F0Y2hkb2dfd29yayBpcyBib3VuZCB3aXRo
Cj4gPiBoYW50cm9fd2F0Y2hkb2cuIFRoZW4gaGFudHJvX2VuZF9wcmVwYXJlX3J1biBtYXkKPiA+
IGJlIGNhbGxlZCB0byBzdGFydCB0aGUgd29yay4KPiA+Cj4gPiBJZiB3ZSBjbG9zZSB0aGUgZmls
ZSBvciByZW1vdmUgdGhlIG1vZHVsZSB3aGljaCB3aWxsCj4gPiBjYWxsIGhhbnRyb19yZWxlYXNl
IGFuZCBoYW50cm9fcmVtb3ZlIHRvIG1ha2UgY2xlYW51cCwKPiA+IHRoZXJlIG1heSBiZSBhIHVu
ZmluaXNoZWQgd29yay4gVGhlIHBvc3NpYmxlIHNlcXVlbmNlCj4gPiBpcyBhcyBmb2xsb3dzLCB3
aGljaCB3aWxsIGNhdXNlIGEgdHlwaWNhbCBVQUYgYnVnLgo+ID4KPiA+IFRoZSBzYW1lIHRoaW5n
IHdpbGwgaGFwcGVuIGluIGhhbnRyb19yZWxlYXNlLCBhbmQgdXNlCj4gPiBjdHggYWZ0ZXIgZnJl
ZWluZyBpdC4KPiA+Cj4gPiBGaXggaXQgYnkgY2FuY2VsaW5nIHRoZSB3b3JrIGJlZm9yZSBjbGVh
bnVwIGluIGhhbnRyb19yZWxlYXNlLgo+ID4KPiA+IENQVTAgICAgICAgICAgICAgICAgICBDUFUx
Cj4gPgo+ID4gICAgICAgICAgICAgICAgICAgICB8aGFudHJvX3dhdGNoZG9nCj4gPiBoYW50cm9f
cmVtb3ZlICAgICB8Cj4gPiAgIHY0bDJfbTJtX3JlbGVhc2UgIHwKPiA+ICAgICBrZnJlZShtMm1f
ZGV2KTsgfAo+ID4gICAgICAgICAgICAgICAgICAgICB8Cj4gPiAgICAgICAgICAgICAgICAgICAg
IHwgdjRsMl9tMm1fZ2V0X2N1cnJfcHJpdgo+ID4gICAgICAgICAgICAgICAgICAgICB8ICAgbTJt
X2Rldi0+Y3Vycl9jdHggLy91c2UKPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBaaGVuZyBXYW5nIDx6
eXl0bHoud3pAMTYzLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVy
aXNpbGljb24vaGFudHJvX2Rydi5jIHwgMSArCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNp
bGljb24vaGFudHJvX2Rydi5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9o
YW50cm9fZHJ2LmMKPiA+IGluZGV4IGIwYWVlZGFlN2I2NS4uODBiZDg1NmE0ZGE5IDEwMDY0NAo+
ID4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZHJ2LmMK
PiA+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5j
Cj4gPiBAQCAtMTA5OSw2ICsxMDk5LDcgQEAgc3RhdGljIGludCBoYW50cm9fcmVtb3ZlKHN0cnVj
dCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gPgo+ID4gICAgICAgdjRsMl9pbmZvKCZ2cHUtPnY0
bDJfZGV2LCAiUmVtb3ZpbmcgJXNcbiIsIHBkZXYtPm5hbWUpOwo+ID4KPiA+ICsgICAgIGNhbmNl
bF9kZWxheWVkX3dvcmsoJnZwdS0+d2F0Y2hkb2dfd29yayk7Cj4KPiBVc2UgY2FuY2VsX2RlbGF5
ZWRfd29ya19zeW5jKCk6IHRoYXQgZW5zdXJlcyB0aGUgY29kZSB3YWl0cyBmb3IgYSBydW5uaW5n
Cj4gd2F0Y2hkb2cgZnVuY3Rpb24gdG8gZmluaXNoLgo+Cj4gRGl0dG8gZm9yIHRoZSBvdGhlciBw
YXRjaC4KPgoKRGVhciBIYW5zLAoKVGhhbmtzIGZvciB5b3VyIGFkdmljZS4gV2lsbCBkbyBpbiAg
dGhlIG5leHQgdmVyc2lvbiBvZiBwYXRjaCA6KQoKQmVzdCByZWdhcmRzLApaaGVuZwoKPgo+ID4g
ICAgICAgbWVkaWFfZGV2aWNlX3VucmVnaXN0ZXIoJnZwdS0+bWRldik7Cj4gPiAgICAgICBoYW50
cm9fcmVtb3ZlX2RlY19mdW5jKHZwdSk7Cj4gPiAgICAgICBoYW50cm9fcmVtb3ZlX2VuY19mdW5j
KHZwdSk7Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
