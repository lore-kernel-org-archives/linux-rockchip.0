Return-Path: <SRS0=qEJD=IB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB303C433E0
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Mar 2021 16:03:39 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 00A9F64EDB
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Mar 2021 16:03:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 00A9F64EDB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PF24TVaGdGNNPkBg305R7q0SKqfDNtie42RF6OgDxUA=; b=BeqpntOo2Z2zfPzNyldyoy5AC
	KlW8l4HpszdP+P0o3zpGtrLfYAhEeSCZm5hO0NLfSeSx8VdnVPVzt0F0p6q8Fx8+FH9Ud3DrZyBqQ
	geyrQ9O49ZLbu08nnYFUi+9kxeDD+Co811z2rWFGwlN+0PcqJxRebNRI39uvChYs42lM/W2YQuUHX
	LY2Roo6Db5lbD8fSdzLfPefrY/yafC4HEgga0HU4mpmPdxTxyBeWMhpWVTW30KEgK1jLCS2kb5B10
	nWwPVQHSW1ocpXxyt6GtRNJ5Taq/WI9LEHj0e5k1WzT0QrPHY2YaV3gHLspx8HE74emiDBtSHbc+e
	tm565HPHg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHTyA-005W4Q-Jo; Wed, 03 Mar 2021 16:03:26 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHSo9-005DVL-OZ; Wed, 03 Mar 2021 14:49:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=GlfzaZuWsVuycDiyTZSUermkf3Sq3e5G4bMzkcCzrF8=; b=G+XdKSeOqgfvU8kjic2Gt/01mf
 aNJIvz1jz+pZ0ByV02P2UmrGYiEaK0hAsq52u5OdGWCndRoqpELkHImG0T3WIaEyKLueIb4pfkeHf
 eXVkmCvdw6J25cPP8vrpLL2HOp4UgQbEgIlVmOvmWFZqMOgIwms+LqdKG6rsSUmEPHP/J45OxLgib
 dKOr3x1KbOpZx7VFH6gUyhrE8mF0Yv/YLHbdOkxRRY1Z//WP38xVQJaGOMiuHXEVUmNNJuR1LkJpr
 2gDH4jlYDqbq9peMpsGsU8bb6d+6lsLBn6PS4Aln2Lbhta8CPoD2ksNR0J0DLZmlO3CVkCgqMr8y6
 mC4XcaUw==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHSnz-002zAX-TJ; Wed, 03 Mar 2021 14:48:54 +0000
Received: from [IPv6:2a01:e0a:4cb:a870:30e8:5098:73c5:2bfe] (unknown
 [IPv6:2a01:e0a:4cb:a870:30e8:5098:73c5:2bfe])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 5F13F1F459FA;
 Wed,  3 Mar 2021 14:48:46 +0000 (GMT)
Subject: Re: [PATCH v3 4/5] media: hantro: Use reset driver
To: Philipp Zabel <p.zabel@pengutronix.de>, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
 ezequiel@collabora.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Cc: kernel@pengutronix.de, linux-imx@nxp.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devel@driverdev.osuosl.org, kernel@collabora.com
References: <20210301151754.104749-1-benjamin.gaignard@collabora.com>
 <20210301151754.104749-5-benjamin.gaignard@collabora.com>
 <29bf66f4b531ec701e85c23a411e40e3621b0ff8.camel@pengutronix.de>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Message-ID: <ef2b0aff-cca3-6c75-1f25-176332e3162b@collabora.com>
