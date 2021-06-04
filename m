Return-Path: <SRS0=fkR5=K6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7FB0C4743D
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Jun 2021 16:49:50 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8F85D611CA
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Jun 2021 16:49:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8F85D611CA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ifhfOfE5J7ux/xWSCH8yi5kkTere/He1M72Gq3Bso0=; b=aJv5svMQ/es5hJ
	C2SYv4YN8fN0y+FdzWFm5M+0jnRm8nJNN219Ec5KwDfdJDfRAfIEAvQ0so76kFPmNaLwVlEXPSzrz
	NG4a5A15UiaXkWreyZZh1YSHdgLjY0RhSdX33qZyz+BPs2HdN4KCTZKVPTBCc1Hq4ghaEJHuBzByH
	YQybsGHfwj/TEve2cPe1DTLvxZXrcxhIs/pEW0gPJlImJu+xvXUhUjpC+ke+pUhyO7rN/F8exEu68
	OslKdzSXLMV93YlNOOKMgF09JDJV6UnlzvtdutkT84G6S6aFST9A7WwS/q+7FPMTO/KAGt70/Kmul
	0hw0HOSkC187AFUHHwzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lpD10-00ERVI-RP; Fri, 04 Jun 2021 16:49:46 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lpD0d-00ERLq-VA; Fri, 04 Jun 2021 16:49:29 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 0EED21F43C5D
Message-ID: <d0e28e5b7ca686162116148c2b94a8e19520bc1b.camel@collabora.com>
Subject: Re: [PATCH 0/8] Additional features for Hantro HEVC
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, hverkuil@xs4all.nl,
 p.zabel@pengutronix.de, mchehab@kernel.org, shawnguo@kernel.org, 
 s.hauer@pengutronix.de, festevam@gmail.com, gregkh@linuxfoundation.org, 
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org, 
 jernej.skrabec@siol.net, emil.l.velikov@gmail.com, andrzej.p@collabora.com,
 jc@kynesim.co.uk
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
Date: Fri, 04 Jun 2021 13:49:12 -0300
In-Reply-To: <20210604130619.491200-1-benjamin.gaignard@collabora.com>
References: <20210604130619.491200-1-benjamin.gaignard@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210604_094924_163163_EB669C71 
X-CRM114-Status: GOOD (  20.41  )
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

