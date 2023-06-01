Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77DBBC7EE29
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Jun 2023 08:03:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZcMV3z3c8bUWpt7HtnFvJ+3OUBIZPftTvUKFUJQVmKA=; b=QLdZq1Sm/yK0pp
	PkpiJNienRVF78F8VZXIEaBYohFcEiFVBBUfzk15BiDmWWHIwcA4F64cQHOlDtA0bIp9+OAyIkZkV
	6OoTR0bATkEylvdkSScD5YIOH2adji7pVE5ogAqZqM3F6MsXJuxFpYjdhQMKzgLzTgzj2KGWI395g
	Yt7b1p5ffqyGqpLkFqupQMKLvbFUNe0LFRCTA4rHrQ6e6dyhjcNYWrvi6ulZX1Z4F1i9SbR5COVuL
	Kdh//ZgK0CwJRN3w/MYTKdVE6109+sGH4sOhcwUfCb0Z4ir1dwyBEU5yii2D144ED0i16jGxEz1p2
	TLk6r4tswGs7rXJYZpQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4dHh-002TZw-2F;
	Thu, 01 Jun 2023 08:03:49 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4dHd-002TXi-2M;
	Thu, 01 Jun 2023 08:03:47 +0000
Received: from [IPV6:2a01:e0a:120:3210:7d6d:c387:79e6:807d] (unknown [IPv6:2a01:e0a:120:3210:7d6d:c387:79e6:807d])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 7B7B06606ECE;
	Thu,  1 Jun 2023 09:03:41 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1685606622;
	bh=vPNmJuzIG5LIGX1QupTZo+d2rc1g3ZOc8ocjPfDkdis=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ivmwB1xugtA/DX4q4/kiYM/kIk+j9+L4NiQmrVIcwcdV6gg0U+iWYiU0xZ1AXopEi
	 QheNpVN0eNxmBFxGffDQk0HPSGK/BDVfBuBAWXnJ1JFTtl227w2Hulv2hqk09hySHi
	 eAFn8Orzpi+coXcr33KbBKxxFPexw+BaEWjSINhuiNEyLrePTmMQ4+scsGdVKzHSSw
	 5Tp+GfUY2JmKI8Vi5xZvnUhIhilFbsJy9ChG9HgzYMW0XBmvNz+nY9VbqEt9FpaZYH
	 vEUTki+ViM+K8uodCrfLjt1ZwnVxmGLgkYDiNQd1S2pw6Jx+IZ5H/yzfXHmfz9xcEO
	 S4h+TMa/sWBhQ==
Message-ID: <6f53b5f6-6649-f194-1808-5f5757b449f4@collabora.com>
Date: Thu, 1 Jun 2023 10:03:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 3/8] media: videobuf2: Add a module param to limit vb2
 queue buffer storage
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>
Cc: tfiga@chromium.org, m.szyprowski@samsung.com, mchehab@kernel.org,
 ming.qian@nxp.com, shijie.qin@nxp.com, eagle.zhou@nxp.com,
 bin.liu@mediatek.com, matthias.bgg@gmail.com,
 angelogioacchino.delregno@collabora.com, tiffany.lin@mediatek.com,
 andrew-ct.chen@mediatek.com, yunfei.dong@mediatek.com,
 stanimir.k.varbanov@gmail.com, quic_vgarodia@quicinc.com, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 daniel.almeida@collabora.com, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com
References: <20230321102855.346732-1-benjamin.gaignard@collabora.com>
 <20230321102855.346732-4-benjamin.gaignard@collabora.com>
 <6c4658fd-3a64-b3f8-67cd-17ed2d7d3567@xs4all.nl>
 <20230531080331.GB6496@pendragon.ideasonboard.com>
 <608ae7d6-3f3b-137d-08d2-d41a240be2c4@xs4all.nl>
 <20230531123945.GF27043@pendragon.ideasonboard.com>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20230531123945.GF27043@pendragon.ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_010346_067706_D234E812 
X-CRM114-Status: GOOD (  27.85  )
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

