Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B951C76195
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Mar 2023 18:16:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m/RQA88rRkeIZfoaT5T1jIIzSJmebHMA9IoQQob1Acg=; b=cHF7kt6Lta06Dg
	H2n0/eGhARC5BPzF8a5YmyET+xije/M35UFGAtn0p/Dy+doVYkYRnl+vw4dwFCaErEo31tEunNzES
	drixcGKV6RXFBjoj3/8ElMyPW5vvAtkF+Ry0JLk/3RiJ/FGEQI6pkmuX4foSJvA0sl1adgn/kzc6/
	sO5L3lkJxYtiIHVukYTdoaF3Dezd7SjvMODVIyuBdCtumygHcNhjI0E62U3AarYm0rTYz5H17K2iU
	SlLWKAEqa6pW00fpaxG5/SHpnESZXxEvSSshetW1qqHs39hVTiIrja0nZgRBORwgT8F9dDVTrIZ6H
	tWL61k02Wy0KkLo0jHPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgrNz-00C17K-1S;
	Mon, 27 Mar 2023 18:16:03 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgrNw-00C15d-0g
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Mar 2023 18:16:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679940956;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UK/vUrhHuqntUFN+BgSrVc4SUZdQT7VSDoiLy/b5Axs=;
	b=EY6uhTSueeEahosF6tSWQUoT/1qn4belNrDu3QdL7iv2G7KafOsZKWNGSxcVx6f2aXu7ud
	9rmfijrtjLUYzXmYha7oQmHP3UHfc5R2GFcp18Uehlqt5bSxdx1x1PBX3oyvJPtuqgf+uV
	uCg/IO9u3chECOfRNR/tVZ8VRA/MSA8=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-621-7aL8xRDPOhiPMV4QIF0Vbg-1; Mon, 27 Mar 2023 14:15:55 -0400
X-MC-Unique: 7aL8xRDPOhiPMV4QIF0Vbg-1
Received: by mail-wm1-f71.google.com with SMTP id v7-20020a05600c470700b003ef6ebfa99fso2118486wmo.8
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Mar 2023 11:15:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679940954;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UK/vUrhHuqntUFN+BgSrVc4SUZdQT7VSDoiLy/b5Axs=;
        b=2c5FpucPc8dUAS4jIKDbvxpxf7MgAi2a8y4S6rYt+PSWbQoErgx7so17MSpxJJQEds
         CDRGpVHrxJvKuLdkZyu3x2lT+6mSD5kA2bF9lHQ4Qqm3jNgUHJZiEpDF4iauotpY7BBD
         4jbUVRtqGkIah+s06FO1IJSynV36L2W/IU8NdFi3P3E6RpKswZ39DSXal6c9H9FkB2sQ
         R6u8oZ5b3CYnsgJSrevKdvDgvqKs+FPAd2pys6eoY5s2HMzK3DuWAP6z/MPiZwQkdnt/
         WCwZyr4dZQaUNL1yBoVzISLth+AxuZvADh/26Jl7/e/vPuW1YBJ09KxcJW39bd5sohLN
         caxw==
X-Gm-Message-State: AAQBX9d7BKEEl6eRNpf8sT7RjTYT+DC69ckcu/U+hCOrWKERQSIUaf7s
	V6jJ4rxQ3e7eWLO6UWR8TWKN5XBEz/Dy3k3vNQmQFOnE4W03qaJPDLPSC4AN6XBm0DaVaXTZfss
	85PiV2tWULpm86ZDRdph1JlkgWaXsu6eM
X-Received: by 2002:adf:e98b:0:b0:2c5:4ffb:b5d4 with SMTP id h11-20020adfe98b000000b002c54ffbb5d4mr10067902wrm.19.1679940953969;
        Mon, 27 Mar 2023 11:15:53 -0700 (PDT)
X-Google-Smtp-Source: AKy350ZaT6ahYHthFl0PUIe9zMPk4lKHZv5UbJklHs82pkUCUN/DtNmeerfQ+58giM6OUYgp3Y5NMA==
X-Received: by 2002:adf:e98b:0:b0:2c5:4ffb:b5d4 with SMTP id h11-20020adfe98b000000b002c54ffbb5d4mr10067876wrm.19.1679940953689;
        Mon, 27 Mar 2023 11:15:53 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id p17-20020adfcc91000000b002c71dd1109fsm25758248wrj.47.2023.03.27.11.15.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Mar 2023 11:15:53 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
