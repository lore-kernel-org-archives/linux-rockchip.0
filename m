Return-Path: <SRS0=Kxb6=KA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1C15AC433ED
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 13:22:31 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 71B6B61222
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 13:22:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 71B6B61222
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=L+/ISx3a49KQoKDNSBM3aMbseUofxEcqpM8QBaDSEwQ=; b=fEdmRniIs2stWnpB8OylyIo+6
	l5pXbf9cmfPUo0oM36Qc3tVs4wtjCzTkSkEMxDieGSl8vyF6ki6jd9QYE1X9C4FZFlVOAL4HOxBhQ
	8CYISWO9ecv1sDDZsZCBlmDvxD5AHuQJG0jyD9nkIfOGT/gHdzurmYcnKOJ7sjBlMOrqlYSJ0/51i
	vOwckPfRVZMh2IOxKm7oDFSd/HQY6nWwoTVp1ToOsNajd1jTYJgM9/fJQgxEePWTW506PgJ6leV8x
	rXcA02JVs+R1to5w/eoBEBdo5duuoQyP/aKlWnL4Tiph9H2+dbr6YD3aeNwyutyiMvVBUP4M0otna
	yxlcB99nw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leHTr-001IKX-70; Wed, 05 May 2021 13:22:25 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leHTp-001IHq-4I
 for linux-rockchip@desiato.infradead.org; Wed, 05 May 2021 13:22:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=CP2GDlV8GkCGozoAhQNB5nkM5FMk203onSKEa0NzEXQ=; b=MEtfTqWa9WfYBhOvhTLKDYQE1F
 Pz288W4xNcrzQrLcShOLL6hAibVPajJYmdiX6FWrcQRwomtzAdtkzwN5trmaxBopwcR8DtqGK+2OA
 jOxvrPzz9VWTGGeRrMO+MQGLJnICDhDy6BKzQabKYiu1ya8sKuhxy5RTI632FwFGlN+n2l//2iU4F
 i1dwdP7bWqz3baI9F46CGE8zSJexqExgsqDLsbjcXDRhqkK7DHDiSMqMARWeIetuPpY5G9I1ZvIEb
 aPDPT7G9htLzF6AV+bVZOi178632TIjewh2UqtlZzBWBUplQ9JHl35i3LJytqcKP1qxytgRfT6HIH
 +AQ+sfSg==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leHTm-004m8t-4p
 for linux-rockchip@lists.infradead.org; Wed, 05 May 2021 13:22:19 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 5EAF21F42BB0
Message-ID: <11c24f97ef71b16c2e7b3ba40ca66a28c12df692.camel@collabora.com>
Subject: Re: [PATCH 09/25] media: hantro: do a PM resume earlier
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Philipp Zabel
 <p.zabel@pengutronix.de>, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-staging@lists.linux.dev
Date: Wed, 05 May 2021 10:22:03 -0300
In-Reply-To: <82114a4bd9c7bc1188c6a7167a6e74bb3360961d.1620207353.git.mchehab+huawei@kernel.org>
References: <cover.1620207353.git.mchehab+huawei@kernel.org>
 <82114a4bd9c7bc1188c6a7167a6e74bb3360961d.1620207353.git.mchehab+huawei@kernel.org>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_062218_336457_21C5ED36 
