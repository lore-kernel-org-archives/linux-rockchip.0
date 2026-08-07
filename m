Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93E8DC5AC7A
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Aug 2026 14:22:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KLcmIOiC9S1eVtq80kcWuVKT1Se66bIQKFV1iTyQnZ0=; b=EGwj4DgOtSCCEN
	J8FvH65aTzy30MrumIK3HK5YTPphcT2MKvDmRXjdTjSvGVvzoVGhKUmJN7EhX6fPaMG8cOUQxgjrN
	0UMsLdZyQKSbHGILbknpASzbOdglSgcR2SCYvL9At+k/t6/rWPUA/G7kykM6p2dzA+bDgokFL+4W2
	NorMn1NGgutJMBDBHPRXPJKc9l3XXsNJOrZlmlhc7umHeXWVyB3TS8IHzQaV0yxSMbNkx1ONp9fq4
	wQy5BAbvn5cJpMUQioj9tIwDQq/PMQuTT2jpyI++EYkji7f/JIN2+k5PfHhhKwsgramCeU5rET6wt
	HRxRmrjqTvD1eSgHfIkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsLT0-00000008G59-0a4h;
	Fri, 07 Aug 2026 14:22:34 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsLSx-00000008G4F-1K6P;
	Fri, 07 Aug 2026 14:22:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1786112547;
	bh=Z18AD3eJbmG6g7iT3gQzh9p4HXJKnEXyBQpiwqBYGh8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=i8mAA1aRBHR+bFJ2R7K3C/2aHumZlngtjHzPJpTITfLHpTtaYspdj00rm/CX2oqKs
	 Aqjj6l9ascZ5trGek5YqHEbIg6zXuk4pLKKATcvCevADfAqDqEVVk43Mt3immfqZbj
	 vIOeLHQx5Y4OAnPgxnNIj9GDZ2RHySE6nPPP7Pckfr9pM41C59JVIqfbQP2ayHPtbL
	 Y6ZZ+tDxO4+ulSQdr8cXKZNWHhFm+qTC/QD/9rkZ62hBVMSZDE5KpUIUuzi2OK56NX
	 ep5fZRTPXJalm+l+PmqDOlmU8rqWPYDo6XlI6UX/oSRpzJncgyyhRkkNE8QZrAzkq6
	 BBf9pYRKvDrvQ==
Received: from [100.64.0.241] (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 6A53517E021C;
	Fri, 07 Aug 2026 16:22:27 +0200 (CEST)
Message-ID: <f7432098-f7f3-4893-9aaf-e9eafe928ad0@collabora.com>
Date: Fri, 7 Aug 2026 17:22:27 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 05/10] phy: rockchip: samsung-hdptx: Handle uncommitted
 PHY config changes
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Algea Cao <algea.cao@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>,
 kernel@collabora.com, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, =?UTF-8?Q?Thomas_Niederpr=C3=BCm?=
 <dubito@online.de>, Simon Wright <simon@symple.nz>,
 Diederik de Haas <diederik@cknow-tech.com>,
 Andy Yan <andy.yan@rock-chips.com>
References: <20260723-hdptx-clk-fixes-v5-0-8e786067865f@collabora.com>
 <20260723-hdptx-clk-fixes-v5-5-8e786067865f@collabora.com>
 <wuoofxrtk3ieb5ukmk4jed3oyeqhyyttdo7fidz7qyingswtki@53vy32pjjqja>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <wuoofxrtk3ieb5ukmk4jed3oyeqhyyttdo7fidz7qyingswtki@53vy32pjjqja>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260807_072231_497117_D9552121 
X-CRM114-Status: GOOD (  16.56  )
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