Cc: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, Robert
 Mader <robert.mader@collabora.com>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Peter Robinson
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
In-Reply-To: <20230327174855.xpxrdfldqcxk463r@core>
References: <20230327074136.1459212-1-javierm@redhat.com>
 <20230327130147.wgxl2qayhzsi2xak@core>
 <87wn32rynm.fsf@minerva.mail-host-address-is-not-set>
 <1924921.PYKUYFuaPT@diego>
 <87mt3yrwzo.fsf@minerva.mail-host-address-is-not-set>
 <20230327174855.xpxrdfldqcxk463r@core>
Date: Mon, 27 Mar 2023 20:15:52 +0200
Message-ID: <87jzz2rrfr.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_111600_328225_CB2F811A 
X-CRM114-Status: GOOD (  24.72  )
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

T25kxZllaiBKaXJtYW4gPG1lZ2lAeGZmLmN6PiB3cml0ZXM6Cgo+IE9uIE1vbiwgTWFyIDI3LCAy
MDIzIGF0IDA2OjE1OjU1UE0gKzAyMDAsIEphdmllciBNYXJ0aW5leiBDYW5pbGxhcyB3cm90ZToK
ClsuLi5dCgo+PiAKPj4gSXQgaXMgYnJva2VuIHRob3VnaD8gVGhpcyBpcyB3aGF0IGlzIGluIE9u
ZHJlaiBkb3duc3RyZWFtIHRyZWUgYW5kIEkgc2VlCj4+IG5vIGlzc3VlcyBvbiBteSBQaW5lcGhv
bmUgUHJvLiBIZSBtZW50aW9uZWQgc29tZSBmbGlja2VyIHdoZW4gbG9va2luZyBhdAo+PiB0aGUg
c2lnbmFscyB3aXRoIGEgc2NvcGUgYW5kIGhvb2tpbmcgYSBwaG90b3Jlc2lzdG9yLgo+Cj4gTEVE
IHJlZ3VsYXRvciBpcyBkcml2ZW4gb3V0IG9mIHNwZWMgYnkgYSBmcmVxdWVuY3kgdGhhdCdzIDIw
eCBsb3dlciB0aGFuCj4gcmVjb21tZW5kZWQsIGlmIHlvdSB3YW50IHNob3J0IHZlcnNpb24gb2Yg
d2hhdCdzIGJyb2tlbiBhYm91dCB0aGUgRFQgcGF0Y2guCj4KPj4gQnV0IHRoYXQncyBmYWlyLiBJ
J2xsIGxldCBPbmRyZWogdGhlbiBwb3N0IGEgdjMgaWYgaGUgd2FudHMgdG8gYWRkcmVzcyB0aGUK
Pj4gaXNzdWVzIGhlIHBvaW50ZWQgb3V0LCBzaW5jZSBpcyBoaXMgcGF0Y2ggYWZ0ZXIgYWxsLgo+
Cj4gSXQncyBub3QgbXkgcGF0Y2guIE9yaWdpbmFsIGF1dGhvciBvZiB0aGUgRFQgaXMgTWFydGlq
biBvciBLYW1pbC4gSSBqdXN0IGNhcnJ5Cj4gdGhlaXIgRFQgd29yayBpbiBzcGxpdC11cCBwYXRj
aGVzIGluIG15IHRyZWUsIGFuZCBJIHNvbWV0aW1lcyB0cnkgdG8gZmluZCBzb2x1dGlvbnMKPiB0
byBidWdzIEkgZmluZCB3aGVuIHVzaW5nIFBQUC4gVGhhdCdzIHRoZSBzdG9yeSBvZiB0aGVzZSBE
VCBjaGFuZ2VzIHlvdSdyZSBwb3N0aW5nLgo+Cj4gU2luY2UgeW91IHBvc3RlZCB0aGlzIERUIHBh
dGNoIGZvciB1cHN0cmVhbWluZywgSSB3YW50ZWQgdG8gaGVscCB5b3UgYnkgcmV2aWV3ZWQKPiBp
dCBtb3JlIGNvbXBsZXRlbHksIHNvIEkgb3BlbmVkIHRoZSBzY2hlbWF0aWMgYW5kIGRhdGFzaGVl
dHMgZm9yIHRoZSBjb21wb25lbnRzCj4gdGhhdCBhcmUgZGVzY3JpYmVkIGluIHRoaXMgcGF0Y2gs
IGFuZCBkaXNjb3ZlcmVkIHRoZXNlIG5ldyBpc3N1ZXMgSSBjb21tZW50ZWQKPiBhYm91dC4gQW5k
IEkgYWxzbyB0ZXN0ZWQgaXQgb24gdG9wIG9mIGxpbnVzL21hc3Rlci4KPgo+IEp1c3QgYmVjYXVz
ZSBzb21ldGhpbmcgaXMgaW4gbXkgdHJlZSBkb2Vzbid0IG1lYW4gaXQncyBtaW5lLCBvciB0aGF0
IEkgcmV2aWV3ZWQKPiBpdCBpbiBkZXRhaWwgYW5kIHByZXBhcmVkIGl0IGZvciB1cHN0cmVhbWlu
Zywgb3IgdGhhdCBJJ20gaW50ZXJlc3RlZCBpbgoKVGhhbmtzIGZvciB0aGUgY2xhcmlmaWNhdGlv
bi4gQmVjYXVzZSB0aGUgcGF0Y2ggaGFkIHlvdXIgYXV0aG9yc2hpcCBJCndyb25nbHkgYXNzdW1l
ZCB0aGF0IGNhbWUgZnJvbSB5b3UuIFNvcnJ5IGFib3V0IHRoZSBjb25mdXNpb24uCgo+IHVwc3Ry
ZWFtaW5nIGl0LiBJJ20ganVzdCB0cnlpbmcgdG8gaGVscCB5b3Ugd2l0aCB5b3VyIHVwc3RyZWFt
aW5nIGVmZm9ydCBieQo+IHRlc3RpbmcgYW5kIHJldmlldyBzaW5jZSBJIGdvdCB0byBrbm93IHRo
ZSBoYXJkd2FyZSBxdWl0ZSB3ZWxsIG92ZXIgdGhlIGxhc3QKPiB5ZWFycyBhbmQgY2FuIGNoZWNr
IHRoZSBzY2hlbWF0aWNzIGFuZCBkYXRhc2hlZXRzIHF1aWNrbHksIGFuZCBJIGxpa2UgdG8gdGhp
bmsKPiB1cHN0cmVhbSBjb2RlIGlzIGhlbGQgdG8gaGlnaGVyIHN0YW5kYXJkLiBUaGF0J3MgYWxs
Lgo+CgpBcHByZWNpYXRlIHlvdXIgaGVscCBhbmQgSSBhZ3JlZSB0aGF0IHVwc3RyZWFtIGNvZGUg
c2hvdWxkIGJlIGhlbGQgdG8gYQpoaWdoIHN0YW5kYXJkLiBCdXQgc2luY2UgdGhlIERUUyBpbiBt
YWlubGluZSBpcyBwcmV0dHkgYmFzaWMgYW55d2F5cyAoeW91CmNhbiBvbmx5IGJvb3QgdG8gc2Vy
aWFsIHJpZ2h0IG5vdyksIGlzIG5vdCByZWFsbHkgdXNhYmxlIGZvciBvdGhlciB0aGluZwp0aGFu
IGRldmVsb3BtZW50IGFuZCBrZWVwIGFkZGluZyB0aGUgbWlzc2luZyBzdXBwb3J0LgoKU28gSSB0
aG91Z2h0IHRoYXQgd2UgY291bGQgZG8gaXQgaW4gc3RlcHMgd2l0aG91dCBjcmVhdGluZyB0aGF0
IG11Y2ggd29yawpmb3IgdGhlIHBlb3BsZSB0cnlpbmcgdG8gcG9zdCB0aGUgZG93bnN0cmVhbSBw
YXRjaGVzIGFuZCBoYXZpbmcgdG8gcmUtc3Bpbgp0b28gbWFueSB0aW1lcy4KCi0tIApCZXN0IHJl
Z2FyZHMsCgpKYXZpZXIgTWFydGluZXogQ2FuaWxsYXMKQ29yZSBQbGF0Zm9ybXMKUmVkIEhhdAoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
