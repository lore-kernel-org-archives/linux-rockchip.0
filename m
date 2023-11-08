Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3ED3BC4167B
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Nov 2023 16:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9GHs/UnEwMZkBV8oImRS6WGgHIabN3OrgNc89APBdyk=; b=JBvRxTsIStFFRi
	3mKpMHmw6Fw4dT3eNOq5buiH5ZAZN2s/QKfO9g4oa1RP2LtH1omvAYQFqLz7Kh8jjQsgTvJtlDsue
	IyNagBkSyD2OJIPrL8/Yes1CZR4n+DtLXzVJXAC/oZkfEiVP8lodbnDfc8BwUxcYjqXobsGNf7QHh
	P16Wv8urCLlrSl1ZJ4Vl6zS9h6SiFEbutQxqpsKnvhW3+NW2zqH9fkeeQuCyPMo++v431oKGs//Q8
	tztikyQRA63AKaoUdgBrLcTKHNgsuBw2t6pYyWlTy4QosBcaW+ofGw3yKFh4V1C7BPffnxNE35fCk
	lcSJrhCatasksD9CdccA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0llU-004L1M-1t;
	Wed, 08 Nov 2023 16:50:52 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0llQ-004Kzn-0g;
	Wed, 08 Nov 2023 16:50:49 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 1F2776607699;
	Wed,  8 Nov 2023 16:50:44 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699462245;
	bh=+sODeHjd8Zjj0on3iV7YDUdkXMjj8v7Lrv4oakBoV4Y=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ShKdGXxBZN2kZvFJvNnXk0eN2yafgrTLmYJpjq8w9ja9BC8pum//fy+OgQGWuZjaN
	 xxVgdeqTEYotKiIBOh/WSNOJayEVu+qVjAEBApU7NBis4Ypl3SDmK0ZqVnt3VW/cWO
	 4GBozKOo+ZAMCcBx59rq4zf+tyNqvOHhxbEgCIPRq8pVLYhzIDKEuB11bnAUaBziU7
	 DU3MpzzZDjyAeQu7DiOzTpps2ljRfZVoiV/Tict0SWLJoyIKRwg9QlerX6zZYzD81f
	 xBGSB9PKjo7m2UVELovGwQhaxuF5Fl6ybUrtONi1HQPpSupprlJXa1GeX8Zutd7vKH
	 RPybPbfDCvjmg==
Message-ID: <7128cc07-5c16-4e6d-b7d0-aa90ec493fd2@collabora.com>
Date: Wed, 8 Nov 2023 17:50:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 07/56] media: videobuf2: Add helper to get queue
 number of buffers
Content-Language: en-US
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
 nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-8-benjamin.gaignard@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231031163104.112469-8-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231108_085048_377899_BC63F5BC 
X-CRM114-Status: GOOD (  17.94  )
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

