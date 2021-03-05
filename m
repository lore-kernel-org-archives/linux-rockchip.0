Return-Path: <SRS0=+3Ix=ID=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80383C433E0
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Mar 2021 09:36:09 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 07A5164E59
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Mar 2021 09:36:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 07A5164E59
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZhX8mHnWCdIE3R2a0+1MzWoqljSh9oq3h2R9xZK5+Uk=; b=PDMoDKFfPG+0/ks3VMJknrzlG
	NdUeN+vDrX276bqt6Hd8ilvEE1cr2mRkYzrOCRb0jSGn3okop7/HvXpl4ShS5dWY0y4OMxXrXcHFd
	5SBP1CrUxwYY0y2NCtfJxgUasuw8F8TrRobdp+rbtT3hxkg8f367H5oBr6c8Xl/VfnPKVmjm69xHC
	z2gIFRbad104j7UrXMHNI5z06bTxJSMGSmlKhMbLw13uxDBK8FCMESrCmpzWOI8as8+qu4JHPTbqc
	oo614bWK1B5mj5uZjih0ZtgaLr9+T30rn1/JdAodLBKvt25YIQtjpE7iZ/zgDT/1B6c7Ic2i+2xtw
	Bl51U2vew==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lI6sP-00EJGb-08; Fri, 05 Mar 2021 09:36:05 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lI6sA-00EJDD-IL; Fri, 05 Mar 2021 09:35:52 +0000
