Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8640CA0ED1
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Aug 2025 16:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2FLHZQ/D1TaLvP0P6CmlbhVpU+xzbijPk8r+vdigylk=; b=x3HjeHC/V+BEvk
	QIyYuZggqSrIB6IP+GnV7DR5uBjbci688CguZviJT7AYUUe94zXPeMxWw6HsczcNqHumZIfCslzt4
	hUZjL+Kr4z/BhaK++i6q3Dbnbr2fIweDKe5hvpvi1L33kM509J9NWCmPTLUnJVVcwCr4LYk3pX6lJ
	JRd5/CN1a301Wq4YzCLZzJnxIzKflrZ47rZj0iMKsj63y6UiAts55xnLus0g0HWVIC0HdrLyGZFFc
	Sacz88KE+L609uZePL9l8iQwzMSB1DF6GiWQYmkLkOTsPVLdBdMIXa/R4F1qIO8R5ZdLrIH4FQ3xi
	kTmM8EuVmVMAnr0c/FNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulVb0-00000008RmP-1Y5P;
	Mon, 11 Aug 2025 16:42:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulTeU-000000083LZ-4Alk;
	Mon, 11 Aug 2025 14:37:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=NoSRkGb0dSVui2kGtJMRO3df9aT4TuXtCWAU8XI+je0=; b=erg8R9/+VSQSatTiLHhlebP75P
	U+NhF7oAUdwhPfCtIOo9zP96Ns4yIcNv80x8QnpCQmd3H6PE96YtSC1SZvyNSLCXUK7lLi2U6W5yu
	zXniKGWtaKm9dUAAejJ7MXv0vJn4OtjekveU4VvOdsJJg0gi5/UyGW9SOyX+XInkgQA/lxI0yJ2jO
	y25aa/Vi2p+y5pPzz+uV4a1iRPr9af6zlaJhCVlYW91KF3eX8LDeG0A6//kW1T4WZ5y/2FMAQ+nwZ
	fUl/Q4kU4F9lTPurUJ3hN2PZxgQi8SVln0eVK7xa89KNcL2zarlBmYSbUfnfGuS9CAKRN4whudZIr
	xQjJOQpA==;
