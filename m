Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5631C7EE23
	for <linux-rockchip@archiver.kernel.org>; Sun, 28 May 2023 10:36:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i1UtvM6how6qdTdcqJ1E3qV228GRCYH1rJ6sNJ/UqBc=; b=igjWXmzjyeOv+i
	sicFGl85aqbCAI9t35XrxhnAKt9G/HiMz9+TSqPnh/2SNog0PFORA6bvschbtKj6UCwZ5aNhS06cc
	qUJ1b5U9DUzbuArmPVRPnjVs8XKojsYBP8T/7BdW13IdKbIQ6kg0DGcqpYgfo8spnWXpYnSXZXCGa
	TFgJzZpf3Bcu7oJdoxPr5F57CYsXhGLOSEt2dIcixYbtZP9g8h4ThiskYt3vYQ0k1QzeWcRpitMQW
	/KasdBBzS/hv/SieSPndC5lA3ADiXYNzyHSpNclcyymNr9ksA9NSrSDHKHtJLQobuYyCWXmQPxQCT
	LgO7iJRTc4Hc4yco173w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3Dl3-007O5M-1d;
	Sun, 28 May 2023 10:36:17 +0000
Received: from mail-yb1-xb29.google.com ([2607:f8b0:4864:20::b29])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3Dl0-007O0R-1c
	for linux-rockchip@lists.infradead.org;
	Sun, 28 May 2023 10:36:15 +0000
Received: by mail-yb1-xb29.google.com with SMTP id 3f1490d57ef6-ba81deea9c2so1864567276.2
        for <linux-rockchip@lists.infradead.org>; Sun, 28 May 2023 03:36:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1685270170; x=1687862170;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XEIjdMc3t6uK7VpqqvFnGReSqnMu5+aJcFJu5s74a2g=;
        b=K2W9+l1X1Tid3+EJqQQ/fY94BEwTMIpxSrR/hZk7F4AFiiSNIyMXuJNFcqN0IRU5HC
         RgA8PBpQi/Ktc+8+3pl7cM5hXsBD5HEdwmHxdFgHTbeHMkE/yZ1IvmvO4RE/H5u57qFy
         Il09BBOsVDeXUDjTqR5KOm6H9CozAYVh7EeUA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685270170; x=1687862170;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XEIjdMc3t6uK7VpqqvFnGReSqnMu5+aJcFJu5s74a2g=;
        b=bYFM7xlBjtZaTnThYFbA3Kr2nsDT1XsgaNHhJy4H7Y2rUOkGR5n6hm3YgnV8U0yAlz
         UgqbRaz0tFOon0n0XYXmj2yWTgiczPf6gHfashxzZng2RngMHKC31wjLg9z4bT/5iAKO
         LXohcTZpxJFgm4mKhP1I/rW0zxKuFYzyWTfVfXYinwvJk048xJtt4lEfrodSScO88RvN
         tiQcFpAISCkdgxhLhOSFby7g83EGRmZmHkAgfdYvuEWQ0K0nahZjiNpqvow0R9eZZ2mB
         oMMAvO30AXInKxtjfOCO7AviT1yMP3uQRTlYhM2eGJotr+DQam+CKeyeITww0htFVZqx
         UHGA==
X-Gm-Message-State: AC+VfDy9mn//eZSIeAkth2lkujhQkgs/xfCSmDwFREh72jJmae8KHLCf
	iHyKI5ah66RYWbXrxe8ouuguW3ZovgJxPlWXI4BzeQ==
X-Google-Smtp-Source: ACHHUZ73RHrAo0cPXE0nt0Rv8+FrnJMoVr33kCNPQ9rE3gthn+TWULk+JsMWs3UrFpgcDWlFPFcPjawxAM8CJnkIoSY=
X-Received: by 2002:a25:a549:0:b0:ba8:1089:3338 with SMTP id
 h67-20020a25a549000000b00ba810893338mr7609381ybi.39.1685270169679; Sun, 28
 May 2023 03:36:09 -0700 (PDT)
