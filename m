Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4A12C6FD1D
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 11:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8NO38oHqgUS58erlqfCPnK3S3qKYecEinURxUwZuMLs=; b=QNUWIYrZsWHzr/
	rWbuClpx3h3Lm7x4eWHodoInOldl3NbZzUI5PPt9NuPcFuBJL7/tmr6CRypWhuyB/bMxRIy5/F2Fq
	iKpTSXFNxhhWTz3DW5KU4wgkg/3kgameKcDES9QOhId6k5X/DZj4gmC4yzKeUurVVEHaaH/JISA0v
	RsLtjIm6Cehx56MF1eO480tYt2WO/v6D5Lhfg2gJb/c+k+88sorfZlJ/780Lv7Kg+xg+THoCZUSFn
	GH+B0NGQW0C5LagZc2SxAD9DFWAI6hSGSGtDWjgJmwlq/2vuGZbuKbvPnaIhIkEqT+IFFEnYH0l50
	DLu7U6dmz4aY3VToc49A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjf3t-0017A0-34;
	Tue, 04 Apr 2023 11:42:53 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjf3r-00178l-0K
	for linux-rockchip@lists.infradead.org;
	Tue, 04 Apr 2023 11:42:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1680608569;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CtuTaioFBErSWZudvwTx2wCf12DpJDJBQQDivNwhuzY=;
	b=jKhlSdOKhcyvAglqLHztB2AgWK6KFJ1Ljxv5fQyTgRZgcVQRuA+6dsQ5ZbdybvIpm7dwUj
	97FeKyYJnoT/i0aJBnhpEqKV4O9c2OTlJvaFIpbjwUh7f8RXKB/zg6epEmR0je/9dusOnI
	goJ2pQpNboBOVSBOF9SAbAXJyRrzgpo=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-98-sYoLfpdkNs-dYI313bpvfA-1; Tue, 04 Apr 2023 07:42:39 -0400
X-MC-Unique: sYoLfpdkNs-dYI313bpvfA-1
Received: by mail-wr1-f72.google.com with SMTP id l11-20020adfc78b000000b002db44581302so3597829wrg.7
        for <linux-rockchip@lists.infradead.org>; Tue, 04 Apr 2023 04:42:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680608558;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g43LgwR7XrUP0mLCRkPUDCErg1tewsdsK7C1g51lbMU=;
        b=zE9KDlFIYgMrbuZzuoSeI24DBSdnjH7wM9yOgLxP+kOaTv2GThkqyzMS/+JD/JHN9G
         nFRTtXwKDHOnT8QVCfYuQHPCUlYPKZxFhQYDfk4bdKOtOHc80Be8GpzljYwSk9lBrn1D
         e5/LlG1zjVTtpRbmjGWzp1spntT5Xe/GBPAYVVBXud91HSoNeunosht/clhXFWXpZZcJ
         PcIU53NJnS2NjtIrRi1Qy0G6ktepub83iGpXx0elM1wMXloNhZUCnGebthE/TtLzDL5R
         yVMPZIhqZZUOARYf1TypJ4mp3zTEWy1K1qzAEHwxkbUai17SV+DwwkNoZHxpGL2ZyeyD
         gYkQ==
X-Gm-Message-State: AAQBX9cYzQFKpRTTr3lCrt+JjPARzbtGCbDP34CutqoK+aBr2wo55D1I
	fObz1tKohIz6ZhCXlV6eJd4Pvq1mIObaLBU+AddDeu/DBenBWXwKF/vBIIYCsORmgzqQG5KtaFA
	Yxje2o1wLe6vTKm4nS2PKZBX3TVWQV1t8
X-Received: by 2002:adf:eace:0:b0:2ce:a098:c6b8 with SMTP id o14-20020adfeace000000b002cea098c6b8mr1553457wrn.55.1680608558085;
        Tue, 04 Apr 2023 04:42:38 -0700 (PDT)
X-Google-Smtp-Source: AKy350YFNy2ACkTPYDUy7IvZluDlWudCyXewZR1HLl8dA6ab7O3s3motR/Cir3GQt7z1geCNLF6cnQ==
X-Received: by 2002:adf:eace:0:b0:2ce:a098:c6b8 with SMTP id o14-20020adfeace000000b002cea098c6b8mr1553441wrn.55.1680608557825;
        Tue, 04 Apr 2023 04:42:37 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id o9-20020a05600c4fc900b003ef6bc71cccsm22744629wmq.27.2023.04.04.04.42.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Apr 2023 04:42:37 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Martijn Braam <martijn@brixit.nl>, Heiko =?utf-8?Q?St=C3=BCbner?=
 <heiko@sntech.de>,
 linux-kernel@vger.kernel.org
Cc: Peter Robinson <pbrobinson@gmail.com>, Caleb Connolly
 <kc@postmarketos.org>, Jarrah Gosbell <kernel@undef.tools>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Ondrej Jirman
 <megi@xff.cz>, Rob Herring <robh+dt@kernel.org>, Tom Fitzhenry
 <tom@tom-fitzhenry.me.uk>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Change serial baud rate for
 Pinephone Pro to 1.5 MB
