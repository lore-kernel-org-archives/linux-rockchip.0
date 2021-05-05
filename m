Return-Path: <SRS0=Kxb6=KA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1D99C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 12:17:35 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 54D9E61222
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 12:17:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 54D9E61222
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=J0VIB8Ah5TIM9sa3UBlQ5VDx8Z+Si3zVNPiKRZTdGoI=; b=G4L/2t91B+04Hc2hdobXMrrCd
	61uWI8iTdH4XsQiibyIuCZHrsiH48HdA93h+lboA7gxDtuCzo3GLP4nrdK9kALkxkR8BDZYhTekoT
	7FuP7mC0EoQS4vYqBpYkZnohInWtCPjR+YN8qpOeEaWnnmJUhswXxKelt2JELOUQWqIP/mTwAwSmI
	zBbXKHwIh6H+u9OcBsCCsbdExkH+rprBldWb0OVRMGTso6BsKY+K26nvNfYz1ZHWMn6IJAtlq6KOC
	Y80nsjXwP9DCphQ+WT8+n+NCETLObucwnjPZBs8M3cfCvkuXwFISkgMxFpZXx+BIs+sIyFcx1nQK8
	iTyCiofrg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leGT0-001ALV-NB; Wed, 05 May 2021 12:17:27 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leGSy-001ALH-4n
 for linux-rockchip@desiato.infradead.org; Wed, 05 May 2021 12:17:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=pgWkGZnbIIq0dpkm9xAnwns4XZZOyKYG6ZsbGgVQxxY=; b=sG9puH03kgqrgjR4A0ozibxuNP
 9eK48MOL3clbb9aNzPXs/9e/6YS0RB3kY30ytjXTMag/NAZc0QbI1wvtBItwYMelnFgDR1m3biNvT
 XFY1Qo1BNQiTkq7VSuN2SzvMjUZs0RW8CMz/5K8B8d+hRbGCUk5+v5WoIXLCtl99CvrXdixbDUXzN
 dC1itY2BHgIlBSxJekeALlFKk4d9y2BPmIaBMA7ATu7MKAiCBve1szwUJJMYbb7lxYkG8NNBKXkUJ
 3k+6upZWiKSgQvTtLqdjkDKa8C1Ha7K588bmFYKvDoF1E8WfFexZ0OtZUaV09fJwzuC5gRWVkPugz
 ellN+MWg==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leGSv-004jZI-9F
 for linux-rockchip@lists.infradead.org; Wed, 05 May 2021 12:17:22 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 4058E1F42DF4
Subject: Re: [PATCH] media: rkvdec: Fix .buf_prepare
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@collabora.com,
 Adrian Ratiu <adrian.ratiu@collabora.com>
References: <20210504113714.30612-1-andrzej.p@collabora.com>
 <2db7709801107dbacd464a919451bbafbd335748.camel@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
