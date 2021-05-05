Return-Path: <SRS0=Kxb6=KA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C1A0C43462
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 14:02:00 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 87F5A613E3
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 14:01:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 87F5A613E3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5ndIX9Lo1E6f/ibtYspLk7ljJWsd9iWN9WhdusASbb4=; b=lBvy8JHqRHD+X3zNlaZsnvwpU
	6WOgxjRRftHVS4d9r6A+ocRV504ZZRHzbemsA8huYaBZ0RhS4Upjd0OCFpqbI4enXIzZLJV+JdKE+
	zf2jze3eFrRsMkBoHoVWSoFhPpQZQcpKNjM4KEvddX+0eQSJ4nLCVQJlpQ9aVDxnZ7T+D8e5+yiZf
	tm59VkVOiYdKt9OYMkeq8uP3TPZ/x31nD3TJd1gBbbWEabHGk3ALAeWvu1iMjQxZGpjIZ7yT2G8XN
	Aw8qf0xxm3cLMebjpJg+S9vrcBMYeHzuaBdthkXqrBBjB9gO8FB/76RUhGaqM4GMHJST6WwwJMIzU
	JBZ6fV93w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leI62-001MrS-MQ; Wed, 05 May 2021 14:01:50 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leI61-001Mqy-0K
 for linux-rockchip@desiato.infradead.org; Wed, 05 May 2021 14:01:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=Tbp0+f3ZryuYQlgKTx4oRijr3/sXEAI+Z7fqlb6Zhuo=; b=kBKi/Id1WvAkjWbs5oDlQ2Fo6N
 66uvjPQLSZHQMOxc06S1ashG4HDaPm9kKQo5QgGSdmslDKmGZZzBglz53mMJM1XU0h48o3D6+qFMT
 Kcunfrw3iGRRIp5X0/1OQgHT8+qkN3btM75iQcEq30yELQVRJm5phxxkutuKcVDTkCIZW/XtyUD5e
 tF4KmgY7uAIkW0UAAX326qLhUBirmJ/AK54X+CpRP8J7PhHlbyPSHpzV15e0MX+8Arb1iqZuutv2p
 cBD6MFddSquGsrssy+hN5IW4tc6d61h6CJWVdmOhmQQMk3g85n3UTJbv+Ewc8p73oGhQeykj1uA6u
 UPDy5IGQ==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leI5y-004ntw-1G
 for linux-rockchip@lists.infradead.org; Wed, 05 May 2021 14:01:47 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 978881F42DFA
Message-ID: <735925557d7fde1c11affeea703f8486febc825d.camel@collabora.com>
Subject: Re: [PATCH 09/25] media: hantro: do a PM resume earlier
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Philipp Zabel
 <p.zabel@pengutronix.de>, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-staging@lists.linux.dev
Date: Wed, 05 May 2021 11:01:35 -0300
In-Reply-To: <20210505154647.62784bf7@coco.lan>
References: <cover.1620207353.git.mchehab+huawei@kernel.org>
 <82114a4bd9c7bc1188c6a7167a6e74bb3360961d.1620207353.git.mchehab+huawei@kernel.org>
 <11c24f97ef71b16c2e7b3ba40ca66a28c12df692.camel@collabora.com>
 <20210505154647.62784bf7@coco.lan>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_070146_232209_73BF8E0F 
X-CRM114-Status: GOOD (  26.35  )
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

