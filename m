Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58AB8CA0FE9
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Aug 2025 10:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lvgrmh/I45vofoMaT9dth00fugqNYxMfo/PXfBeTvjw=; b=i4PQ3+SVzTGqZN
	eR6QdU8TfLo7p4h5rckz21RVmkh948TKGFR8LgMsPHDhKCHeV2a63/p++dcIyBvTzj+muHwPKgTSg
	ss5yuFxqn4B5HpwAyWC0D2ixs1sL5dlQ0YCvXXeGQx+DhLh2tGyeYHamtuhlZGcFCwVNLlFDfNuAX
	L5Xu2ofxON6uniBVOaiuFN+y68+cJ9qWZMPAZHs8nT0i42lePSyefNhQ0hoflec3hx37m3dExhLLK
	bcFrsZfp4+gK8ZNzqUhBFcrZ16IhN4oxYNHhX2nDZDwR3aUgvQ2/cuDDlJeCnQl0zn23GgFSPao6p
	n9gPRM9FxhFCouHkMibA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqr8m-0000000BedE-15HE;
	Tue, 26 Aug 2025 10:43:00 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqqMT-0000000BVK9-1RtC;
	Tue, 26 Aug 2025 09:53:07 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1756201964; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=JqdDCyoBRzA1ioGUjwKcsJArCawzPxSOe3thrDi9ZwZgHt0F9QAZqRvQAfV4esQt0ZAZYxZfIwKBbLA7wAN7myHdr64ix7uqfJlkTjg6/8Z8geKK3qdsikhHWjXZdkwx8jcP4HmdM2znP3ZrQ+jGvAhdUK+s1kfc3IWXPCcePq0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1756201964; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=o6Q7Y3E1cI9YU4bN/X3ZlCOSutz2V8wdoXek4KPsGKk=; 
	b=O5Q+G54QW5RkzHJ6dJtSKoVoOCfSKVlAW+tfDEe6CjrFcIrolaNLgkVVGVlXU6YMb0lZSSUL6jajqZN74bUUXUQxUpjgSKaIRLRnXOs2Ay78qz2buhWoyqtXUub8H+w1BJW0kL0ivqY6GnMj28JhPGSLhMYnqndGs68QaJt0/+A=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1756201964;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=o6Q7Y3E1cI9YU4bN/X3ZlCOSutz2V8wdoXek4KPsGKk=;
	b=AG9TH54nMsGLH+Z0Jeu4Bj4Bk9uWmYiW+eIryri/67U8aGWVludige0cAmHf5BUe
	4Vr+Dy3eHegOxtOfj19PKtaH4dbpV48j5LWWIqE/K6aTrdSqjS2YOyqGTZ07W7EP8bU
	O8Mw0wN5T1Ut623zh1GF4mD75RQRZ9MxZIZT209w=
Received: by mx.zohomail.com with SMTPS id 1756201961981405.52754025942295;
	Tue, 26 Aug 2025 02:52:41 -0700 (PDT)
Message-ID: <441df5ff-8ed4-45ed-8a52-b542c6e7d38c@collabora.com>
Date: Tue, 26 Aug 2025 11:52:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 4/6] media: verisilicon: AV1: Restore IOMMU context
 before decoding a frame
To: Jason Gunthorpe <jgg@ziepe.ca>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
 p.zabel@pengutronix.de, mchehab@kernel.org, iommu@lists.linux.dev,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com, linux-media@vger.kernel.org
References: <20250825153450.150071-1-benjamin.gaignard@collabora.com>
 <20250825153450.150071-5-benjamin.gaignard@collabora.com>
 <20250825170531.GA1899851@ziepe.ca>
 <01c327e8353bb5b986ef6fb1e7311437659aea4a.camel@collabora.com>
 <20250825183122.GB1899851@ziepe.ca>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20250825183122.GB1899851@ziepe.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250826_025305_476840_CB30EA0E 