Received: from i53875a0c.versanet.de ([83.135.90.12] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ulTeS-00021w-Ed; Mon, 11 Aug 2025 16:37:28 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Detlev Casanova <detlev.casanova@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>
Subject: Re: [PATCH v2] media: rkvdec: Remove redundant
Date: Mon, 11 Aug 2025 16:37:27 +0200
Message-ID: <1894144.QZUTf85G27@diego>
In-Reply-To: <20250811-rkvdec-redundant-pm-rebase-v2-1-90c47213fbbe@collabora.com>
References: <20250811-rkvdec-redundant-pm-rebase-v2-1-90c47213fbbe@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_073731_058762_5589DD62 
X-CRM114-Status: GOOD (  15.38  )
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

QW0gTW9udGFnLCAxMS4gQXVndXN0IDIwMjUsIDE2OjAzOjQ1IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgTmljb2xhcyBEdWZyZXNuZToKPiBGcm9tOiBTYWthcmkgQWlsdXMg
PHNha2FyaS5haWx1c0BsaW51eC5pbnRlbC5jb20+Cj4gCj4gcG1fcnVudGltZV9wdXRfYXV0b3N1
c3BlbmQoKSwgcG1fcnVudGltZV9wdXRfc3luY19hdXRvc3VzcGVuZCgpLAo+IHBtX3J1bnRpbWVf
YXV0b3N1c3BlbmQoKSBhbmQgcG1fcmVxdWVzdF9hdXRvc3VzcGVuZCgpIG5vdyBpbmNsdWRlIGEg
Y2FsbAo+IHRvIHBtX3J1bnRpbWVfbWFya19sYXN0X2J1c3koKS4gUmVtb3ZlIHRoZSBub3ctcmVk
dW50YW50IGV4cGxpY2l0IGNhbGwgdG8KPiBwbV9ydW50aW1lX21hcmtfbGFzdF9idXN5KCkuCj4g
Cj4gU2lnbmVkLW9mZi1ieTogU2FrYXJpIEFpbHVzIDxzYWthcmkuYWlsdXNAbGludXguaW50ZWwu
Y29tPgo+IFJldmlld2VkLWJ5OiBOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1ZnJlc25lQGNv
bGxhYm9yYS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTmljb2xhcyBEdWZyZXNuZSA8bmljb2xhcy5k
dWZyZXNuZUBjb2xsYWJvcmEuY29tPgoKdmVyaWbDrWVkIHRoZSAobmV3KSBkZWZpbml0aW9uIG9m
ICBwbV9ydW50aW1lX3B1dF9hdXRvc3VzcGVuZCgpClJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5l
ciA8aGVpa29Ac250ZWNoLmRlPgoKQnV0IHRoZSBzdWJqZWN0IGNvdWxkIHVzZSBzb21lIHdvcmss
IEkgb25seSBnb3QKCSJbUEFUQ0ggdjJdIG1lZGlhOiBya3ZkZWM6IFJlbW92ZSByZWR1bmRhbnQi
CgpzbyBtYXliZSBtYWtlIHRoYXQKIm1lZGlhOiBya3ZkZWM6IFJlbW92ZSByZWR1bmRhbnQgcG1f
cnVudGltZV9tYXJrX2xhc3RfYnVzeSIKCgpIZWlrbwoKPiAtLS0KPiBDaGFuZ2VzIHNpbmNlIFYx
Ogo+ICAgLSBSZS1hcHBsaWVkIHNpbmNlIHRoZSBkcml2ZXIgaGF2ZSBiZWVuIG1vdmVkIG91dCBv
ZiBzdGFnaW5nCj4gLS0tCj4gIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmt2ZGVj
L3JrdmRlYy5jIHwgMSAtCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmt2ZGVjL3JrdmRlYy5j
IGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya3ZkZWMvcmt2ZGVjLmMKPiBpbmRl
eCBkNzA3MDg4ZWMwZGMxZjZhMThiMmQxNjhlYmRmMjBiNDQzZjIyNDBlLi40NDVmN2M5MmVlZTM0
ZjdkNmY4ODViYjUxOWQ5ZWIyNDMxM2RhNTQ4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vcm9ja2NoaXAvcmt2ZGVjL3JrdmRlYy5jCj4gKysrIGIvZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS9yb2NrY2hpcC9ya3ZkZWMvcmt2ZGVjLmMKPiBAQCAtNzY1LDcgKzc2NSw2IEBAIHN0
YXRpYyB2b2lkIHJrdmRlY19qb2JfZmluaXNoKHN0cnVjdCBya3ZkZWNfY3R4ICpjdHgsCj4gIHsK
PiAgCXN0cnVjdCBya3ZkZWNfZGV2ICpya3ZkZWMgPSBjdHgtPmRldjsKPiAgCj4gLQlwbV9ydW50
aW1lX21hcmtfbGFzdF9idXN5KHJrdmRlYy0+ZGV2KTsKPiAgCXBtX3J1bnRpbWVfcHV0X2F1dG9z
dXNwZW5kKHJrdmRlYy0+ZGV2KTsKPiAgCXJrdmRlY19qb2JfZmluaXNoX25vX3BtKGN0eCwgcmVz
dWx0KTsKPiAgfQo+IAo+IC0tLQo+IGJhc2UtY29tbWl0OiA4ZjVhZTMwZDY5ZDc1NDNlZWUwZDcw
MDgzZGFmNGRlOGZlMTVkNTg1Cj4gY2hhbmdlLWlkOiAyMDI1MDgxMS1ya3ZkZWMtcmVkdW5kYW50
LXBtLXJlYmFzZS1lZDliODg1ZWVhZGQKPiAKPiBCZXN0IHJlZ2FyZHMsCj4gCgoKCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
