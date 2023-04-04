Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 294E9C761AF
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 08:38:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NgkGIg3T/iAVmNxl5ikfIlpwG92jxyrHp7x8EmywOi4=; b=esIoj8dejJLgTk
	BYCigB5MLfcC9F3XWfJtssqOD9NyOfAx5OjcwruG2DzIioZf1mk1CrLACFUF4Ok1q2Roh93sDboGm
	aXGKGWQCEho1wVgzTxSehOri1v4f9RVpbCLd5u+EBW2S01SkzOGb6sCywfls0DXr4228An6KIhmzG
	viPOMJSd+l6kk7t8ZoS2A0LPNCj2NqJJQlXl5d2v8d9AJ09zuSjqgFAisDKuZ+MzMpoyWEKbsSJ8I
	enwQvbUVBkZLzHfIgFHXvccoAftqc6kZh8Te187NiYHNVbOaRWxT4BL88mJsVrOYva3awb/5dVM6O
	CHHCGS7TFKwGx8tau19Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjc9d-000WHt-0V;
	Tue, 04 Apr 2023 08:36:40 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjbzK-000TNl-2n
	for linux-rockchip@lists.infradead.org;
	Tue, 04 Apr 2023 08:26:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1680596758;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=wH4tevsU+8OYlBB4O8no0eUhUFdANjDH5IldhU/Tbvc=;
	b=iAjpeRfBN3t1Gh7xo1rUyA08HCqRpbj27/nWM76CvplGmjUSCS8zwOUF/kJC/Y77mMKzRn
	Acx3cuTn4syJqHw8+g02AUDPFfRnRP43q9hnLHOEQlpjBqlZibw1zOlnmE3Ivy6v73g/0g
	chgAO2PA3k6jstJwDtdNDAToTj2ZPmk=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-338-Nifzqgg3ONyyvj2jrS0ShA-1; Tue, 04 Apr 2023 04:25:56 -0400
X-MC-Unique: Nifzqgg3ONyyvj2jrS0ShA-1
Received: by mail-wr1-f71.google.com with SMTP id h18-20020adfa4d2000000b002cea098a651so3509766wrb.3
        for <linux-rockchip@lists.infradead.org>; Tue, 04 Apr 2023 01:25:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680596755;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DLHxW7OoQshnacuWjV5juyoD/NSSMgV+DMSPL4rEmJE=;
        b=4VcauIaxwCvctUSlF3B/cT1Z3JFRQPDKOYo+Xj/TqXTemI6df6dMf/afEFwcannKuU
         4WEnVwCbSCIduoiVZJbF2xb7r83L8W34WMVKlOaTFmsHy8cNsA7AQK6NsE2Y28PXoyCz
         irXSehl1rXXLM2dwgh35a6mI9YMIz+IJmh5v/maj1t9nQAofGbCIPKFRZ+mNYah+LBCQ
         x5/eaAcMWdSqNHeWBKLNKiUuM7B+387ShYtTCLgQMGON4r0BaGG6F3CfM9uDGdhgvaiC
         gUnAU0Jt2wornj7HE1t8ZR8xRWtBbhBJqct1Q6HTjVCgUw7kHBOi+Yg3tuSQlFBkTxhj
         y4UA==
X-Gm-Message-State: AAQBX9dl0Nv2OfFILbmTXfNCNT83EhZdsO9/+4TW43CZ3Iserz6Ag6dF
	z8BLs4Q1PEGPRoDU4T0RsC3aztzmbQJkaPwCqOIaN9NMrCzAoF0AKLGXicEIbpwfw0FyMoQoZ4Q
	M8YMrLSOVO7enrMUggbThg7wBuYy/flld
X-Received: by 2002:a05:600c:1d01:b0:3ee:93d2:c915 with SMTP id l1-20020a05600c1d0100b003ee93d2c915mr15093493wms.6.1680596755415;
        Tue, 04 Apr 2023 01:25:55 -0700 (PDT)
X-Google-Smtp-Source: AKy350ba7DBVeDjGlRx+Sx2kJBGjDFAgosCIOA4m76so9y/3HTIEUU7Q81F0CA4kOqiE8YLARn5ztA==
X-Received: by 2002:a05:600c:1d01:b0:3ee:93d2:c915 with SMTP id l1-20020a05600c1d0100b003ee93d2c915mr15093483wms.6.1680596755128;
        Tue, 04 Apr 2023 01:25:55 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id u21-20020a05600c00d500b003ee4e99a8f6sm14389362wmm.33.2023.04.04.01.25.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Apr 2023 01:25:54 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Peter Robinson <pbrobinson@gmail.com>, Jarrah <kernel@undef.tools>
