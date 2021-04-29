Return-Path: <SRS0=DwMt=J2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_2 autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F17F9C433B4
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Apr 2021 07:25:26 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5043061186
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Apr 2021 07:25:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5043061186
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wQmNiOlKldLZpR2C5Mpm05Ttwg6o8nR6UDFZqF1OOwM=; b=Q9SRX/Rk1R/VbkVj7MjFBvjkI
	J/6la2t0e9fS280wj94JWFRZgUTtbwzvEEekmJ3n47YgraV9Cv6tpeCwXdMXBRgCEsmDONc+3A/Ac
	W6qlNkaOZyhTMf/wLRKDKxLfaCQmke01ZddHkNhjTy/eL22pHTFKya7VB7sX0cw+/gnQxkIyDyike
	lKKGgvSkB/A6t7thOxmaO6UhVRlS0huKXKzJ20mBZZHTpvFwrkSo4HUEQBua+N9w1pcHegvi7SKc0
	fI6p1LqrjpanglhGYWqMsRSyGou6ovfH+QlG9w0ZGaZ2u6CRw07Fv+53rIku0w4JA78XiT2vbahY4
	5DRzTlUtg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lc131-005CXt-46; Thu, 29 Apr 2021 07:25:19 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lc0rq-005AVJ-2g
 for linux-rockchip@desiato.infradead.org; Thu, 29 Apr 2021 07:13:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-ID:Content-Description;
 bh=XHyi0G+WvJLksg2bBSEGhzqn0jHomhYOkpNgF5PcG2w=; b=ZPJ8QThyWl/OQH5hBto37YvQim
 F1JLJ0lvSTbkfFOjR4rbuTdU8xeevXYEJTPhI8sSnV8fJQK4DG+gJ1Gt+dyDIY3c9BXT5eMRzSJXw
 J1RvTdU31s89X3xETxKiolecOlAD8kAMKj6/vzMZL/79PXggpl3/Fjf+Vzf+7zq5iyN4bqdCxI1oJ
 QQKIJq3cA+PEYoYkY6m0HQmAswSRVL9MtVpAuYXHHr++trZmNkRIJH58wOLlpbVft5BlkpGOm5uo5
 zcuqJ9SLKW8MInNyWa8DMFAQYxNgUcYQIDh15+YZ06JHXTQn5aNg/e9sdTtBkjg5oVqADScplv3mK
 ScE70xtQ==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lc0rm-000R7K-PJ
 for linux-rockchip@lists.infradead.org; Thu, 29 Apr 2021 07:13:44 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 177EF6141E;
 Thu, 29 Apr 2021 07:13:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619680421;
 bh=58tmw40R8d7hq0bYQ7ucYztt+FsoRTyGxT8Or5otJ0Q=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=u57bft8gaxqZ58WFZiZsaUCAj2+SFYgQnW+zHQWeVoDKQuNe28Ui9nkShXq8gVFJP
 CxAeWwIPITWLcLLSYO5a8o1543Vr7+nNrZWBDirk+efgJkiDxpcY4TllSycRwVeHqg
 D5XQknT64m26ahQWr9FzltYNllvJes0t6xG92DVAzgEcUYHABn0wodLonRFrXo+4WZ
 5gby7lVxrfSdnbgxKvu763v6/b6KwHgoB5P54m1Hq6INKRHT4092QQMLAxJBZggXG6
 C4dTCZbYAp6DMa/E3SHwqVrYbvqocLq0CDv4pM58sLQpLqyduPUhwBWODkU91qqkXU
 1Q14nXullZdgg==
Date: Thu, 29 Apr 2021 09:13:35 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 79/79] media: hantro: do a PM resume earlier
Message-ID: <20210429091335.2b563ab5@coco.lan>
In-Reply-To: <e5eeffbbad6ee90204cb3928cfd6774efb6174f3.camel@collabora.com>
References: <cover.1619621413.git.mchehab+huawei@kernel.org>
 <569838d406dde80dcc64989a663882817a54cbb2.1619621413.git.mchehab+huawei@kernel.org>
 <e5eeffbbad6ee90204cb3928cfd6774efb6174f3.camel@collabora.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210429_001342_902363_D84610F4 
X-CRM114-Status: GOOD (  21.94  )
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

