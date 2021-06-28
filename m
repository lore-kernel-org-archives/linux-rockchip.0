Return-Path: <SRS0=Ln7Z=LW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1D60C2B9F4
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Jun 2021 15:19:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B23736145F
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Jun 2021 15:19:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B23736145F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uaiMe0ExZhKMY/10QyVUNnr2nU2tlbSeVsfAG3gOMLo=; b=xl5STPWtw3uQiW
	sxSE21DgUmalKL2XJbNMM/bNjjgYUS49tHNq/aXW5irhDq8m6xxTjbe6zKeByy+Z/fEm9kSUSxNOT
	brDiGu1G0T1B2pb7o3/flVXH6mGW2GxQmSg/WxbwGweQFZNU6KzS8oOaBQ2GJdVcYNIhmCfm2vXOD
	OEoQf5G+uZhSKXC6iWakwMDdI1lOZfSN9MljOr3WaSDmq7WUb/4Z/h1G+AelmWcy2KmZJbKHWcctk
	y7GF5njzilqkkPyPUu6S/Ypm9UM+yj0f/Z0ZxIaHEo8HI1KtwXbYid0Cqi0/XW0KRa1CItUcau/CG
	32+WYFyOr2pWocZEiM5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxt2M-008Qft-FK; Mon, 28 Jun 2021 15:19:02 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxt2A-008Qd6-86; Mon, 28 Jun 2021 15:18:51 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 0B4E31F427D6
Message-ID: <276e3e43ba89ea996f89eb4109b0d50bc43d4d7f.camel@collabora.com>
Subject: Re: [PATCH v9 03/13] media: hantro: Use syscon instead of 'ctrl'
 register
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, Lucas Stach
 <l.stach@pengutronix.de>, p.zabel@pengutronix.de, mchehab@kernel.org, 
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, 
 festevam@gmail.com, lee.jones@linaro.org, gregkh@linuxfoundation.org, 
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org, 
 jernej.skrabec@siol.net, hverkuil-cisco@xs4all.nl,
 emil.l.velikov@gmail.com,  "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, Jacky
 Bai <ping.bai@nxp.com>
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-imx@nxp.com, kernel@pengutronix.de, kernel@collabora.com,
 cphealy@gmail.com,  linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Date: Mon, 28 Jun 2021 12:18:34 -0300
In-Reply-To: <24bea430-56d9-9a62-130d-1ed3830c1915@collabora.com>
References: <20210407073534.376722-1-benjamin.gaignard@collabora.com>
 <20210407073534.376722-4-benjamin.gaignard@collabora.com>
 <7bcbb787d82f21d42563d8fb7e3c2e7d40123932.camel@pengutronix.de>
 <24bea430-56d9-9a62-130d-1ed3830c1915@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210628_081850_446554_53D5CCA2 
