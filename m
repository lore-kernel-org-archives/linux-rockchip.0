Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61AFBC6FD1D
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Mar 2023 16:16:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CrY+9vbPO0QVasI/fPzXBsVO4Y7oGBrRqZPN5lERieM=; b=4dadL8kvqM/r21
	RAc5d22DSBaQoJWPsRbwPrJhQxEyA3MCtMVmdzXWW7AgDsgK1KYhKjxD4/tL340Pkz41pI+Axn1Rb
	ixQVR2NkjaFL/uwTpzmwnDGOpVSJd5qYtZBeVuzM5CNWTmwvNt0482RKldG+YpkqVIrqtZJ4OYF1S
	zUPFJV1QnCG366a+IouQKZ8zyKx85BtC81XZG9EKRNUw18RVgVXb3MPUBhIkEKvHsrHeNVqrCkuvh
	F9gdF+8y+ts1ABdOdJLKz6unT0WfqpQEtreeQRZas4clbA999CzoiktHbGSqOdyqR8jPEcLdJL77j
	EKwfaCPmJOrk0Gpl/v5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgpVr-00BgSj-0v;
	Mon, 27 Mar 2023 16:16:03 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgpVo-00BgRo-1x
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Mar 2023 16:16:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679933759;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=G0nuHdhiHtoR5ysf1vkwELutiA1y5BU1zh9hoJTI0uw=;
	b=SxBejHfy4yEMczm02Pbp5Br3ydim4QDAswicn+9SezLEGJ7dH19OA+cJpvtdV7TBqnJalH
	jpK/imTkEKfDyOMI9sUsVsLHw2lBvbwAGv8H5iPQh6LffQsD7iTX+cnjwZh8yPxCrFDJr1
	UhutYb+00trj7tZrDfssBn+B0ipOhos=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-539-Qnn9xxk1OGyzk9SS5tPulw-1; Mon, 27 Mar 2023 12:15:58 -0400
X-MC-Unique: Qnn9xxk1OGyzk9SS5tPulw-1
Received: by mail-wm1-f70.google.com with SMTP id n19-20020a05600c3b9300b003ef63ef4519so3483507wms.3
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Mar 2023 09:15:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679933757;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tr+WD6+CTYSVy+3bIJpQprNnSLspmj5WbXleE2+KZLo=;
        b=i322E1PJ9veR8UaxevxxnrHt2CnJHU91gBh7KJ7v3DeikYkfE85+G7B08+zuCBY6zj
         3PHgVw/cMI2uWRgwBzgMJ1dJPHxuhNPRLWAGB234O3a8BB3nAhD1sYz93dRyZtJjqfD/
         gLp3VUNglIQPwsRDBQiM9B6acHpeXmLt5ViA/hX1dYF6lPIaukgKchWfd7r1rUhu2mDZ
         59Myw+AbdytxJXDBPOZuq4Ut1xzhSeh5p360z19LzoXWN1zYK+iUmVnG5i81bRFB0BwU
         Yy11dOaM1pK/+xozMBV6XAKWfoqen08VKiZPVrGm9aLDndJIcv0rgoZfDSblR86LdYwK
         MfiQ==
X-Gm-Message-State: AO0yUKW4D4Gj7V9tMluNKm7/t5iQSGp+nyuudbGHWwdpGAeveTg82004
	8+6cWX7k/At4Xhe2pYW9QvTzwOpT0lVAGjVPd8h+3FT1hTDst7FwWE88HdF6y/R66MlRMV2qofQ
	uU+EXmekpXNuV0wP/ASQWyQ+34JOAx5Xu
X-Received: by 2002:a05:600c:2114:b0:3ed:492f:7f37 with SMTP id u20-20020a05600c211400b003ed492f7f37mr9156570wml.10.1679933757079;
        Mon, 27 Mar 2023 09:15:57 -0700 (PDT)
X-Google-Smtp-Source: AK7set9k+XPb+CPOEQbw1BrWiSX82Db3GJ1LZxPLDOINlpFxnu2WxagxZuxwLYswHAaRRCivF3Rkbw==
X-Received: by 2002:a05:600c:2114:b0:3ed:492f:7f37 with SMTP id u20-20020a05600c211400b003ed492f7f37mr9156549wml.10.1679933756765;
        Mon, 27 Mar 2023 09:15:56 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id t9-20020a1c7709000000b003ed1ff06faasm14048979wmi.19.2023.03.27.09.15.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Mar 2023 09:15:56 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, =?utf-8?Q?Ond=C5=99e?=
 =?utf-8?Q?j?= Jirman <megi@xff.cz>
Cc: linux-kernel@vger.kernel.org, Robert Mader <robert.mader@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Peter Robinson
 <pbrobinson@gmail.com>, Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
 Martijn Braam <martijn@brixit.nl>, Kamil =?utf-8?Q?Trzci=C5=84ski?=
 <ayufan@ayufan.eu>,
 Caleb Connolly <kc@postmarketos.org>, Jarrah Gosbell <kernel@undef.tools>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: rk3399-pinephone-pro: Add internal
 display support
