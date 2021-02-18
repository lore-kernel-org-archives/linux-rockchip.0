Return-Path: <SRS0=3svJ=HU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1D8ADC433E0
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Feb 2021 14:52:14 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A456564E76
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Feb 2021 14:52:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A456564E76
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RI3OG79yAWl9r13JvetyW9HfO3eQWm08dKCndPWj3cQ=; b=uAaf8K5+EjnH/uCFzUfVsM4E6
	sGOz7QQVbu8a+0kimdHqbd/Swrm0jrLzMnlvXxH0Jw4Hmz0PHoQzY2GKECS1dCMlwHX5Ob2P0SoTw
	WicY84yIJyG6bbXP8weCsUI8U6uT3ho5xWpNkzRzsCpkf3Zn8gMmcmAHtW5ngrc3fU2IaiD7PksEa
	rNJ5AZk92fxDGTKAVsP0xgz/7CpB02W6e+qtncfxhcbgytSXg6t0dT9IqnhHmCbye5LTNdRXxhP4z
	Ohn0moNI58/9etsrOhD6q6Ww/jBJCkexJhtazYP4NbMku9AMfPq5pxNGv+M8VYOyDPoEVtXccS5B3
	MT/S+mmZQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lCkf2-0000oy-3D; Thu, 18 Feb 2021 14:52:08 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lCkex-0000nZ-Aj; Thu, 18 Feb 2021 14:52:04 +0000
Received: from [IPv6:2a01:e0a:4cb:a870:851a:1dfb:a143:80e] (unknown
 [IPv6:2a01:e0a:4cb:a870:851a:1dfb:a143:80e])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 786EB1F45CD3;
 Thu, 18 Feb 2021 14:52:00 +0000 (GMT)
Subject: Re: [PATCH v1 11/18] media: hantro: Add helper function for auxiliary
 buffers allocation
To: Ezequiel Garcia <ezequiel@collabora.com>, p.zabel@pengutronix.de,
 mchehab@kernel.org, robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com, gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 krzk@kernel.org, shengjiu.wang@nxp.com, adrian.ratiu@collabora.com,
 aisheng.dong@nxp.com, peng.fan@nxp.com, Anson.Huang@nxp.com,
 hverkuil-cisco@xs4all.nl
References: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
 <20210217080306.157876-12-benjamin.gaignard@collabora.com>
 <c10b0612d6d624c37750b16d611e3554dc41f151.camel@collabora.com>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Message-ID: <9646b54e-786f-1f0b-9110-8e7b9b6cab93@collabora.com>