X-CRM114-Status: GOOD (  19.46  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgTWF1cm8sCgpUaGFua3MgZm9yIHdvcmtpbmcgb24gdGhpcy4KCk9uIFdlZCwgMjAyMS0wNS0w
NSBhdCAxMTo0MSArMDIwMCwgTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIHdyb3RlOgo+IFRoZSBkZXZp
Y2VfcnVuKCkgZmlyc3QgZW5hYmxlcyB0aGUgY2xvY2sgYW5kIHRoZW4KPiB0cmllcyB0byByZXN1
bWUgUE0gcnVudGltZSwgY2hlY2tpbmcgZm9yIGVycm9ycy4KPiAKPiBXZWxsLCBpZiBmb3Igc29t
ZSByZWFzb24gdGhlIHBtX3J1bnRpbWUgY2FuIG5vdCByZXN1bWUsCj4gaXQgd291bGQgYmUgYmV0
dGVyIHRvIGRldGVjdCBpdCBiZWZvcmVoYW5kLgo+IAo+IFNvLCBjaGFuZ2UgdGhlIG9yZGVyIGlu
c2lkZSBkZXZpY2VfcnVuKCkuCj4gCj4gUmV2aWV3ZWQtYnk6IEV6ZXF1aWVsIEdhcmNpYSA8ZXpl
cXVpZWxAY29sbGFib3JhLmNvbT4KPiBGaXhlczogNzc1ZmVjNjkwMDhkICgibWVkaWE6IGFkZCBS
b2NrY2hpcCBWUFUgSlBFRyBlbmNvZGVyIGRyaXZlciIpCj4gU2lnbmVkLW9mZi1ieTogTWF1cm8g
Q2FydmFsaG8gQ2hlaGFiIDxtY2hlaGFiK2h1YXdlaUBrZXJuZWwub3JnPgoKSXQgc2VlbXMgdGhp
cyBpcyB3cm9uZyBub3csIGFzIHRoaXMgc2VyaWVzIGRvZXNuJ3QgaGF2ZQoKaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvbGludXgtbWVkaWEvODAzYzM5ZmFmZGQ2MmVmYzZmOWU0ZDk5YTM3MmFmMmM2
OTU1MTQzYi4xNjE5NjIxNDEzLmdpdC5tY2hlaGFiK2h1YXdlaUBrZXJuZWwub3JnLwoKSSBkb24n
dCBmdWxseSB1bmRlcnN0YW5kIHdoeSBhbGwgdGhlIGJhY2sgYW5kIGZvcnRoCmhhcHBlbmluZyBv
biB0aGlzIHNlcmllcywgYnV0IHRoZSBmb3JtZXIgSGFudHJvIHBhdGNoZXMKbG9va2VkIGdvb2Qg
KGRlc3BpdGUgcGVyaGFwcyB1bmNsZWFyIGNvbW1pdCBtZXNzYWdlcykuCgpBbnkgaXNzdWVzIGp1
c3Qgc3F1YXNoaW5nIHRoZXNlIHR3byBjb21taXRzIGZyb20gIltQQVRDSCB2NCAwMC83OV0gQWRk
cmVzcyBzb21lIGlzc3VlcyB3aXRoIFBNIHJ1bnRpbWUgYXQgbWVkaWEgc3Vic3lzdGVtIjoKCiAg
bWVkaWE6IGhhbnRybzogdXNlIHBtX3J1bnRpbWVfcmVzdW1lX2FuZF9nZXQoKQogIG1lZGlhOiBo
YW50cm86IGRvIGEgUE0gcmVzdW1lIGVhcmxpZXIKCj8KClRoYW5rcywKRXplcXVpZWwKCj4gwqBk
cml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYyB8IDcgKysrKy0tLQo+IMKg
MSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMgYi9kcml2
ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYwo+IGluZGV4IDU5NWU4MmE4Mjcy
OC4uNDM4N2VkYWExZDBkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50
cm8vaGFudHJvX2Rydi5jCj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50
cm9fZHJ2LmMKPiBAQCAtMTUyLDEzICsxNTIsMTQgQEAgc3RhdGljIHZvaWQgZGV2aWNlX3J1bih2
b2lkICpwcml2KQo+IMKgwqDCoMKgwqDCoMKgwqBzcmMgPSBoYW50cm9fZ2V0X3NyY19idWYoY3R4
KTsKPiDCoMKgwqDCoMKgwqDCoMKgZHN0ID0gaGFudHJvX2dldF9kc3RfYnVmKGN0eCk7Cj4gwqAK
PiAtwqDCoMKgwqDCoMKgwqByZXQgPSBjbGtfYnVsa19lbmFibGUoY3R4LT5kZXYtPnZhcmlhbnQt
Pm51bV9jbG9ja3MsIGN0eC0+ZGV2LT5jbG9ja3MpOwo+IC3CoMKgwqDCoMKgwqDCoGlmIChyZXQp
Cj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGdvdG8gZXJyX2NhbmNlbF9qb2I7Cj4g
wqDCoMKgwqDCoMKgwqDCoHJldCA9IHBtX3J1bnRpbWVfZ2V0X3N5bmMoY3R4LT5kZXYtPmRldik7
Cj4gwqDCoMKgwqDCoMKgwqDCoGlmIChyZXQgPCAwKQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgZ290byBlcnJfY2FuY2VsX2pvYjsKPiDCoAo+ICvCoMKgwqDCoMKgwqDCoHJldCA9
IGNsa19idWxrX2VuYWJsZShjdHgtPmRldi0+dmFyaWFudC0+bnVtX2Nsb2NrcywgY3R4LT5kZXYt
PmNsb2Nrcyk7Cj4gK8KgwqDCoMKgwqDCoMKgaWYgKHJldCkKPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgZ290byBlcnJfY2FuY2VsX2pvYjsKPiArCj4gwqDCoMKgwqDCoMKgwqDCoHY0
bDJfbTJtX2J1Zl9jb3B5X21ldGFkYXRhKHNyYywgZHN0LCB0cnVlKTsKPiDCoAo+IMKgwqDCoMKg
wqDCoMKgwqBjdHgtPmNvZGVjX29wcy0+cnVuKGN0eCk7CgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