Message-ID: <58791717-b7a9-d057-a998-a4440fcbe783@collabora.com>
Date: Wed, 5 May 2021 14:17:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <2db7709801107dbacd464a919451bbafbd335748.camel@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_051721_487911_7149A57E 
X-CRM114-Status: GOOD (  23.47  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SGkgRXplcXVpZWwsCgpXIGRuaXUgMDQuMDUuMjAyMSBvwqAxMzo1NiwgRXplcXVpZWwgR2FyY2lh
IHBpc3plOgo+IEhpIEFuZHJ6ZWosCj4gCj4gVGhhbmtzIGEgbG90IGZvciBwaWNraW5nIHRoaXMg
dXAuCj4gCj4gT24gVHVlLCAyMDIxLTA1LTA0IGF0IDEzOjM3ICswMjAwLCBBbmRyemVqIFBpZXRy
YXNpZXdpY3ogd3JvdGU6Cj4+IEZyb206IEV6ZXF1aWVsIEdhcmNpYSA8ZXplcXVpZWxAY29sbGFi
b3JhLmNvbT4KPj4KPj4gVGhlIGRyaXZlciBzaG91bGQgb25seSBzZXQgdGhlIHBheWxvYWQgb24g
LmJ1Zl9wcmVwYXJlIGlmIHRoZQo+PiBidWZmZXIgaXMgQ0FQVFVSRSB0eXBlLiBJZiBhbiBPVVRQ
VVQgYnVmZmVyIGhhcyBhIHplcm8gYnl0ZXN1c2VkCj4+IHNldCBieSB1c2Vyc3BhY2UgdGhlbiB2
NGwyLWNvcmUgd2lsbCBzZXQgaXQgdG8gYnVmZmVyIGxlbmd0aC4KPj4KPj4gRml4ZXM6IGNkMzNj
ODMwNDQ4YmEgKCJtZWRpYTogcmt2ZGVjOiBBZGQgdGhlIHJrdmRlYyBkcml2ZXIiKQo+PiBTaWdu
ZWQtb2ZmLWJ5OiBFemVxdWllbCBHYXJjaWEgPGV6ZXF1aWVsQGNvbGxhYm9yYS5jb20+Cj4+IFNp
Z25lZC1vZmYtYnk6IEFkcmlhbiBSYXRpdSA8YWRyaWFuLnJhdGl1QGNvbGxhYm9yYS5jb20+Cj4+
IFNpZ25lZC1vZmYtYnk6IEFuZHJ6ZWogUGlldHJhc2lld2ljeiA8YW5kcnplai5wQGNvbGxhYm9y
YS5jb20+Cj4+Cj4+IC0tLQo+PiBASGFuczogSSBoYXZlbid0IGhhZCBhbnlvbmUgY29tcGxhaW4g
YWJvdXQgdGhlIGlzc3VlLiBUaGUgZml4IGlzIG5lZWRlZCBmb3IKPj4gdGhlIHJrdmRlYyB2cDkg
d29yaywgc28gSSB0aGluayA1LjE0IGlzIGZpbmUuCj4+Cj4+ICDCoGRyaXZlcnMvc3RhZ2luZy9t
ZWRpYS9ya3ZkZWMvcmt2ZGVjLmMgfCAxMCArKysrKysrKystCj4+ICDCoDEgZmlsZSBjaGFuZ2Vk
LCA5IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEv
cmt2ZGVjL3JrdmRlYy5jCj4+IGluZGV4IGQ4MjE2NjFkMzBmMy4uZWYyMTY2MDQzMTI3IDEwMDY0
NAo+PiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy5jCj4+ICsrKyBi
L2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmMKPj4gQEAgLTQ4MSw3ICs0ODEs
MTUgQEAgc3RhdGljIGludCBya3ZkZWNfYnVmX3ByZXBhcmUoc3RydWN0IHZiMl9idWZmZXIgKnZi
KQo+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAodmIyX3BsYW5lX3NpemUo
dmIsIGkpIDwgc2l6ZWltYWdlKQo+PiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgcmV0dXJuIC1FSU5WQUw7Cj4+ICDCoMKgwqDCoMKgwqDCoMKgfQo+PiAt
wqDCoMKgwqDCoMKgwqB2YjJfc2V0X3BsYW5lX3BheWxvYWQodmIsIDAsIGYtPmZtdC5waXhfbXAu
cGxhbmVfZm10WzBdLnNpemVpbWFnZSk7Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoMKgLyoKPj4gK8Kg
wqDCoMKgwqDCoMKgICogQnVmZmVyIGJ5dGVzdXNlZCBpcyB3cml0dGVuIGJ5IGRyaXZlciBmb3Ig
Q0FQVFVSRSBidWZmZXJzLgo+PiArwqDCoMKgwqDCoMKgwqAgKiAoaWYgdXNlcnNwYWNlIHBhc3Nl
cyAwIGJ5dGVzdXNlZCBmb3IgT1VUUFVUIGJ1ZmZlcnMsIHY0bDItY29yZSBzZXRzCj4+ICvCoMKg
wqDCoMKgwqDCoCAqIGl0IHRvIGJ1ZmZlciBsZW5ndGgpLgo+PiArwqDCoMKgwqDCoMKgwqAgKi8K
Pj4gK8KgwqDCoMKgwqDCoMKgaWYgKCFWNEwyX1RZUEVfSVNfT1VUUFVUKHZxLT50eXBlKSkKPiAK
PiBQbGVhc2UgdXNlIFY0TDJfVFlQRV9JU19DQVBUVVJFIGhlcmUuCj4gCj4gQWxzbywgd2h5IGlz
IHRoaXMgY2hhbmdlIG5lZWRlZCBpbiBya3ZkZWMsIGJ1dCBub3QgaW4gY2VkcnVzCj4gb3IgaGFu
dHJvPwo+IAoKQXMgYSBtYXR0ZXIgb2YgZmFjdCBJIHRoaW5rIGl0IGlzIG5lZWRlZCBpbiBhbGwg
dGhyZWUsIGJlY2F1c2UgbGF0ZXIgb24sCndoZW5ldmVyIGEgZHJpdmVyIHVzZXMgdmIyX2dldF9w
bGFuZV9wYXlsb2FkKCksIHdpdGhvdXQgc3VjaCBhIHBhdGNoIGl0CndpbGwgZ2V0IGFuIGludmFs
aWQgbnVtYmVyIGFuZCB3cml0ZSB0aGF0IHRvIGEgaGFyZHdhcmUgcmVnaXN0ZXIsIGNhdXNpbmcK
aW5jb3JyZWN0IGJlaGF2aW9yLgoKSSB3aWxsIHJlc3BvbmQgd2l0aCBhIHYyIHNlcmllcy4KClJl
Z2FyZHMsCgpBbmRyemVqCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