Date: Thu, 18 Feb 2021 15:51:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <c10b0612d6d624c37750b16d611e3554dc41f151.camel@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210218_095203_515811_528CB1E0 
X-CRM114-Status: GOOD (  19.92  )
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkxlIDE3LzAyLzIwMjEgw6AgMjE6NDIsIEV6ZXF1aWVsIEdhcmNpYSBhIMOpY3JpdMKgOgo+IEhp
IEJlbmphbWluLAo+Cj4gT24gV2VkLCAyMDIxLTAyLTE3IGF0IDA5OjAyICswMTAwLCBCZW5qYW1p
biBHYWlnbmFyZCB3cm90ZToKPj4gQWRkIGhlbHBlciBmdW5jdGlvbnMgdG8gYWxsb2NhdGUgYW5k
IGZyZWUgYXV4aWxpYXJ5IGJ1ZmZlcnMuCj4+IFRoZXNlIGJ1ZmZlcnMgYXJlbid0IGZvciBmcmFt
ZXMgYnV0IGFyZSBuZWVkZWQgYnkgdGhlIGhhcmR3YXJlCj4+IHRvIHN0b3JlIHNjYWxpbmcgbWF0
cml4LCB0aWxlcyBzaXplLCBib3JkZXIgZmlsdGVycyBldGMuLi4KPj4KPj4gU2lnbmVkLW9mZi1i
eTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+Cj4+
IFNpZ25lZC1vZmYtYnk6IEV6ZXF1aWVsIEdhcmNpYSA8ZXplcXVpZWxAY29sbGFib3JhLmNvbT4K
Pj4gU2lnbmVkLW9mZi1ieTogQWRyaWFuIFJhdGl1IDxhZHJpYW4ucmF0aXVAY29sbGFib3JhLmNv
bT4KPj4gLS0tCj4+ICDCoGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvLmggfCAy
NCArKysrKysrKysrKysrKysrKysrKysrKysKPj4gIMKgMSBmaWxlIGNoYW5nZWQsIDI0IGluc2Vy
dGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8v
aGFudHJvLmggYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyby5oCj4+IGluZGV4
IGE5YjgwYjJjOTEyNC4uN2Y4NDJlZGJjMzQxIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3N0YWdp
bmcvbWVkaWEvaGFudHJvL2hhbnRyby5oCj4+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9o
YW50cm8vaGFudHJvLmgKPj4gQEAgLTQ0Niw2ICs0NDYsMzAgQEAgaGFudHJvX2dldF9kZWNfYnVm
KHN0cnVjdCBoYW50cm9fY3R4ICpjdHgsIHN0cnVjdCB2YjJfYnVmZmVyICp2YikKPj4gIMKgwqDC
oMKgwqDCoMKgwqByZXR1cm4gdmIyX3BsYW5lX3ZhZGRyKHZiLCAwKTsKPj4gIMKgfQo+PiAgIAo+
PiArc3RhdGljIGlubGluZSBpbnQKPj4gK2hhbnRyb19hdXhfYnVmX2FsbG9jKHN0cnVjdCBoYW50
cm9fZGV2ICp2cHUsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBz
dHJ1Y3QgaGFudHJvX2F1eF9idWYgKmJ1Ziwgc2l6ZV90IHNpemUpCj4+ICt7Cj4gQ2FuIHlvdSBh
ZGQgY29udmVydCB0aGUgZG1hX2FsbG9jXyBjYWxscyBpbiB0aGUgZHJpdmVyLAo+IGFuZCBzcXVh
c2ggaXQgaW4gdGhpcyBwYXRjaD8KPgo+IEkuZS4gaGFudHJvX2gyNjRfZGVjX2luaXQsIGhhbnRy
b192cDhfZGVjX2luaXQsIGV0Yy4KClN1cmUgSSB3aWxsIHRoYXQgaW4gdjIuCkJlbmphbWluCgo+
Cj4gVGhhbmtzIQo+IEV6ZXF1aWVsCj4KPj4gK8KgwqDCoMKgwqDCoMKgYnVmLT5jcHUgPSBkbWFf
YWxsb2NfY29oZXJlbnQodnB1LT5kZXYsIHNpemUsICZidWYtPmRtYSwgR0ZQX0tFUk5FTCk7Cj4+
ICvCoMKgwqDCoMKgwqDCoGlmICghYnVmLT5jcHUpCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqByZXR1cm4gLUVOT01FTTsKPj4gKwo+PiArwqDCoMKgwqDCoMKgwqBidWYtPnNpemUg
PSBzaXplOwo+PiArwqDCoMKgwqDCoMKgwqByZXR1cm4gMDsKPj4gK30KPj4gKwo+PiArc3RhdGlj
IGlubGluZSB2b2lkCj4+ICtoYW50cm9fYXV4X2J1Zl9mcmVlKHN0cnVjdCBoYW50cm9fZGV2ICp2
cHUsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGhhbnRy
b19hdXhfYnVmICpidWYpCj4+ICt7Cj4+ICvCoMKgwqDCoMKgwqDCoGlmIChidWYtPmNwdSkKPj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRtYV9mcmVlX2NvaGVyZW50KHZwdS0+ZGV2
LCBidWYtPnNpemUsIGJ1Zi0+Y3B1LCBidWYtPmRtYSk7Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoMKg
YnVmLT5jcHUgPSBOVUxMOwo+PiArwqDCoMKgwqDCoMKgwqBidWYtPmRtYSA9IDA7Cj4+ICvCoMKg
wqDCoMKgwqDCoGJ1Zi0+c2l6ZSA9IDA7Cj4+ICt9Cj4+ICsKPj4gIMKgdm9pZCBoYW50cm9fcG9z
dHByb2NfZGlzYWJsZShzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4KTsKPj4gIMKgdm9pZCBoYW50cm9f
cG9zdHByb2NfZW5hYmxlKHN0cnVjdCBoYW50cm9fY3R4ICpjdHgpOwo+PiAgwqB2b2lkIGhhbnRy
b19wb3N0cHJvY19mcmVlKHN0cnVjdCBoYW50cm9fY3R4ICpjdHgpOwo+Cj4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
