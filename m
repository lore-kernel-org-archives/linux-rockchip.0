Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C9C6C761AF
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 08:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DQp4GB5+UkVufjcolt0LkKTxyViBiYCd2DLCYhL9efI=; b=TxzOmuZEoZvjzg
	EZb/PDSQKTJrlkV6qYIECGkkdMMsaLWEusmcf3S7WPxKa302FRtYVMKL8bLb/m21t41mut2C6EHdp
	a9SIcyQXbTqOnm/6Qb2aHDEC8tH0ifVE45kcMDXSG0C2JShCBIaTq03rL3PK1PYi16OznUdFAGC6Y
	YRc79GtUV/ugmGHI9mYpIhqPU37Zfi3AqotSJxkVfjPpX97Gwp1y5Islg15Wf/rfcYT0uF7+NVbzj
	8rKPe6+cDMH85EUNlcCsHuowAuc6UiGr5VhjYrc6I14/ze5bUiQ2StZZhVx7I9MhLkpNA3U6LXy/g
	feg/RGEBwjiGqFooBqdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjby7-000SuO-0V;
	Tue, 04 Apr 2023 08:24:54 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjbxW-000SmW-09
	for linux-rockchip@lists.infradead.org;
	Tue, 04 Apr 2023 08:24:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1680596644;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=eondYP41ZcdqHyBgCzp/QPl5U7NA+4YRH0vpX2vJSmw=;
	b=aMJiWkJ+uDN4uqL8QeRYIgq9SwwnMD0dLxZHXP9D1zggOuWTsb1f9jrOJpx4vqUYU7JYqD
	7Qpc//pF64h8+QNdQTq+Yv5tt3awmCgxiZLqGP7mT3+WAVD9WTW3wtzy7Qs+G2BI9ePJ7x
	+GBUcsdzaisLEwLHMOveW1jJWCiuUB4=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-523-JcSb4c_VMPa1ylJ1nIthfA-1; Tue, 04 Apr 2023 04:24:03 -0400
X-MC-Unique: JcSb4c_VMPa1ylJ1nIthfA-1
Received: by mail-wm1-f71.google.com with SMTP id bi7-20020a05600c3d8700b003edecc610abso17416353wmb.7
        for <linux-rockchip@lists.infradead.org>; Tue, 04 Apr 2023 01:24:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680596642;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eondYP41ZcdqHyBgCzp/QPl5U7NA+4YRH0vpX2vJSmw=;
        b=EpXn7ek5UgzlScOOUSrS+YNpLTnBGJhzFRfKJNCMdhbROy9yoefuV/fHVCcZhkI2sd
         4xI6h4EpAcCwqVppDTh6Bp+ERVfUF8Df5x2Id9PxwbL35jyYpBnATRNNtsxYlEk/Ax6g
         wzepBZQfzeQ+2QyMRy+0cVp7KR3Bcjch7DHzF2eYspWftUEintfHCF9SHvLu+I/h6TCX
         DRY5LN/wwT+hEn5q5tpQzYLCRJdSIGCWl/lsrS4Xd64W10D+kr1YJ3VyMlwBGjZXZI/t
         6n/E/ADhHMTDKSMFK0R6wG6EdjdrlRquWciukTzwTOlfyWMwf87yM32yadcaVLEHBW5R
         6kCg==
X-Gm-Message-State: AAQBX9fdhrC9Nk8BD8oqDA515FMcBJq0vwlgZ5Nrzep/OwYX1EgRJ9VV
	JEs1UJB/5PKmzLSLV/M8x7wEmS/K6x8HTMKP3fUHv1AyqgtOCGJ+bFoWGnFjwB9TGnJr3wzeExB
	l7enN1J80opsZQa3LY70fMHPIu3hiL4zc
X-Received: by 2002:adf:dd91:0:b0:2ce:a8d6:7fc0 with SMTP id x17-20020adfdd91000000b002cea8d67fc0mr932725wrl.54.1680596642090;
        Tue, 04 Apr 2023 01:24:02 -0700 (PDT)
X-Google-Smtp-Source: AKy350YoPtRKLfybx/NG9s0tw4GfCQkv6MeuGZkQfNzEQNJjq+7mW5VyRM+BbQ98NkpmRNBnKgUKFQ==
X-Received: by 2002:adf:dd91:0:b0:2ce:a8d6:7fc0 with SMTP id x17-20020adfdd91000000b002cea8d67fc0mr932710wrl.54.1680596641791;
        Tue, 04 Apr 2023 01:24:01 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id c17-20020a5d63d1000000b002d1daafea30sm11682318wrw.34.2023.04.04.01.24.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Apr 2023 01:24:01 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Jarrah <kernel@undef.tools>, Heiko =?utf-8?Q?St=C3=BCbner?=
 <heiko@sntech.de>,
 linux-kernel@vger.kernel.org