SGkgQmVuamFtaW4sCgpUaGFua3MgZm9yIHBvc3RpbmcgdGhpcyBzbyBxdWlja2x5LgoKT24gRnJp
LCAyMDIxLTA2LTA0IGF0IDE1OjA2ICswMjAwLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToKPiBC
YXNpYyBIRVZDIHN1cHBvcnQgaGFzIGJlZW4gYWRkZWQgdG8gSGFudHJvIGRyaXZlciBpbiB0aGlz
IHB1bGwgcmVxdWVzdDoKPiBodHRwczovL3d3dy5zcGluaWNzLm5ldC9saXN0cy9saW51eC1tZWRp
YS9tc2cxOTM3NDQuaHRtbAo+IAo+IFRoYW5rcyB0byB0aGF0IGl0IGlzIG5vdyBwb3NzaWJsZSB0
byBzdXBwb3J0IG1vcmUgZmVhdHVyZXMgZm9yIHRoaXMgZHJpdmVyLgo+IAo+IFRoZSBmaXJzdCBw
YXRjaCBhbGxvdyB0byBsb2cgdGhlIGhhcmR3YXJlIHBlcmZvcm1hbmNlIHBlciBtYWNyb2Jsb2Nr
Lgo+IFRoZSBzZWNvbmQgcGF0Y2ggbWFrZXMgdGhlIGRyaXZlciB1c2UgY29tcHJlc3NlZCByZWZl
cmVuY2UgZnJhbWVzIHRvCj4gcmVkdWNlIG1lbW9yeSBiYW5kd2lkdGggY29uc3VtcHRpb24uCgpB
cyBJIGNvbW1lbnRlZCwgaXQgd291bGQgYmUgbmljZSB0byBkbyBzb21lIG1lYXN1cmVtZW50cyBo
ZXJlCgo+IFBhdGNoZXMgMyB0byA1IGFsbG93IHRvIGRlY29kZSBhbmQgcHJvZHVjZSAxMC1iaXRz
IFAwMTAgZnJhbWVzLgoKSSBzdXBwb3NlIHRoaXMgbWVhbnMgdGhhdCBzb21lIDEwLWJpdCB0ZXN0
IHZlY3RvcnMgaW4gRmx1c3RlciBIRVZDCnRlc3Qgc3VpdGUgYXJlIG5vdyBwYXNzaW5nPwoKPiBQ
YXRjaCA2IG1ha2UgdXNhZ2Ugb2YgRzIgcG9zdCBwcm9jZXNzb3IgdG8gc2NhbGUgZG93biB0aGUg
ZnJhbWVzLgo+IFBhdGNoZXMgNyBhbmQgOCBhZGQgdGhlIHN1cHBvcnQgb2YgSEVWQyBzY2FsaW5n
IG1hdHJpeCBieSBhZGRpbmcgYSBuZXcKPiBjb250cm9sLgo+IAoKRGl0dG8sIHRoZSB0ZXN0IHZl
Y3RvcnMgd2l0aCBzY2FsaW5nIGxpc3RzIHNob3VsZCBub3cgcGFzcywgYW55IGNoYW5jZQp5b3Ug
cG9zdCB0aGUgdGVzdCBzdWl0ZSBydW4gYmVmb3JlIGFuZCBhZnRlciB0aGlzIHNlcmllcywganVz
dCBmb3IgcmVmZXJlbmNlPwoKVGhhbmtzIGFnYWluLApFemVxdWllbAoKPiBBbGwgdGhlc2UgcGF0
Y2hlcyBlbmhhbmNlIHRoZSBIRVZDIHN1cHBvcnQgZm9yIEhhbnRybyAoRzIpIGhhcmR3YXJlLgo+
IFVubHVja2lseSB0aGV5IGFsbW9zdCBhbGwgdG91Y2ggdGhlIHNhbWUgcGllY2VzIG9mIGNvZGUs
IHdoZXJlIGJ1ZmZlcgo+IHNpemUsIG9mZnNldCBhbmQgYWRkcmVzc2VzIGFyZSBzZXQsIHNvIHRo
ZXkgaGF2ZSB0byBiZSBpbiB0aGlzIG9yZGVyLgo+IFRoZXkgZGVwZW5kIG9mIHRoZSBzZXJpZXMg
cHVzaGVkIGluIHRoaXMgcHVsbCByZXF1ZXN0Ogo+IGh0dHBzOi8vd3d3LnNwaW5pY3MubmV0L2xp
c3RzL2xpbnV4LW1lZGlhL21zZzE5Mzc0NC5odG1sCj4gCj4gQmVuamFtaW4KPiAKPiBCZW5qYW1p
biBHYWlnbmFyZCAoOCk6Cj4gwqAgbWVkaWE6IGhhbnRybzogVHJhY2UgaGV2YyBodyBjeWNsZXMg
cGVyZm9ybWFuY2UgcmVnaXN0ZXIKPiDCoCBtZWRpYTogaGFudHJvOiBBZGQgc3VwcG9ydCBvZiBj
b21wcmVzc2VkIHJlZmVyZW5jZSBidWZmZXJzCj4gwqAgbWVkaWE6IGhhbnRybzogaGV2YzogQWxs
b3cgMTAtYml0cyBlbmNvZGVkIHN0cmVhbXMKPiDCoCBtZWRpYTogQWRkIFAwMTAgdmlkZW8gZm9y
bWF0Cj4gwqAgbWVkaWE6IGhhbnRybzogaGV2YzogQWxsb3cgdG8gcHJvZHVjZSAxMC1iaXQgZnJh
bWVzCj4gwqAgbWVkaWE6IGhhbnRybzogZW51bWVyYXRlIHNjYWxlZCBvdXRwdXQgZm9ybWF0cwo+
IMKgIG1lZGlhOiBoZXZjOiBBZGQgc2NhbGluZyBtYXRyaXggY29udHJvbAo+IMKgIG1lZGlhOiBo
YW50cm86IEFkZCBzY2FsaW5nIGxpc3RzIGZlYXR1cmUKPiAKPiDCoC4uLi9tZWRpYS92NGwvZXh0
LWN0cmxzLWNvZGVjLnJzdMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgNDUgKysrKysKPiDC
oC4uLi9tZWRpYS92NGwvcGl4Zm10LXl1di1wbGFuYXIucnN0wqDCoMKgwqDCoMKgwqDCoMKgwqAg
fMKgwqAgOCArCj4gwqAuLi4vbWVkaWEvdjRsL3ZpZGlvYy1xdWVyeWN0cmwucnN0wqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCB8wqDCoCA2ICsKPiDCoGRyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL3Y0bDIt
Y29tbW9uLmPCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDEgKwo+IMKgZHJpdmVycy9tZWRpYS92NGwy
LWNvcmUvdjRsMi1jdHJscy1jb3JlLmPCoMKgwqDCoCB8wqDCoCA2ICsKPiDCoGRyaXZlcnMvbWVk
aWEvdjRsMi1jb3JlL3Y0bDItY3RybHMtZGVmcy5jwqDCoMKgwqAgfMKgwqAgNCArCj4gwqBkcml2
ZXJzL21lZGlhL3Y0bDItY29yZS92NGwyLWlvY3RsLmPCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqAg
MSArCj4gwqBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyby5owqDCoMKgwqDCoMKg
wqDCoCB8wqDCoCA0ICsKPiDCoGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Ry
di5jwqDCoMKgwqAgfMKgIDMyICsrKy0KPiDCoC4uLi9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50
cm9fZzJfaGV2Y19kZWMuYyB8IDE3NSArKysrKysrKysrKysrKysrLS0KPiDCoGRyaXZlcnMvc3Rh
Z2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2cyX3JlZ3MuaCB8wqAgMTIgKysKPiDCoGRyaXZlcnMv
c3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2hldmMuY8KgwqDCoCB8wqAgNjAgKysrKystCj4g
wqBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19ody5owqDCoMKgwqDCoCB8wqDC
oCA3ICsKPiDCoGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX3Y0bDIuY8KgwqDC
oCB8wqAgMTAgKy0KPiDCoGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaW14OG1fdnB1X2h3
LmPCoMKgIHzCoMKgIDYgKwo+IMKgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby90cmFjZS5o
wqDCoMKgwqDCoMKgwqDCoMKgIHzCoCA0MCArKysrCj4gwqBpbmNsdWRlL21lZGlhL2hldmMtY3Ry
bHMuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAxMSArKwo+IMKg
aW5jbHVkZS91YXBpL2xpbnV4L3ZpZGVvZGV2Mi5owqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHzCoMKgIDEgKwo+IMKgMTggZmlsZXMgY2hhbmdlZCwgNDA3IGluc2VydGlvbnMoKyksIDIy
IGRlbGV0aW9ucygtKQo+IMKgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3RhZ2luZy9tZWRp
YS9oYW50cm8vdHJhY2UuaAo+IAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
