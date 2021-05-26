Return-Path: <SRS0=5mPC=KV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8AE89C47082
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 May 2021 12:34:50 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4C3C361378
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 May 2021 12:34:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4C3C361378
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wXRf4vcuwYML63MV8k4D2BI/i+7mD4iFZlKywTu/EmQ=; b=zD8ouGMRlTHWCV
	v5qEbdooIWEwPWllhoR/wCn8BpORkEVIHXvT1946NZLUdKjDE27vQOmnKFS0cAg9k/ZxVilGTLqAE
	xNnq0I3EcDw1mOFixuV+N/m4WF4s5/ziTj9g/xj7GWl0jYTc8jvmQwMrGrXTf+lnQiKT8XrrK5+vY
	wtDXYLdxcBgMFR39B4lch+a0GAN6m3Qbu1x4NkGS/zQWNzBeyM278QzbwGmzIePnybZH2cbq6H+NB
	bXzjX/i56QKqebIjWvVllawR9YsUmPd1wZsFWZM1c5RTjAHWUo9soKWnyiXVwl0y4AvF//5QfgZGJ
	ab7+mqrDnrQjUFRkPAuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llskI-00E1UZ-O2; Wed, 26 May 2021 12:34:46 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llqWN-00D7GX-FQ; Wed, 26 May 2021 10:12:18 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 2B35B1F40AFD
Message-ID: <06d5432c44d3b4d6129891c46cc62f0edf735cf7.camel@collabora.com>
Subject: Re: [PATCH v11 8/9] media: hantro: Introduce G2/HEVC decoder
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 p.zabel@pengutronix.de, mchehab@kernel.org, shawnguo@kernel.org, 
 s.hauer@pengutronix.de, festevam@gmail.com, gregkh@linuxfoundation.org, 
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org, 
 jernej.skrabec@siol.net, emil.l.velikov@gmail.com, Andrzej Pietrasiewicz
 <andrzej.p@collabora.com>
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Adrian Ratiu <adrian.ratiu@collabora.com>
Date: Wed, 26 May 2021 07:12:00 -0300
In-Reply-To: <20210525161238.1191168-9-benjamin.gaignard@collabora.com>
References: <20210525161238.1191168-1-benjamin.gaignard@collabora.com>
 <20210525161238.1191168-9-benjamin.gaignard@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210526_031215_683805_2EAF8121 
X-CRM114-Status: GOOD (  18.10  )
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