Cc: Peter Robinson <pbrobinson@gmail.com>, Caleb Connolly
 <kc@postmarketos.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Martijn Braam <martijn@brixit.nl>,
 Ondrej Jirman <megi@xff.cz>, Rob Herring <robh+dt@kernel.org>, Tom
 Fitzhenry <tom@tom-fitzhenry.me.uk>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Change serial baud rate for
 Pinephone Pro to 1.5 MB
In-Reply-To: <d7efebcc-5b5b-185e-bec8-b6b9d5d27d93@undef.tools>
References: <20230403175937.2842085-1-javierm@redhat.com>
 <3738011.44csPzL39Z@diego>
 <d7efebcc-5b5b-185e-bec8-b6b9d5d27d93@undef.tools>
Date: Tue, 04 Apr 2023 10:24:00 +0200
Message-ID: <87h6twdpi7.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_012406_185321_28A45977 
X-CRM114-Status: GOOD (  15.49  )
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

SmFycmFoIDxrZXJuZWxAdW5kZWYudG9vbHM+IHdyaXRlczoKCj4gSGksCj4KPiBPbiA0LzQvMjMg
MTc6NTEsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+PiBUaGUgaW50ZXJlc3RpbmcgcXVlc3Rpb24g
aXMgYWx3YXlzIGlmIHRoaXMgd2lsbCBicmVhayBzb21lb25lIGVsc2UncyBzZXR1cC4KPj4gSSd2
ZSBuZXZlciByZWFsbHkgdW5kZXJzdG9vZCB0aGUgc3RyYW5nZSBzZXR0aW5nIG9mIDEuNU1CcHMs
IGJ1dCBvbiB0aGUKPj4gb3RoZXIgaGFuZCBpdCBfaXNfIGEgcmVhbGl0eSBvbiBtb3N0IGJvYXJk
cy4KPj4KPj4gUGVyc29uYWxseSBJIGRvbid0IGNhcmUgdGhhdCBtdWNoIGVpdGhlciB3YXksIGJ1
dCB3b3VsZCBsaWtlIGEgY29tbWVudAo+PiBmcm9tIHRoZSBvdGhlciBwZW9wbGUgd29ya2luZyBv
biB0aGF0IGRldmljZSAtIGlmIHBvc3NpYmxlLgo+Cj4KPiBJIGRvbid0IGhhdmUgYSBzdHJvbmcg
b3BpbmlvbiBlaXRoZXIgd2F5LCBidXQgSSB3b3VsZCBub3RlIHRoYXQgCj4gVG93LUJvb3RbMF0g
d2hpY2ggbGF0ZXIgbW9kZWxzIG9mIHRoaXMgZGV2aWNlIHNoaXAgd2l0aCB1c2VzIDExNTIwMCwg
Cj4gbWVhbmluZyB0aGF0IHRoaXMgd291bGQgcHV0IHRoZSBkZXZpY2Ugb3V0IG9mIHN5bmMgd2l0
aCB0aGUgZGVmYXVsdCAKPiB1LWJvb3QgaW1wbGVtZW50YXRpb24gZnJvbSB0aGUgZmFjdG9yeS4K
PgoKUHJvYmFibHkgd2UgY2FuJ3QgY2hhbmdlIHRoZW4gYmVjYXVzZSBpdCB3b3VsZCBicmVhayB0
aGUgc2V0dXAgb2YgcGVvcGxlCnVzaW5nIFRvdy1Cb290IGFzIGEgYm9vdGxvYWRlci4KCj4gQXQg
bGVhc3QgZm9yIG1lIGl0J3MgYmVlbiBjb252ZW5pZW50IHRvIGhhdmUgYm90aCB0aGUgUFAgYW5k
IFBQUCB1c2UgdGhlIAo+IHNhbWUgc2V0dGluZ3Mgd2hpbGUgZGVidWdnaW5nLgo+CgpBZ3JlZWQs
IGFsbCBteSBvdGhlciBib2FyZHMgdXNlIDExNTIwMCBhcyB3ZWxsLCB0aGUgb25seSBleGNlcHRp
b25zIGFyZQp0aGUgUm9ja3BybzY0IGFuZCBQaW5lUGhvbmUgUHJvIGZvciBtZS4KCi0tIApCZXN0
IHJlZ2FyZHMsCgpKYXZpZXIgTWFydGluZXogQ2FuaWxsYXMKQ29yZSBQbGF0Zm9ybXMKUmVkIEhh
dAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
