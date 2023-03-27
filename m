Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C578C76195
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Mar 2023 16:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e9rqgPJ+CJ0UaLdqzoD5dWdgWHNyMz8jJK+wV/4gjAE=; b=CxpTGmc19WW1jS
	icCStI1ZT5v1wwzqueh9Oy3gklNMjZ4U5U/WWBUz/1E6z5zR3dvl7k+MBrSrMsjS0FvmQQAC3Zu7I
	RVpJNMyJCrox2VaCYvEW+MddH862/zXFYbH9zqi2tn9qqYW/ZmUcr6/Jxpi1agdLIHyCp5Jrv6Y+W
	fngSG08GbxFfE9rKZl0hC1eqaGAD9NqxMYc/zqXp1HWYE+gH5aid9Jem5wp+GWhcOiKIqOpS9t44Q
	+nkw7hyq0A0zAfGlCQDeHRl3iHJfxCwot+fncFEgpU7hzes5Xg6zvjPhbxod+L3iIWYqVrn4zVlZL
	7RUZ3aOChqHQSmFW8IHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgpMx-00BfCp-1T;
	Mon, 27 Mar 2023 16:06:51 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgpMu-00BfB2-0o
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Mar 2023 16:06:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679933207;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=TqY7CmZKlZr3jw9RZ3TAj8ga9kgPV62lEZFgzaeVi6A=;
	b=jJ+e5crJ5AJggZ+LM+GHSbRDbRj3KFXBQl24KjPd4rpQYv+hQPaWoukXPO6NgdMRToonXR
	d73V/sR0v7pVBLra2AAPKVuLgT8Srl4/BWnE321YkRtzYcd29EH3IvvhNrM5jWWndxxLnH
	scK0DQF5lsRAZ30HZAQRkCkT8wct0os=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-493-WUOWde40NsCBm6NDom6FEQ-1; Mon, 27 Mar 2023 12:06:46 -0400
X-MC-Unique: WUOWde40NsCBm6NDom6FEQ-1
Received: by mail-wm1-f69.google.com with SMTP id bi5-20020a05600c3d8500b003edda1368d7so5029596wmb.8
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Mar 2023 09:06:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679933205;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MTwv4j9Dt3cE1Rn1R2k+nbDL5QUCJu5c21gncHvR2lM=;
        b=LEdzrZymcZdeVmn6oVOP6JU+BR9MfbSWk9Dj5RzJgthDtulC/eRc8my5UCYwToV1v6
         cUoorbsRTeWTHKw2j5jpM2zVlmUiUarRc0eEgIOhdU+bg8aotVv42kfYein8+jePa/60
         O9MiYoRYRgdpdPeviPSGSjYFZUqMPk4WcqnyGLTUx9YsDmwHW/yyukpQpB0huL8Q9KHJ
         xFtgLFCKhyxUJsBW61qt2scVUDD4S8d9zw9ak2VX/Ij6ncIPP5OlDrmmw4bL0hOTklZz
         eniXEbg2ymRy1fFUw3eNq8ekf9F94uJOg3HaApy0/y4jI6qMZB3mu9yI1eQIlSfLeRlZ
         zyJg==
X-Gm-Message-State: AO0yUKWeQ8Y1lcqUnLsmFjZ/NsoliQAZJ1WPCaaVnaHJTYnvVABTUQQ+
	CgpMy4TUJZ71cI/kepcOA6cUt0xlzwEvWym3RaoeCQTegpLWqrNyb4Rdz+2bkdBIgFGUEUoWzQ9
	wwB6mGvKEVN3sf0NdGssz+7rLr3kX/p4f
X-Received: by 2002:a1c:6a05:0:b0:3ee:138f:be54 with SMTP id f5-20020a1c6a05000000b003ee138fbe54mr9967820wmc.3.1679933204853;
        Mon, 27 Mar 2023 09:06:44 -0700 (PDT)