RW0gV2VkLCAyOCBBcHIgMjAyMSAxNDoxNzo1MCAtMDMwMApFemVxdWllbCBHYXJjaWEgPGV6ZXF1
aWVsQGNvbGxhYm9yYS5jb20+IGVzY3JldmV1OgoKPiBIaSBNYXVybywKPiAKPiBUaGFua3MgYSBs
b3QgZm9yIHRha2luZyBjYXJlIG9mIHRoaXMuCj4gCj4gT24gV2VkLCAyMDIxLTA0LTI4IGF0IDE2
OjUyICswMjAwLCBNYXVybyBDYXJ2YWxobyBDaGVoYWIgd3JvdGU6Cj4gPiBUaGUgZGV2aWNlX3J1
bigpIGZpcnN0IGVuYWJsZXMgdGhlIGNsb2NrIGFuZCB0aGVuCj4gPiB0cmllcyB0byByZXN1bWUg
UE0gcnVudGltZSwgY2hlY2tpbmcgZm9yIGVycm9ycy4KPiA+IAo+ID4gV2VsbCwgaWYgZm9yIHNv
bWUgcmVhc29uIHRoZSBwbV9ydW50aW1lIGNhbiBub3QgcmVzdW1lLAo+ID4gaXQgd291bGQgYmUg
YmV0dGVyIHRvIGRldGVjdCBpdCBiZWZvcmVoYW5kLgo+ID4gCj4gPiBTbywgY2hhbmdlIHRoZSBv
cmRlciBpbnNpZGUgZGV2aWNlX3J1bigpLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBNYXVybyBD
YXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIraHVhd2VpQGtlcm5lbC5vcmc+ICAKPiAKPiBDbG9ja3Mg
Y291bGQgYmUgYmVoaW5kIHBvd2VyLWRvbWFpbnMsIElJUkMsIHNvIHRoaXMgY2hhbmdlCj4gaXMg
Zml4aW5nIHRoYXQuCj4gCj4gSG93ZXZlciwgdGhpcyBoYXMgZXZlciBiZWVuIGEgcHJvYmxlbSBm
b3IgdGhpcyBkcml2ZXIsCj4gc28gSSBkb24ndCB0aGluayBpdCBtYWtlcyBzZW5zZSB0byBib3Ro
ZXIgd2l0aCBGaXhlcyB0YWcuCgpJIHdvdWxkIHByZWZlciB0byBtb3ZlIHRoaXMgcGF0Y2ggdG8g
dGhlIGZpcnN0IHBhcnQgb2YgdGhpcwpzZXJpZXMsIHRvZ2V0aGVyIHdpdGggb3RoZXIgZml4ZXMs
IHJlYmFzaW5nIGl0IHRvIGFwcGx5IGNsZWFubHkKYmVmb3JlIHRoZSBwbV9ydW50aW1lX3Jlc3Vt
ZV9hbmRfZ2V0KCkgcGF0Y2gsIHdpdGg6CgogICAgRml4ZXM6IDc3NWZlYzY5MDA4ZCAoIm1lZGlh
OiBhZGQgUm9ja2NoaXAgVlBVIEpQRUcgZW5jb2RlciBkcml2ZXIiKQoKVGhpcyB3YXksIHBlb3Bs
ZSB0aGF0IGNvdWxkIGJlIGludGVyZXN0ZWQgb24gYmFja3BvcnRpbmcgaXQgd2lsbCBiZQpjYXBh
YmxlIHRvIGFwcGx5IGl0IGFzIGlzIHRvIHN0YWJsZSBLZXJuZWwgcmVsZWFzZXMgdGhhdCBjYW1l
CndpdGggdGhpcyBkcml2ZXIuCgo+IAo+IFJldmlld2VkLWJ5OiBFemVxdWllbCBHYXJjaWEgPGV6
ZXF1aWVsQGNvbGxhYm9yYS5jb20+Cj4gCj4gVGhhbmtzLAo+IEV6ZXF1aWVsCj4gCj4gPiAtLS0K
PiA+IMKgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZHJ2LmMgfCA4ICsrKyst
LS0tCj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0p
Cj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRy
b19kcnYuYyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jCj4gPiBp
bmRleCAyNWZhMzZlN2U3NzMuLjY3ZGU2YjE1MjM2ZCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMv
c3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jCj4gPiArKysgYi9kcml2ZXJzL3N0YWdp
bmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYwo+ID4gQEAgLTE2MCwxNCArMTYwLDE0IEBAIHN0
YXRpYyB2b2lkIGRldmljZV9ydW4odm9pZCAqcHJpdikKPiA+IMKgwqDCoMKgwqDCoMKgwqBzcmMg
PSBoYW50cm9fZ2V0X3NyY19idWYoY3R4KTsKPiA+IMKgwqDCoMKgwqDCoMKgwqBkc3QgPSBoYW50
cm9fZ2V0X2RzdF9idWYoY3R4KTsKPiA+IMKgCj4gPiAtwqDCoMKgwqDCoMKgwqByZXQgPSBjbGtf
YnVsa19lbmFibGUoY3R4LT5kZXYtPnZhcmlhbnQtPm51bV9jbG9ja3MsIGN0eC0+ZGV2LT5jbG9j
a3MpOwo+ID4gLcKgwqDCoMKgwqDCoMKgaWYgKHJldCkKPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBnb3RvIGVycl9jYW5jZWxfam9iOwo+ID4gLQo+ID4gwqDCoMKgwqDCoMKgwqDC
oHJldCA9IHBtX3J1bnRpbWVfcmVzdW1lX2FuZF9nZXQoY3R4LT5kZXYtPmRldik7Cj4gPiDCoMKg
wqDCoMKgwqDCoMKgaWYgKHJldCA8IDApCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoGdvdG8gZXJyX2NhbmNlbF9qb2I7Cj4gPiDCoAo+ID4gK8KgwqDCoMKgwqDCoMKgcmV0ID0g
Y2xrX2J1bGtfZW5hYmxlKGN0eC0+ZGV2LT52YXJpYW50LT5udW1fY2xvY2tzLCBjdHgtPmRldi0+
Y2xvY2tzKTsKPiA+ICvCoMKgwqDCoMKgwqDCoGlmIChyZXQpCj4gPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgZ290byBlcnJfY2FuY2VsX2pvYjsKPiA+ICsKPiA+IMKgwqDCoMKgwqDC
oMKgwqB2NGwyX20ybV9idWZfY29weV9tZXRhZGF0YShzcmMsIGRzdCwgdHJ1ZSk7Cj4gPiDCoAo+
ID4gwqDCoMKgwqDCoMKgwqDCoGN0eC0+Y29kZWNfb3BzLT5ydW4oY3R4KTsgIAo+IAo+IAoKCgpU
aGFua3MsCk1hdXJvCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