MIME-Version: 1.0
References: <20230330131746.1475514-1-jagan@amarulasolutions.com>
 <20230330131746.1475514-2-jagan@amarulasolutions.com> <beae35a5-b094-087a-8443-5f669a2a37c6@arm.com>
 <CAMty3ZBD8Eca4ECd03c1WD_tKTrd_=Tx1FF3KeihLAXySTVL8A@mail.gmail.com>
In-Reply-To: <CAMty3ZBD8Eca4ECd03c1WD_tKTrd_=Tx1FF3KeihLAXySTVL8A@mail.gmail.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Sun, 28 May 2023 16:05:57 +0530
Message-ID: <CAMty3ZAnx2V_gWgi-jpRHbdyVnGYn9Vyyv8H0HVqTijOcCBycA@mail.gmail.com>
Subject: Re: [PATCH 2/3] iommu/rockchip: Disable the device link during resume
To: Robin Murphy <robin.murphy@arm.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, iommu@lists.linux.dev, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, 
	linux-amarula <linux-amarula@amarulasolutions.com>, Simon Xue <xxm@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230528_033614_565505_50D88BE6 
X-CRM114-Status: GOOD (  19.49  )
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

SGkgUm9iaW4sCgpPbiBUdWUsIEFwciA0LCAyMDIzIGF0IDE6MjHigK9QTSBKYWdhbiBUZWtpIDxq
YWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4gd3JvdGU6Cj4KPiBPbiBUaHUsIE1hciAzMCwgMjAy
MyBhdCA3OjEz4oCvUE0gUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJwaHlAYXJtLmNvbT4gd3JvdGU6
Cj4gPgo+ID4gT24gMjAyMy0wMy0zMCAxNDoxNywgSmFnYW4gVGVraSB3cm90ZToKPiA+ID4gUm9j
a2NoaXAgaW9tbXUgaXMgdHJ5aW5nIHRvIGVuYWJsZSB0aGUgYXNzb2NpYXRlZCBkZXZpY2UgYXQg
cnVudGltZQo+ID4gPiByZXN1bWUgaG93ZXZlciBzb21lIGRldmljZXMgbWlnaHQgZW5hYmxlIHRo
ZSBpb21tdSBkdXJpbmcgdGhlaXIgcG0KPiA+ID4gcnVudGltZSByZXN1bWUgb3BlcmF0aW9uIHdo
aWNoIGluZGVlZCBsZWFkcyBpb21tdSB0byB1c2UgdGhlIHdyb25nCj4gPiA+IGRvbWFpbiBhbmQg
dGhpcyBsZWFkcyB0byBkZXZpY2UgaW9tbXUgcGFnZSBmYXVsdC4KPiA+ID4KPiA+ID4gQW4gZXhh
bXBsZSBvZiB0aGlzIGJlaGF2aW9yIGhhcyBiZWVuIG9ic2VydmVkIGluIFJvY2tjaGlwIFJLMzMy
OCwgd2hlcmUKPiA+ID4gaW9tbXUgc3RhbGxzIHJlcXVlc3QgdGltZW91dCBkcmluZyBWT1AgZGV2
aWNlIGVuYWJsZW1lbnQuCj4gPiA+Cj4gPiA+IEhlcmUgaXMgdGhlIGRtZXNnIGxvZyBmb3IgdGhl
IHNhbWU6Cj4gPiA+Cj4gPiA+IHJvY2tjaGlwLWRybSBkaXNwbGF5LXN1YnN5c3RlbTogYm91bmQg
ZmYzNzAwMDAudm9wIChvcHMgdm9wX2NvbXBvbmVudF9vcHMpCj4gPiA+IGR3aGRtaS1yb2NrY2hp
cCBmZjNjMDAwMC5oZG1pOiBzdXBwbHkgYXZkZC0wdjkgbm90IGZvdW5kLCB1c2luZyBkdW1teSBy
ZWd1bGF0b3IKPiA+ID4gcmtfaW9tbXUgZmYzNzNmMDAuaW9tbXU6IEVuYWJsZSBzdGFsbCByZXF1
ZXN0IHRpbWVkIG91dCwgc3RhdHVzOiAweDAwMDA0Ygo+ID4gPiBkd2hkbWktcm9ja2NoaXAgZmYz
YzAwMDAuaGRtaTogc3VwcGx5IGF2ZGQtMXY4IG5vdCBmb3VuZCwgdXNpbmcgZHVtbXkgcmVndWxh
dG9yCj4gPiA+IHJrX2lvbW11IGZmMzczZjAwLmlvbW11OiBEaXNhYmxlIHBhZ2luZyByZXF1ZXN0
IHRpbWVkIG91dCwgc3RhdHVzOiAweDAwMDA0Ygo+ID4gPiBkd2hkbWktcm9ja2NoaXAgZmYzYzAw
MDAuaGRtaTogRGV0ZWN0ZWQgSERNSSBUWCBjb250cm9sbGVyIHYyLjExYSB3aXRoIEhEQ1AgKGlu
bm9fZHdfaGRtaV9waHkyKQo+ID4gPiBkd2hkbWktcm9ja2NoaXAgZmYzYzAwMDAuaGRtaTogcmVn
aXN0ZXJlZCBEZXNpZ25XYXJlIEhETUkgSTJDIGJ1cyBkcml2ZXIKPiA+ID4gcm9ja2NoaXAtZHJt
IGRpc3BsYXktc3Vic3lzdGVtOiBib3VuZCBmZjNjMDAwMC5oZG1pIChvcHMgZHdfaGRtaV9yb2Nr
Y2hpcF9vcHMpCj4gPiA+IFtkcm1dIEluaXRpYWxpemVkIHJvY2tjaGlwIDEuMC4wIDIwMTQwODE4
IGZvciBkaXNwbGF5LXN1YnN5c3RlbSBvbiBtaW5vciAwCj4gPiA+Cj4gPiA+IFRoaXMgaXNzdWUg
aXMgcmVwcm9kdWNlZCBpZiB3ZSBlbmFibGUgdGhlIGRpc3BsYXkgaW4gVS1Cb290IGhvd2V2ZXIK
PiA+ID4gVS1Cb290IGlzIG5vdCBldmVuIHRvdWNoZWQgYW55IGlvbW11IHJlZ2lzdGVyIGFzIHRo
ZSBVLUJvb3QgZGlzcGxheQo+ID4gPiB1c2VzIHRoZSBzaW1wbGUgZnJhbWUgYnVmZmVyIGxpa2Ug
b3RoZXIgUm9ja2NoaXAgcGxhdGZvcm1zIFJLMzM5OSwKPiA+ID4gYW5kIFJLMzMyOCBkby4KPiA+
ID4KPiA+ID4gV2hlbiBWT1AgaXMgdHJ5aW5nIHRvIGVuYWJsZSB0aGUgaW9tbXUgdXNpbmcgcnVu
dGltZSByZXN1bWUgY2FsbAo+ID4gPiBwbV9ydW50aW1lX3Jlc3VtZV9hbmRfZ2V0IGZyb20gQHZv
cF9lbmFibGUgdGhlbiB0aGUgaW9tbXUgcnVudGltZQo+ID4gPiByZXN1bWUgY2FsbCBAcmtfaW9t
bXVfcmVzdW1lIHdpbGwgdHJ5IHRvIGF0dGFjaCB0aGUgVk9QIGluIHRoZSB3cm9uZwo+ID4gPiBk
b21haW4gdmlhIEBya19pb21tdV9lbmFibGUgd2lsbCBsZWFkIHRvIHRoZSB2b3AgaW9tbXUgcGFn
ZSBmYXVsdC4KPiA+Cj4gPiBUaGF0IHNvdW5kcyBsaWtlIGEgZHJpdmVyIGJ1Zy4gVGhlIHdob2xl
IHBvaW50IG9mIHRoZSBkZXZpY2UgbGluayBpcwo+Cj4gRG8geW91IG1lYW4gdGhlIGJ1ZyBpbiBy
b2NrY2hpcC1pb21tdS5jIG9yIHZvcD8KCkFueSBmdXJ0aGVyIGNvbW1lbnRzIG9uIHRoaXM/IElz
c3VlIHNlZW1zIHRvIHJlcHJvZHVjaW5nIG9uIGxhdGVzdCBSSyBTb0Mncy4KClRoYW5rcywKSmFn
YW4uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
