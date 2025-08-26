Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BC2FCA0EFA
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Aug 2025 13:45:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YRIitBcaOZ9y08dT3/dawoJ7iUu/fzHBexygHV5CD/w=; b=GDgaocs58L7qKc
	GeJazs99qoMPPhWNwXA13NPSs7hc4uVMJ8OZDuktu051D1SyaPNczqaZQTNRf1Yw0du3ayPMyx5n/
	+BkRL5ue+/v3voeTigPEYQr6QypvadXv1ZBPLDXP1SRGxw/GlWg7Nfbv8ispmDt4KyihXrzjraE5z
	+e9Qyw7p27pg7wRqVfYxNNQTCK+e8EoBeyYh9s/WbI2TVW3tsRGfKCk1+U9Cufd+PhdChbGlRZIHO
	Ttl/FgvRl/INwH2PBAnvkssUCF5hL1xURiYtHWoR1DtSj37smGpfwomJZmyLCRehOwdIrHEsyW7Tm
	rzUuPSKkSBHD0rLP7LAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqtyy-0000000C8nU-37AW;
	Tue, 26 Aug 2025 13:45:04 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqtVm-0000000C41H-0cV5;
	Tue, 26 Aug 2025 13:14:56 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1756214076; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=SzFR1y2hQifrr1QcPR5WzrWPvb1o9u/qCP/XFXoSQ0eixqkF4WfPknRj4noSB+VIYxrwBu/+gAQLGHH3d5enRKgIEcYRWmoDBQtMkzwLYsSACjPRzAc3nwvfPio7lXuCRjDefXNdwAxE6lp1oE7yVo0iI7lQx/lnsYIdCgLabPw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1756214076; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=WNuw2smkSUbseMqhQYhMnAKOM3W6MRvMOpj1QgvkS8w=; 
	b=JnPShJ/oLY3hwO01CreDYBXMbChk11ZYRhdeoShjQAd+WV2IRdfwZsiwVJphqMa068f5Np9AkgkAiE3sfs60mSLNHkG8PXLSJc9JA9ADF48ohhiRciWn2WnALv4x7s1bJmrLEdAc0k/CbDIXOJoqpUlLbTulWz1CLagQAYRtlk0=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1756214076;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=WNuw2smkSUbseMqhQYhMnAKOM3W6MRvMOpj1QgvkS8w=;
	b=Vn5AcRhuGSt2DFamCzGpSUHNC/sEkT8T+X90OV2ajvTRiXEQZlJ2uBTzMl1cZLkY
	8REbeo8r1FHpwGjvvKUw7Ibd/uoePOjBTwfTSB6YfpMVT2m8VKXcETlUALaUlHcuRRD
	NDdFupVdVqUxPssNPoMBayroq0UMTgLmtRVwFX2o=
Received: by mx.zohomail.com with SMTPS id 1756214074471159.25951317157126;
	Tue, 26 Aug 2025 06:14:34 -0700 (PDT)
Message-ID: <f2f09c95-1d08-43db-aee0-25cdaaf8dbca@collabora.com>
Date: Tue, 26 Aug 2025 15:14:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 4/6] media: verisilicon: AV1: Restore IOMMU context
 before decoding a frame
To: Jason Gunthorpe <jgg@ziepe.ca>
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>, joro@8bytes.org,
 will@kernel.org, robin.murphy@arm.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, p.zabel@pengutronix.de,
 mchehab@kernel.org, iommu@lists.linux.dev, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 linux-media@vger.kernel.org
References: <20250825153450.150071-1-benjamin.gaignard@collabora.com>
 <20250825153450.150071-5-benjamin.gaignard@collabora.com>
 <20250825170531.GA1899851@ziepe.ca>
 <01c327e8353bb5b986ef6fb1e7311437659aea4a.camel@collabora.com>
 <20250825183122.GB1899851@ziepe.ca>
 <441df5ff-8ed4-45ed-8a52-b542c6e7d38c@collabora.com>
 <20250826124155.GD1899851@ziepe.ca>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20250826124155.GD1899851@ziepe.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250826_061454_263034_624BFDDC 
X-CRM114-Status: GOOD (  18.38  )
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

