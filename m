Return-Path: <SRS0=qEJD=IB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 21C47C433E0
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Mar 2021 22:45:52 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BAC8964EFE
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Mar 2021 22:45:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BAC8964EFE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bejeUXVR0Glg8afO+Q0NP2GK0Kji9zVWNtnkp76KoeE=; b=jsjn1hKDLkM7BW3Td9pgdY9cp
	RCMCTTUU4+J2IK0j+UQcWhCcCJ9tfQmPkHv5vNNHQqq3IEmhgFQa5tIl7HBzwcN3s3PMk4xxXRp4s
	ZNyG/b5i2/fU8UsEe3kPtpTjnp3CNqXcFAhDG7mJdrRxhW1wMZfjXJ1BWq8lbOhE0gXOkh5O4BwId
	45Ah884MCVcGQzSmo48o9+DuBxN7s3bkT5WkTj5ADhleVHNadlGZHdIh+dMaVLRuOdjDvhVd8HlgQ
	+iFq0BTYrI2tpFJMzsRHiGpXj8jQJi79mUYZ/vwycKfgIXza+gai0dapOCqKM6u6rORFpcUgcoxNK
	EQFSVjdAQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHaFW-006nQ8-SO; Wed, 03 Mar 2021 22:45:47 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHTIr-005MQZ-1t; Wed, 03 Mar 2021 15:20:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=c72v1nQEJfUNd8v7HL3YUBUjkFn/LexUkFmJAdrN+d8=; b=OtJ0xJF6PmAgguqT8FHQ2ir5rU
 1QAGNUYs8Fnewc7i/JLNGnZ1ASx3XjD4nEt+CqqAoT/CLyHcxvrpQ1yNvdS8sHvzQbBPGHcJbmkxW
 F9Wlx3Lbvt24AK+VbW5NDfLfn29ccIaOgAu3+DA6UyEFk94wQniIlqPY+tjZHjCW+gRo+melR3FIj
 jB3gSEqLNyA4tcdULW7poEZuBCyKEDNxL6vemuOkioiJcGKhMonCbdJtDeNgeKsGHf9F/3XbBp51S
 KUntXnGPgTgwLCoO0YWIXwn2dzOHxXvN39Iin265+9KI2zijswY9iJuRSe42dBzolNwK1yeGXKQim
 3QDEXHOg==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHTIo-003C5e-91; Wed, 03 Mar 2021 15:20:43 +0000
Received: from [IPv6:2a01:e0a:4cb:a870:30e8:5098:73c5:2bfe] (unknown
 [IPv6:2a01:e0a:4cb:a870:30e8:5098:73c5:2bfe])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id EB8F91F45DD2;
 Wed,  3 Mar 2021 15:20:36 +0000 (GMT)
Subject: Re: [PATCH v3 0/5] Reset driver for IMX8MQ VPU hardware block
To: Philipp Zabel <p.zabel@pengutronix.de>, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
 ezequiel@collabora.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Cc: kernel@pengutronix.de, linux-imx@nxp.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devel@driverdev.osuosl.org, kernel@collabora.com
References: <20210301151754.104749-1-benjamin.gaignard@collabora.com>
 <e6f8537d2a1f34d0a424b68e056c0ae556c93efd.camel@pengutronix.de>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Message-ID: <2d55ad69-9b93-ab0e-04af-cd775cc9248b@collabora.com>
Date: Wed, 3 Mar 2021 16:20:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <e6f8537d2a1f34d0a424b68e056c0ae556c93efd.camel@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210303_152043_432065_C0356572 
X-CRM114-Status: GOOD (  22.80  )
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