Received: from [IPv6:2a01:e0a:4cb:a870:b9e2:e9f:d661:5a2f] (unknown
 [IPv6:2a01:e0a:4cb:a870:b9e2:e9f:d661:5a2f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 79EF21F468C5;
 Fri,  5 Mar 2021 09:35:47 +0000 (GMT)
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
 <2d55ad69-9b93-ab0e-04af-cd775cc9248b@collabora.com>
 <c12d84b955b0265dbcf89f2d7fc4d5c28bc74756.camel@pengutronix.de>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Message-ID: <f6cbb1e4-f288-36d0-a188-041093821f66@collabora.com>
Date: Fri, 5 Mar 2021 10:35:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <c12d84b955b0265dbcf89f2d7fc4d5c28bc74756.camel@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_093550_806763_AF4C0416 
X-CRM114-Status: GOOD (  31.34  )
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

CkxlIDAzLzAzLzIwMjEgw6AgMTc6MjUsIFBoaWxpcHAgWmFiZWwgYSDDqWNyaXTCoDoKPiBPbiBX
ZWQsIDIwMjEtMDMtMDMgYXQgMTY6MjAgKzAxMDAsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+
PiBMZSAwMy8wMy8yMDIxIMOgIDE1OjE3LCBQaGlsaXBwIFphYmVsIGEgw6ljcml0IDoKPj4+IEhp
IEJlbmphbWluLAo+Pj4KPj4+IE9uIE1vbiwgMjAyMS0wMy0wMSBhdCAxNjoxNyArMDEwMCwgQmVu
amFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4+Pj4gVGhlIHR3byBWUFVzIGluc2lkZSBJTVg4TVEgc2hh
cmUgdGhlIHNhbWUgY29udHJvbCBibG9jayB3aGljaCBjYW4gYmUgc2VlCj4+Pj4gYXMgYSByZXNl
dCBoYXJkd2FyZSBibG9jay4KPj4+IFRoaXMgaXNuJ3QgYSByZXNldCBjb250cm9sbGVyIHRob3Vn
aC4gVGhlIGNvbnRyb2wgYmxvY2sgYWxzbyBjb250YWlucwo+Pj4gY2xvY2sgZ2F0ZXMgb2Ygc29t
ZSBzb3J0IGFuZCBhIGZpbHRlciByZWdpc3RlciBmb3IgdGhlIGZlYXR1cmVzZXQgZnVzZXMuCj4+
PiBUaG9zZSBzaG91bGRuJ3QgYmUgbWFuaXB1bGF0ZWQgdmlhIHRoZSByZXNldCBBUEkuCj4+IFRo
ZXkgYXJlIGFsbCBwYXJ0IG9mIHRoZSBjb250cm9sIGJsb2NrIGFuZCBvZiB0aGUgcmVzZXQgcHJv
Y2VzcyBmb3IgdGhpcwo+PiBoYXJkd2FyZSB0aGF0IHdoeSBJIHB1dCB0aGVtIGhlcmUuIEkgZ3Vl
c3MgaXQgaXMgYm9yZGVyIGxpbmUgOi0pCj4gSSdtIHB1c2hpbmcgYmFjayB0byBrZWVwIHRoZSBy
ZXNldCBjb250cm9sIGZyYW1ld29yayBmb2N1c2VkIG9uCj4gY29udHJvbGxpbmcgcmVzZXQgbGlu
ZXMuIEV2ZXJ5IHNpZGUgZWZmZWN0IChzdWNoIGFzIHRoZSBhc3ltbWV0cmljIGNsb2NrCj4gdW5n
YXRpbmcpIGluIGEgcmFuZG9tIGRyaXZlciBtYWtlcyBpdCBoYXJkZXIgdG8gcmVhc29uIGFib3V0
IGJlaGF2aW91cgo+IGF0IHRoZSBBUEkgbGV2ZWwsIGFuZCB0byByZXZpZXcgcGF0Y2hlcyBmb3Ig
aGFyZHdhcmUgSSBhbSBub3QgZmFtaWxpYXIKPiB3aXRoLgo+Cj4+Pj4gSW4gb3JkZXIgdG8gYmUg
YWJsZSB0byBhZGQgdGhlIHNlY29uZCBWUFUgKGZvciBIRUNWIGRlY29kaW5nKSBpdCB3aWxsIGJl
Cj4+Pj4gbW9yZSBoYW5keSBpZiB0aGUgYm90aCBWUFUgZHJpdmVycyBpbnN0YW5jZSBkb24ndCBo
YXZlIHRvIHNoYXJlIHRoZQo+Pj4+IGNvbnRyb2wgYmxvY2sgcmVnaXN0ZXJzLiBUaGlzIGxlYWQg
dG8gaW1wbGVtZW50IGl0IGFzIGFuIGluZGVwZW5kIHJlc2V0Cj4+Pj4gZHJpdmVyIGFuZCB0byBj
aGFuZ2UgdGhlIFZQVSBkcml2ZXIgdG8gdXNlIGl0Lgo+Pj4gV2h5IG5vdCBzd2l0Y2ggdG8gYSBz
eXNjb24gcmVnbWFwIGZvciB0aGUgY29udHJvbCBibG9jaz8gVGhhdCBzaG91bGQKPj4+IGFsc28g
YWxsb3cgdG8ga2VlcCBiYWNrd2FyZHMgY29tcGF0aWJpbGl0eSB3aXRoIHRoZSBvbGQgYmluZGlu
ZyB3aXRoCj4+PiBtaW5pbWFsIGVmZm9ydC4KPj4gSSB3aWxsIGdpdmUgYSB0cnkgaW4gdGhpcyBk
aXJlY3Rpb24uCj4gVGhhbmsgeW91Lgo+Cj4+Pj4gUGxlYXNlIG5vdGUgdGhhdCB0aGlzIHNlcmll
cyBicmVhayB0aGUgY29tcGF0aWJpbGl0eSBiZXR3ZWVuIHRoZSBEVEIgYW5kCj4+Pj4ga2VybmVs
LiBUaGlzIGJyZWFrIGlzIGxpbWl0ZWQgdG8gSU1YOE1RIFNvQyBhbmQgaXMgZG9uZSB3aGVuIHRo
ZSBkcml2ZXIKPj4+PiBpcyBzdGlsbCBpbiBzdGFnaW5nIGRpcmVjdG9yeS4KPj4+IEkga25vdyBp
biB0aGlzIGNhc2Ugd2UgYXJlIHByZXR0eSBzdXJlIHRoZXJlIGFyZSBubyB1c2VycyBvZiB0aGlz
Cj4+PiBiaW5kaW5nIGV4Y2VwdCBmb3IgYSBzdGFnaW5nIGRyaXZlciwgYnV0IGl0IHdvdWxkIHN0
aWxsIGJlIG5pY2UgdG8ga2VlcAo+Pj4gc3VwcG9ydCBmb3IgdGhlIGRlcHJlY2F0ZWQgYmluZGlu
ZywgdG8gYXZvaWQgdGhlIHJlcXVpcmVtZW50IG9mIHVwZGF0aW5nCj4+PiBrZXJuZWwgYW5kIERU
IGluIGxvY2stc3RlcC4KPj4gSWYgSSB3YW50IHRvIHVzZSBhIHN5c2NvbiAob3IgYSByZXNldCkg
dGhlIGRyaXZlciBtdXN0IG5vdCBpb3JlbWFwIHRoZSAiY3RybCIKPj4gcmVnaXN0ZXJzLiBJdCBt
ZWFucyB0aGF0ICJjdHJsIiBoYXMgdG8gYmUgcmVtb3ZlZCBmcm9tIHRoZSBkcml2ZXIgcmVxdWVz
dGVkCj4+IHJlZy1uYW1lcyAoaW14OG1xX3JlZ19uYW1lc1tdKS4gRG9pbmcgdGhhdCBicmVhayB0
aGUga2VybmVsL0RUIGNvbXBhdGliaWxpdHkuCj4+IFNvbWVob3cgc3lzY29uIGFuZCAiY3RybCIg
YXJlIGV4Y2x1c2l2ZS4KPiBUaGUgd2F5IHRoZSBkcml2ZXIgaXMgc2V0IHVwIGN1cnJlbnRseSwg
eWVzLiBZb3UgY291bGQgYWRkIGEgYml0IG9mCj4gcGxhdGZvcm0gc3BlY2lmaWMgcHJvYmUgY29k
ZSwgdGhvdWdoLCB0aGF0IHdvdWxkIHNldCB1cCB0aGUgcmVnbWFwCj4gZWl0aGVyIGJ5IGNhbGxp
bmcKPiAJc3lzY29uX3JlZ21hcF9sb29rdXBfYnlfcGhhbmRsZSgpOwo+IGZvciB0aGUgbmV3IGJp
bmRpbmcsIG9yLCBpZiB0aGUgcGhhbmRsZSBpcyBub3QgYXZhaWxhYmxlLCBmYWxsIGJhY2sgdG8K
PiAJcGxhdGZvcm1fZ2V0X3Jlc291cmNlX2J5bmFtZSguLi4sICJjdHJsIik7Cj4gCWRldm1faW9y
ZW1hcF9yZXNvdXJjZSgpOwo+IAlkZXZtX3JlZ21hcF9pbml0X21taW8oKTsKPiBmb3IgdGhlIG9s
ZCBiaW5kaW5nLgo+IFRoZSBhY3R1YWwgY29kZWMgLnJlc2V0IGFuZCB2YXJpYW50IC5ydW50aW1l
X3Jlc3VtZSBvcHMgY291bGQgYmUKPiBpZGVudGljYWwgdGhlbi4KCkkgbWFkZSBpdCB3b3JrcyB3
aXRoIHN5c2NvbiBhbmQgeW91ciBwcm9wb3NhbC4KVGhlIG5leHQgdmVyc2lvbiBvZiB0aGUgcGF0
Y2hlcyB3aWxsIGJlIHdpdGhvdXQgcmVzZXQgYW5kIHdvbid0IGJyZWFrCkRUIGNvbXBhdGliaWxp
dHkuCgpUaGFua3MgZm9yIHlvdXIgaGVscCwKQmVuamFtaW4KCj4KPiByZWdhcmRzCj4gUGhpbGlw
cAo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