X-CRM114-Status: GOOD (  16.90  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkxlIDI1LzA4LzIwMjUgw6AgMjA6MzEsIEphc29uIEd1bnRob3JwZSBhIMOpY3JpdMKgOgo+IE9u
IE1vbiwgQXVnIDI1LCAyMDI1IGF0IDAxOjUwOjE2UE0gLTA0MDAsIE5pY29sYXMgRHVmcmVzbmUg
d3JvdGU6Cj4KPj4gSmFzb24sIHRoZSBwb2ludCBpcyB0aGF0IHRoZSBpb21tdSBhbmQgdGhlIFZQ
VSBhcmUgbm90IHNlcGFyYXRlIGRldmljZXMsIHdoaWNoCj4+IGNvbWVzIHdpdGggc2lkZSBlZmZl
Y3RzLiBPbiBSS1ZEZWMgc2lkZSwgdGhlIGlvbW11IGNvbmZpZ3VyYXRpb24gZ2V0IHJlc2V0cwo+
PiB3aGVuZXZlciBhIGRlY29kaW5nIGVycm9yIGxlYWRzIHRvIGEgVlBVICJzZWxmIHJlc2V0Ii4g
SSBjYW4ndCByZW1lbWJlciB3aG8gZnJvbQo+PiB0aGUgaW9tbXUgc3Vic3lzdGVtIHN1Z2dlc3Rl
ZCB0aGF0LCBidXQgdGhlIGVtcHR5IGRvbWFpbiBtZXRob2Qgd2FzIGFncmVlZCB0byBiZQo+IElE
SywgdGhhdCBzZWVtcyByZWFsbHkgZ29vZnkgdG9vIG1lIGFuIGRlZmlhbnRseSBuZWVkcyB0byBi
ZQo+IGV4dGVuc2l2ZWx5IGRvY3VtZW50ZWQgdGhpcyBpcyByZXN0b3JpbmcgdGhlIGRlZmF1bHQg
d2l0aCBzb21lIGxvcmUKPiBsaW5rIG9mIHRoZSBvcmlnaW5hbCBzdWdnZXN0aW9uLgo+Cj4+IHRo
ZSBsZWFzdCBpbnZhc2l2ZSB3YXkgdG8gd29ya2Fyb3VuZCB0aGF0IGlzc3VlLiBJIGJlbGlldmUg
RGV0bGV2IHRyaWVkIG11bHRpcGxlCj4+IHRpbWUgdG8gYWRkIEFQSXMgZm9yIHRoYXQgYmVmb3Jl
IHRoZSBkaXNjdXNzaW9uIGxlYWQgdG8gdGhpcyBwYXRoLgo+IFlvdSBtZWFuIHRoaXM6Cj4KPiBo
dHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1pb21tdS8yMDI1MDMxODE1MjA0OS4xNDc4MS0x
LWRldGxldi5jYXNhbm92YUBjb2xsYWJvcmEuY29tLwo+Cj4gV2hpY2ggY2FtZSBiYWNrIHdpdGgg
dGhlIHNhbWUgcmVtYXJrIEkgd291bGQgZ2l2ZToKPgo+ICAgUGxlYXNlIGhhdmUgc29tZSBraW5k
IG9mIHByb3BlciByZXNldCBub3RpZmllciBtZWNoYW5pc20gLSBpbiBmYWN0Cj4gICB3aXRoIHJ1
bnRpbWUgUE0gY291bGQgeW91IG5vdCBhbHJlYWR5IGludm9rZSBhIHN1c3BlbmQvcmVzdW1lIGN5
Y2xlCj4gICB2aWEgdGhlIGRldmljZSBsaW5rcz8KCndoZW4gZG9pbmcgcGFyYWxsZWwgZGVjb2Rl
IHN1c3BlbmQvcmVzdW1lIGFyZSBub3QgaW52b2tlZC4KCj4KPiBPciBhbm90aGVyIHJlYXNvbmFi
bGUgb3B0aW9uOgo+Cj4gICAgT3IgYXQgd29yc3QganVzdCBleHBvcnQgYSBwdWJsaWMgaW50ZXJm
YWNlIGZvciB0aGUgb3RoZXIgZHJpdmVyIHRvCj4gICAgaW52b2tlIHJrX2lvbW11X3Jlc3VtZSgp
IGRpcmVjdGx5Lgo+Cj4gU2lnaC4KCkFuIG90aGVyIHNvbHV0aW9uIHdoaWNoIGlzIHdvcmtpbmcg
aXMgdG8gY2FsbCBpb21tdV9mbHVzaF9pb3RsYl9hbGwoKQpiZWZvcmUgZGVjb2RpbmcgZWFjaCBm
cmFtZS4KSXQgZG9lc24ndCByZXF1aXJlIHRvIGFsbG9jYXRlIGEgZG9tYWluIHBlciBkZWNvZGlu
ZyBjb250ZXh0LgpEb2VzIHRoYXQgc291bmQgYXMgYSBiZXR0ZXIgc29sdXRpb24gPwoKQmVuamFt
aW4KCj4KPj4gQmVuamFtaW4sIHBsZWFzZSBpbXByb3ZlIHRoZSBuYW1pbmcsIGNvbW1lbnQgYW5k
IGRlc2NyaXB0aW9uLCBJIGFncmVlIHdpdGggSmFzb24KPj4gaXRzIG5vdCBjb21wbGV0ZWx5IGNs
ZWFyLiBJJ20gYWxzbyBzdXJwcmlzZWQgdGhhdCB5b3UgZG8gdGhhdCBldmVyeSBmcmFtZSwgc2Vl
bXMKPj4gZXhjZXNzaXZlLgo+IEluZGVlZCBpZiBpdCBpcyBqdXN0IGVycm9yIHJlY292ZXJ5Lgo+
Cj4+IFswXSBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90
b3J2YWxkcy9saW51eC5naXQvY29tbWl0Lz9pZD1mZjhjNTYyMmY5ZjdjNjQ0ZTk5NWQwMTNhZjMy
MGI1OWU0ZDYxYjkzCj4gVGhpcyBpcyBhbHJlYWR5IG1lcmdlZD8gQW5kIG5vdyB5b3Ugd2FudCB0
d28gY29waWVzIG9mIHRoaXM/IEkgdGhpbmsKPiB0aGlzIGlzIGEgdmVyeSBwb29yIGRpcmVjdGlv
bi4uCj4KPiBKYXNvbgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