VyBkbml1IDMxLjEwLjIwMjMgb8KgMTc6MzAsIEJlbmphbWluIEdhaWduYXJkIHBpc3plOgo+IElu
IHRoZSBmdXR1cmUgYSBzaWRlIGVmZmVjdCBvZiBpbnRyb2R1Y2luZyBERUxFVEVfQlVGUyBpb2N0
bCBpcwo+IHRoZSBjcmVhdGUgb2YgJ2hvbGVzJyAoaS5lLiB1bnVzZWQgYnVmZmVycykgaW4gYnVm
cyBhcnJheXMuCj4gVG8ga25vdyB3aGljaCBlbnRyaWVzIG9mIHRoZSBidWZzIGFycmF5cyBhcmUg
dXNlZCBhIGJpdG1hcCB3aWxsCj4gYmUgYWRkZWQgaW4gc3RydWN0IHZiMl9xdWV1ZS4gVGhhdCB3
aWxsIGFsc28gbWVhbiB0aGF0IHRoZSBudW1iZXIKPiBvZiBidWZmZXJzIHdpbGwgYmUgY29tcHV0
ZWQgZ2l2ZW4gdGhlIG51bWJlciBvZiBiaXQgc2V0IGluIHRoaXMgYml0bWFwLgo+IFRvIHNtb290
aGx5IGFsbG93IHRoaXMgZXZvbHV0aW9uIGFsbCBkcml2ZXMgbXVzdCBzdG9wIHVzaW5nCj4gZGly
ZWN0bHkgbnVtX2J1ZmZlcnMgZmllbGQgZnJvbSBzdHJ1Y3QgdmIyX3F1ZXVlLgo+IAo+IFNpZ25l
ZC1vZmYtYnk6IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEu
Y29tPgoKUmV2aWV3ZWQtYnk6IEFuZHJ6ZWogUGlldHJhc2lld2ljeiA8YW5kcnplai5wQGNvbGxh
Ym9yYS5jb20+Cgo+IC0tLQo+ICAgaW5jbHVkZS9tZWRpYS92aWRlb2J1ZjItY29yZS5oIHwgMTEg
KysrKysrKysrKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAxIGRlbGV0
aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbWVkaWEvdmlkZW9idWYyLWNvcmUuaCBi
L2luY2x1ZGUvbWVkaWEvdmlkZW9idWYyLWNvcmUuaAo+IGluZGV4IGNkM2ZmMWNkNzU5ZC4uOGY5
ZDllNGFmNWIxIDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvbWVkaWEvdmlkZW9idWYyLWNvcmUuaAo+
ICsrKyBiL2luY2x1ZGUvbWVkaWEvdmlkZW9idWYyLWNvcmUuaAo+IEBAIC0xMTM5LDYgKzExMzks
MTUgQEAgc3RhdGljIGlubGluZSBib29sIHZiMl9maWxlaW9faXNfYWN0aXZlKHN0cnVjdCB2YjJf
cXVldWUgKnEpCj4gICAJcmV0dXJuIHEtPmZpbGVpbzsKPiAgIH0KPiAgIAo+ICsvKioKPiArICog
dmIyX2dldF9udW1fYnVmZmVycygpIC0gZ2V0IHRoZSBudW1iZXIgb2YgYnVmZmVyIGluIGEgcXVl
dWUKPiArICogQHE6CQlwb2ludGVyIHRvICZzdHJ1Y3QgdmIyX3F1ZXVlIHdpdGggdmlkZW9idWYy
IHF1ZXVlLgo+ICsgKi8KPiArc3RhdGljIGlubGluZSB1bnNpZ25lZCBpbnQgdmIyX2dldF9udW1f
YnVmZmVycyhzdHJ1Y3QgdmIyX3F1ZXVlICpxKQo+ICt7Cj4gKwlyZXR1cm4gcS0+bnVtX2J1ZmZl
cnM7Cj4gK30KPiArCj4gICAvKioKPiAgICAqIHZiMl9pc19idXN5KCkgLSByZXR1cm4gYnVzeSBz
dGF0dXMgb2YgdGhlIHF1ZXVlLgo+ICAgICogQHE6CQlwb2ludGVyIHRvICZzdHJ1Y3QgdmIyX3F1
ZXVlIHdpdGggdmlkZW9idWYyIHF1ZXVlLgo+IEBAIC0xMTQ3LDcgKzExNTYsNyBAQCBzdGF0aWMg
aW5saW5lIGJvb2wgdmIyX2ZpbGVpb19pc19hY3RpdmUoc3RydWN0IHZiMl9xdWV1ZSAqcSkKPiAg
ICAqLwo+ICAgc3RhdGljIGlubGluZSBib29sIHZiMl9pc19idXN5KHN0cnVjdCB2YjJfcXVldWUg
KnEpCj4gICB7Cj4gLQlyZXR1cm4gKHEtPm51bV9idWZmZXJzID4gMCk7Cj4gKwlyZXR1cm4gdmIy
X2dldF9udW1fYnVmZmVycyhxKSA+IDA7Cj4gICB9Cj4gICAKPiAgIC8qKgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
