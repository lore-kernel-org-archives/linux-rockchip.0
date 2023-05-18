Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A590C77B7A
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 May 2023 12:15:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GRI1ajOw6InfivI+qhHnkP+9obEw5v8YYbUMAkbOqZk=; b=U0Zj+KYaM9066J
	Dxh/hkWB8cSuexp+5t5sC+ydDLVAzlCkSflQ0I5fffEjD4XK5zIR1ZaU9CvFkOZG/4WIg+DwD9YwI
	PBRwdr7YwKss4oABmoKHrFD7qTIBzvLbHbWBoGBtEZ2RT1GXm6bI4SfblPmUMvz9IA6UoO9MPTf+B
	icWolFUDDPnud6e1O8KBZWj/RBRErdGZraPWBYg800ZLTn/nLnuQlkYK4dV/i366YEq+92NVNv/aK
	18HLlSrNdAE6pXgdNaadBpxBTH2J4tiltNcfcQFF7KX57YD9wROraQtZSNKqZo/UEnxrLLxvl5FLN
	XGA0/mYIv5DB3eH2Ct1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzcXP-00CwHD-0k;
	Thu, 18 May 2023 12:15:19 +0000
Received: from mail-yb1-xb30.google.com ([2607:f8b0:4864:20::b30])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzcXL-00CwFB-2S
	for linux-rockchip@lists.infradead.org;
	Thu, 18 May 2023 12:15:17 +0000
Received: by mail-yb1-xb30.google.com with SMTP id 3f1490d57ef6-ba81f71dfefso2797043276.0
        for <linux-rockchip@lists.infradead.org>; Thu, 18 May 2023 05:15:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1684412113; x=1687004113;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XgFOSV/UZQum0un5ddf5wbQcMT/9BA1IjZd6FVUmCYU=;
        b=GOJI+vZ+hkzomUZOEnr8zjRGHiv2hqqLvNHs/wcE90qc088sPT3caF7Kl5tUxrifex
         n2L8AGuDLnTohuTkvhKkFOOVisGil9d+2zd/M6gc9yEGZxZIrywXb8SCHe97XZmcDpjn
         WbqMg90rREBOiQIM4jBYWxYUcfib5PymxKcWA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684412113; x=1687004113;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XgFOSV/UZQum0un5ddf5wbQcMT/9BA1IjZd6FVUmCYU=;
        b=WbjFRDMcebv6e5NulFcoj7/dYNlSNGHvgG93kcPHoy5krhdGHwcULpiF4SrtiI80uo
         gqUScDj30t231C3t2ZPrpn1qux13DvNWvVo049sCV7BXaXICQrmdXWDxdo54eNCdfgi2
         812PYGNvHu5N0OzD4BOM5NQyC5mHsHekLX829BRdGygso/G9AKlb+5D3hUr3DammQEbg
         IaWDqm0HAVDEQBKv1C9Jc8CUqjoy6OeWzChvbYiOlwR48YNL41VLo41aZ1gu2xLbuMq2
         n952kp/LmjHqy+TIoTt9HVAj1gfKYSc0+3AJuflz0daqTjogzAfikzuI6THkhiWuzGfi
         SBTw==
X-Gm-Message-State: AC+VfDzBvDxDSlYiLRxYDpwFJzCbIAo9xA6SofxLVSCEbijEUMLyAw03
	l/+Fh7u05bfZOy9VSTTtL1CylvMVTsfYXpo8GXwoMQ==
X-Google-Smtp-Source: ACHHUZ7nFwLw8vU2gQmUrRhe5rNw2YJS/jctgIgXoQk+5ckkK64KcX4r0qAl4gnBCbLNwU3FrQdfHumNxwfG1gN0gdY=
X-Received: by 2002:a25:c42:0:b0:ba8:aaef:bc53 with SMTP id
 63-20020a250c42000000b00ba8aaefbc53mr766483ybm.6.1684412113261; Thu, 18 May
 2023 05:15:13 -0700 (PDT)
