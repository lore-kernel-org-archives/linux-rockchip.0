Return-Path: <SRS0=ad98=HZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B50C433DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 14:31:31 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4C70E64E58
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 14:31:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4C70E64E58
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zkVXVmFznFgy1aFko2Hld8cAbft5JzU905SHpZfLQIs=; b=uuV+ujyfStBRDOojTNlNJ8rM9
	VUgSH3RfOgp7gMlyv/dBBNcAwTckDs0Rf4qrDMVnLPvBrbU0b+8k9aPVj7JO9dSfCOzUkP4Dk0O4g
	XRPrhELG+bTW4wQPNefiOzX2fRRzifjMoxGrBDM17cwtJW03M+uYRHNQxSz9XQypT5Q/B441sEypM
	dUvgKAe6TllJev+cExJDpby6OFY08Oy70K0NGLKlCnh2zvJWbDhqkGDICf0zM7KT9T+/9gMhGgBBU
	PWfUW8cjQYwqPmhYLc0y+JZnfalFSvabap8NZ/tcNSaJJxMq4jk4x5FUf6JcjsbuL5FZIX5Nk3Aw/
	/7h1RAVKA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEYil-00042u-Ta; Tue, 23 Feb 2021 14:31:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEYih-00041C-Jt; Tue, 23 Feb 2021 14:31:24 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 494FD64E6C;
 Tue, 23 Feb 2021 14:31:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1614090682;
 bh=oqCJx8NHXStuqlV1NrC2dd7e7CMVlgeyC8oEC7KrlG0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=p2B2lsUBRUHMQNFYCxErtzkEFiHGphDbdtN+G9Z1KL0Od+TLCb52iwYAJdqum+PgU
 Zf4xyqNbXwUKLnalc8pRRulVdsFBxpodn2mvpbb2CKBk01obkYCvpQvlTEhEO95Dtt
 Gcq260nyEdsVrjBu3ExkixiFX7+XScq57aodHBD434enlAPaW5G8VmCQfKHIvzkX3E
 EOomp0dz6XDte7O9k6vTuDRMPN5Us238cTFK3ZZ9uKy//EvDHmTI7/ioM/a9Q8LBQ4
 L0I0MPFKXyqOmSLvFU+Y4Jb4so2rUjJuujJjPmXTty2oLK0kKdjEg0upNwPwPpKOeM
 9jsuIFnV6R8Cg==
Received: by mail-ed1-f49.google.com with SMTP id q10so26122090edt.7;
 Tue, 23 Feb 2021 06:31:22 -0800 (PST)
X-Gm-Message-State: AOAM531qgprMgUVfoAITEnCQLVSsC2bfNT4kG1cbLoUxTMShEFKG+4Wa
 MBz42hMbrXUMjNWbIzJyoS/+ByaXzfzCfSvzwQ==
X-Google-Smtp-Source: ABdhPJyYhIvQsC2FuZjzr5FowQAASKFykbjYyZN9ovf0Da99A769RxD3C30Z3RZmtSjSV1KoZikYqHKwpHOh5s+qPbE=
X-Received: by 2002:a05:6402:164e:: with SMTP id
 s14mr15513878edx.62.1614090680626; 
 Tue, 23 Feb 2021 06:31:20 -0800 (PST)
MIME-Version: 1.0
References: <20210222122406.41782-1-benjamin.gaignard@collabora.com>
 <20210222122406.41782-9-benjamin.gaignard@collabora.com>
 <20210223003442.GA2516123@robh.at.kernel.org>
 <25f30110-d655-2d77-d3b7-30c1c61f6965@collabora.com>
