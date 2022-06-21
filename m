Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71C50C43334
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Jun 2022 14:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/F9ykELJDiD2kJjZJFxCQqsqlDrthxM3y0LHiKiJqqc=; b=5E0CdTUrUeCX1w
	sOLYkm2DJ4d769XmjDvnkMIbVbyVPB1lACsBHa67PGir2EMQzVC5BZpfPPur68ZkL5XrBSQNBHolT
	B3hnB75v4fjRDO8GqucPpLY6gDS5/wMFlcwaSU9p3zJld3+ORQNvOp/DAWiP5dCYYbV+1E40GMGl6
	dGJTzs9LTN7cuwXbKKYmSyD47TRFa/e2OMPsWJ/mCpfEIqM5rOda2qx882M1SjBPdmq9uBsIQgvIB
	ik9JCSWgmFSZzSRqKBaOeTk3Pddi/hvuNCXbv0p0qha5jc1ZWkYvyyeWrThu7ztw5py11/c4/0ylf
	AemXgUvozsR+ZIZecU8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3f7V-005xCz-I4; Tue, 21 Jun 2022 14:44:45 +0000
Received: from mail-qv1-xf2a.google.com ([2607:f8b0:4864:20::f2a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3f7J-005wkX-8J
	for linux-rockchip@lists.infradead.org; Tue, 21 Jun 2022 14:44:35 +0000
Received: by mail-qv1-xf2a.google.com with SMTP id 88so17126595qva.9
        for <linux-rockchip@lists.infradead.org>; Tue, 21 Jun 2022 07:44:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :content-transfer-encoding:user-agent:mime-version;
        bh=UjVnf+9L7ZC1WLXqq85gCxdmWfMAHHI4/tuT2zIFjbg=;
        b=hTosMnsYfB/KMIWaoOr0Qoc70DK9OmDeFVXrjKGJRmGkpYdNkyQ13BJ8DjhdIOVUAr
         7Fm2jAy9UdQYGDR3KBQPztNFt4beLoxlXPy55l3S19aDoNKWZGY2VXQrQiAR2gXHQbqn
         lPEIEzTuQlYSlOvjuLogY3Prv8nzjp+XtAgmrKMvd2L6blRgg09pKHV4Rw8GVHY0zRUA
         eKFaM8C2PEncf5K207+AJlASQaLY3coOMQWi+W0PvYM7lTh4Cbkk5qrHAoXikJTMXMFu
         heMMjDYlJucj6N2Gt23ZkP4bgvF1CUneZf2WpaKD+EfXvPvx5ByYxmxfnTxy+hPw2ikk
         6v8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:content-transfer-encoding:user-agent:mime-version;
        bh=UjVnf+9L7ZC1WLXqq85gCxdmWfMAHHI4/tuT2zIFjbg=;
        b=SE9tSGpYd4T9QpdmoRYwzFykduDZn4vKQl+XXo/TrF5//dEK82n6M09PdXiuLQxXWf
         c0G4bzmH4ofR/RF+JIChKMbLyoic0i2KdktThKS7lAnJ0V9QxUVN0clIVFNgIN8l0Vdm
         4F8eQWTwmfBpmE8B6KYZt3dNNQ88nygLoF2PlwsRW7drgYSRUFOWqfsL+NyPTp8rzfKF
         M5mSOTdJPvl1RJbwdKpgl6S/0YOLbSX/wuOgxGcNdJX+b1qtHFFz1hlDVgUZW4WpN3d1
         0uqfa7YWDyp2mdxPZ+vXOKXJ8ksCbcwOBwphFm2AKwirUwHp7p0dnkhLfFygV1IHsNyt
         G19Q==
X-Gm-Message-State: AJIora/Y/TYrx2FrcQeiN/mIC94YYH3rwL1ykT6wU5WlB8o91w3XJX9M
	khLdh4iBWO4bo3KQYwkXfDERsQ==
X-Google-Smtp-Source: AGRyM1uuiep9kSnI+2x3DKsy14BVrRGzdFdJNl2BFfSWIJ9LXRGbqS0glKXWf6n4g4jO31eE39T6nw==
X-Received: by 2002:a05:622a:1b09:b0:305:2a33:38bd with SMTP id bb9-20020a05622a1b0900b003052a3338bdmr24109023qtb.346.1655822671988;
        Tue, 21 Jun 2022 07:44:31 -0700 (PDT)
Received: from nicolas-tpx395.localdomain (192-222-136-102.qc.cable.ebox.net. [192.222.136.102])
        by smtp.gmail.com with ESMTPSA id s12-20020a05620a0bcc00b006a68fdc2d18sm13702813qki.130.2022.06.21.07.44.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jun 2022 07:44:31 -0700 (PDT)
Message-ID: <72fb06db282db1377b3d7ac1adf3987b26ac30c8.camel@ndufresne.ca>
Subject: Re: [PATCH 0/3] Enable JPEG Encoder on RK3566/RK3568
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Michael Grzeschik <mgr@pengutronix.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Peter Geis
 <pgwipeout@gmail.com>, Michael Riesch <michael.riesch@wolfvision.net>,
 Liang Chen <cl@rock-chips.com>,  linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org,  devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,  linux-kernel@vger.kernel.org,
 linux-staging@lists.linux.dev, Kever Yang <kever.yang@rock-chips.com>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Date: Tue, 21 Jun 2022 10:44:29 -0400
In-Reply-To: <20220620134039.GG21590@pengutronix.de>
References: <20220427224438.335327-1-frattaroli.nicolas@gmail.com>
	 <198ce3981ad15844627581f9519cab67ed2a81c1.camel@ndufresne.ca>
	 <2438841.KJ31GcehEG@archbook> <20220429232047.GG7671@pengutronix.de>
	 <0414bb0816eef95961fe47de96f97f925d29228f.camel@ndufresne.ca>
	 <20220620134039.GG21590@pengutronix.de>
User-Agent: Evolution 3.44.2 (3.44.2-1.fc36) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220621_074433_323894_08D6AC27 
X-CRM114-Status: GOOD (  45.63  )
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

TGUgbHVuZGkgMjAganVpbiAyMDIyIMOgIDE1OjQwICswMjAwLCBNaWNoYWVsIEdyemVzY2hpayBh
IMOpY3JpdMKgOgo+IEhpIE5pY29sYXMsCj4gSGkgQW5kcnplaiwKPiAKPiBPbiBNb24sIE1heSAw
MiwgMjAyMiBhdCAwODoyMDo1MEFNIC0wNDAwLCBOaWNvbGFzIER1ZnJlc25lIHdyb3RlOgo+ID4g
TGUgc2FtZWRpIDMwIGF2cmlsIDIwMjIgw6AgMDE6MjAgKzAyMDAsIE1pY2hhZWwgR3J6ZXNjaGlr
IGEgw6ljcml0wqA6Cj4gPiA+IFNpbmNlIHRoZSBSSzM1Njggc2VlbXMgdG8gZ2V0IG1vcmUgYW5k
IG1vcmUgb2YgYXR0ZW50aW9uIGF0IHRoZSBtb21lbnQKPiA+ID4gSSB3b3VsZCBsaWtlIHRvIGFz
ayBpZiBzb21lYm9keSBpcyBwbGFubmluZyB0byB3cml0ZSBzdXBwb3J0IHRoZSBSS1ZFTkMKPiA+
ID4gaW4gbWFpbmxpbmUuIFRoYXQgaXMgdGhlIFZFUFU1NDAgY29yZSByZWZlcmVkIHRvIGluIHRo
ZSBSSzM1NjggVFJNLgo+ID4gPiAKPiA+ID4gSSB3b3VsZCBzdGFydCB3aXRoIHRoYXQgaW4gdGhl
IG5leHQgd2Vla3MsIHRha2luZyB0aGUgYm9vdGxpbiBIMSBzdXBwb3J0Cj4gPiA+IGFzIGFuIHJl
ZmVyZW5jZSB0byBoYW5kbGUgdGhlIHJlcXVlc3RfYXBpIGZvciB0aGUgZW5jb2RlciBwYXJ0LiBX
aGljaCBpcwo+ID4gPiBjdXJyZW50bHkgY29tcGxldGVseSB1bnRvdWNoZWQgaW4gbWFpbmxpbmUg
QUZBSUsuCj4gPiAKPiA+IEknbSB2ZXJ5IGhhcHB5IHRvIGVhciB5b3UnZCBiZSBpbnRlcmVzdCBp
biBoZWxwaW5nIHdpdGggdGhpcy4gSSdtIGFkZGluZyBBbmRyemVqCj4gPiBpbiBDQywgYXMgaGUg
c3RhcnRlZCBzb21lIGJhc2Ugd29yayB1c2luZyBWUDggZW5jb2RlciBvbiBSSzMzOTkgKHNhbWUg
SFcgZm91bmQKPiA+IG9uIG90aGVyIFJLIFNvQykgdG8gbWFrZSB0aGlzIHBvc3NpYmxlLiBOb3Rl
IHRoYXQgdGhlc2UgYXJlIGEgbmV3IHR5cGUgb2YKPiA+IGVuY29kZXJzIGFuZCBhIHNwZWNpZmlj
YXRpb24gaXMgbmVlZGVkIHRvIGVuc3VyZSB0aGV5IGFsbCBoYXZlIGEgY29oZXJlbnQgd29yay0K
PiA+IGZsb3cuIFRoZSBmaXJzdCBzdGVwIHdhcyBvYnZpb3VzbHkgdG8gaGF2ZSB3b3JraW5nIHBy
b3RvdHlwZSwgQm9vdGxpbiBzdGFydGVkCj4gPiB3aXRoIEgyNjQgKGJ1dCBuZXZlciBwb3N0ZWQg
YW55dGhpbmcgb24gdGhlIG1haWxpbmcgbGlzdCkuIEknbSB1bmRlciB0aGUKPiA+IGltcHJlc3Np
b24gdGhleSBoYXZlIGFiYW5kb25lZCBpdC4gQW5kcnplaiBoYXZlIGRlY2lkZWQgdG8gdXNlIFZQ
OCBhcyBpdCBpcwo+ID4gc2ltcGxlci4gVGhlIHByb3RvdHlwZSBzaG91bGQgaGVscCB1bmRlcnN0
YW5kIHRoZSBiYXNpYyBmbG93IG9mIGFuIGVuY29kZXIgYW5kCj4gPiBwcm9kdWNlIGEgc3BlY2lm
aWNhdGlvbiBmb3IgdGhpcy4KPiAKPiBJIGp1c3QgaGF2ZSB0ZXN0ZWQgdGhlIGJvb3RsaW4gdjRs
Mi1oMjY0LWVuY29kZXIgc3RhY2sgb24gdGhlIHJrMzM5OQo+IHdpdGggdjUuMTktcmMyLiBJdCBp
cyB3b3JraW5nIGFzIGV4cGVjdGVkLgo+IAo+IFNpbmNlIHRoZXJlIGhhdmUgYmVlbiBzb21lIHJ1
bW91cnMgYWJvdXQgdXNpbmcgdGhlIFZFUFUxMjEgY29yZSBvbiB0aGUKPiByazM1NjgsIHdoaWNo
IGNvdWxkIGhhdmUgaDI2NCBzdXBwb3J0IGFzIHdlbGwuIEkgaGF2ZSB0ZXN0ZWQgdGhpcwo+IHN0
YWNrIG9uIHRoYXQgY29yZSBhcyB3ZWxsLgo+IAo+IFRoZSBmaW5kaW5ncyBhcmU7IEl0IGlzIHBy
b2R1Y2luZyBzb21lIGRhdGEsIGJ1dCB0aGUgc3RyZWFtIGNyZWF0ZWQKPiBpcyBub3QgcG9zc2li
bGUgdG8gYmUgZGVjb2RlZC4gVGVzdGVkIHdpdGggdmxjIGFuZCBnc3RyZWFtZXIuCgpPaCB3ZWxs
LCBJJ2Qgc2F5IHVubGVzcyB2ZW5kb3IgZG9jdW1lbnQgaXQsIHdlJ2xsIG5vdCBnb2luZyB0byBq
dXN0IGVuYWJsZSBpdAp0aGVyZS4gVGhlcmUgaXMgYW5vdGhlciAoYW5kIGZhc3RlcikgZW5jb2Rl
ciB0aGVyZSB3aXRoIGFuIHZlbmRvciBidXQgZnVsbHkgT3BlbgpTb3VyY2Ugc3RhY2sgYW55d2F5
LiBUaGFua3MgZm9yIHRoZSBleHRyYSBzdGVwIGhlcmUuCgo+IAo+IEJlIGl0IGR1ZSB0byBtaXNj
b25maWd1cmF0aW9uIG9yIHRoZSBjb3JlIGlzIHJlYWxseSBub3QgaDI2NCBjYXBhYmxlLgo+IAo+
IEZpbmQgdGhlIGxhdGVzdCBjb2RlIGhlcmU6Cj4gCj4gaHR0cHM6Ly9naXQucGVuZ3V0cm9uaXgu
ZGUvY2dpdC9tZ3IvbGludXgvbG9nLz9oPXY1LjE5L3RvcGljL3JrMzU2OC12ZXB1LWgyNjQtc3Rh
dGVsZXNzLWJvb3RsaW4KPiAKPiA+IEZyb20gdGhlcmUsIHRoZSAiZWFzeSIgcGFydCBpcyB0byBt
YWtlIHBlciBjb2RlYyBjb250cm9scywgdG8gY29uZmlndXJlIHRoZQo+ID4gZW5jb2Rlci4gRGVt
b25zdHJhdGluZyBmaXhlZCBRUCwgdGhpcyBpcyBhYm91dCB3ZXJlIEkgYmVsaWV2ZSBCb290bGlu
IHN0b3BwZWQuCj4gCj4gSSBoYXZlIHNlZW4gdGhhdCB0aGUgdXNlcnNwYWNlIHRvb2wgaXMgZmls
bGluZyBpbiBzb21lIGluaXRpYWwgdmFsdWVzCj4gaW4gdGhlIFBQUyBhbmQgU1BTIGhlYWRlcnMs
IHdoaWNoIGFyZSBub3QgYWRqdXN0YWJsZS4gSSBiZXQgeW91IHJlZmVyIHRvIHRoYXQuCj4gCj4g
PiBBbmQgSSBwZXJzb25hbGx5IGJlbGlldmUgc29tZSBPU1MgdXNlcmxhbmQgKG5vdCBqdXN0IHRl
c3RzKSB0aGF0IGNhbiBoYW5kbGUKPiA+IG11bHRpcGxlIHJlZmVyZW5jZSwgcGVyaGFwcyBtb3Jl
IGFkdmFuY2UgR09QIHBhdHRlcm4gYW5kIHNvbWUgYmFzaWMgcmF0ZSBjb250cm9sCj4gPiB3b3Vs
ZCBoZWxwIGJ1aWxkIGNvbmZpZGVuY2UgaW4gdGhlIHVBUEkuCj4gCj4gSSBmb3VuZCB0aGUgZm9s
bG93aW5nIENUUkwgVHlwZXMgYmVpbmcgZGVmaW5lZCBpbiB0aGUgYm9vdGxpbiBzdGFjawo+IGZv
ciB0aGUgcmVxdWVzdCBBUEkuCj4gCj4gVjRMMl9DSURfU1RBVEVMRVNTX0gyNjRfRU5DT0RFX1BB
UkFNUwo+IFY0TDJfQ0lEX1NUQVRFTEVTU19IMjY0X0VOQ09ERV9SQwo+IFY0TDJfQ0lEX1NUQVRF
TEVTU19IMjY0X0VOQ09ERV9GRUVEQkFDSwo+IAo+IFRoZSBGRUVEQkFDSyBDSUQgaXMgdGhlIGlu
Zm9ybWF0aW9uIHdlIGdhaW4gYWZ0ZXIgb25lIGZyYW1lIHdhcwo+IGVuY29kZWQuIFdpdGggdGhp
cyBkYXRhIHRoZSBSQyAoUmF0ZSBDb250cm9sKSBwYXJhbWV0ZXIgaXMgcHJlcGFyZWQgZm9yCj4g
dGhlIG5leHQgZnJhbWUuCj4gCj4gWW91IG1lYW4gdG8gaGF2ZSBzb21lIHVzZXIgaW50ZXJmYWNl
IHRvIG1ha2UgdGhlIHJhdGUgY29udHJvbCB1c2VyCj4gY29uZmlndXJhYmxlPwoKUkMgZmVlZGJh
Y2sgY29udHJvbHMgYXJlIGdvaW5nIHRvIGFsbCBiZSB2ZW5kb3Igc3BlY2lmaWMuIFRoaXMgb25l
IGNhbm5vdCBiZQpjYWxsZWQgd2l0aCBhIGdlbmVyaWMgbmFtZSBsaWtlICJFTkNPREVfRkVFREJB
Q0siIHNpbmNlIGl0IGlzIG5vdCBnZW5lcmljLiBJbgpmYWN0LCBuZXdzIEhhbnRybyBjaGlwIGRv
bid0IGhhdmUgdGhpcyBmZWVkYmFjaywgdGhleSBoYXZlIHNvbWV0aGluZyBlbHNlIGJ1dCBpdApp
cyBub3QgdXNlZCBieSB0aGUgdmVuZG9yIHNvZnR3YXJlIChub3Qgb3BlbiBzb3VyY2UsIGJ1dCB5
b3UgY2FuIGZpbmQgbGVha3MgSQpzdXBwb3NlKS4gVGhleSBvbmx5IHVzZSB0aGUgc2l6ZSBvZiB0
aGUgY29tcHJlc3NlZCBmcmFtZXMsIGFuZCBkbyBSQyBpbiBzb2Z0d2FyZQp0aGVyZS4KCkluIGFk
ZGl0aW9uIHRvIHRoYXQsIHdpdGggdGhlIGN1cnJlbnQgdHJlbmQsICJmZWVkYmFjayIgY29udHJv
bHMgd291bGQgaGF2ZSB0bwp1c2UgUk8gUmVxdWVzdCwgc28gdGhhdCBvbmUgY2FuIHN0aWxsIHF1
ZXVlIG11bHRpcGxlIGVuY29kZSBhbmQgYmUgYWJsZSB0byBtYXRjaAp0aGUgZmVlZGJhY2sgdG8g
YSBzcGVjaWZpYyByZXF1ZXN0L2ZyYW1lLgoKPiAKPiA+IExldCB1cyBrbm93IGhvdyB3ZSBjYW4g
aGVscCwgd2Ugc2hvdWxkID52b2lkIGRvaW5nIHRoZSBzYW1lIHRoaW5nLCBhcwo+ID4gdGhpcyBp
cyBhbHJlYWR5IHF1aXRlIGEgbGFyZ2UgcHJvamVjdCB0aGF0IGNhbiBlYXNpbHkgdGFrZSBvdmVy
IGEgeWVhcgo+ID4gdG8gYmVjb21lIG1haW5saW5lIHJlYWR5Lgo+IAo+IEl0IHdvdWxkIHByb2Jh
Ymx5IGhlbHAgdG8gc2hhcmUgc29tZSBjb2RlYmFzZS4gSWYgeW91IGFscmVhZHkgaGF2ZQo+IHNv
bWV0aGluZyBmb3IgdGhhdCBya3ZlbmMgY29kZWMsIGJlIGl0IFZQOCBzdXBwb3J0LiBJdCB3b3Vs
ZCBwcm9iYWJseQo+IG1ha2Ugc2Vuc2UgZm9yIG1lIHRvIGJ1aWxkIHVwIG9uIHRoYXQuIE9yIHRv
IGRpc2N1c3MgY29tbW9uIGNvZGUKPiBwYXR0ZXJucyBvbiBzdHJ1Y3R1cmVzLgoKV2UgYXJlIGRv
aW5nIHRoZSBleGVyY2lzZSB3aXRoIFZQOCB1c2luZyB0aGUgb3JpZ2luYWwgSGFudHJvIEcxIGRl
c2lnbiwgYXMgZm9uZApvbiBJTVg4TVEgYW5kIFJLMzI4OC4gVGhvdWdoIHdlIG9ubHkgdGVzdCBv
biBOWFAgYm9hcmRzIGF0IHRoZSBtb21lbnQuCgpBbmRyemVqIGlzIG9uIHZhY2F0aW9uIHRoaXMg
d2VlaywgSSdsbCBjaGVjayB3aXRoIGhpbSB3aHkgaGlzdCBkcmFmdCBpc24ndAphY2Nlc3NpYmxl
IHRvIHRoZSBwdWJsaWMuIE1lYW53aGlsZSwgdGhlIHVzZXJsYW5kIC8gR1N0cmVhbWVyIHBhcnQg
aXMgZHJhZnRlZAooY2FyZWZ1bCBpdHMgYSBkcmFmdCkgaGVyZToKCmh0dHBzOi8vZ2l0bGFiLmZy
ZWVkZXNrdG9wLm9yZy9iZW5qYW1pbi5nYWlnbmFyZDEvZ3N0cmVhbWVyLy0vdHJlZS9XSVBfVjRM
Ml9WUDhfU1RBVEVMRVNTX0VOQ09ERVIKCkN1cnJlbnRseSB3ZSBhcmUgc3RpbGwgd29ya2luZyBv
biB2ZXJ5IGJhc2ljIGJpdCBvZiB0aGUgcHV6emxlLCB1bmRlcnN0YW5kaW5nCnRoZSBwcm9ibGVt
IGluIG9yZGVyIHRvIHByb2R1Y2UgYSBwcm9wZXIgU3RhdGVsZXNzIEVuY29kZXIgc3BlY2lmaWNh
dGlvbi4gQXMgYW4KZXhhbXBsZSwgdGhlIEhhbnRybyBWUDggZW5jb2RlciBicm91Z2h0IGludGVy
ZXN0aW5nIGFzcGVjdCwgYXMgYW4gZXhhbXBsZSBpdApwcm9kdWNlcyAyIGJ1ZmZlcnMuIFNoYWxs
IHdlIG9mZnNldCB0aGVzZSBpbnRvIDEgYnVmZmVyLCBzaGFsbCB3ZSB1c2UgcGxhbmVzIHRvCnpl
cm8gY29weSB0aGF0IHRvIHVzZXIsIG9yIHNoYWxsIHdlIG1lbWNweSBpbiB0aGUgZHJpdmVyIC4u
IFNoYWxsIHRoZSBWUDggZnJhbWUKaGVhZGVyIGJlIHByb2R1Y2VkIGJ5IHRoZSBkcml2ZXIgKGV2
ZW4gdGhvdWdoIHRoZSBIVyBkb24ndCBwcm9kdWNlIGl0KSBvciBzaGFsbAp3ZSBoYXZlIG1vcmUg
c3RhdGVsZXNzIFZQOCBmb3JtYXQgZm9yIGJvdGggY2FzZXMuIEl0cyBhIGJpZyBzZXJpZXMgb2Yg
dGlueQp0aGluZ3MgbGlrZSB0aGlzIHRoYXQgd2UgbmVlZCB0byBzdHVkeSBhbmQgd2VpZ2h0LCBh
bmQgY29tcGFyZSBhZ2FpbnN0IG90aGVyCkhhcmR3YXJlIGRlc2lnbnMuCgpyZWdhcmRzLApOaWNv
bGFzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