X-CRM114-Status: GOOD (  28.63  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgQmVuamFtaW4sCgpPbiBNb24sIDIwMjEtMDYtMjggYXQgMTU6MzUgKzAyMDAsIEJlbmphbWlu
IEdhaWduYXJkIHdyb3RlOgo+IAo+IExlIDE2LzA0LzIwMjEgw6AgMTI6NTQsIEx1Y2FzIFN0YWNo
IGEgw6ljcml0wqA6Cj4gPiBBbSBNaXR0d29jaCwgZGVtIDA3LjA0LjIwMjEgdW0gMDk6MzUgKzAy
MDAgc2NocmllYiBCZW5qYW1pbiBHYWlnbmFyZDoKPiA+ID4gSW4gb3JkZXIgdG8gYmUgYWJsZSB0
byBzaGFyZSB0aGUgY29udHJvbCBoYXJkd2FyZSBibG9jayBiZXR3ZWVuCj4gPiA+IFZQVXMgdXNl
IGEgc3lzY29uIGluc3RlYWQgYSBpb3JlbWFwIGl0IGluIHRoZSBkcml2ZXIuCj4gPiA+IFRvIGtl
ZXAgdGhlIGNvbXBhdGliaWxpdHkgd2l0aCBvbGRlciBEVCBpZiAnbnhwLGlteDhtcS12cHUtY3Ry
bCcKPiA+ID4gcGhhbmRsZSBpcyBub3QgZm91bmQgbG9vayBhdCAnY3RybCcgcmVnLW5hbWUuCj4g
PiA+IFdpdGggdGhlIG1ldGhvZCBpdCBiZWNvbWVzIHVzZWxlc3MgdG8gcHJvdmlkZSBhIGxpc3Qg
b2YgcmVnaXN0ZXIKPiA+ID4gbmFtZXMgc28gcmVtb3ZlIGl0Lgo+ID4gU29ycnkgZm9yIHB1dHRp
bmcgYSBzcG9rZSBpbiB0aGUgd2hlZWwgYWZ0ZXIgbWFueSBpdGVyYXRpb25zIG9mIHRoZQo+ID4g
c2VyaWVzLgo+ID4gCj4gPiBXZSBqdXN0IGRpc2N1c3NlZCBhIHdheSBmb3J3YXJkIG9uIGhvdyB0
byBoYW5kbGUgdGhlIGNsb2NrcyBhbmQgcmVzZXRzCj4gPiBwcm92aWRlZCBieSB0aGUgYmxrY3Rs
IGJsb2NrIG9uIGkuTVg4TU0gYW5kIGxhdGVyIGFuZCBpdCBzZWVtcyB0aGVyZSBpcwo+ID4gYSBj
b25zZW5zdXMgb24gdHJ5aW5nIHRvIHByb3ZpZGUgdmlydHVhbCBwb3dlciBkb21haW5zIGZyb20g
YSBibGtjdGwKPiA+IGRyaXZlciwgY29udHJvbGxpbmcgY2xvY2tzIGFuZCByZXNldHMgZm9yIHRo
ZSBkZXZpY2VzIGluIHRoZSBwb3dlcgo+ID4gZG9tYWluLiBJIHdvdWxkIGxpa2UgdG8gYXZvaWQg
aW50cm9kdWNpbmcgeWV0IGFub3RoZXIgd2F5IG9mIGhhbmRsaW5nCj4gPiB0aGUgYmxrY3RsIGFu
ZCB0aHVzIHdvdWxkIGxpa2UgdG8gYWxpZ24gdGhlIGkuTVg4TVEgVlBVIGJsa2N0bCB3aXRoCj4g
PiB3aGF0IHdlIGFyZSBwbGFubmluZyB0byBkbyBvbiB0aGUgbGF0ZXIgY2hpcCBnZW5lcmF0aW9u
cy4KPiA+IAo+ID4gQ0MnaW5nIEphY2t5IEJhaSBhbmQgUGVuZyBGYW4gZnJvbSBOWFAsIGFzIHRo
ZXkgd2VyZSBnb2luZyB0byBnaXZlIHRoaXMKPiA+IHZpcnR1YWwgcG93ZXIgZG9tYWluIHRoaW5n
IGEgc2hvdC4KPiAKPiBIZXkgZ3V5cywKPiAKPiBJIG1heSBJIGhhdmUgbWlzcyB0aGVtIGJ1dCBJ
IGhhdmVuJ3Qgc2VlIHBhdGNoZXMgYWJvdXQgcG93ZXIgZG9tYWluIGZvciBJTVg4TVEKPiBWUFUg
Y29udHJvbCBibG9jayA/Cj4gSXMgaXQgc29tZXRoaW5nIHRoYXQgeW91IHN0aWxsIHBsYW4gdG8g
ZG8gPwo+IElmIG5vdCwgSSBjYW4gcmVzZW5kIG15IHBhdGNoZXMgd2hlcmUgSSB1c2Ugc3lzY29u
Lgo+IAoKUGxlYXNlIHNlZSAic29jOiBpbXg6IGFkZCBpLk1YIEJMSy1DVEwgc3VwcG9ydCIgWzFd
IHNlbnQgYnkgUGVuZwphIGNvdXBsZSB3ZWVrcyBhZ28uIEl0IGFkZHMgdGhlIFZQVU1JWCBmb3Ig
aS5NWDhNTSwgc28gaXQgc2VlbXMKdGhlIGJlc3Qgd2F5IGZvcndhcmQgaXMgdG8gZm9sbG93IHRo
YXQgZGVzaWduLCBleHRlbmRpbmcgaXQgZm9yCmkuTVg4TVEuCgpUaGF0J3Mgc3RpbGwgdW5kZXIg
ZGlzY3Vzc2lvbiwgYnV0IGhvcGVmdWxseSBpdCB3aWxsIGJlIHNvcnRlZCBvdXQgZm9yIHY1LjE1
LgoKU3BlYWtpbmcgb2YgaS5NWDhNTSwgSSBnb3QgYSByZXBvcnQgdGhhdCB0aGUgSGFudHJvIEcx
IGJsb2NrIG1vc3RseQp3b3JrLCBidXQgbmVlZHMgdG8gYmUgcmVzdHJpY3RlZCB0byAxOTIweDEw
ODAuIElmIHlvdSBjb3VsZCBhZGQgYSBuZXcKY29tcGF0aWJsZSBhbmQgdmFyaWFudCBmb3IgdGhh
dCwgbWF5YmUgd2UgY2FuIGZpbmQgc29tZW9uZSB0byB0ZXN0IGl0LgoKWzFdIGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL2xpbnV4LWFybS1rZXJuZWwvNzY4M2FiMGItZjkwNS1kZmYxLWFhNGYtNzZh
ZDYzOGRhNTY4QG9zcy5ueHAuY29tL1QvI21mNzNmZTRhMTNhZWMwYThlNjMzYTE0YTVkOWMyZDU2
MDk3OTlhY2I0CgpLaW5kbHksCkV6ZXF1aWVsCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
