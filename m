Return-Path: <SRS0=ojj+=P4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5C0C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Nov 2021 14:35:30 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6628D6113D
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Nov 2021 14:35:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6628D6113D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y4BWAUKRIPs6jTSMuuavLfi0F6/LSfVY3MRRxcJOia8=; b=NR+J9TJnIu+o3XXOUo1h0WyF7W
	ISjZVUUkFgeuutQ01U7oelI7nWfLj9KBAr1Qp/DA0aWIQHeGH3ckYZaBvEhrZqEmPfDy9YXYWBmMf
	f9M8XRIKg9FH0sBO+PrIjLDIlll6/WV3NpyNP0ecjczmRlShoUMHPMvJQyYsm5JWldtnKGkmFFeYx
	wAXlOsDcIIhhp7V9JgLB0IJIiD89tdEqNGFDkWcfdbvwaND5yQlhVZZCzL5UHmRdfQ/RWQizHkTm9
	NuVbq7AaTux09DFEUP7HQrgTK251V4G4zhpKsvXuEM0zCoGfSbLisg9i8fBz8C4WMmChIV+wJwAFl
	EvNe2mUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mkSDd-002R9Z-U7; Tue, 09 Nov 2021 14:35:25 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mkSDQ-002R71-9u; Tue, 09 Nov 2021 14:35:14 +0000