CkxlIDI2LzA4LzIwMjUgw6AgMTQ6NDEsIEphc29uIEd1bnRob3JwZSBhIMOpY3JpdMKgOgo+IE9u
IFR1ZSwgQXVnIDI2LCAyMDI1IGF0IDExOjUyOjM3QU0gKzAyMDAsIEJlbmphbWluIEdhaWduYXJk
IHdyb3RlOgo+PiBMZSAyNS8wOC8yMDI1IMOgIDIwOjMxLCBKYXNvbiBHdW50aG9ycGUgYSDDqWNy
aXTCoDoKPj4+IE9uIE1vbiwgQXVnIDI1LCAyMDI1IGF0IDAxOjUwOjE2UE0gLTA0MDAsIE5pY29s
YXMgRHVmcmVzbmUgd3JvdGU6Cj4+Pgo+Pj4+IEphc29uLCB0aGUgcG9pbnQgaXMgdGhhdCB0aGUg
aW9tbXUgYW5kIHRoZSBWUFUgYXJlIG5vdCBzZXBhcmF0ZSBkZXZpY2VzLCB3aGljaAo+Pj4+IGNv
bWVzIHdpdGggc2lkZSBlZmZlY3RzLiBPbiBSS1ZEZWMgc2lkZSwgdGhlIGlvbW11IGNvbmZpZ3Vy
YXRpb24gZ2V0IHJlc2V0cwo+Pj4+IHdoZW5ldmVyIGEgZGVjb2RpbmcgZXJyb3IgbGVhZHMgdG8g
YSBWUFUgInNlbGYgcmVzZXQiLiBJIGNhbid0IHJlbWVtYmVyIHdobyBmcm9tCj4+Pj4gdGhlIGlv
bW11IHN1YnN5c3RlbSBzdWdnZXN0ZWQgdGhhdCwgYnV0IHRoZSBlbXB0eSBkb21haW4gbWV0aG9k
IHdhcyBhZ3JlZWQgdG8gYmUKPj4+IElESywgdGhhdCBzZWVtcyByZWFsbHkgZ29vZnkgdG9vIG1l
IGFuIGRlZmlhbnRseSBuZWVkcyB0byBiZQo+Pj4gZXh0ZW5zaXZlbHkgZG9jdW1lbnRlZCB0aGlz
IGlzIHJlc3RvcmluZyB0aGUgZGVmYXVsdCB3aXRoIHNvbWUgbG9yZQo+Pj4gbGluayBvZiB0aGUg
b3JpZ2luYWwgc3VnZ2VzdGlvbi4KPj4+Cj4+Pj4gdGhlIGxlYXN0IGludmFzaXZlIHdheSB0byB3
b3JrYXJvdW5kIHRoYXQgaXNzdWUuIEkgYmVsaWV2ZSBEZXRsZXYgdHJpZWQgbXVsdGlwbGUKPj4+
PiB0aW1lIHRvIGFkZCBBUElzIGZvciB0aGF0IGJlZm9yZSB0aGUgZGlzY3Vzc2lvbiBsZWFkIHRv
IHRoaXMgcGF0aC4KPj4+IFlvdSBtZWFuIHRoaXM6Cj4+Pgo+Pj4gaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvbGludXgtaW9tbXUvMjAyNTAzMTgxNTIwNDkuMTQ3ODEtMS1kZXRsZXYuY2FzYW5vdmFA
Y29sbGFib3JhLmNvbS8KPj4+Cj4+PiBXaGljaCBjYW1lIGJhY2sgd2l0aCB0aGUgc2FtZSByZW1h
cmsgSSB3b3VsZCBnaXZlOgo+Pj4KPj4+ICAgIFBsZWFzZSBoYXZlIHNvbWUga2luZCBvZiBwcm9w
ZXIgcmVzZXQgbm90aWZpZXIgbWVjaGFuaXNtIC0gaW4gZmFjdAo+Pj4gICAgd2l0aCBydW50aW1l
IFBNIGNvdWxkIHlvdSBub3QgYWxyZWFkeSBpbnZva2UgYSBzdXNwZW5kL3Jlc3VtZSBjeWNsZQo+
Pj4gICAgdmlhIHRoZSBkZXZpY2UgbGlua3M/Cj4+IHdoZW4gZG9pbmcgcGFyYWxsZWwgZGVjb2Rl
IHN1c3BlbmQvcmVzdW1lIGFyZSBub3QgaW52b2tlZC4KPiBJdCB3YXMgYSBwcm9wb3NhbCBmb3Ig
YW4gZXJyb3IgcmVjb3ZlcnkgcGF0aC4KPgo+Pj4gT3IgYW5vdGhlciByZWFzb25hYmxlIG9wdGlv
bjoKPj4+Cj4+PiAgICAgT3IgYXQgd29yc3QganVzdCBleHBvcnQgYSBwdWJsaWMgaW50ZXJmYWNl
IGZvciB0aGUgb3RoZXIgZHJpdmVyIHRvCj4+PiAgICAgaW52b2tlIHJrX2lvbW11X3Jlc3VtZSgp
IGRpcmVjdGx5Lgo+Pj4KPj4+IFNpZ2guCj4+IEFuIG90aGVyIHNvbHV0aW9uIHdoaWNoIGlzIHdv
cmtpbmcgaXMgdG8gY2FsbCBpb21tdV9mbHVzaF9pb3RsYl9hbGwoKQo+PiBiZWZvcmUgZGVjb2Rp
bmcgZWFjaCBmcmFtZS4KPiBUaGF0IHdhcyBhbHJlYWR5IHByb3Bvc2VkIGFuZCBzaG90IGRvd24s
IGl0IG1ha2VzIG5vIHNlbnNlIGF0IGFsbCB1c2UKPiB0byB1c2UgZmx1c2hpbmcgdG8gcmVzZXQg
dGhlIHJlZ2lzdGVycyBiZWNhdXNlIHRoZSBIVyB3ZWlyZGx5IGxvc3QKPiB0aGVtLCBhbmQgZmx1
c2hpbmcgc2hvdWxkIG5ldmVyIGhhcHBlbiBvdXRzaWRlIG1hcHBpbmcgY29udGV4dHMuCj4KPiBJ
ZiB0aGUgSFcgaXMgcmVhbGx5IHJlc2V0dGluZyB0aGUgaW9tbXUgcmVnaXN0ZXJzIGFmdGVyIGV2
ZXJ5IGZyYW1lCj4gdGhhdCBpcyByZWFsbHkganVzdCBwYWluZnVsbHkgYnJva2VuLCBhbmQgbWFr
ZXMgbWUgd29uZGVyIGlmIGl0IHJlYWxseQo+IHNob3VsZCBiZSBhbiBpb21tdSBzdWJzeXN0ZW0g
ZHJpdmVyIGF0IGFsbCBpZiBpdCBpcyBzbyB0aWdodGx5IGNvdXBsZWQKPiB0byB0aGUgY29tcHV0
aW5nIEhXLiA6XAo+Cj4gTGlrZSB3ZSB3b3VsZG4ndCB0cnkgdG8gcHV0IGEgR1BVIE1NVSBpbnRv
IHRoZSBpb21tdSBzdWJzeXN0ZW0gdGhvdWdoCj4gdGhleSBkbyBmYWlybHkgc2ltaWxhciB0aGlu
Z3MuCgpJIHdpbGwgYWRkIHZzaV9pb21tdV9yZXN0b3JlX2N0eCgpIGZ1bmN0aW9uIHdoZXJlIGFs
bCBsb2NrcyB3aWxsIGJlCm1hbmFnZWQgYW5kIGNhbGwgdnNpX2lvbW11X2VuYWJsZSgpLiBEZWNv
ZGVyIGRyaXZlciB3aWxsIGNhbGwgdGhpcyBmdW5jdGlvbgpiZWZvcmUgZWFjaCBmcmFtZS4KSSB0
aGluayBpdCBzaW1pbGFyIHRvIHNvbWUgb21hcCBpb21tdSBjb2RlIEkgaGF2ZSBmb3VuZC4KClJl
Z2FyZHMsCkJlbmphbWluCgo+IEphc29uCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