X-Google-Smtp-Source: AK7set/4VpQPD+Dnoy5eFSGDAYNq2D3uuoqcCuqB5KNtZBlZO7dGv45tAgjmZujpD3LTO+xh5ItTZA==
X-Received: by 2002:a1c:6a05:0:b0:3ee:138f:be54 with SMTP id f5-20020a1c6a05000000b003ee138fbe54mr9967801wmc.3.1679933204578;
        Mon, 27 Mar 2023 09:06:44 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id z4-20020a05600c0a0400b003ef4cd057f5sm9441471wmp.4.2023.03.27.09.06.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Mar 2023 09:06:44 -0700 (PDT)
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
Date: Mon, 27 Mar 2023 18:06:43 +0200
Message-ID: <87r0tarxf0.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_090648_367098_00B7D408 
X-CRM114-Status: GOOD (  13.31  )
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

SGVpa28gU3TDvGJuZXIgPGhlaWtvQHNudGVjaC5kZT4gd3JpdGVzOgoKPiBBbSBNb250YWcsIDI3
LiBNw6RyeiAyMDIzLCAxNzozOTo1NyBDRVNUIHNjaHJpZWIgSmF2aWVyIE1hcnRpbmV6IENhbmls
bGFzOgo+PiBPbmTFmWVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+IHdyaXRlczoKPj4gCj4+IEhlbGwg
T25kxZllaiwKPj4gCj4+ID4gSGkgSmF2aWVyLAo+PiA+Cj4+ID4gSSd2ZSB0cmllZCB0aGUgcGF0
Y2ggb24gdG9wIG9mIGxpbnVzL21hc3RlciBhbmQgaXQgd29ya3MgYXMgZXhwZWN0ZWQuIE15Cj4+
ID4gRFJNIHRlc3QgYXBwIHNob3dzIDE2LjY2OW1zIGJldHdlZW4gZnJhbWVzLiBUaGUgZGlzcGxh
eSBvdXRwdXQgaXMgb2sgb24KPj4gPiBkZXZlbG9wZXIgYmF0Y2ggcGluZXBob25lIHBybywgYW5k
IGlzIGNvcnJ1cHRlZCBvbiBwcm9kdWN0aW9uIHZlcnNpb24uCj4+ID4gRGlzcGxheSBhbHNvIGRv
ZXNuJ3QgY29tZSBiYWNrIGFmdGVyIGJsYW5raW5nLiBBbGwgYXMgZXhwZWN0ZWQuCj4+ID4KPj4g
PiBUZXN0ZWQtYnk6IE9uZHJlaiBKaXJtYW4gPG1lZ2lAeGZmLmN6Pgo+PiA+Cj4+IAo+PiBUaGFu
a3MgZm9yIHRlc3RpbmcuCj4+IAo+PiA+IEEgZmV3IG1vcmUgY29tbWVudHMgYmVsb3cuCj4+ID4K
Pj4gCj4+IEknbSBPSyB3aXRoIHRoZXNlIGNvbW1lbnRzIGJ1dCBJIGRpZCBhIGdpdCBkaWZmIHdp
dGggeW91ciBvcmFuZ2UtcGktNi4zCj4+IGJyYW5jaCBqdXN0IGJlZm9yZSBwb3N0aW5nIGFuZCB0
aGlzIHdhcyB0aGUgbGF0ZXN0IHRoYXQncyBpbiB5b3VyIHRyZWUuCj4+IAo+PiBTbyBmZWVsIGZy
ZWUgdG8gZWl0aGVyIHBvc3QgYSB2MyBhZGRyZXNzaW5nIHRoZSB0aGluZ3MgeW91IGFyZSBwb2lu
dGluZwo+PiBvdXQgb3IgbGV0cyBsYW5kIHRoaXMgYW5kIHdlIGNhbiBwb3N0IGFueSBmdXJ0aGVy
IGNsZWFudXBzIG9uIHRvcCBJTU8uCj4KPiBJIHdvdWxkIHJlYWxseSBsaWtlIHRvIF9ub3RfIGFw
cGx5IGVzc2VudGlhbGx5IGJyb2tlbiBjb2RlLCBzbyByZWFsbHkKPiB3b3VsZCBwcmVmZXIgdGhl
IHYzLWFwcHJvYWNoLgo+Cj4gVGhhbmtzCj4gSGVpa28KPgo+CgotLSAKQmVzdCByZWdhcmRzLAoK
SmF2aWVyIE1hcnRpbmV6IENhbmlsbGFzCkNvcmUgUGxhdGZvcm1zClJlZCBIYXQKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
