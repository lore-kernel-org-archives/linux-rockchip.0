Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CAC9C2BA1A
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jun 2024 14:08:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PqkXaQDeGOqi/QdHwpkdlpSOlclZNPwJKI+UgY2+uMM=; b=hITeOL0I/4OFb2
	lUF8VhEC/O5eBAjLwgUWUbwWLfpSitD8tdKn5ZdcTLzwmsBQayySzFqJIiBd2D7lwj3VyJk1U3suK
	zI9kDL/yWgHuogC6eILoIXFQcKf+83Cr0Vu/Q4tb6O9oxJLCTWzC7w10cfM+jc7pZhGFs4ZpmEJsx
	bic1M0AbnjJ6NKCLpaNMkXG8eMKE6O94RqXyt0ZD+pTDOZ4ONgkBjyFeea00hlaRO79rIcVLe1t3f
	1chn7inIheLba2D7DQfVzF+BgyXawcjAA3cKTT5qHXAt12iDNBuidl1d6ecrlPlsX5HZP8h7z4g5x
	YtRdl7f2/1MdN7X0Dang==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKewN-00000009S1N-2Jua;
	Fri, 21 Jun 2024 14:08:35 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKewK-00000009S07-2XB2
	for linux-rockchip@lists.infradead.org;
	Fri, 21 Jun 2024 14:08:34 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 45LE8NGX062013;
	Fri, 21 Jun 2024 09:08:23 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1718978903;
	bh=ZLEC4Mmpek7iyAZO5B9CzgsF9BpMj0Yvny+5kmVsxLY=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=OeKeDMG/gJvCde1O+lfMHNa1C51B6lCPCuos1d92vKH+M+5hfI4R6Fh2vGAiR5YTx
	 SWaGzXkIJ3UYAM7gfvWAlpTshrDs5Ej17Q9WQAk+fip/HUQMdsQo/xAzpYLUP1qlOe
	 vqL6vakHnyN7SebRyFA7LJSihfLU90d6SlCRGXqo=
Received: from DFLE110.ent.ti.com (dfle110.ent.ti.com [10.64.6.31])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 45LE8Nm1028306
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 21 Jun 2024 09:08:23 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Fri, 21
 Jun 2024 09:08:23 -0500
Received: from lelvsmtp6.itg.ti.com (10.180.75.249) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Fri, 21 Jun 2024 09:08:23 -0500
Received: from [172.24.227.193] (devarsht.dhcp.ti.com [172.24.227.193] (may be forged))
	by lelvsmtp6.itg.ti.com (8.15.2/8.15.2) with ESMTP id 45LE8Gx7113670;
	Fri, 21 Jun 2024 09:08:17 -0500
Message-ID: <8c10a338-c2c2-64b8-40db-1cbc20822c39@ti.com>
Date: Fri, 21 Jun 2024 19:38:16 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v14 2/6] media: imagination: Add E5010 JPEG Encoder driver
Content-Language: en-US
To: Sebastian Fricke <sebastian.fricke@collabora.com>
CC: <mchehab@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
        <conor+dt@kernel.org>, <hverkuil-cisco@xs4all.nl>,
        <linux-media@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
        <benjamin.gaignard@collabora.com>, <laurent.pinchart@ideasonboard.com>,
        <praneeth@ti.com>, <nm@ti.com>, <vigneshr@ti.com>, <a-bhatia1@ti.com>,
        <j-luthra@ti.com>, <b-brnich@ti.com>, <detheridge@ti.com>,
        <p-mantena@ti.com>, <vijayp@ti.com>, <andrzej.p@collabora.com>,
        <nicolas@ndufresne.ca>, <afd@ti.com>
References: <20240618193651.2771478-1-devarsht@ti.com>
 <20240618193651.2771478-3-devarsht@ti.com>
 <20240621123715.enqtdqxskdkod5ze@basti-XPS-13-9310>
 <8dda9d0c-3154-a7fd-1233-ca5be59639de@ti.com>
 <20240621132658.m2utqnvwaicgiwqr@basti-XPS-13-9310>
