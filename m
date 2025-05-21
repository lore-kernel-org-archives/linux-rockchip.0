Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0ACA6C2D0CD
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 May 2025 12:00:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7nirxVioZgRD2nyFs5zalcsSzBlyJ1cpkRyXEb8n8do=; b=AGX4xEipvFEBQX
	OxWpY3sH6IFJzU+b+sM0asJVUiPoGv7JJHyGKy11L+Pu0wu8EIlgnVk3gKYvdmpHQ4EFmLBhodvNr
	ydMz+cfFeHyk5hkmNQgHQR6tWOXyFfF1bEu7HXUUqVy2/e9HE7GIyth/kH/aDFMThueqx/lXYLLL9
	qgpWPtKknJTJH+e80jdT19TvyuR6wwdRrmbXFz3DGYE1e2TF8apqTr6BrOewk7BQWPcTL9hof33MW
	jJZefkS6UFC7pEEjRgfngGniEOYshcmOST8qyrfe0SciMPvR6N1gViT0ZN01szPD3U8wwBL4HOS1n
	xIz2e4BtPh9JKX8XeFrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHi7I-0000000Fi4s-1a70;
	Wed, 21 May 2025 12:00:12 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHi4G-0000000FhXB-0Nk1;
	Wed, 21 May 2025 11:57:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BB58D1515;
	Wed, 21 May 2025 04:56:49 -0700 (PDT)
Received: from [10.57.64.80] (unknown [10.57.64.80])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 354D23F5A1;
	Wed, 21 May 2025 04:57:02 -0700 (PDT)
Message-ID: <1e7cb553-be71-4403-bc25-64457ec3e3d4@arm.com>
Date: Wed, 21 May 2025 12:57:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] pmdomain: rockchip: Relax SMCCC dependency
To: Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>
Cc: mark.rutland@arm.com, lpieralisi@kernel.org, sudeep.holla@arm.com,
 linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
References: <ab0476382e3342161beda94a45ddadb49b026dcd.1747760015.git.robin.murphy@arm.com>
 <6f0a38e596c0727d0de13a29c9224f71bc7d30f1.1747760015.git.robin.murphy@arm.com>
 <2393836.usQuhbGJ8B@phil>
 <CAPDyKFpTaRZqdpwFnC5DgLjJAf1YawJ1L5OVgwfjnfs7iNyUhQ@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <CAPDyKFpTaRZqdpwFnC5DgLjJAf1YawJ1L5OVgwfjnfs7iNyUhQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_045704_169813_E66D424D 
X-CRM114-Status: GOOD (  13.74  )
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

T24gMjAyNS0wNS0yMSAxMjo0MSBwbSwgVWxmIEhhbnNzb24gd3JvdGU6Cj4gT24gVHVlLCAyMCBN
YXkgMjAyNSBhdCAyMDozOCwgSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4gd3JvdGU6
Cj4+Cj4+IEFtIERpZW5zdGFnLCAyMC4gTWFpIDIwMjUsIDE5OjEwOjE3IE1pdHRlbGV1cm9ww6Rp
c2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgUm9iaW4gTXVycGh5Ogo+Pj4gTW9zdCAzMi1iaXQgUm9j
a2NoaXAgcGxhdGZvcm1zIGRvIG5vdCB1c2UgUFNDSSwgc28gaGF2aW5nIHRvIHNlbGVjdAo+Pj4g
QVJNX1BTQ0kgdG8gc2F0aXNmeSBhIGRlcGVuZGVuY3kgY2hhaW4gdG8gcmV0YWluIHdvcmtpbmcg
cG93ZXIgZG9tYWluCj4+PiBzdXBwb3J0IGlzIGEgYml0IHdlaXJkIGFuZCBub24tb2J2aW91cy4g
Tm93IHRoYXQgdGhlIG9mZmVuZGluZyBTTUNDQyBBUEkKPj4+IGlzIHByb3Blcmx5IHN0dWJiZWQg
b3V0IGZvciBvcHRpb25hbCB1c2FnZSwgd2UgY2FuIHJlbGF4IHRoaXMgYWdhaW4uCj4+Pgo+Pj4g
U2lnbmVkLW9mZi1ieTogUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJwaHlAYXJtLmNvbT4KPj4KPj4K
Pj4gUmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Cj4+Cj4+IE9m
IGNvdXJzZSB0aGlzIG5lZWRzIHBhdGNoMSBvZiB0aGlzIHNlcmllcyB0byBnZXQgYXBwbGllZAo+
PiBmaXJzdC4KPj4KPj4gSSB0aGluayBmb3IgYmlzZWN0YWJpbGl0eSwgZG9pbmcgdGhpcyBkaXJl
Y3RseSBpbiBwYXRjaDEgbWlnaHQKPj4gYmUgbGVzcyBkYW5nZXJvdXMgdGhvdWdoPwo+Pgo+IAo+
IElmIGl0IGhlbHBzLCBJIGNhbiBwaWNrIGJvdGggcGF0Y2hlcyB2aWEgbXkgcG1kb21haW4gdHJl
ZSwgdG8gbWFrZQo+IHN1cmUgcGF0Y2gxIHJlYWxseSBnZXRzIGFwcGxpZWQgcHJpb3IgdG8gcGF0
Y2gyLgoKUGVyaGFwcyBJIHNob3VsZCBoYXZlIGJlZW4gbGVzcyBsYXp5IGFuZCB3cml0dGVuIGEg
YnJpZWYgY292ZXIgbGV0dGVyLCAKYnV0IGluZGVlZCwgZ2l2ZW4gdGhlIGRlcGVuZGVuY3kgbXkg
aG9wZSB3YXMgZm9yIHRoZXNlIHRvIGJvdGggZ28gCnRvZ2V0aGVyIHRocm91Z2ggdGhlIHNhbWUg
dHJlZSAtIGl0J3MganVzdCBhbiBvcGVuIHF1ZXN0aW9uIG9mIHdoaWNoIAp0cmVlIHRoYXQgc2hv
dWxkIGJlIDopCgpDaGVlcnMsClJvYmluLgoKPiBNYXJrLCBTdWRlZXAsIExvcmVuem8gZG8geW91
IHNlZSBhbnkgcHJvYmxlbXMgd2l0aCB0aGlzPwo+IAo+IFsuLi5dCj4gCj4gS2luZCByZWdhcmRz
Cj4gVWZmZQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