Received: from [IPv6:2a01:e0a:120:3210:5cd8:9f51:76ae:8ed8] (unknown
 [IPv6:2a01:e0a:120:3210:5cd8:9f51:76ae:8ed8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 101901F4465D;
 Tue,  9 Nov 2021 14:35:08 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=collabora.com; s=mail;
 t=1636468508; bh=BrTB4hM7VfksIFjI74aYf8PVE6yEqs2GneUpf/pr2cM=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=y7DTvCV8PHyoqWkUXpkmGvqdr5Gi1Dp5auF4QWib1j2XSplCTEiXtlMZl63EYSvyA
 MJJeoP6cCNKOc1ZC31KvOdEV08rQNdRndGUEyoxtoOFjXbjw8mHK0/woPMtZtWq9oU
 Z4nuXpJojaHbIs95c+vHH9kOAtczz4V23iR5v7/6y6KVZUhHO7/x1XjOfXW7ZE19wK
 kW4x6ec5hivMi0xRsw+SCBRDsrAO0a7ZJKFjPQMhhuEMzDINqInms2NYyXIPRSe3Fe
 qUGKxhUewJgAV1Uw4poa/86eU1Y8KiddqqHLnE1tB1II+vgBXgT5mur6LiDS/NONcT
 9B5uDGPiLXzyg==
Subject: Re: [PATCH v2 0/4] media: HEVC: RPS clean up
To: mchehab@kernel.org, p.zabel@pengutronix.de, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 jernej.skrabec@gmail.com, hverkuil-cisco@xs4all.nl, jc@kynesim.co.uk,
 ezequiel@vanguardiasur.com.ar
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
References: <20211012143552.661751-1-benjamin.gaignard@collabora.com>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Message-ID: <b0a0c2be-c4e1-a7fa-23a4-034e181ebf1b@collabora.com>
Date: Tue, 9 Nov 2021 15:35:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211012143552.661751-1-benjamin.gaignard@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211109_063512_507259_9E24F3B8 
X-CRM114-Status: GOOD (  20.05  )
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

CkxlIDEyLzEwLzIwMjEgw6AgMTY6MzUsIEJlbmphbWluIEdhaWduYXJkIGEgw6ljcml0wqA6Cj4g
VGhpcyBzZXJpZXMgYWltcyB0byBjbGVhbiB1cCBSZWZlcmVuY2UgUGljdHVyZSBTZXQgdXNhZ2Ug
YW5kIGZsYWdzLgo+Cj4gTG9uZyB0ZXJtIGZsYWcgd2FzIG5hbWVkIHdpdGggUlBTIHByZWZpeCB3
aGlsZSBpdCBpcyBub3QgdXNlZCBmb3IgUlBTCj4gYnV0IGZvciBtYXJrIGxvbmcgdGVybSByZWZl
cmVuY2VzIGluIERCUC4gUmVtYW5lIGl0IGFuZCByZW1vdmUgdGhlIHR3bwo+IG90aGVyIHVzZWxl
c3MgUlBTIGZsYWdzLgo+Cj4gQ2xhcmlmeSBkb2N1bWVudGF0aW9uIGFib3V0IFJQUyBsaXN0cyBj
b250ZW50IGFuZCBtYWtlIHN1cmUgdGhhdCBIYW50cm8KPiBkcml2ZXIgdXNlIHRoZW0gY29ycmVj
dGx5IChpLmUgd2l0aG91dCBsb29rIHVwIGluIERCUCkuCgpUaGlzIHNlcmllcyBnZW5lcmF0ZXMg
ZmVlZGJhY2sgYWJvdXQgd2hhdCBpcyBtaXNzaW5nIHRvIG1vdmUgSEVWQyB1QVBJCm91dCBvZiBz
dGFnaW5nIGJ1dCBsYWNrIG9mIHJlbWFya3MgYWJvdXQgdGhlIHByb3Bvc2VkIGNoYW5nZXMgdGhl
bXNlbHZlcy4KRG9lcyBzb21lb25lIGhhcyBhbiBvcGluaW9uIGFib3V0IHRoaXMgUlBTIGZsYWcg
Y2xlYW4gdXAgPwoKUmVnYXJkcywKQmVuamFtaW4KCj4KPiBUaGVzZSBwYXRjaGVzIGFyZSB0aGUg
bGFzdCBpbiBteSBiYWNrbG9nIGltcGFjdGluZyBIRVZDIHVBUEkuCj4gIEZyb20gbXkgcG9pbnQg
b2Ygdmlldywgb25jZSB0aGV5IGdldCBtZXJnZWQsIHlvdSBjb3VsZCBzdGFydCB0YWxraW5nCj4g
YWJvdXQgaG93IG1vdmUgSEVWQyB1QVBJIHRvIHN0YWJsZS4KPgo+IHZlcnNpb24gMjoKPiAtIGNo
YW5nZSBEUEIgZmllbGQgbmFtZSBmcm9tIHJwcyB0byBmbGFncwo+Cj4gUGxlYXNlIG5vdGUgdGhh
dCB0aGUgb25seSBwdXJwb3NlIG9mIGNvbW1pdHMgMyBhbmQgNCBpcyB0byBhbGxvdyB0byB0ZXN0
Cj4gRzIgaGFyZHdhcmUgYmxvY2sgZm9yIElNWDhNUSB1bnRpbCBhIHByb3BlciBzb2x1dGlvbiBp
c3VpbmcgcG93ZXIgZG9tYWluCj4gY2FuIGJlIGZvdW5kLiBEbyBub3QgbWVyZ2UgdGhlbS4KPgo+
IEdTdHJlYW1lciBIRVZDIHBsdWdpbiBtZXJnZSByZXF1ZXN0IGNhbiBiZSBmb3VuZCBoZXJlOgo+
IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9nc3RyZWFtZXIvZ3N0cmVhbWVyLy0vbWVy
Z2VfcmVxdWVzdHMvMTA3OQo+Cj4gV2l0aCB0aG9zZSBwaWVjZSBvZiBjb2RlIGZsdXN0ZXIgc2Nv
cmUgaXMgNzcvMTQ3Lgo+Cj4gQmVuamFtaW4KPgo+IEJlbmphbWluIEdhaWduYXJkICg0KToKPiAg
ICBtZWRpYTogaGV2YzogUmVtb3ZlIFJQUyBuYW1lZCBmbGFncwo+ICAgIG1lZGlhOiBoZXZjOiBF
bWJlZGRlZCBpbmRleGVzIGluIFJQUwo+ICAgIG1lZGlhOiBoYW50cm86IFVzZSBzeXNjb24gaW5z
dGVhZCBvZiAnY3RybCcgcmVnaXN0ZXIKPiAgICBhcm02NDogZHRzOiBpbXg4bXE6IEFkZCBub2Rl
IHRvIEcyIGhhcmR3YXJlCj4KPiAgIC4uLi9tZWRpYS92NGwvZXh0LWN0cmxzLWNvZGVjLnJzdCAg
ICAgICAgICAgICB8IDE0ICsrKy0tLQo+ICAgYXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUv
aW14OG1xLmR0c2kgICAgIHwgNDMgKysrKysrKysrKysrKy0tLS0KPiAgIGRyaXZlcnMvc3RhZ2lu
Zy9tZWRpYS9oYW50cm8vaGFudHJvLmggICAgICAgICB8ICA1ICstCj4gICAuLi4vc3RhZ2luZy9t
ZWRpYS9oYW50cm8vaGFudHJvX2cyX2hldmNfZGVjLmMgfCAyNyArKystLS0tLS0tLQo+ICAgZHJp
dmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9pbXg4bV92cHVfaHcuYyAgIHwgNDggKysrKysrKysr
KysrLS0tLS0tLQo+ICAgLi4uL3N0YWdpbmcvbWVkaWEvc3VueGkvY2VkcnVzL2NlZHJ1c19oMjY1
LmMgIHwgIDIgKy0KPiAgIGluY2x1ZGUvbWVkaWEvaGV2Yy1jdHJscy5oICAgICAgICAgICAgICAg
ICAgICB8ICA2ICstLQo+ICAgNyBmaWxlcyBjaGFuZ2VkLCA4NCBpbnNlcnRpb25zKCspLCA2MSBk
ZWxldGlvbnMoLSkKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
