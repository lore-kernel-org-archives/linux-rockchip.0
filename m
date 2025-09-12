Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58FB8CA101F
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Sep 2025 12:33:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y4GgSqDIizecFAqi+7lG+b7KvvaIAFd9MbeuiVyJeOw=; b=0KjQIeF1pujYnr
	khNiJ4kB2YtzZy56HJy4lhe3NqjQ9v2sw3H3aFO+oUi+QZfyWjKfFEOyELPbt4rT/hhXXnS691GpX
	rGUEva4D23EF6vitstW2RnIqoZjucxUMmCHGrYnCC4WW4cM/3kyd60EfD+rGAyzAmGbIbwc+Ra8XD
	96C02hEa6n7xUl6SAWgxdmWuGiN3KMWaPU/akkNoUDM19kxq0BMUzXw0skUyJx/5HKrIPJpHCcbmz
	nUX25lxMVafaMMolfyGDkC8F+1lySyK0PAXwgvjcdJ7V3GtDL3T5ka9SfTB0ZfISgJ/8YFeBKYilD
	lZvZtC4WKDVi9tbY59yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux2y7-00000009HK2-2rHs;
	Fri, 12 Sep 2025 12:33:35 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ux2y5-00000009HI8-36dw;
	Fri, 12 Sep 2025 12:33:34 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1757680393; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=d9lx73cJ+3kbqYZ8pdZisBn1TYdH/TuEI9qHtLZVc0HiotwsWQwMUsygScWa/QCSnQDxrDWQdgrowkEpvxEVaPRwtGqoGt90P7eFUTt0rBxR43B8tFk0DCP02yq0s7o3S/xFBsV5yAQF0Cvj0KV6LCtV3pp487ju/iQaIqFu9uw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1757680393; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=6MSZWnj1jgR4thBvdLu3JU3z1ibbPCoj24oKf6RqCjE=; 
	b=CZLu6l3WO3PVuVjT/emEIylG9WJMo1+3F5CVysgk2x0zUx4eg4yvgKaZ3Szj1/W1vw2HUB92pdwaWEAQh70huS3eG3J7Gtade47mBZhzAHyZhBZ9neuWrOXSd1E+y7GEy4J+eNf+FJ4nXlF0kizicGGXFdegPR8vkp8z83ePE9o=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1757680392;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=6MSZWnj1jgR4thBvdLu3JU3z1ibbPCoj24oKf6RqCjE=;
	b=boIpsGXg6Oa36fHp704E35jAK+/U3XDz+CH4pbWZVUmBTzTFmmki+CCbcz/VW4Go
	/n3BtmkKJ5ZK9idA/tLZt43qcGWqzTZNVdpT6bplhRwhDf8RfCLubg5clkZEM7d8ie7
	eMXFLXVoWMeae2oo/2RUAV7YmGRWqFr1y97mOI+g=
Received: by mx.zohomail.com with SMTPS id 1757680390786230.58638870729078;
	Fri, 12 Sep 2025 05:33:10 -0700 (PDT)
Message-ID: <f009ff62-abbe-4305-91ca-9cc762ca4fb1@collabora.com>
Date: Fri, 12 Sep 2025 14:33:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 3/7] iommu: Add verisilicon IOMMU driver
To: =?UTF-8?B?SsO2cmcgUsO2ZGVs?= <joro@8bytes.org>
Cc: robin.murphy@arm.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, nicolas.dufresne@collabora.com,
 jgg@ziepe.ca, p.zabel@pengutronix.de, mchehab@kernel.org,
 iommu@lists.linux.dev, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 linux-media@vger.kernel.org
References: <20250911155720.180465-1-benjamin.gaignard@collabora.com>
 <20250911155720.180465-4-benjamin.gaignard@collabora.com>
 <vrngq76nnms3jyl5hnxqnkimjc6kil66o6fdyqn5vm3fpovmja@cfynipjw7ktp>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <vrngq76nnms3jyl5hnxqnkimjc6kil66o6fdyqn5vm3fpovmja@cfynipjw7ktp>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250912_053333_842233_77B936A2 
X-CRM114-Status: GOOD (  12.10  )
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

CkxlIDEyLzA5LzIwMjUgw6AgMTM6NDcsIErDtnJnIFLDtmRlbCBhIMOpY3JpdMKgOgo+IE9uIFRo
dSwgU2VwIDExLCAyMDI1IGF0IDA1OjU3OjEzUE0gKzAyMDAsIEJlbmphbWluIEdhaWduYXJkIHdy
b3RlOgo+PiBUaGUgVmVyaXNpbGljb24gSU9NTVUgaGFyZHdhcmUgYmxvY2sgY2FuIGJlIGZvdW5k
IGluIGNvbWJpbmF0aW9uCj4+IHdpdGggVmVyaXNpbGljb24gaGFyZHdhcmUgdmlkZW8gY29kZWNz
IChlbmNvZGVycyBvciBkZWNvZGVycykgb24KPj4gZGlmZmVyZW50IFNvQ3MuCj4+IEVuYWJsZSBp
dCB3aWxsIGFsbG93IHVzIHRvIHVzZSBub24gY29udGlndW91cyBtZW1vcnkgYWxsb2NhdG9ycwo+
PiBmb3IgVmVyaXNpbGljb24gdmlkZW8gY29kZWNzLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBCZW5q
YW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KPj4gLS0tCj4+
ICAgZHJpdmVycy9pb21tdS9LY29uZmlnICAgICB8ICAxMSArCj4+ICAgZHJpdmVycy9pb21tdS9N
YWtlZmlsZSAgICB8ICAgMSArCj4+ICAgZHJpdmVycy9pb21tdS92c2ktaW9tbXUuYyB8IDgwOCAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+PiAgIGluY2x1ZGUvbGludXgv
dnNpLWlvbW11LmggfCAgMjEgKwo+PiAgIDQgZmlsZXMgY2hhbmdlZCwgODQxIGluc2VydGlvbnMo
KykKPj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9pb21tdS92c2ktaW9tbXUuYwo+PiAg
IGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2xpbnV4L3ZzaS1pb21tdS5oCj4gVGhpcyB3aWxs
IG5vdCBnbyBpbiBiZWZvcmUgV2lsbCBEZWFjb25zIGNvbW1lbnQgYWJvdXQgY29kZSBkdXBsaWNh
dGlvbiB3aXRoIHRoZQo+IFJvY2tjaGlwIGRyaXZlciBpcyBhZGRyZXNzZWQuCgpJdCBpc24ndCB0
aGUgc2FtZSBoYXJkd2FyZSBibG9jaywgbm90IGZyb20gdGhlIHNhbWUgSVAgdmVuZG9yIGFuZCB0
aGUgYml0cyBzZXQgYXJlbid0IHRoZSBzYW1lLgpwbV9ydW50aW1lLCBjbG9jaywgc3Bpbl9sb2Nr
IGFyZW4ndCBtYW5hZ2VkIGRpZmZlcmVudGx5LgpUaGUgY29tbW9uIHBvaW50IGlzIHRoZXkgYm90
aCB1c2UgMi1sZXZlbCBwYWdlIHRhYmxlLgoKVlNJIGlvbW11IG5lZWQgYW4gYWRkaXRpb25hbCBm
dW5jdGlvbiB0byByZXN0b3JlIGlvbW11IGNvbnRleHQgYmVmb3JlIGRlY29kaW5nCmVhY2ggZnJh
bWUsIHJvY2tjaGlwIGRvZXNuJ3QgbmVlZCBpdC4KClJlZ2FyZHMsCkJlbmphbWluCgo+Cj4gCUpv
ZXJnCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