Cc: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, Caleb
 Connolly <kc@postmarketos.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Martijn Braam <martijn@brixit.nl>,
 Ondrej Jirman <megi@xff.cz>, Rob Herring <robh+dt@kernel.org>, Tom
 Fitzhenry <tom@tom-fitzhenry.me.uk>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Change serial baud rate for
 Pinephone Pro to 1.5 MB
In-Reply-To: <CALeDE9OVq8ys9Ymx6Na+a0oK6R8CpfD=fbM6FTtWGnJQn_SR5Q@mail.gmail.com>
References: <20230403175937.2842085-1-javierm@redhat.com>
 <3738011.44csPzL39Z@diego>
 <d7efebcc-5b5b-185e-bec8-b6b9d5d27d93@undef.tools>
 <CALeDE9OVq8ys9Ymx6Na+a0oK6R8CpfD=fbM6FTtWGnJQn_SR5Q@mail.gmail.com>
Date: Tue, 04 Apr 2023 10:25:53 +0200
Message-ID: <87edp0dpf2.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_012607_709440_28DA2FA3 
X-CRM114-Status: GOOD (  15.41  )
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

UGV0ZXIgUm9iaW5zb24gPHBicm9iaW5zb25AZ21haWwuY29tPiB3cml0ZXM6Cgo+IE9uIFR1ZSwg
QXByIDQsIDIwMjMgYXQgOToxM+KAr0FNIEphcnJhaCA8a2VybmVsQHVuZGVmLnRvb2xzPiB3cm90
ZToKPj4KPj4gSGksCj4+Cj4+IE9uIDQvNC8yMyAxNzo1MSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6
Cj4+ID4gVGhlIGludGVyZXN0aW5nIHF1ZXN0aW9uIGlzIGFsd2F5cyBpZiB0aGlzIHdpbGwgYnJl
YWsgc29tZW9uZSBlbHNlJ3Mgc2V0dXAuCj4+ID4gSSd2ZSBuZXZlciByZWFsbHkgdW5kZXJzdG9v
ZCB0aGUgc3RyYW5nZSBzZXR0aW5nIG9mIDEuNU1CcHMsIGJ1dCBvbiB0aGUKPj4gPiBvdGhlciBo
YW5kIGl0IF9pc18gYSByZWFsaXR5IG9uIG1vc3QgYm9hcmRzLgo+PiA+Cj4+ID4gUGVyc29uYWxs
eSBJIGRvbid0IGNhcmUgdGhhdCBtdWNoIGVpdGhlciB3YXksIGJ1dCB3b3VsZCBsaWtlIGEgY29t
bWVudAo+PiA+IGZyb20gdGhlIG90aGVyIHBlb3BsZSB3b3JraW5nIG9uIHRoYXQgZGV2aWNlIC0g
aWYgcG9zc2libGUuCj4+Cj4+Cj4+IEkgZG9uJ3QgaGF2ZSBhIHN0cm9uZyBvcGluaW9uIGVpdGhl
ciB3YXksIGJ1dCBJIHdvdWxkIG5vdGUgdGhhdAo+PiBUb3ctQm9vdFswXSB3aGljaCBsYXRlciBt
b2RlbHMgb2YgdGhpcyBkZXZpY2Ugc2hpcCB3aXRoIHVzZXMgMTE1MjAwLAo+PiBtZWFuaW5nIHRo
YXQgdGhpcyB3b3VsZCBwdXQgdGhlIGRldmljZSBvdXQgb2Ygc3luYyB3aXRoIHRoZSBkZWZhdWx0
Cj4+IHUtYm9vdCBpbXBsZW1lbnRhdGlvbiBmcm9tIHRoZSBmYWN0b3J5Lgo+Cj4gVXBzdHJlYW0g
VS1Cb290IHN1cHBvcnQgdXNlcyB0aGUgMS41bSB0aGF0IGFsbCB0aGUgb3RoZXIgcm9ja2NoaXAg
ZGV2aWNlcyB1c2UuCj4KClRoYXQncyB0cnVlIHRvby4gSW4gZmFjdCwgdGhlIFBpbmVib29rIFBy
byBhbHNvIHVzZXMgMS41bSBzbyBwZW9wbGUgdXNpbmcKVG93LUJvb3QgYWxyZWFkeSB3aWxsIGhh
dmUgYSBtaXNtYXRjaCB3aGVuIHVzaW5nIHRoYXQgZGV2aWNlLiBUaGUgUFBQIGlzCnRoZSBkZXZp
Y2UgdGhhdCBpcyBub3QgY29uc2lzdGVudCB3aXRoIGFsbCB0aGUgb3RoZXIgcmszMzk5IGJvYXJk
cy4KCi0tIApCZXN0IHJlZ2FyZHMsCgpKYXZpZXIgTWFydGluZXogQ2FuaWxsYXMKQ29yZSBQbGF0
Zm9ybXMKUmVkIEhhdAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