CkxlIDAzLzAzLzIwMjEgw6AgMTU6MTcsIFBoaWxpcHAgWmFiZWwgYSDDqWNyaXTCoDoKPiBIaSBC
ZW5qYW1pbiwKPgo+IE9uIE1vbiwgMjAyMS0wMy0wMSBhdCAxNjoxNyArMDEwMCwgQmVuamFtaW4g
R2FpZ25hcmQgd3JvdGU6Cj4+IFRoZSB0d28gVlBVcyBpbnNpZGUgSU1YOE1RIHNoYXJlIHRoZSBz
YW1lIGNvbnRyb2wgYmxvY2sgd2hpY2ggY2FuIGJlIHNlZQo+PiBhcyBhIHJlc2V0IGhhcmR3YXJl
IGJsb2NrLgo+IFRoaXMgaXNuJ3QgYSByZXNldCBjb250cm9sbGVyIHRob3VnaC4gVGhlIGNvbnRy
b2wgYmxvY2sgYWxzbyBjb250YWlucwo+IGNsb2NrIGdhdGVzIG9mIHNvbWUgc29ydCBhbmQgYSBm
aWx0ZXIgcmVnaXN0ZXIgZm9yIHRoZSBmZWF0dXJlc2V0IGZ1c2VzLgo+IFRob3NlIHNob3VsZG4n
dCBiZSBtYW5pcHVsYXRlZCB2aWEgdGhlIHJlc2V0IEFQSS4KClRoZXkgYXJlIGFsbCBwYXJ0IG9m
IHRoZSBjb250cm9sIGJsb2NrIGFuZCBvZiB0aGUgcmVzZXQgcHJvY2VzcyBmb3IgdGhpcwpoYXJk
d2FyZSB0aGF0IHdoeSBJIHB1dCB0aGVtIGhlcmUuIEkgZ3Vlc3MgaXQgaXMgYm9yZGVyIGxpbmUg
Oi0pCgo+Cj4+IEluIG9yZGVyIHRvIGJlIGFibGUgdG8gYWRkIHRoZSBzZWNvbmQgVlBVIChmb3Ig
SEVDViBkZWNvZGluZykgaXQgd2lsbCBiZQo+PiBtb3JlIGhhbmR5IGlmIHRoZSBib3RoIFZQVSBk
cml2ZXJzIGluc3RhbmNlIGRvbid0IGhhdmUgdG8gc2hhcmUgdGhlCj4+IGNvbnRyb2wgYmxvY2sg
cmVnaXN0ZXJzLiBUaGlzIGxlYWQgdG8gaW1wbGVtZW50IGl0IGFzIGFuIGluZGVwZW5kIHJlc2V0
Cj4+IGRyaXZlciBhbmQgdG8gY2hhbmdlIHRoZSBWUFUgZHJpdmVyIHRvIHVzZSBpdC4KPiBXaHkg
bm90IHN3aXRjaCB0byBhIHN5c2NvbiByZWdtYXAgZm9yIHRoZSBjb250cm9sIGJsb2NrPyBUaGF0
IHNob3VsZAo+IGFsc28gYWxsb3cgdG8ga2VlcCBiYWNrd2FyZHMgY29tcGF0aWJpbGl0eSB3aXRo
IHRoZSBvbGQgYmluZGluZyB3aXRoCj4gbWluaW1hbCBlZmZvcnQuCgpJIHdpbGwgZ2l2ZSBhIHRy
eSBpbiB0aGlzIGRpcmVjdGlvbi4KCj4KPj4gUGxlYXNlIG5vdGUgdGhhdCB0aGlzIHNlcmllcyBi
cmVhayB0aGUgY29tcGF0aWJpbGl0eSBiZXR3ZWVuIHRoZSBEVEIgYW5kCj4+IGtlcm5lbC4gVGhp
cyBicmVhayBpcyBsaW1pdGVkIHRvIElNWDhNUSBTb0MgYW5kIGlzIGRvbmUgd2hlbiB0aGUgZHJp
dmVyCj4+IGlzIHN0aWxsIGluIHN0YWdpbmcgZGlyZWN0b3J5Lgo+IEkga25vdyBpbiB0aGlzIGNh
c2Ugd2UgYXJlIHByZXR0eSBzdXJlIHRoZXJlIGFyZSBubyB1c2VycyBvZiB0aGlzCj4gYmluZGlu
ZyBleGNlcHQgZm9yIGEgc3RhZ2luZyBkcml2ZXIsIGJ1dCBpdCB3b3VsZCBzdGlsbCBiZSBuaWNl
IHRvIGtlZXAKPiBzdXBwb3J0IGZvciB0aGUgZGVwcmVjYXRlZCBiaW5kaW5nLCB0byBhdm9pZCB0
aGUgcmVxdWlyZW1lbnQgb2YgdXBkYXRpbmcKPiBrZXJuZWwgYW5kIERUIGluIGxvY2stc3RlcC4K
CklmIEkgd2FudCB0byB1c2UgYSBzeXNjb24gKG9yIGEgcmVzZXQpIHRoZSBkcml2ZXIgbXVzdCBu
b3QgaW9yZW1hcCB0aGUgImN0cmwiCnJlZ2lzdGVycy4gSXQgbWVhbnMgdGhhdCAiY3RybCIgaGFz
IHRvIGJlIHJlbW92ZWQgZnJvbSB0aGUgZHJpdmVyIHJlcXVlc3RlZApyZWctbmFtZXMgKGlteDht
cV9yZWdfbmFtZXNbXSkuIERvaW5nIHRoYXQgYnJlYWsgdGhlIGtlcm5lbC9EVCBjb21wYXRpYmls
aXR5LgpTb21laG93IHN5c2NvbiBhbmQgImN0cmwiIGFyZSBleGNsdXNpdmUuCgpCZW5qYW1pbgoK
Pgo+IHJlZ2FyZHMKPiBQaGlsaXBwCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