In-Reply-To: <52d83a29-0f16-cd4c-9810-7c6bd497fe85@brixit.nl>
References: <20230403175937.2842085-1-javierm@redhat.com>
 <3738011.44csPzL39Z@diego>
 <52d83a29-0f16-cd4c-9810-7c6bd497fe85@brixit.nl>
Date: Tue, 04 Apr 2023 13:42:36 +0200
Message-ID: <87ttxvdgb7.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_044251_213111_711EC0DB 
X-CRM114-Status: GOOD (  14.36  )
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

TWFydGlqbiBCcmFhbSA8bWFydGlqbkBicml4aXQubmw+IHdyaXRlczoKCj4gT24gNC80LzIzIDA5
OjUxLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPj4gSGksCj4+Cj4+IEFtIE1vbnRhZywgMy4gQXBy
aWwgMjAyMywgMTk6NTk6MzcgQ0VTVCBzY2hyaWViIEphdmllciBNYXJ0aW5leiBDYW5pbGxhczoK
Pj4+IFRoaXMgYmF1ZCByYXRlIGlzIHNldCBmb3IgdGhlIGRldmljZSBieSBtYWlubGluZSB1LWJv
b3QgYW5kIGlzIGFsc28gd2hhdAo+Pj4gaXMgc2V0IGluIHRoZSBQaW5lYm9vayBQcm8gRGV2aWNl
IFRyZWUsIHdoaWNoIGlzIGEgZGV2aWNlIHNpbWlsYXIgdG8gdGhlCj4+PiBQaW5lUGhvbmUgUHJv
IGJ1dCB3aXRoIGEgZGlmZmVyZW50IGZvcm0gZmFjdG9yLgo+Pj4KPj4+IE90aGVyd2lzZSwgdGhl
IGJhdWQgcmF0ZSBvZiB0aGUgZmlybXdhcmUgYW5kIExpbnV4IGRvbid0IG1hdGNoIGJ5IGRlZmF1
bHQKPj4+IGFuZCBhICdjb25zb2xlPXR0eVMyLDE1MDAwMDBuOCcga2VybmVsIGNvbW1hbmQgbGlu
ZSBwYXJhbWV0ZXIgaXMgcmVxdWlyZWQKPj4+IHRvIGhhdmUgcHJvcGVyIG91dHB1dCBmb3IgYm90
aC4KPj4gVGhlIGludGVyZXN0aW5nIHF1ZXN0aW9uIGlzIGFsd2F5cyBpZiB0aGlzIHdpbGwgYnJl
YWsgc29tZW9uZSBlbHNlJ3Mgc2V0dXAuCj4+IEkndmUgbmV2ZXIgcmVhbGx5IHVuZGVyc3Rvb2Qg
dGhlIHN0cmFuZ2Ugc2V0dGluZyBvZiAxLjVNQnBzLCBidXQgb24gdGhlCj4+IG90aGVyIGhhbmQg
aXQgX2lzXyBhIHJlYWxpdHkgb24gbW9zdCBib2FyZHMuCj4KPiBJdCBicmVha3MgbXkgZGV2aWNl
IHRlc3Qgc2V0dXAgYXQgbGVhc3QuIFRoZSBleHRyYSBzcGVlZCBpc24ndCB3b3J0aCB0aGUgCj4g
aGFzc2xlCgpNb3JlIHRoYW4gdGhlIGV4dHJhIHNwZWVkIGlzIHRvIGhhdmUgY29uc2lzdGVuY3kg
YWNjcm9zcyBhbGwgdGhlIHJvY2tjaGlwCmRldmljZXMgaW4gdXBzdHJlYW0gYW5kIGFsc28gc3lu
YyB3aXRoIG1haW5saW5lIHUtYm9vdC4KCj4gb2YgaGF2aW5nIGEgZmV3IGRldmljZXMgYXQgd2Vp
cmQgYmF1ZHJhdGVzIGFuZCB0aGUgYm9vdGxvYWRlciBhbHJlYWR5Cj4gc3RhcnRzIG91dHB1dHRp
bmcgZGVidWcgbG9ncyBhdCAxMTUyMDAgYmF1ZC4KPgoKQW5kIG1pbmUgc3RhcnRzIG91dHB1dHRp
bmcgYXQgMS41TUJwcyA6KSBJIGd1ZXNzIHRoYXQgdGhlcmUgaXNuJ3QgYSBvbmUKc2l6ZSBmaXRz
IGFsbCwgc28gdGhlIHF1ZXN0aW9uIGlzIHdoZXRoZXIgdGhlIGJpa2VzaGVkIGNvbG9yIGlzIHdo
YXQgd2FzCnBhaW50ZWQgaW4gYWxsIG90aGVyIHJvY2tjaGlwIGJvYXJkcyBvciB0aGUgb25lIHRo
YXQgVG93LUJvb3QgaGFzIGNob3Nlbi4KCi0tIApCZXN0IHJlZ2FyZHMsCgpKYXZpZXIgTWFydGlu
ZXogQ2FuaWxsYXMKQ29yZSBQbGF0Zm9ybXMKUmVkIEhhdAoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
