Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D96E7C71157
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jun 2025 17:12:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lT9aVcYX/ogBKPoq13C7vBOXad1pmUwAxV128SR51uc=; b=4J6OXiCX51k5A3
	DVobxQDk8e3iqOSoX2AnSjQET1PxogG9PGNe5c8jm+YRZ+EZJEJ31Vcbv1PfyFKt7SqTd0AzQ8PLS
	OedEWWlMqIiV29AZQdBKNCvRx02hBy8NMPj8Y0k9zEM+Lr2ausXD7sG9eIXs4eiRaB+5VyEwhXclZ
	PUj/eLeBTDev2v4tniWBOdTpahTVBhzDuyZnPTgVOgEP/yALoMzKoja0De7cyIbqDG9a998RUHASG
	/YEsXUs+dGKvL0/bDXxyJxrdtomeze9KR/J257sCkR0BdOhb3T4TU0XLqKYIWNyDgjmmXKa4NlPv5
	9OlM0d3HfniXmwCBt90A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRZrH-00000007zqO-3M8t;
	Tue, 17 Jun 2025 17:12:27 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRYo4-00000007pRX-2gmt;
	Tue, 17 Jun 2025 16:05:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5A5D2150C;
	Tue, 17 Jun 2025 09:04:40 -0700 (PDT)
Received: from [10.1.196.50] (e121345-lin.cambridge.arm.com [10.1.196.50])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 267763F58B;
	Tue, 17 Jun 2025 09:04:59 -0700 (PDT)
Message-ID: <77867c46-d868-4496-a1a3-45feb0bdd604@arm.com>
Date: Tue, 17 Jun 2025 17:04:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] media: verisilicon: Flush IOMMU before decoding a
 frame
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Jason Gunthorpe <jgg@ziepe.ca>
Cc: joro@8bytes.org, will@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, nicolas.dufresne@collabora.com,
 p.zabel@pengutronix.de, mchehab@kernel.org, iommu@lists.linux.dev,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-media@vger.kernel.org, kernel@collabora.com
References: <20250616145607.116639-1-benjamin.gaignard@collabora.com>
 <20250616145607.116639-6-benjamin.gaignard@collabora.com>
 <20250617155822.GE1376515@ziepe.ca>
 <30a48107-8e98-42dd-a5a7-9c87c9eb538d@collabora.com>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <30a48107-8e98-42dd-a5a7-9c87c9eb538d@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_090504_733694_46084478 
X-CRM114-Status: GOOD (  13.96  )
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

T24gMTcvMDYvMjAyNSA1OjAxIHBtLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToKPiAKPiBMZSAx
Ny8wNi8yMDI1IMOgIDE3OjU4LCBKYXNvbiBHdW50aG9ycGUgYSDDqWNyaXTCoDoKPj4gT24gTW9u
LCBKdW4gMTYsIDIwMjUgYXQgMDQ6NTU6NTNQTSArMDIwMCwgQmVuamFtaW4gR2FpZ25hcmQgd3Jv
dGU6Cj4+PiBGbHVzaCB0aGUgSU9NTVUgbWFwcGluZyBiZWZvcmUgZGVjb2RpbmcgYSBmcmFtZSB0
byBlbnN1cmUgdGhhdCBhbGwgCj4+PiBtZW1vcnkKPj4+IHRyYW5zbGF0aW9ucyBhcmUgcHJvcGVy
bHkgYXBwbGllZC4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVu
amFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KPj4+IC0tLQo+Pj4gwqAgZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZHJ2LmMgfCAxMSArKysrKysrKysrKwo+Pj4g
wqAgMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKykKPj4gVGhpcyBpcyBhIHJlYWxseSBi
aWcgcmVkIGZsYWcuCj4+Cj4+IGlvbW11IHRyYW5zbGF0aW9ucyBhcmUgc3VwcG9zZWQgdG8gYmUg
Y29udHJvbGxlZCBieSB0aGUgaW9tbXUgZHJpdmVyCj4+IGFuZCBzaG91bGQgYmUgZmx1c2hlZCBh
cyBwYXJ0IG9mIHRoZSBpb21tdSBtYXAvdW5tYXAgZmxvd3MuIEl0IHNob3VsZAo+PiBuZXZlciBi
ZSBuZWNlc3NhcnkgdG8gZG8gc29tZXRoaW5nIGxpa2UgdGhpcy4KPiAKPiBJIGhhdmUgcmVkb25l
IHRlc3RzIHdpdGhvdXQgdGhpcyBwYXRjaCBhbmQgdGhlIGRlY29kZSBpcyBwZXJmb3JtIGNvcnJl
Y3RseS4KPiBJIHdpbGwgZHJvcCBpdCBpbiB0aGUgbmV4dCB2ZXJzaW9uLgo+IEkgdGhpbmsgSSBo
YXZlIGZpeCB0aGUgcmVmZXJlbmNlIGZyYW1lIG1hbmFnZW1lbnQgaW4gdGhlIGRyaXZlciBzbyBp
dCAKPiBiZWNvbWVzCj4gdXNlbGVzcy4KCklmIGl0IHR1cm5zIG91dCB0aGUgaGFyZHdhcmUgZG9l
cyByZXF1aXJlIGEgVExCSSB0byBndWFyYW50ZWUgbmV3IAptYXBwaW5ncyBhcmUgdmlzaWJsZSwg
dGhvdWdoLCB0aGVuIHRoZSBjb3JyZWN0IHdheSBpcyB0byBpbXBsZW1lbnQgdGhlIAppb3RsYl9z
eW5jX21hcCBvcC4KClRoYW5rcywKUm9iaW4uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
