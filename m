Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D040C4167D
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 11:12:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=brRjVC69xb2/VhPm/3TvQyBOyutRPSdpLsDMxW1R0Xk=; b=pkhNkMeIwMTXpH
	vUOVVYvsnhWpozHYse7uMvpC/BVE7lL+xHv62sAQROaIFRxG1u1EvmVDd+VOqR1ft1JXRihlVUvg0
	hlmBhjGdGvs4DVaLQZSU0XVvwxN8AugSDW/a3M7RtZaWJmPgySFwikeEqPDT2x29Uc2EcRCSjrK52
	I99MlU2BVuifXy2ovUwvPvRwa/GASdewJgtOGz5GrcH+8MzPK8xPjg5DfZK28nLVLUNi5TzVqV2OX
	l50z7G7hlUvclHkAL6JUNLQJS8OCibsUcBOqpGtPZ5/RAahR2xVnVrc4LllwOYpCzft05mstXEsjg
	aAVRvfaajhzSXM24qekw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r12xf-00627o-2j;
	Thu, 09 Nov 2023 11:12:35 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r12xb-00625y-2o;
	Thu, 09 Nov 2023 11:12:33 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 39CA8660741E;
	Thu,  9 Nov 2023 11:12:29 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699528350;
	bh=kjznN3RZO4AREL4Gg9y4Yf3GgjVsJaN4QypN6NO9UfM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=kJpNuahcdwBQR70WBWuPjvdfDbzzSvYEhaMNLUDTys2nMOx5sE6RUaiTiDu4ux6b0
	 vxNe3EsE0h17in/Rv4NeesbTIU7W6j4bzBz4qTeqF1auLHvpVum48UK+4yCV1M82Y4
	 BGCJO2me9W1YHyYpU1oCMOZ08elF9L2uZPDgghMk8/z0xe6ts4nAz3bgVHu21Ba/lr
	 A3Sj1MhjunmP3xsRnOKoIyzjXny4T7jd0N2ZQvFApOXNhCqeK8c6cIQF434RFYX5S7
	 1DsDF5m/7BJB51VSUeBJ7UseMl1uDU7SFNeiFo3VB/mJM8dH/BSI3FbOgBY1b3r179
	 2RxaEXOZL4z3A==
Message-ID: <31a67704-373a-407e-88c7-e079c7260e82@collabora.com>
Date: Thu, 9 Nov 2023 12:12:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 31/56] media: imx: Stop direct calls to queue
 num_buffers field
Content-Language: en-US
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
 nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com,
 Steve Longerbeam <slongerbeam@gmail.com>
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-32-benjamin.gaignard@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231031163104.112469-32-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_031232_035040_43744B1B 
X-CRM114-Status: GOOD (  14.14  )
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

VyBkbml1IDMxLjEwLjIwMjMgb8KgMTc6MzAsIEJlbmphbWluIEdhaWduYXJkIHBpc3plOgo+IFVz
ZSB2YjJfZ2V0X251bV9idWZmZXJzKCkgdG8gYXZvaWQgdXNpbmcgcXVldWUgbnVtX2J1ZmZlcnMg
ZmllbGQgZGlyZWN0bHkuCj4gVGhpcyBhbGxvd3MgdXMgdG8gY2hhbmdlIGhvdyB0aGUgbnVtYmVy
IG9mIGJ1ZmZlcnMgaXMgY29tcHV0ZWQgaW4gdGhlCj4gZnV0dXJlLgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgoK
UmV2aWV3ZWQtYnk6IEFuZHJ6ZWogUGlldHJhc2lld2ljeiA8YW5kcnplai5wQGNvbGxhYm9yYS5j
b20+Cgo+IENDOiBTdGV2ZSBMb25nZXJiZWFtIDxzbG9uZ2VyYmVhbUBnbWFpbC5jb20+Cj4gQ0M6
IFBoaWxpcHAgWmFiZWwgPHAuemFiZWxAcGVuZ3V0cm9uaXguZGU+Cj4gLS0tCj4gICBkcml2ZXJz
L3N0YWdpbmcvbWVkaWEvaW14L2lteC1tZWRpYS1jYXB0dXJlLmMgfCA3ICsrKystLS0KPiAgIDEg
ZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9pbXgvaW14LW1lZGlhLWNhcHR1cmUuYyBiL2Ry
aXZlcnMvc3RhZ2luZy9tZWRpYS9pbXgvaW14LW1lZGlhLWNhcHR1cmUuYwo+IGluZGV4IDQ4NDYw
NzgzMTVmZi4uY2UwMjE5OWU3YjFiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRp
YS9pbXgvaW14LW1lZGlhLWNhcHR1cmUuYwo+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9p
bXgvaW14LW1lZGlhLWNhcHR1cmUuYwo+IEBAIC02MDUsNiArNjA1LDcgQEAgc3RhdGljIGludCBj
YXB0dXJlX3F1ZXVlX3NldHVwKHN0cnVjdCB2YjJfcXVldWUgKnZxLAo+ICAgewo+ICAgCXN0cnVj
dCBjYXB0dXJlX3ByaXYgKnByaXYgPSB2YjJfZ2V0X2Rydl9wcml2KHZxKTsKPiAgIAlzdHJ1Y3Qg
djRsMl9waXhfZm9ybWF0ICpwaXggPSAmcHJpdi0+dmRldi5mbXQ7Cj4gKwl1bnNpZ25lZCBpbnQg
cV9udW1fYnVmcyA9IHZiMl9nZXRfbnVtX2J1ZmZlcnModnEpOwo+ICAgCXVuc2lnbmVkIGludCBj
b3VudCA9ICpuYnVmZmVyczsKPiAgIAo+ICAgCWlmICh2cS0+dHlwZSAhPSBWNEwyX0JVRl9UWVBF
X1ZJREVPX0NBUFRVUkUpCj4gQEAgLTYxMywxNCArNjE0LDE0IEBAIHN0YXRpYyBpbnQgY2FwdHVy
ZV9xdWV1ZV9zZXR1cChzdHJ1Y3QgdmIyX3F1ZXVlICp2cSwKPiAgIAlpZiAoKm5wbGFuZXMpIHsK
PiAgIAkJaWYgKCpucGxhbmVzICE9IDEgfHwgc2l6ZXNbMF0gPCBwaXgtPnNpemVpbWFnZSkKPiAg
IAkJCXJldHVybiAtRUlOVkFMOwo+IC0JCWNvdW50ICs9IHZxLT5udW1fYnVmZmVyczsKPiArCQlj
b3VudCArPSBxX251bV9idWZzOwo+ICAgCX0KPiAgIAo+ICAgCWNvdW50ID0gbWluX3QoX191MzIs
IFZJRF9NRU1fTElNSVQgLyBwaXgtPnNpemVpbWFnZSwgY291bnQpOwo+ICAgCj4gICAJaWYgKCpu
cGxhbmVzKQo+IC0JCSpuYnVmZmVycyA9IChjb3VudCA8IHZxLT5udW1fYnVmZmVycykgPyAwIDoK
PiAtCQkJY291bnQgLSB2cS0+bnVtX2J1ZmZlcnM7Cj4gKwkJKm5idWZmZXJzID0gKGNvdW50IDwg
cV9udW1fYnVmcykgPyAwIDoKPiArCQkJY291bnQgLSBxX251bV9idWZzOwo+ICAgCWVsc2UKPiAg
IAkJKm5idWZmZXJzID0gY291bnQ7Cj4gICAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
