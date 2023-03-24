Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7DB3C6FD20
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Mar 2023 10:31:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q1cpgB50TJjQqJiTqfByqOPRvhqRqymaUkx+3i8Vs6k=; b=IWoV2bBIxptgN4
	Ng3DE519zbz1rlOMKSb1QLP+1XHwR4ZAO+gvyafr/npSxQFi6i1oHSPzqvxr/NugZkMguDW4Vcuko
	HDa86R9GOdOcSrwBsRAv3CQ7L7Wg9JnWxBp72WNeti0c1qevt4WUQNPKiqAduTmJWZDF3UDaDgiza
	ZFeArwnmCJQhzGQOleIK+VtjmFF5QM6TlXJbP88hL9xjagMCo6VCuKC5S9Z5Qmej7l3qRVYzmhEfq
	FUbjXnsMpj4wQBFWyaVkB/H+bGMntDqCmXvHq13CrZwaUlPwJUtak5xAzgV79G2iLxpnAPJ/1c4Jo
	AVKTtOxStmktRtzKg13Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfeh6-004Aal-1M;
	Fri, 24 Mar 2023 10:30:48 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfeh3-004Aa7-0x
	for linux-rockchip@lists.infradead.org;
	Fri, 24 Mar 2023 10:30:46 +0000
Received: from [IPV6:2a01:e0a:120:3210:1cb3:11e4:5834:9d5a] (unknown [IPv6:2a01:e0a:120:3210:1cb3:11e4:5834:9d5a])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 7580D6603110;
	Fri, 24 Mar 2023 10:30:42 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1679653842;
	bh=xd/0dAHKT72OpMeU2hON+p4v+8T8LdsuKMjq6DagS1k=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=JQlLyCcthqEwzNcD15fv0pDX+WL703hyw+3RuhIwDN8qzrg4T0LBy1dQu2T80Up0g
	 HJAM156tB7QNeJtI7ZtRSVSlE9pVYPdd+vu/Pmek4llTWLUh/OgUVfws1+A/uFilQ+
	 enoGcWO7OLBQbErZlFNAhEKGudHa0oL/DBPABRLTcp1agUYaiJJTbSuG9+rWQDFNDL
	 ivOh1H9cjKcgdC9FbOaSMyXdOjxyE0fDbuPGVpPk6ZsY3A9h/My7igIGLKsddHAgJH
	 hWlMtiNyjDKatzfkVy2RfyViBwYnQ5rQJvh3xJZhaQJ6WdBy+th2tiuVkNk6eMw4Bq
	 8tDNjxIFGnJNQ==
Message-ID: <2e216574-71fa-bda5-e985-cbd1779caedc@collabora.com>
Date: Fri, 24 Mar 2023 11:30:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: media: verisilicon: Simplify error handling in
 tile_buffer_reallocate()
Content-Language: en-US
To: Markus Elfring <Markus.Elfring@web.de>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, kernel-janitors@vger.kernel.org
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20230323131704.414281-1-benjamin.gaignard@collabora.com>
 <69159492-dced-a082-5f7e-3d8d0e880f58@web.de>
 <bb638f1a-9d13-7331-9190-7470e98d05f7@collabora.com>
 <98f7a85c-e752-8f40-f658-198e42518343@web.de>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <98f7a85c-e752-8f40-f658-198e42518343@web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_033045_466286_D4E4DEEF 
X-CRM114-Status: GOOD (  10.22  )
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

CkxlIDI0LzAzLzIwMjMgw6AgMTA6NTUsIE1hcmt1cyBFbGZyaW5nIGEgw6ljcml0wqA6Cj4+Pj4g
UmV3b3JrIGFsbG9jYXRpb24gZXJyb3JzIGNhc2VzIGhhbmRsaW5nIHRvIHNpbXBseSBpdAo+Pj4+
IGJ5IHJlbW92aW5nIHVzZWxlc3MgdGVzdHMuCj4+PiBIb3cgZG8geW91IHRoaW5rIGFib3V0IHRv
IHVzZSBhIHdvcmRpbmcgbGlrZSDigJxTaW1wbGlmeSBoYW5kbGluZyBvZiBhbGxvY2F0aW9uCj4+
PiBlcnJvciBjYXNlcyBieSByZW1vdmluZyB1c2VsZXNzIHRlc3RzLuKAnSBmb3IgeW91ciBjaGFu
Z2UgZGVzY3JpcHRpb24/Cj4gSSB3b3VsZCBhcHByZWNpYXRlIGFub3RoZXIgYml0IG9mIGZpbmUt
dHVuaW5nIGZvciBzdWNoIHRleHQuCj4KPgo+Pj4+IFJlcG9ydGVkLWJ5OiDigKYKPj4+PiAtLS0K
Pj4+PiAgwqAgLi4uL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19oZXZjLmPCoCB8
IDIzICsrKysrKysrLS0tLS0tLS0tLS0KPj4+IFdvdWxkIHlvdSBsaWtlIHRvIGFkZCBhbnkgbGlu
a3MgZm9yIGNvcnJlc3BvbmRpbmcgaW5mb3JtYXRpb24/Cj4+IE5vLCBpdCB3YXMganVzdCB0byBz
aG93IHRoYXQgeW91IGhhdmUgcmVwb3J0ZWQgdGhlIHBvc3NpYmxlIGNsZWFuIHVwCj4gSSBpbWFn
aW5lIHRoYXQgYSBiaXQgb2YgYmFja2dyb3VuZCBpbmZvcm1hdGlvbiB3aWxsIGJlIGhlbHBmdWwg
aW4gYSB0YWcKPiBsaWtlIOKAnExpbms64oCdIGFsc28gZm9yIHlvdXIgcGF0Y2guCj4KPiAyMDIz
LTAzLTIyCj4gW1BBVENIXSBtZWRpYTogaGFudHJvOiBIRVZDOiBGaXggZXhjZXB0aW9uIGhhbmRs
aW5nIGluIHRpbGVfYnVmZmVyX3JlYWxsb2NhdGUoKQo+Cj4gRXhhbXBsZXM6Cj4gKiBodHRwczov
L2xvcmUua2VybmVsLm9yZy9jb2NjaS9lYTExMmZkZC03YWYwLWQxZjEtNDQyYy0zMDZlNmVjNTRh
NWJAd2ViLmRlLwo+ICAgIGh0dHBzOi8vc3ltcGEuaW5yaWEuZnIvc3ltcGEvYXJjL2NvY2NpLzIw
MjMtMDMvbXNnMDAwMzcuaHRtbAo+Cj4gKiBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzVk
NWM4YzdiLWI5MjYtODM5Ny03OTk0LTYyM2FjOWIzN2U4M0Bjb2xsYWJvcmEuY29tLwoKWW91IGFy
ZSB3ZWxjb21lIHRvIHByb3Bvc2UgYSB2MyBmb3IgdGhpcyBwYXRjaCA6LSkKCj4KPgo+IFJlZ2Fy
ZHMsCj4gTWFya3VzCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