From: Devarsh Thakkar <devarsht@ti.com>
In-Reply-To: <20240621132658.m2utqnvwaicgiwqr@basti-XPS-13-9310>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_070832_773616_9DB38F08 
X-CRM114-Status: GOOD (  24.70  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

SGkgU2ViYXN0aWFuLAoKT24gMjEvMDYvMjQgMTg6NTYsIFNlYmFzdGlhbiBGcmlja2Ugd3JvdGU6
Cj4gSGV5IERldmFyc2gsCj4gCj4gT24gMjEuMDYuMjAyNCAxODoxNCwgRGV2YXJzaCBUaGFra2Fy
IHdyb3RlOgo+PiBIaSBTZWJhc3RpYW4KPj4KPj4gT24gMjEvMDYvMjQgMTg6MDcsIFNlYmFzdGlh
biBGcmlja2Ugd3JvdGU6Cj4+PiBIZXkgRGV2YXJzaCwKPj4+Cj4+PiBUaGlzIGRvZXNuJ3QgY29t
cGlsZSB3aXRob3V0IGVycm9ycyBmb3IgbWUsIGN1cmlvdXMsIGl0IHByb2JhYmx5IGRpZAo+Pj4g
Y29tcGlsZSB3aXRob3V0IHByb2JsZW1zIGZvciB5b3UgcmlnaHQ/Cj4+Pgo+Pj4gZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS9pbWFnaW5hdGlvbi9lNTAxMC1qcGVnLWVuYy5jOjE2MjI6MTk6IGVycm9y
Ogo+Pj4gaW5pdGlhbGl6YXRpb24gb2Yg4oCYaW50ICgqKShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNl
ICop4oCZIGZyb20gaW5jb21wYXRpYmxlCj4+PiBwb2ludGVyIHR5cGUg4oCYdm9pZCAoKikoc3Ry
dWN0IHBsYXRmb3JtX2RldmljZSAqKeKAmQo+Pj4gWy1XZXJyb3I9aW5jb21wYXRpYmxlLXBvaW50
ZXItdHlwZXNdCj4+PiDCoDE2MjIgfMKgwqDCoMKgwqDCoMKgwqAgLnJlbW92ZSA9IGU1MDEwX3Jl
bW92ZSwKPj4+IMKgwqDCoMKgwqAgfMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBefn5+fn5+fn5+fn4KPj4+IGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vaW1hZ2luYXRpb24vZTUw
MTAtanBlZy1lbmMuYzoxNjIyOjE5OiBub3RlOiAobmVhcgo+Pj4gaW5pdGlhbGl6YXRpb24gZm9y
IOKAmGU1MDEwX2RyaXZlci5yZW1vdmXigJkpCj4+PiBjYzE6IHNvbWUgd2FybmluZ3MgYmVpbmcg
dHJlYXRlZCBhcyBlcnJvcnMKPj4+Cj4+Cj4+IFllcyBJIHRoaW5rIGl0IGRpZCBjb21waWxlIGZp
bmUgZm9yIG1lLgo+PiBEaWQgeW91IHRyeSB0aGlzIG9uIHRpcCBvZiBsaW51eC1uZXh0ID8KPiAK
PiBOb3BlIHRoZSBtZWRpYSBzdWJzeXN0ZW0gaXMgbm90IGJhc2VkIG9uIGxpbnV4LW5leHQsIGJ1
dCBpbnN0ZWFkIG9uOgo+IGh0dHBzOi8vZ2l0LmxpbnV4dHYub3JnL21lZGlhX3N0YWdlLmdpdC9s
b2cvCj4gUGxlYXNlIG1ha2Ugc3VyZSB0aGF0IHlvdXIgcGF0Y2hlcyBjb21waWxlIG9uIHRvcCBv
ZiB0aGF0Lgo+IAoKU3VyZSwgd2lsbCB0YWtlIGNhcmUgb2YgdGhpcyBpbiBmdXR1cmUuCgo+Pgo+
PiBBcyBtZW50aW9uZWQgaW4gY2hhbmdlbG9nLCB0aGVyZSB3YXMgdXBkYXRlIGluIHBsYXRmb3Jt
IGRyaXZlciBmb3IgcmV0dXJuIHR5cGUKPj4gb2YgcmVtb3ZlIGZ1bmN0aW9uIHdoaWNoIGdvdCBj
aGFuZ2VkIHRvIHZvaWQgcmV0dXJuIHR5cGUuIFBsZWFzZSBjaGVjayBpZiB5b3UKPj4gaGF2ZSB0
aGlzIHBhdGNoIFsxXSBpbiB5b3VyIHRyZWUgd2hpY2ggZ290IHJlY2VudGx5IG1lcmdlZC4KPiAK
PiBObyB0aGF0IHBhdGNoIGlzIG5vdCBwYXJ0IG9mIHRoZSB0cmVlIHlldC4KPiAKPiBQbGVhc2Ug
bm90ZSBhbHNvIHRoZSBmb2xsb3dpbmcgc2VjdGlvbiBpbiB0aGF0IHBhdGNoOgo+IAoKSSB0aGlu
ayB0aGUgc2FpZCBwYXRjaCByZW1vdmVzIGJlbG93IGNvbW1lbnQuCgo+IMKgwqDCoMKgIC8qCj4g
wqDCoMKgwqAgKiBUcmFkaXRpb25hbGx5IHRoZSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuZWQgYW4g
aW50IHdoaWNoIGhvd2V2ZXIgaXMKPiDCoMKgwqDCoCAqIGlnbm9yZWQgYnkgdGhlIGRyaXZlciBj
b3JlLiBUaGlzIGxlZCB0byB3cm9uZyBleHBlY3RhdGlvbnMgYnkgZHJpdmVyCj4gwqDCoMKgwqAg
KiBhdXRob3JzIHdobyB0aG91Z2h0IHJldHVybmluZyBhbiBlcnJvciBjb2RlIHdhcyBhIHZhbGlk
IGVycm9yCj4gwqDCoMKgwqAgKiBoYW5kbGluZyBzdHJhdGVneS4gVG8gY29udmVydCB0byBhIGNh
bGxiYWNrIHJldHVybmluZyB2b2lkLCBuZXcKPiDCoMKgwqDCoCAqIGRyaXZlcnMgc2hvdWxkIGlt
cGxlbWVudCAucmVtb3ZlX25ldygpIHVudGlsIHRoZSBjb252ZXJzaW9uIGl0IGRvbmUKPiDCoMKg
wqDCoCAqIHRoYXQgZXZlbnR1YWxseSBtYWtlcyAucmVtb3ZlKCkgcmV0dXJuIHZvaWQuCj4gCj4g
U28geW91ciBkcml2ZXIgaXMgZXhwZWN0ZWQgdG8gaW1wbGVtZW50IHJlbW92ZV9uZXcoKS4KPiAK
CklmIEkgbG9vayBhdCB0aGUgdGlwIG9mIGxpbnV4LW5leHQgKHdoaWNoIGlzIHJjNCspIFsxXSwg
dGhlIGFib3ZlIGNvbW1lbnQgaXMKbm93IHJlbW92ZWQgYW5kIGl0IHNheXMgdGhhdCBuZXcgZHJp
dmVycyBhcmUgc3VwcG9zZWQgdG8gaW1wbGVtZW50IC5yZW1vdmUoKQpvbmx5LiBCdXQgeWVhaCwg
YXMgbWVkaWFfdHJlZSBkb2Vzbid0IGhhdmUgdGhpcyBwYXRjaCBpdCBtYXkgcmVxdWlyZSB0byBo
YXZlCmludCByZW1vdmUoKSBhbmQgdm9pZCByZW1vdmVfbmV3KCkgYXMgeW91IG1lbnRpb24sIGJ1
dCBldmVudHVhbGx5IHdoZW4KbWVkaWFfc3RhZ2UgdHJlZSBnZXRzIHN5bmNlZCB3aXRoIGFib3Zl
IHBhdGNoIHB1bGxlZCBpbiwgd2UgbWF5IHJlcXVpcmUgdG8KdXBkYXRlIGFnYWluIHRvIHdoYXQg
aXMgcHJlc2VudCBpbiB0aGlzIHBhdGNoLgoKPiBJIHdpbGwgdGFrZSBjYXJlIG9mIHRoaXMgZm9y
IHRoZSBQUiwgYnV0IHBsZWFzZSBub3RlIGZvciB0aGUgZnV0dXJlOgo+IEl0IGhhcyB0byB3b3Jr
IHdpdGggbWVkaWFfc3RhZ2UsIHVubGVzcyB5b3UgaGF2ZSBhIHZlcnkgZ29vZCByZWFzb24gZm9y
Cj4gc29tZXRoaW5nIGRpZmZlcmVudC4KPiAKClN1cmUsIHRoYW5rcyBmb3IgdGFraW5nIGNhcmUg
b2YgdGhpcy4gRmVlbCBmcmVlIHRvIGxldCBtZSBrbm93IGlmIGFueSBpc3N1ZXMKZmFjZWQuCgpS
ZWdhcmRzCkRldmFyc2gKClsxXToKaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4
L2tlcm5lbC9naXQvbmV4dC9saW51eC1uZXh0LmdpdC90cmVlL2luY2x1ZGUvbGludXgvcGxhdGZv
cm1fZGV2aWNlLmg/aD1uZXh0LTIwMjQwNjIwI24yNDAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