In-Reply-To: <1924921.PYKUYFuaPT@diego>
References: <20230327074136.1459212-1-javierm@redhat.com>
 <20230327130147.wgxl2qayhzsi2xak@core>
 <87wn32rynm.fsf@minerva.mail-host-address-is-not-set>
 <1924921.PYKUYFuaPT@diego>
Date: Mon, 27 Mar 2023 18:15:55 +0200
Message-ID: <87mt3yrwzo.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_091600_725277_1353D93C 
X-CRM114-Status: GOOD (  14.45  )
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

SGVpa28gU3TDvGJuZXIgPGhlaWtvQHNudGVjaC5kZT4gd3JpdGVzOgoKSGVsbG8gSGVpa28sCgo+
IEFtIE1vbnRhZywgMjcuIE3DpHJ6IDIwMjMsIDE3OjM5OjU3IENFU1Qgc2NocmllYiBKYXZpZXIg
TWFydGluZXogQ2FuaWxsYXM6Cj4+IE9uZMWZZWogSmlybWFuIDxtZWdpQHhmZi5jej4gd3JpdGVz
Ogo+PiAKPj4gSGVsbCBPbmTFmWVqLAo+PiAKPj4gPiBIaSBKYXZpZXIsCj4+ID4KPj4gPiBJJ3Zl
IHRyaWVkIHRoZSBwYXRjaCBvbiB0b3Agb2YgbGludXMvbWFzdGVyIGFuZCBpdCB3b3JrcyBhcyBl
eHBlY3RlZC4gTXkKPj4gPiBEUk0gdGVzdCBhcHAgc2hvd3MgMTYuNjY5bXMgYmV0d2VlbiBmcmFt
ZXMuIFRoZSBkaXNwbGF5IG91dHB1dCBpcyBvayBvbgo+PiA+IGRldmVsb3BlciBiYXRjaCBwaW5l
cGhvbmUgcHJvLCBhbmQgaXMgY29ycnVwdGVkIG9uIHByb2R1Y3Rpb24gdmVyc2lvbi4KPj4gPiBE
aXNwbGF5IGFsc28gZG9lc24ndCBjb21lIGJhY2sgYWZ0ZXIgYmxhbmtpbmcuIEFsbCBhcyBleHBl
Y3RlZC4KPj4gPgo+PiA+IFRlc3RlZC1ieTogT25kcmVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+Cj4+
ID4KPj4gCj4+IFRoYW5rcyBmb3IgdGVzdGluZy4KPj4gCj4+ID4gQSBmZXcgbW9yZSBjb21tZW50
cyBiZWxvdy4KPj4gPgo+PiAKPj4gSSdtIE9LIHdpdGggdGhlc2UgY29tbWVudHMgYnV0IEkgZGlk
IGEgZ2l0IGRpZmYgd2l0aCB5b3VyIG9yYW5nZS1waS02LjMKPj4gYnJhbmNoIGp1c3QgYmVmb3Jl
IHBvc3RpbmcgYW5kIHRoaXMgd2FzIHRoZSBsYXRlc3QgdGhhdCdzIGluIHlvdXIgdHJlZS4KPj4g
Cj4+IFNvIGZlZWwgZnJlZSB0byBlaXRoZXIgcG9zdCBhIHYzIGFkZHJlc3NpbmcgdGhlIHRoaW5n
cyB5b3UgYXJlIHBvaW50aW5nCj4+IG91dCBvciBsZXRzIGxhbmQgdGhpcyBhbmQgd2UgY2FuIHBv
c3QgYW55IGZ1cnRoZXIgY2xlYW51cHMgb24gdG9wIElNTy4KPgo+IEkgd291bGQgcmVhbGx5IGxp
a2UgdG8gX25vdF8gYXBwbHkgZXNzZW50aWFsbHkgYnJva2VuIGNvZGUsIHNvIHJlYWxseQo+IHdv
dWxkIHByZWZlciB0aGUgdjMtYXBwcm9hY2guCj4KCkl0IGlzIGJyb2tlbiB0aG91Z2g/IFRoaXMg
aXMgd2hhdCBpcyBpbiBPbmRyZWogZG93bnN0cmVhbSB0cmVlIGFuZCBJIHNlZQpubyBpc3N1ZXMg
b24gbXkgUGluZXBob25lIFByby4gSGUgbWVudGlvbmVkIHNvbWUgZmxpY2tlciB3aGVuIGxvb2tp
bmcgYXQKdGhlIHNpZ25hbHMgd2l0aCBhIHNjb3BlIGFuZCBob29raW5nIGEgcGhvdG9yZXNpc3Rv
ci4KCkJ1dCB0aGF0J3MgZmFpci4gSSdsbCBsZXQgT25kcmVqIHRoZW4gcG9zdCBhIHYzIGlmIGhl
IHdhbnRzIHRvIGFkZHJlc3MgdGhlCmlzc3VlcyBoZSBwb2ludGVkIG91dCwgc2luY2UgaXMgaGlz
IHBhdGNoIGFmdGVyIGFsbC4KCi0tIApCZXN0IHJlZ2FyZHMsCgpKYXZpZXIgTWFydGluZXogQ2Fu
aWxsYXMKQ29yZSBQbGF0Zm9ybXMKUmVkIEhhdAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