MIME-Version: 1.0
References: <20230330131746.1475514-1-jagan@amarulasolutions.com>
 <20230330131746.1475514-2-jagan@amarulasolutions.com> <beae35a5-b094-087a-8443-5f669a2a37c6@arm.com>
 <CAMty3ZBD8Eca4ECd03c1WD_tKTrd_=Tx1FF3KeihLAXySTVL8A@mail.gmail.com>
In-Reply-To: <CAMty3ZBD8Eca4ECd03c1WD_tKTrd_=Tx1FF3KeihLAXySTVL8A@mail.gmail.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Thu, 18 May 2023 17:45:01 +0530
Message-ID: <CAMty3ZBDAwY+3qApU_mQJ7ZNEw52SpbV3TeOk38TSicG9CoiVg@mail.gmail.com>
Subject: Re: [PATCH 2/3] iommu/rockchip: Disable the device link during resume
To: Heiko Stuebner <heiko@sntech.de>, Simon Xue <xxm@rock-chips.com>, 
	Kever Yang <kever.yang@rock-chips.com>
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, iommu@lists.linux.dev, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, 
	linux-amarula <linux-amarula@amarulasolutions.com>, Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230518_051515_801755_8E1264CA 
X-CRM114-Status: GOOD (  31.15  )
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

SGkgSGVpa28vS2V2ZXIvU2ltb24sCgpPbiBUdWUsIEFwciA0LCAyMDIzIGF0IDE6MjHigK9QTSBK
YWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4gd3JvdGU6Cj4KPiBPbiBUaHUs
IE1hciAzMCwgMjAyMyBhdCA3OjEz4oCvUE0gUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJwaHlAYXJt
LmNvbT4gd3JvdGU6Cj4gPgo+ID4gT24gMjAyMy0wMy0zMCAxNDoxNywgSmFnYW4gVGVraSB3cm90
ZToKPiA+ID4gUm9ja2NoaXAgaW9tbXUgaXMgdHJ5aW5nIHRvIGVuYWJsZSB0aGUgYXNzb2NpYXRl
ZCBkZXZpY2UgYXQgcnVudGltZQo+ID4gPiByZXN1bWUgaG93ZXZlciBzb21lIGRldmljZXMgbWln
aHQgZW5hYmxlIHRoZSBpb21tdSBkdXJpbmcgdGhlaXIgcG0KPiA+ID4gcnVudGltZSByZXN1bWUg
b3BlcmF0aW9uIHdoaWNoIGluZGVlZCBsZWFkcyBpb21tdSB0byB1c2UgdGhlIHdyb25nCj4gPiA+
IGRvbWFpbiBhbmQgdGhpcyBsZWFkcyB0byBkZXZpY2UgaW9tbXUgcGFnZSBmYXVsdC4KPiA+ID4K
PiA+ID4gQW4gZXhhbXBsZSBvZiB0aGlzIGJlaGF2aW9yIGhhcyBiZWVuIG9ic2VydmVkIGluIFJv
Y2tjaGlwIFJLMzMyOCwgd2hlcmUKPiA+ID4gaW9tbXUgc3RhbGxzIHJlcXVlc3QgdGltZW91dCBk
cmluZyBWT1AgZGV2aWNlIGVuYWJsZW1lbnQuCj4gPiA+Cj4gPiA+IEhlcmUgaXMgdGhlIGRtZXNn
IGxvZyBmb3IgdGhlIHNhbWU6Cj4gPiA+Cj4gPiA+IHJvY2tjaGlwLWRybSBkaXNwbGF5LXN1YnN5
c3RlbTogYm91bmQgZmYzNzAwMDAudm9wIChvcHMgdm9wX2NvbXBvbmVudF9vcHMpCj4gPiA+IGR3
aGRtaS1yb2NrY2hpcCBmZjNjMDAwMC5oZG1pOiBzdXBwbHkgYXZkZC0wdjkgbm90IGZvdW5kLCB1
c2luZyBkdW1teSByZWd1bGF0b3IKPiA+ID4gcmtfaW9tbXUgZmYzNzNmMDAuaW9tbXU6IEVuYWJs
ZSBzdGFsbCByZXF1ZXN0IHRpbWVkIG91dCwgc3RhdHVzOiAweDAwMDA0Ygo+ID4gPiBkd2hkbWkt
cm9ja2NoaXAgZmYzYzAwMDAuaGRtaTogc3VwcGx5IGF2ZGQtMXY4IG5vdCBmb3VuZCwgdXNpbmcg
ZHVtbXkgcmVndWxhdG9yCj4gPiA+IHJrX2lvbW11IGZmMzczZjAwLmlvbW11OiBEaXNhYmxlIHBh
Z2luZyByZXF1ZXN0IHRpbWVkIG91dCwgc3RhdHVzOiAweDAwMDA0Ygo+ID4gPiBkd2hkbWktcm9j
a2NoaXAgZmYzYzAwMDAuaGRtaTogRGV0ZWN0ZWQgSERNSSBUWCBjb250cm9sbGVyIHYyLjExYSB3
aXRoIEhEQ1AgKGlubm9fZHdfaGRtaV9waHkyKQo+ID4gPiBkd2hkbWktcm9ja2NoaXAgZmYzYzAw
MDAuaGRtaTogcmVnaXN0ZXJlZCBEZXNpZ25XYXJlIEhETUkgSTJDIGJ1cyBkcml2ZXIKPiA+ID4g
cm9ja2NoaXAtZHJtIGRpc3BsYXktc3Vic3lzdGVtOiBib3VuZCBmZjNjMDAwMC5oZG1pIChvcHMg
ZHdfaGRtaV9yb2NrY2hpcF9vcHMpCj4gPiA+IFtkcm1dIEluaXRpYWxpemVkIHJvY2tjaGlwIDEu
MC4wIDIwMTQwODE4IGZvciBkaXNwbGF5LXN1YnN5c3RlbSBvbiBtaW5vciAwCj4gPiA+Cj4gPiA+
IFRoaXMgaXNzdWUgaXMgcmVwcm9kdWNlZCBpZiB3ZSBlbmFibGUgdGhlIGRpc3BsYXkgaW4gVS1C
b290IGhvd2V2ZXIKPiA+ID4gVS1Cb290IGlzIG5vdCBldmVuIHRvdWNoZWQgYW55IGlvbW11IHJl
Z2lzdGVyIGFzIHRoZSBVLUJvb3QgZGlzcGxheQo+ID4gPiB1c2VzIHRoZSBzaW1wbGUgZnJhbWUg
YnVmZmVyIGxpa2Ugb3RoZXIgUm9ja2NoaXAgcGxhdGZvcm1zIFJLMzM5OSwKPiA+ID4gYW5kIFJL
MzMyOCBkby4KPiA+ID4KPiA+ID4gV2hlbiBWT1AgaXMgdHJ5aW5nIHRvIGVuYWJsZSB0aGUgaW9t
bXUgdXNpbmcgcnVudGltZSByZXN1bWUgY2FsbAo+ID4gPiBwbV9ydW50aW1lX3Jlc3VtZV9hbmRf
Z2V0IGZyb20gQHZvcF9lbmFibGUgdGhlbiB0aGUgaW9tbXUgcnVudGltZQo+ID4gPiByZXN1bWUg
Y2FsbCBAcmtfaW9tbXVfcmVzdW1lIHdpbGwgdHJ5IHRvIGF0dGFjaCB0aGUgVk9QIGluIHRoZSB3
cm9uZwo+ID4gPiBkb21haW4gdmlhIEBya19pb21tdV9lbmFibGUgd2lsbCBsZWFkIHRvIHRoZSB2
b3AgaW9tbXUgcGFnZSBmYXVsdC4KPiA+Cj4gPiBUaGF0IHNvdW5kcyBsaWtlIGEgZHJpdmVyIGJ1
Zy4gVGhlIHdob2xlIHBvaW50IG9mIHRoZSBkZXZpY2UgbGluayBpcwo+Cj4gRG8geW91IG1lYW4g
dGhlIGJ1ZyBpbiByb2NrY2hpcC1pb21tdS5jIG9yIHZvcD8KPgo+ID4gc3VwcG9zZWQgdG8gYmUg
dGhhdCB0aGUgSU9NTVUgZ2V0cyBzdXNwZW5kZWQgYWZ0ZXIgdGhlIFZPUCwgYW5kIHJlc3VtZWQK
PiA+IGJlZm9yZSBpdCwgc28gaXQgY2FuIG1ha2Ugc3VyZSB0aGF0IHdoYXRldmVyIHRyYW5zbGF0
aW9ucyB0aGUgVk9QIHdhcwo+ID4gdXNpbmcgYXJlIHJlc3RvcmVkICpiZWZvcmUqIHRoZSBWT1Ag
c3RhcnRzIHRyeWluZyB0byBhY2Nlc3MgdGhlbSBhZ2Fpbi4KPiA+IElmIHRoZSBJT01NVSBkcml2
ZXIgaXMgZmFpbGluZyB0byByZXN0b3JlIHRoZSBjb3JyZWN0IHN0YXRlIG9uIHJlc3VtZSwKPiA+
IG5vIGFtb3VudCBvZiBEVCBhYnVzZSBpcyB0aGUgcmlnaHQgYW5zd2VyLgo+Cj4gVGhlbiBob3cg
Y2FuIHdlIGhhbmRsZSB0aGUgY28tcmVsYXRpb24gYi93IHRoZW0gYXMgVk9QIGFscmVhZHkKPiBh
dHRhY2hpbmcgdGhlIGlvbW11IGFuZCBhdCB0aGUgc2FtZSB0aW1lIElPTU1VIHRyeWluZyB0byBl
bmFibGUgVk9QCj4gZGV2aWNlIGJ1dCByZWZlcnJpbmcgdG8gdGhlIHdyb25nIGRvbWFpbj8gQW55
IHN1Z2dlc3Rpb25zPwo+Cj4gPgo+ID4gSSBjYW4gdW5kZXJzdGFuZCBpZiB0aGUgSU9NTVUgaXRz
ZWxmIGV4cGVjdHMgdG8gYmUgaWRsZSBmb3IgdGhlIGluaXRpYWwKPiA+IGNvbmZpZ3VyYXRpb24g
YXQgcHJvYmUgdGltZSwgYW5kIGdldHMgdW5oYXBweSBpZiB3ZSB0cnkgdG8gcmVzZXQgaXQKPiA+
IHdoaWxlIChieXBhc3MpIFZPUCB0cmFmZmljIGZvciB0aGUgYm9vdGxvYWRlciBmcmFtZWJ1ZmZl
ciBpcyBzdGlsbCBnb2luZwo+ID4gdGhyb3VnaCwgYnV0IHRoYXQncyBhbiBlbnRpcmVseSBkaWZm
ZXJlbnQgaXNzdWUsIGFuZCBhZ2FpbiBoYWNraW5nCj4KPiBEb2VzIGl0IG1lYW4gYWNjZXNzaW5n
IFZPUCB0cmFmZmljIGF0IHRoZSBib290bG9hZGVyIHN0YWdlIGVmZmVjdGluZwo+IGlvbW11IGV2
ZW4gdGhvdWdoIHRoZSBWT1AgZHJpdmVycyBpbiB0aGUgYm9vdGxvYWRlciBhcmUgbm90IHVzaW5n
Cj4gaW9tbXUgYXQgYWxsPwoKQW55IHN1Z2dlc3Rpb25zIG9uIHRoaXMgaXNzdWU/IHdlIGZvdW5k
IHNpbWlsYXIgaXNzdWVzIGV2ZW4gd2l0aAp1cGNvbWluZyBSSyBTb0NzIC0gUlYxMTI2LCBSSzM1
NjYsIFJLMzU4OC4KClRoYW5rcywKSmFnYW4uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