Date: Wed, 3 Mar 2021 15:48:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <29bf66f4b531ec701e85c23a411e40e3621b0ff8.camel@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210303_144854_901292_749FA431 
X-CRM114-Status: GOOD (  18.45  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkxlIDAzLzAzLzIwMjEgw6AgMTU6MzksIFBoaWxpcHAgWmFiZWwgYSDDqWNyaXTCoDoKPiBPbiBN
b24sIDIwMjEtMDMtMDEgYXQgMTY6MTcgKzAxMDAsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+
PiBSYXRoZXIgdXNlIGEgcmVzZXQgbGlrZSBmZWF0dXJlIGluc2lkZSB0aGUgZHJpdmVyIHVzZSB0
aGUgcmVzZXQKPj4gY29udHJvbGxlciBBUEkgdG8gZ2V0IHRoZSBzYW1lIHJlc3VsdC4KPj4KPj4g
U2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxh
Ym9yYS5jb20+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vS2NvbmZp
ZyAgICAgICAgfCAgMSArCj4+ICAgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9pbXg4bV92
cHVfaHcuYyB8IDYxICsrKystLS0tLS0tLS0tLS0tLS0tLQo+PiAgIDIgZmlsZXMgY2hhbmdlZCwg
MTIgaW5zZXJ0aW9ucygrKSwgNTAgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL0tjb25maWcgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEv
aGFudHJvL0tjb25maWcKPj4gaW5kZXggNWI2Y2Y5ZjYyYjFhLi5kZDFkNGRkZTI2NTggMTAwNjQ0
Cj4+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vS2NvbmZpZwo+PiArKysgYi9k
cml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL0tjb25maWcKPj4gQEAgLTIwLDYgKzIwLDcgQEAg
Y29uZmlnIFZJREVPX0hBTlRST19JTVg4TQo+PiAgIAlib29sICJIYW50cm8gVlBVIGkuTVg4TSBz
dXBwb3J0Igo+PiAgIAlkZXBlbmRzIG9uIFZJREVPX0hBTlRSTwo+PiAgIAlkZXBlbmRzIG9uIEFS
Q0hfTVhDIHx8IENPTVBJTEVfVEVTVAo+PiArCXNlbGVjdCBSRVNFVF9WUFVfSU1YOE1RCj4+ICAg
CWRlZmF1bHQgeQo+PiAgIAloZWxwCj4+ICAgCSAgRW5hYmxlIHN1cHBvcnQgZm9yIGkuTVg4TSBT
b0NzLgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9pbXg4bV92
cHVfaHcuYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaW14OG1fdnB1X2h3LmMKPj4g
aW5kZXggYzIyMmRlMDc1ZWY0Li5kNWI0MzEyYjkzOTEgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMv
c3RhZ2luZy9tZWRpYS9oYW50cm8vaW14OG1fdnB1X2h3LmMKPj4gKysrIGIvZHJpdmVycy9zdGFn
aW5nL21lZGlhL2hhbnRyby9pbXg4bV92cHVfaHcuYwo+PiBAQCAtNyw0OSArNywxMiBAQAo+PiAg
IAo+PiAgICNpbmNsdWRlIDxsaW51eC9jbGsuaD4KPj4gICAjaW5jbHVkZSA8bGludXgvZGVsYXku
aD4KPj4gKyNpbmNsdWRlIDxsaW51eC9yZXNldC5oPgo+PiAgIAo+PiAgICNpbmNsdWRlICJoYW50
cm8uaCIKPj4gICAjaW5jbHVkZSAiaGFudHJvX2pwZWcuaCIKPj4gICAjaW5jbHVkZSAiaGFudHJv
X2cxX3JlZ3MuaCIKPj4gICAKPj4gLSNkZWZpbmUgQ1RSTF9TT0ZUX1JFU0VUCQkweDAwCj4+IC0j
ZGVmaW5lIFJFU0VUX0cxCQlCSVQoMSkKPj4gLSNkZWZpbmUgUkVTRVRfRzIJCUJJVCgwKQo+PiAt
Cj4+IC0jZGVmaW5lIENUUkxfQ0xPQ0tfRU5BQkxFCTB4MDQKPj4gLSNkZWZpbmUgQ0xPQ0tfRzEJ
CUJJVCgxKQo+PiAtI2RlZmluZSBDTE9DS19HMgkJQklUKDApCj4+IC0KPj4gLSNkZWZpbmUgQ1RS
TF9HMV9ERUNfRlVTRQkweDA4Cj4+IC0jZGVmaW5lIENUUkxfRzFfUFBfRlVTRQkJMHgwYwo+PiAt
I2RlZmluZSBDVFJMX0cyX0RFQ19GVVNFCTB4MTAKPj4gLQo+PiAtc3RhdGljIHZvaWQgaW14OG1f
c29mdF9yZXNldChzdHJ1Y3QgaGFudHJvX2RldiAqdnB1LCB1MzIgcmVzZXRfYml0cykKPj4gLXsK
Pj4gLQl1MzIgdmFsOwo+PiAtCj4+IC0JLyogQXNzZXJ0ICovCj4+IC0JdmFsID0gcmVhZGwodnB1
LT5jdHJsX2Jhc2UgKyBDVFJMX1NPRlRfUkVTRVQpOwo+PiAtCXZhbCAmPSB+cmVzZXRfYml0czsK
Pj4gLQl3cml0ZWwodmFsLCB2cHUtPmN0cmxfYmFzZSArIENUUkxfU09GVF9SRVNFVCk7Cj4+IC0K
Pj4gLQl1ZGVsYXkoMik7Cj4+IC0KPj4gLQkvKiBSZWxlYXNlICovCj4+IC0JdmFsID0gcmVhZGwo
dnB1LT5jdHJsX2Jhc2UgKyBDVFJMX1NPRlRfUkVTRVQpOwo+PiAtCXZhbCB8PSByZXNldF9iaXRz
Owo+PiAtCXdyaXRlbCh2YWwsIHZwdS0+Y3RybF9iYXNlICsgQ1RSTF9TT0ZUX1JFU0VUKTsKPj4g
LX0KPj4gLQo+PiAtc3RhdGljIHZvaWQgaW14OG1fY2xrX2VuYWJsZShzdHJ1Y3QgaGFudHJvX2Rl
diAqdnB1LCB1MzIgY2xvY2tfYml0cykKPj4gLXsKPj4gLQl1MzIgdmFsOwo+PiAtCj4+IC0JdmFs
ID0gcmVhZGwodnB1LT5jdHJsX2Jhc2UgKyBDVFJMX0NMT0NLX0VOQUJMRSk7Cj4+IC0JdmFsIHw9
IGNsb2NrX2JpdHM7Cj4+IC0Jd3JpdGVsKHZhbCwgdnB1LT5jdHJsX2Jhc2UgKyBDVFJMX0NMT0NL
X0VOQUJMRSk7Cj4gVGhlIHdheSBpdCBpcyBpbXBsZW1lbnRlZCBpbiB0aGUgcmVzZXQgZHJpdmVy
LCB0aGUgY2xvY2tzIGFyZSBub3cKPiB1bmdhdGVkIGJldHdlZW4gYXNzZXJ0IGFuZCBkZWFzc2Vy
dCBpbnN0ZWFkIG9mIGFmdGVyd2FyZHMuIElzIHRoaXMgb24KPiBwdXJwb3NlPwoKTm8gYW5kIHRo
YXQgY291bGQgYmUgY2hhbmdlZCBvbiBuZXh0IHZlcnNpb24uCgpCZW5qYW1pbgoKPgo+IHJlZ2Fy
ZHMKPiBQaGlsaXBwCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