SGkgQmVuamFtaW4sCgooQWRkaW5nIEFuZHJ6ZWopCgpPbiBUdWUsIDIwMjEtMDUtMjUgYXQgMTg6
MTIgKzAyMDAsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+IEltcGxlbWVudCBhbGwgdGhlIGxv
Z2ljIHRvIGdldCBHMiBoYXJkd2FyZSBkZWNvZGluZyBIRVZDIGZyYW1lcy4KPiBJdCBzdXBwb3J0
cyB1cCBsZXZlbCA1LjEgSEVWQyBzdHJlYW0uCj4gSXQgZG9lc24ndCBzdXBwb3J0IHlldCAxMCBi
aXRzIGZvcm1hdHMgb3IgdGhlIHNjYWxpbmcgZmVhdHVyZS4KPiAKPiBBZGQgSEFOVFJPIEhFVkMg
ZGVkaWNhdGVkIGNvbnRyb2wgdG8gc2tpcCBzb21lIGJpdHMgYXQgdGhlIGJlZ2lubmluZwo+IG9m
IHRoZSBzbGljZSBoZWFkZXIuIFRoYXQgaXMgdmVyeSBzcGVjaWZpYyB0byB0aGlzIGhhcmR3YXJl
IHNvIGNhbid0Cj4gZ28gaW50byB1YXBpIHN0cnVjdHVyZXMuIENvbXB1dGluZyB0aGUgbmVlZGVk
IHZhbHVlIGlzIGNvbXBsZXggYW5kIHJlcXVpcmVzCj4gaW5mb3JtYXRpb24gZnJvbSB0aGUgc3Ry
ZWFtIHRoYXQgb25seSB0aGUgdXNlcmxhbmQga25vd3Mgc28gbGV0IGl0Cj4gcHJvdmlkZSB0aGUg
Y29ycmVjdCB2YWx1ZSB0byB0aGUgZHJpdmVyLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWlu
IEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+IENvLWRldmVsb3Bl
ZC1ieTogQWRyaWFuIFJhdGl1IDxhZHJpYW4ucmF0aXVAY29sbGFib3JhLmNvbT4KPiBTaWduZWQt
b2ZmLWJ5OiBBZHJpYW4gUmF0aXUgPGFkcmlhbi5yYXRpdUBjb2xsYWJvcmEuY29tPgo+IENvLWRl
dmVsb3BlZC1ieTogRXplcXVpZWwgR2FyY2lhIDxlemVxdWllbEBjb2xsYWJvcmEuY29tPgo+IFNp
Z25lZC1vZmYtYnk6IEV6ZXF1aWVsIEdhcmNpYSA8ZXplcXVpZWxAY29sbGFib3JhLmNvbT4KPiAt
LS0KWy4uXQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRy
b19nMl9yZWdzLmggYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19nMl9yZWdz
LmgKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uMjQ3NzU3M2Y3
MTYzCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8v
aGFudHJvX2cyX3JlZ3MuaAo+IEBAIC0wLDAgKzEsMTk4IEBACj4gKy8qIFNQRFgtTGljZW5zZS1J
ZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkgKi8KPiArLyoKPiArICogQ29weXJpZ2h0IChjKSAyMDIx
LCBDb2xsYWJvcmEKPiArICoKPiArICogQXV0aG9yOiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFt
aW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KPiArICovCj4gKwo+ICsjaWZuZGVmIEhBTlRST19H
Ml9SRUdTX0hfCj4gKyNkZWZpbmUgSEFOVFJPX0cyX1JFR1NfSF8KPiArCj4gKyNpbmNsdWRlICJo
YW50cm8uaCIKPiArCj4gKyNkZWZpbmUgRzJfU1dSRUcobnIpwqDCoMKgKChucikgKiA0KQo+ICsK
PiArI2RlZmluZSBIRVZDX0RFQ19SRUcobmFtZSwgYmFzZSwgc2hpZnQsIG1hc2spIFwKPiArwqDC
oMKgwqDCoMKgwqBzdGF0aWMgY29uc3Qgc3RydWN0IGhhbnRyb19yZWcgX2hldmNfIyNuYW1lW10g
PSB7IFwKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgeyBHMl9TV1JFRyhiYXNlKSwg
KHNoaWZ0KSwgKG1hc2spIH0gXAo+ICvCoMKgwqDCoMKgwqDCoH07IFwKPiArwqDCoMKgwqDCoMKg
wqBzdGF0aWMgY29uc3Qgc3RydWN0IGhhbnRyb19yZWcgX19tYXliZV91bnVzZWQgKmhldmNfIyNu
YW1lID0gJl9oZXZjXyMjbmFtZVswXTsKPiArCj4gKyNkZWZpbmUgSEVWQ19SRUdfVkVSU0lPTsKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoEcyX1NXUkVHKDApCj4gKwo+ICsjZGVmaW5lIEhF
VkNfUkVHX0lOVEVSUlVQVMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgRzJfU1dSRUcoMSkKClRo
ZXNlIGRlZmluaXRpb25zIHNlZW0gdmFsaWQgYWNyb3NzIEcyIGFuZCBub3QKc29tZXRoaW5nIHNw
ZWNpZmljIHRvIEhFVkMsIHNvIGNhbiB3ZSByZW5hbWUgKHRoZSBvbmVzCnRoYXQgbWFrZSBzZW5z
ZSkgdG8gRzJfID8KClRoYXQgd291bGQgYWxsb3cgdG8gcmV1c2UgdGhlbSBmb3IgVlA5IHdpdGgg
YSBzbWFsbGVyIGdhcC4KClRoYW5rcywKRXplcXVpZWwKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