T24gV2VkLCAyMDIxLTA1LTA1IGF0IDE1OjQ2ICswMjAwLCBNYXVybyBDYXJ2YWxobyBDaGVoYWIg
d3JvdGU6Cj4gRW0gV2VkLCAwNSBNYXkgMjAyMSAxMDoyMjowMyAtMDMwMAo+IEV6ZXF1aWVsIEdh
cmNpYSA8ZXplcXVpZWxAY29sbGFib3JhLmNvbT4gZXNjcmV2ZXU6Cj4gCj4gPiBIaSBNYXVybywK
PiA+IAo+ID4gVGhhbmtzIGZvciB3b3JraW5nIG9uIHRoaXMuCj4gPiAKPiA+IE9uIFdlZCwgMjAy
MS0wNS0wNSBhdCAxMTo0MSArMDIwMCwgTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIHdyb3RlOgo+ID4g
PiBUaGUgZGV2aWNlX3J1bigpIGZpcnN0IGVuYWJsZXMgdGhlIGNsb2NrIGFuZCB0aGVuCj4gPiA+
IHRyaWVzIHRvIHJlc3VtZSBQTSBydW50aW1lLCBjaGVja2luZyBmb3IgZXJyb3JzLgo+ID4gPiAK
PiA+ID4gV2VsbCwgaWYgZm9yIHNvbWUgcmVhc29uIHRoZSBwbV9ydW50aW1lIGNhbiBub3QgcmVz
dW1lLAo+ID4gPiBpdCB3b3VsZCBiZSBiZXR0ZXIgdG8gZGV0ZWN0IGl0IGJlZm9yZWhhbmQuCj4g
PiA+IAo+ID4gPiBTbywgY2hhbmdlIHRoZSBvcmRlciBpbnNpZGUgZGV2aWNlX3J1bigpLgo+ID4g
PiAKPiA+ID4gUmV2aWV3ZWQtYnk6IEV6ZXF1aWVsIEdhcmNpYSA8ZXplcXVpZWxAY29sbGFib3Jh
LmNvbT4KPiA+ID4gRml4ZXM6IDc3NWZlYzY5MDA4ZCAoIm1lZGlhOiBhZGQgUm9ja2NoaXAgVlBV
IEpQRUcgZW5jb2RlciBkcml2ZXIiKQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBNYXVybyBDYXJ2YWxo
byBDaGVoYWIgPG1jaGVoYWIraHVhd2VpQGtlcm5lbC5vcmc+wqAgCj4gPiAKPiA+IEl0IHNlZW1z
IHRoaXMgaXMgd3Jvbmcgbm93LCBhcyB0aGlzIHNlcmllcyBkb2Vzbid0IGhhdmUKPiA+IAo+ID4g
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtbWVkaWEvODAzYzM5ZmFmZGQ2MmVmYzZmOWU0
ZDk5YTM3MmFmMmM2OTU1MTQzYi4xNjE5NjIxNDEzLmdpdC5tY2hlaGFiK2h1YXdlaUBrZXJuZWwu
b3JnLwo+ID4gCj4gPiBJIGRvbid0IGZ1bGx5IHVuZGVyc3RhbmQgd2h5IGFsbCB0aGUgYmFjayBh
bmQgZm9ydGgKPiA+IGhhcHBlbmluZyBvbiB0aGlzIHNlcmllcywgYnV0IHRoZSBmb3JtZXIgSGFu
dHJvIHBhdGNoZXMKPiA+IGxvb2tlZCBnb29kIChkZXNwaXRlIHBlcmhhcHMgdW5jbGVhciBjb21t
aXQgbWVzc2FnZXMpLgo+IAo+IFRoZXJlIHdhcyBhIHJlcXVlc3QgdG8gYnJlYWsgdGhlIG9yaWdp
bmFsIC83OSBzZXJpZXMgaW50byBzbWFsbGVyIG9uZXMsCj4gdG8gbWFrZSBlYXNpZXIgZm9yIHJl
dmlld2Vycy4gU28sIEkgb3B0ZWQgdG8gc3BsaXQgaXQgaW50byAocHJvYmFibHkpCj4gMyBzZXJp
ZXM6Cj4gCj4gMS4gRml4ZXMgKHRoaXMgc2VyaWVzKTsKPiAyLiAidXNlIHBtX3J1bnRpbWVfcmVz
dW1lX2FuZF9nZXQiIGZvciB0aGUgSTJDIGRyaXZlcnM7Cj4gMy4gInVzZSBwbV9ydW50aW1lX3Jl
c3VtZV9hbmRfZ2V0IiBmb3IgcmVtYWluaW5nIG9uZXMuCj4gCj4gQmVmb3JlIGZsb29kaW5nIGV2
ZXJ5Ym9keSdzIGVtYWlsJ3Mgd2l0aCBzZXJpZXMgKDIpIGFuZCAoMyksIGJldHRlcgo+IHRvIGZv
Y3VzIGF0IHRoZSBmaXhlcyBmaXJzdC4gSSdsbCBwcm9iYWJseSBzZW5kIHRoZSBvdGhlciB0d28g
c2VyaWVzCj4gYnkgdG9tb3Jyb3cuCj4gCj4gPiBBbnkgaXNzdWVzIGp1c3Qgc3F1YXNoaW5nIHRo
ZXNlIHR3byBjb21taXRzIGZyb20gIltQQVRDSCB2NCAwMC83OV0gQWRkcmVzcyBzb21lIGlzc3Vl
cyB3aXRoIFBNIHJ1bnRpbWUgYXQgbWVkaWEgc3Vic3lzdGVtIjoKPiA+IAo+ID4gwqAgbWVkaWE6
IGhhbnRybzogdXNlIHBtX3J1bnRpbWVfcmVzdW1lX2FuZF9nZXQoKQo+ID4gwqAgbWVkaWE6IGhh
bnRybzogZG8gYSBQTSByZXN1bWUgZWFybGllcgo+IAo+IFRoZSBwcm9ibGVtIGlzIHRoYXQgcG1f
cnVudGltZV9yZXN1bWVfYW5kX2dldCgpIHdhcyBhZGRlZCBvbmx5Cj4gcmVjZW50bHkgKEtlcm5l
bCB2NS4xMCkuIAo+IAo+IFNvLCBJIG9wdGVkIHRvIHBsYWNlIHRoZSBmaXggcGF0Y2hlcyBiZWZv
cmUgdGhlIGNoYW5nZXMsIGFzIHRoaXMKPiB3YXksIG1vc3QgKGFsbD8pIHBhdGNoZXMgY2FuIGJl
IGVhc2lseSBiZSBiYWNrcG9ydGVkIHRvIGxlZ2FjeSBLZXJuZWxzCj4gYXMgbmVlZGVkLgo+IAoK
R290IGl0LgoKTWF5YmUgdGhlIGJldHRlciBmaXggd291bGQgYmUgdGhlIHNxdWFzaCBvZiBbUEFU
Q0ggdjQgNzgvNzldIG1lZGlhOiBoYW50cm86IHVzZSBwbV9ydW50aW1lX3Jlc3VtZV9hbmRfZ2V0
KCkKYW5kIFtQQVRDSCB2NCA3OS83OV0gbWVkaWE6IGhhbnRybzogZG8gYSBQTSByZXN1bWUgZWFy
bGllciBidXQga2VlcGluZyBwbV9ydW50aW1lX2dldF9zeW5jLgoKQW5kIHRoZW4geW91IGNhbiBy
ZXBsYWNlIHRoZSBwbV9ydW50aW1lX2dldF9zeW5jIHdpdGggcG1fcnVudGltZV9yZXN1bWVfYW5k
X2dldC4KClRoYW5rcywKRXplcXVpZWwKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