In-Reply-To: <25f30110-d655-2d77-d3b7-30c1c61f6965@collabora.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 23 Feb 2021 08:31:08 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJGZK2C8mcDiYa4yfKxf4sKykxSQ-Nfr4bi_u_OcAxW_Q@mail.gmail.com>
Message-ID: <CAL_JsqJGZK2C8mcDiYa4yfKxf4sKykxSQ-Nfr4bi_u_OcAxW_Q@mail.gmail.com>
Subject: Re: [PATCH v3 8/9] dt-bindings: media: nxp,
 imx8mq-vpu: Update bindings
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210223_093123_804991_EF0F3B54 
X-CRM114-Status: GOOD (  20.77  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Peng Fan <peng.fan@nxp.com>, Collabora Kernel ML <kernel@collabora.com>,
 Fabio Estevam <festevam@gmail.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Chen-Yu Tsai <wens@csie.org>, NXP Linux Team <linux-imx@nxp.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 devicetree@vger.kernel.org, Sascha Hauer <kernel@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, Maxime Ripard <mripard@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBGZWIgMjMsIDIwMjEgYXQgMjowNCBBTSBCZW5qYW1pbiBHYWlnbmFyZAo8YmVuamFt
aW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4KPgo+IExlIDIzLzAyLzIwMjEgw6Ag
MDE6MzQsIFJvYiBIZXJyaW5nIGEgw6ljcml0IDoKPiA+IE9uIE1vbiwgRmViIDIyLCAyMDIxIGF0
IDAxOjI0OjA1UE0gKzAxMDAsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+ID4+IFRoZSBjdXJy
ZW50IGJpbmRpbmdzIHNlZW0gdG8gbWFrZSB0aGUgYXNzdW1wdGlvbiB0aGF0IHRoZQo+ID4+IHR3
byBWUFVzIGhhcmR3YXJlIGJsb2NrcyAoRzEgYW5kIEcyKSBhcmUgb25seSBvbmUgc2V0IG9mCj4g
Pj4gcmVnaXN0ZXJzLgo+ID4+IEFmdGVyIGltcGxlbWVudGluZyB0aGUgVlBVIHJlc2V0IGRyaXZl
ciBhbmQgRzIgZGVjb2RlciBkcml2ZXIKPiA+PiBpdCBzaG93cyB0aGF0IGFsbCB0aGUgVlBVcyBh
cmUgaW5kZXBlbmRlbnQgYW5kIGRvbid0IG5lZWQgdG8KPiA+PiBrbm93IGFib3V0IHRoZSByZWdp
c3RlcnMgb2YgdGhlIG90aGVyIGJsb2Nrcy4KPiA+PiBSZW1vdmUgZnJvbSB0aGUgYmluZGluZ3Mg
dGhlIG5lZWQgdG8gc2V0IGFsbCBibG9ja3MgcmVnaXN0ZXIKPiA+PiBidXQga2VlcCByZWctbmFt
ZXMgcHJvcGVydHkgYmVjYXVzZSByZW1vdmluZyBpdCBmcm9tIHRoZSBkcml2ZXIKPiA+PiBtYXkg
YWZmZWN0IG90aGVyIHZhcmlhbnRzLgo+ID4+Cj4gPj4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4g
R2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+Cj4gPj4gLS0tCj4gPj4g
dmVyc2lvbiAyOgo+ID4+IC0gYmUgbW9yZSB2ZXJib3NlIGFib3V0IHdoeSBJIGNoYW5nZSB0aGUg
YmluZGluZ3MKPiA+PiBLZWVwIGluIG1pbmQgdGhhdCBzZXJpZXMgY29tZXMgYWZ0ZXI6IGh0dHBz
Oi8vd3d3LnNwaW5pY3MubmV0L2xpc3RzL2FybS1rZXJuZWwvbXNnODc1NzY2Lmh0bWwKPiA+PiB3
aXRob3V0IHRoYXQgcmV2aWV3IGFuZCBhY2sgaXQgd29uJ3Qgd29yawo+ID4gQmV0dGVyLCBidXQg
eW91J3ZlIHN0aWxsIG1lbnRpb25lZCBub3RoaW5nIGFib3V0IGJyZWFraW5nIGNvbXBhdGliaWxp
dHkuCj4gPiBXaHkgaXMgdGhhdCBva2F5Pwo+Cj4gQmVjYXVzZSB0aGlzIHJlZy1uYW1lcyB3YXNu
J3QgdXNlZCBiZWZvcmUgZm9yIHRoaXMgdmFyaWFudCBzbyByZW1vdmUgaXQgd29uJ3QgY2hhbmdl
IGFueXRoaW5nLgoKSXQgaXMgdGhlIHJlc2V0IGNoYW5nZXMgaW4gdGhlIGRyaXZlciB0aGF0IGJy
ZWFrLiBUaGUgZHJpdmVyCnByZXZpb3VzbHkgZ290IHRoZSAnY3RybCcgcmVnaXN0ZXJzIHdoZXRo
ZXIgaXQgd2VudCBieSBuYW1lIG9yIGluZGV4LApyaWdodD8gV2l0aCBhbiBvbGQgRFRCIGFuZCBh
IGtlcm5lbCB3aXRoIHRoZSBjaGFuZ2VzIChhbmQgdmljZS12ZXJzYSksCnlvdSdsbCBoYXZlIG5v
dGhpbmcgdG8gaGFuZGxlIHRoZSBWUFUgcmVzZXRzIGJlY2F1c2UgdGhlIFZQVSByZXNldApub2Rl
IGRvZXNuJ3QgZXhpc3QuIEl0IGNvdWxkIHdvcmsgaWYgdGhlIGRlZmF1bHQgc3RhdGUgaXMgbm90
IGhlbGQgaW4KcmVzZXQuCgpBdCBsZWFzdCB0aGUgcmVtb3ZhbCBvZiAnY3RybCcgcmVnaXN0ZXJz
IGJlbG9uZ3MgaW4gdGhlIHJlc2V0IGNoYW5nZXMgc2VyaWVzLgoKUm9iCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