CkxlIDMxLzA1LzIwMjMgw6AgMTQ6MzksIExhdXJlbnQgUGluY2hhcnQgYSDDqWNyaXTCoDoKPiBP
biBXZWQsIE1heSAzMSwgMjAyMyBhdCAxMDozMDozNkFNICswMjAwLCBIYW5zIFZlcmt1aWwgd3Jv
dGU6Cj4+IE9uIDUvMzEvMjMgMTA6MDMsIExhdXJlbnQgUGluY2hhcnQgd3JvdGU6Cj4+PiBPbiBX
ZWQsIE1heSAzMSwgMjAyMyBhdCAwODozNjo1OUFNICswMjAwLCBIYW5zIFZlcmt1aWwgd3JvdGU6
Cj4+Pj4gT24gMjEvMDMvMjAyMyAxMToyOCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4+Pj4+
IEFkZCBtb2R1bGUgcGFyYW1ldGVyICJtYXhfdmJfYnVmZmVyX3Blcl9xdWV1ZSIgdG8gYmUgYWJs
ZSB0byBsaW1pdAo+Pj4+PiB0aGUgbnVtYmVyIG9mIHZiMiBidWZmZXJzIHN0b3JlIGluIHF1ZXVl
Lgo+Pj4+Pgo+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4u
Z2FpZ25hcmRAY29sbGFib3JhLmNvbT4KPj4+Pj4gLS0tCj4+Pj4+ICAgZHJpdmVycy9tZWRpYS9j
b21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi1jb3JlLmMgfCAxNSArKystLS0tLS0tLS0tLS0KPj4+
Pj4gICBpbmNsdWRlL21lZGlhL3ZpZGVvYnVmMi1jb3JlLmggICAgICAgICAgICAgICAgICB8IDEx
ICsrKysrKysrKy0tCj4+Pj4+ICAgMiBmaWxlcyBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCAx
NCBkZWxldGlvbnMoLSkKPj4+Pj4KPj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvY29t
bW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItY29yZS5jIGIvZHJpdmVycy9tZWRpYS9jb21tb24vdmlk
ZW9idWYyL3ZpZGVvYnVmMi1jb3JlLmMKPj4+Pj4gaW5kZXggYWU5ZDcyZjRkMTgxLi5mNGRhOTE3
Y2NmM2YgMTAwNjQ0Cj4+Pj4+IC0tLSBhL2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92
aWRlb2J1ZjItY29yZS5jCj4+Pj4+ICsrKyBiL2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVm
Mi92aWRlb2J1ZjItY29yZS5jCj4+Pj4+IEBAIC0zNCw2ICszNCw4IEBACj4+Pj4+ICAgc3RhdGlj
IGludCBkZWJ1ZzsKPj4+Pj4gICBtb2R1bGVfcGFyYW0oZGVidWcsIGludCwgMDY0NCk7Cj4+Pj4+
ICAgCj4+Pj4+ICttb2R1bGVfcGFyYW0obWF4X3ZiX2J1ZmZlcl9wZXJfcXVldWUsIHVsb25nLCAw
NjQ0KTsKPj4+PiBUaGVyZSBpcyBubyBNT0RVTEVfUEFSTV9ERVNDIGhlcmU/IFBsZWFzZSBhZGQu
IEkgc2VlIGl0IGlzIG5vdCB0aGVyZSBmb3IKPj4+PiB0aGUgZGVidWcgcGFyYW0gZWl0aGVyLCBp
dCBzaG91bGQgYmUgYWRkZWQgZm9yIHRoYXQgYXMgd2VsbC4KPj4+IFdvdWxkIHRoaXMgYmUgdGhl
IHJpZ2h0IHRpbWUgdG8gY29uc2lkZXIgcmVzb3VyY2UgYWNjb3VudGluZyBpbiBWNEwyIGZvcgo+
Pj4gYnVmZmVycyA/IEhhdmluZyBhIG1vZHVsZSBwYXJhbWV0ZXIgZG9lc24ndCBzb3VuZCB2ZXJ5
IHVzZWZ1bCwgYW4KPj4+IGFwcGxpY2F0aW9uIGNvdWxkIGVhc2lseSBhbGxvY2F0ZSBtb3JlIGJ1
ZmZlcnMgYnkgdXNpbmcgYnVmZmVyIG9ycGhhbmluZwo+Pj4gKGFsbG9jYXRpbmcgYnVmZmVycywg
ZXhwb3J0aW5nIHRoZW0gYXMgZG1hYnVmIG9iamVjdHMsIGFuZCBmcmVlaW5nIHRoZW0sCj4+PiB3
aGljaCBsZWF2ZXMgdGhlIG1lbW9yeSBhbGxvY2F0ZWQpLiBSZXBlYXRpbmcgYWxsb2NhdGlvbiBj
eWNsZXMgdXAgdG8KPj4+IG1heF92Yl9idWZmZXJfcGVyX3F1ZXVlIHdpbGwgYWxsb3cgYWxsb2Nh
dGluZyBhbiB1bmJvdW5kZWQgbnVtYmVyIG9mCj4+PiBidWZmZXJzLCB1c2luZyBhbGwgdGhlIGF2
YWlsYWJsZSBzeXN0ZW0gbWVtb3J5LiBJJ2QgcmF0aGVyIG5vdCBhZGQgYQo+Pj4gbW9kdWxlIGFy
Z3VtZW50IHRoYXQgb25seSBnaXZlcyB0aGUgaW1wcmVzc2lvbiBvZiBzb21lIGtpbmQgb2Ygc2Fm
ZXR5Cj4+PiB3aXRob3V0IGFjdHVhbGx5IHByb3ZpZGluZyBhbnkgdmFsdWUuCj4+IERvZXMgZG1h
YnVmIGl0c2VsZiBwcm92aWRlIHNvbWUgYWNjb3VudGluZyBtZWNoYW5pc20/IEp1c3Qgd29uZGVy
aW5nLgo+Pgo+PiBNb3JlIHNwZWNpZmljIHRvIFY0TDI6IEknbSBub3Qgc28gc3VyZSBhYm91dCB0
aGlzIG1vZHVsZSBwYXJhbWV0ZXIgZWl0aGVyLgo+PiBJdCBtYWtlcyBzZW5zZSB0byBoYXZlIGEg
Y2hlY2sgc29tZXdoZXJlIGFnYWluc3QgcmlkaWN1bG91cyB2YWx1ZXMgKGkuZS4KPj4gYWxsb2Nh
dGluZyBNQVhJTlQgYnVmZmVycyksIGJ1dCB0aGF0IGNhbiBiZSBhIGRlZmluZSBhcyB3ZWxsLiBC
dXQgb3RoZXJ3aXNlCj4+IEkgYW0gZmluZSB3aXRoIGFsbG93aW5nIGFwcGxpY2F0aW9ucyB0byBh
bGxvY2F0ZSBidWZmZXJzIHVudGlsIHRoZSBtZW1vcnkKPj4gaXMgZnVsbC4KPj4KPj4gVGhlIHF1
ZXN0aW9uIGlzIHJlYWxseTogd2hhdCBpcyB0aGlzIHBhcmFtZXRlciBzdXBwb3NlZCB0byBkbz8g
VGhlIG9ubHkKPj4gdGhpbmcgaXQgZG9lcyBpcyB0byBzYW5pdGl6ZSB1bmxpa2VseSBpbnB1dHMg
KGUuZy4gYWxsb2NhdGluZyBNQVhJTlQgYnVmZmVycykuCj4+Cj4+IEkgcHJlZmVyIHRoYXQgYXMg
YSBkZWZpbmUsIHRvIGJlIGhvbmVzdC4KPj4KPj4gSSB0aGluayBpdCBpcyBwZXJmZWN0bHkgZmlu
ZSBmb3IgdXNlcnMgdG8gdHJ5IHRvIHJlcXVlc3QgbW9yZSBidWZmZXJzIHRoYW4KPj4gbWVtb3J5
IGFsbG93cy4gSXQgd2lsbCBqdXN0IGZhaWwgaW4gdGhhdCBjYXNlLCBub3QgYSBwcm9ibGVtLgo+
Pgo+PiBBbmQgaWYgYW4gYXBwbGljYXRpb24gaXMgZG9pbmcgc2lsbHkgdGhpbmdzIGxpa2UgYnVm
ZmVyIG9ycGhhbmluZywgdGhlbiBzbwo+PiB3aGF0PyBJcyB0aGF0IGFueSBkaWZmZXJlbnQgdGhh
biBhbGxvY2F0aW5nIG1lbW9yeSBhbmQgbm90IGZyZWVpbmcgaXQ/Cj4+IEV2ZW50dWFsbHkgaXQg
d2lsbCBydW4gb3V0IG9mIG1lbW9yeSBhbmQgY3Jhc2gsIHdoaWNoIGlzIG5vcm1hbC4KPiBMaW51
eCBwcm92aWRlcyBBUElzIHRvIGFjY291bnQgZm9yIGFuZCBsaW1pdCB1c2FnZSBvZiByZXNvdXJj
ZXMsCj4gaW5jbHVkaW5nIG1lbW9yeS4gQSBzeXN0ZW0gYWRtaW5pc3RyYXRvciBjYW4gcHJldmVu
dCByb2d1ZSBwcm9jZXNzZXMKPiBmcm9tIHN0YXJ2aW5nIHN5c3RlbSByZXNvdXJjZXMuIFRoZSBt
ZW1vcnkgY29uc3VtZWQgYnkgdmIyIGJ1ZmZlciBpc24ndAo+IHRha2VuIGludG8gYWNjb3VudCwg
bWFraW5nIFY0TDIgZXNzZW50aWFsbHkgdW5zYWZlIGZvciB1bnRydXN0ZWQKPiBwcm9jZXNzZXMu
Cj4KPiBOb3csIHRvIGJlIGZhaXIsIHRoZXJlIGFyZSBtYW55IHJlYXNvbnMgd2h5IGFsbG93aW5n
IGFjY2VzcyB0byB2NEwyCj4gZGV2aWNlcyB0byB1bnRydXN0ZWQgYXBwbGljYXRpb25zIGlzIGEg
YmFkIGlkZWEsIGFuZCBtZW1vcnkgY29uc3VtcHRpb24KPiBpcyBsaWtlbHkgbm90IGV2ZW4gdGhl
IHdvcnN0IG9uZS4gU3RpbGwsIGlzIHRoaXMgc29tZXRoaW5nIHdlIHdhbnQgdG8KPiBmaXgsIG9y
IGRvIHdlIHdhbnQgdG8gY29uc2lkZXIgVjRMMiB0byBiZSBwcml2aWxlZGdlZCBBUEkgb25seSA/
IFJpZ2h0Cj4gbm93IHdlIGNhbid0IGRvIHNvLCBidXQgd2l0aCBtYW55IExpbnV4IHN5c3RlbXMg
bW92aW5nIHRvd2FyZHMgcGlwZXdpcmUsCj4gd2UgY291bGQgcG9zc2libHkgaGF2ZSBhIHN5c3Rl
bSBkYWVtb24gaXNvbGF0aW5nIHVudHJ1c3RlZCBhcHBsaWNhdGlvbnMKPiBmcm9tIHRoZSByZXN0
IG9mIHRoZSBzeXN0ZW0uIFdlIG1heSB0aHVzIG5vdCBuZWVkIHRvIGZpeCB0aGlzIGluIHRoZQo+
IFY0TDIgQVBJLgoKSSdtIHdvcmtpbmcgaW4gdjMgd2hlcmUgSSdtIHVzaW5nIFhhcnJheSBBUEku
CgpKdXN0IHRvIGJlIHN1cmUgdG8gdW5kZXJzdGFuZCB5b3Ugd2VsbDoKSSBjYW4ganVzdCByZW1v
dmUgVkIyX01BWF9GUkFNRSBsaW1pdCB3aXRob3V0IGFkZGluZyBhIG5ldyBvbmUgPwoKPgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