T24gOC83LzI2IDQ6MDQgUE0sIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToKPiBPbiBUaHUs
IEp1bCAyMywgMjAyNiBhdCAxMDo0MTo0OFBNICswMzAwLCBDcmlzdGlhbiBDaW9jYWx0ZWEgd3Jv
dGU6Cj4+IEFueSBjaGFuZ2VzIHRvIHRoZSBQSFkgbGluayByYXRlIGFuZC9vciBjb2xvciBkZXB0
aCBkb25lIHZpYSB0aGUgSERNSQo+PiBQSFkgY29uZmlndXJhdGlvbiBBUEkgYXJlIG5vdCBpbW1l
ZGlhdGVseSBwcm9ncmFtbWVkIGludG8gdGhlIGhhcmR3YXJlLAo+PiBidXQgYXJlIGRlbGF5ZWQg
dW50aWwgdGhlIFBIWSB1c2FnZSBjb3VudCBnZXRzIGluY3JlbWVudGVkIGZyb20gMCB0byAxLAo+
PiB0aGF0IGlzIHdoZW4gaXQgaXMgcG93ZXJlZCBvbiBvciB3aGVuIHRoZSBQTEwgY2xvY2sgZXhw
b3NlZCB0aHJvdWdoCj4+IHRoZSBDQ0YgQVBJIGlzIHByZXBhcmVkLCB3aGljaGV2ZXIgY29tZXMg
Zmlyc3QuCj4+Cj4+IFNpbmNlIHRoZSBjbG9jayBtaWdodCByZW1haW4gaW4gcHJlcGFyZWQgc3Rh
dGUgYWZ0ZXIgc3Vic2VxdWVudCBQSFkKPj4gY29uZmlnIGNoYW5nZXMsIHRoZSBwcm9ncmFtbWlu
ZyBjYW4gYWxzbyBiZSB0cmlnZ2VyZWQgdmlhCj4+IGNsa19vcHMuc2V0X3JhdGUoKS4gIEhvd2V2
ZXIsIGZyb20gdGhlIGNsb2NrIGNvbnN1bWVyIHBlcnNwZWN0aXZlIChpLmUuCj4+IFZPUDIgZGlz
cGxheSBjb250cm9sbGVyKSwgdGhlIChwaXhlbCkgY2xvY2sgcmF0ZSBkb2Vzbid0IHZhcnkgd2l0
aCBicGMsCj4+IGFzIHRoYXQgaXMgaGFuZGxlZCBpbnRlcm5hbGx5IGJ5IHRoZSBQSFkgYW5kIHJl
ZmxlY3RlZCBpbiB0aGUgVERNUwo+PiBjaGFyYWN0ZXIgcmF0ZSBvbmx5Lgo+Pgo+PiBBcyBhIGNv
bnNlcXVlbmNlLCBjaGFuZ2luZyB0aGUgYnBjIHdoaWxlIHByZXNlcnZpbmcgdGhlIG1vZGVsaW5l
IG1heQo+PiBsZWFkIHRvIG91dC1vZi1zeW5jIGlzc3VlcyBiZXR3ZWVuIENDRiBhbmQgSERNSSBQ
SFkgY29uZmlnIHN0YXRlLAo+PiBiZWNhdXNlIHRoZSAuc2V0X3JhdGUoKSBjYWxsYmFjayBpcyBu
b3QgaW52b2tlZCB3aGVuIGNsb2NrIHJhdGUgcmVtYWlucwo+PiBjb25zdGFudC4gIFRoaXMgbWF5
IGFsc28gaGFwcGVuIHdoZW4gdGhlIFBIWSBQTEwgaGFzIGJlZW4gcHJlLXByb2dyYW1tZWQKPj4g
YnkgYW4gZXh0ZXJuYWwgZW50aXR5LCBlLmcuIHRoZSBib290bG9hZGVyLCB3aGljaCBpcyBhY3R1
YWxseSBhCj4+IHJlZ3Jlc3Npb24gaW50cm9kdWNlZCBieSB0aGUgcmVjZW50IEZSTCBwYXRjaGVz
Lgo+IAo+IERvbid0IG1lbnRpb24gJ3BhdGNoZXMnIGluIGRlc2NyaXB0aW9uLiBPbmNlIHRoZSBw
YXRjaCBnZXRzIG1lcmdlZCwgaXQgYmVjb21lcyBhCj4gY29tbWl0LiBJZiBuZWVkZWQsIHJlZmVy
ZW5jZSB0aGUgb2ZmZW5kaW5nIGNvbW1pdChzKSBkaXJlY3RseS4KCkFjay4gIEkgd2lsbCByZXdv
cmQgaWYgdGhlcmUgaXMgYSBuZWVkIGZvciB2Ni4KCj4+Cj4+IEludHJvZHVjZSBhIHBsbF9jb25m
aWdfZGlydHkgZmxhZyB0byBrZWVwIHRyYWNrIG9mIHVuY29tbWl0dGVkIFBIWQo+PiBjb25maWcg
Y2hhbmdlcyBhbmQgdXNlIGl0IGluIGNsa19vcHMuZGV0ZXJtaW5lX3JhdGUoKSB0byBpbnZhbGlk
YXRlIHRoZQo+PiBjdXJyZW50IGNsb2NrIHJhdGUgKGFzIGtub3duIGJ5IENDRikgYW5kLCBjb25z
ZXF1ZW50bHksIGVuc3VyZSB0aG9zZQo+PiBjaGFuZ2VzIGFyZSBwcm9ncmFtbWVkIGludG8gaGFy
ZHdhcmUgdmlhIGNsa19vcHMuc2V0X3JhdGUoKS4KPj4KPj4gTW9yZW92ZXIsIHByb2NlZWQgd2l0
aCBhIHNpbWlsYXIgZml4IGluIHBoeV9vcHMucG93ZXJfb24oKSBjYWxsYmFjaywgdG8KPj4gaGFu
ZGxlIHRoZSBzY2VuYXJpbyB3aGVyZSB0aGUgQ0NGIEFQSSBpcyBub3QgdXNlZCBkdWUgdG8gb3Bl
cmF0aW5nIGluCj4+IEZSTCBtb2RlLCB3aGlsZSB0aGUgY2xvY2sgaXMgc3RpbGwgaW4gYSBwcmVw
YXJlZCBzdGF0ZSBhbmQgdGh1cwo+PiBwcmV2ZW50aW5nIHJrX2hkcHR4X3BoeV9jb25zdW1lcl9n
ZXQoKSB0byBhcHBseSB0aGUgdXBkYXRlZCBQSFkKPj4gY29uZmlndXJhdGlvbi4KPj4KPj4gRml4
ZXM6IGRlNWRiYTgzMzExOCAoInBoeTogcm9ja2NoaXA6IHNhbXN1bmctaGRwdHg6IEFkZCBIRE1J
IDIuMSBGUkwgc3VwcG9ydCIpCj4+IEZpeGVzOiA5ZDBlYzUxZDdjMjIgKCJwaHk6IHJvY2tjaGlw
OiBzYW1zdW5nLWhkcHR4OiBBZGQgaGlnaCBjb2xvciBkZXB0aCBtYW5hZ2VtZW50IikKPj4gVGVz
dGVkLWJ5OiBUaG9tYXMgTmllZGVycHLDvG0gPGR1Yml0b0BvbmxpbmUuZGU+Cj4+IFRlc3RlZC1i
eTogU2ltb24gV3JpZ2h0IDxzaW1vbkBzeW1wbGUubno+Cj4+IFRlc3RlZC1ieTogRGllZGVyaWsg
ZGUgSGFhcyA8ZGllZGVyaWtAY2tub3ctdGVjaC5jb20+ICAjIE5hbm9QQy1UNiBMVFMKPj4gUmV2
aWV3ZWQtYnk6IEFuZHkgWWFuIDxhbmR5LnlhbkByb2NrLWNoaXBzLmNvbT4KPj4gU2lnbmVkLW9m
Zi1ieTogQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFib3JhLmNv
bT4KPiAKPiBSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNh
ZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4KClRoYW5rcywKQ3Jpc3RpYW4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
