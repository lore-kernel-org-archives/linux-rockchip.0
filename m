Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AECD7C8303D
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Jul 2025 13:09:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2BnFuXHgLuPUeBPpqArJxk60Viv/1qsZzc1aRnXzAP8=; b=CuZ+t8aB2eM0uh
	OcuILq4aUAEh8CyX5BlBfSN/WU2WL5bjBu4oFf4kYl+2VrrDYw3VtR84P8Hfr6nbzRkjWYvsE+7YT
	5UTwEMpEUSg6Fp9nDdR0/h3b4JvS+qCP8I0BrzIUvnqoqVsqAtSoeGUEfW9ExflF84NmVLddPI2lh
	H1QlnoVLoz0ifGWk3SyWkZUl8/Lh9tmlvF04n0z+tXqvx3DnOMzF2bgWi2kwOYTW41KAO8HT94fxd
	Tr37909DhgAsyO4nuaVZc9U4lvwp8paJx+0ogDrKs1ToXKDGRVGYykvGi9r7CtDlHITOJmFqfWJ8Y
	OmZmHdQwCxCdhu30Bu2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXg9v-0000000ETOB-3mSq;
	Fri, 04 Jul 2025 13:08:55 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXg6u-0000000ESwJ-3YR5
	for linux-rockchip@lists.infradead.org;
	Fri, 04 Jul 2025 13:05:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1751634346;
	bh=yBMvYngooK6EJfsWMCJUDLpwW8VA0ZjBtwiC97EGBZc=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=eRDThnc/NDm+M2Ul2z1dSvnrLN1ARR5Yf31jhgrVTzShjPxH4+IbwZpP0AgIgm/6F
	 uUMxC0TXKjnqNkXruIGbTD4QErwDA8a5FKoc3tu0d6A+lqen6BKupBIe67xuoYfMQ5
	 lTvXpIp1IlDzDeiMpto7Q6fiYAB7nkatXOz1YcjbFN2q3w78XHIQnZtNYyh9zbUGpu
	 w30keY0Mk/jh3vEsLi40EpzxFd0OxeeFz5/QliOcWMJKHwNu8y2GmoU7ASoyMs6J9g
	 Kl99sKoWC+weIGC8MrUl86OTec/pFD0u21eErD5o/hFNHi3+dv5m2ZZliIkcsh555G
	 2qaI/S05E36tg==
Received: from [IPv6:2606:6d00:17:b699::c41] (unknown [IPv6:2606:6d00:17:b699::c41])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9711217E07FF;
	Fri,  4 Jul 2025 15:05:45 +0200 (CEST)
Message-ID: <88675ffb0b8336c0b2c195bdc53dc9823849055b.camel@collabora.com>
Subject: Re: [PATCH 64/80] media: rkvdec: Remove redundant
 pm_runtime_mark_last_busy() calls
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>, Ezequiel Garcia	
 <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab
 <mchehab@kernel.org>,  Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Date: Fri, 04 Jul 2025 09:05:44 -0400
In-Reply-To: <20250704075450.3221972-1-sakari.ailus@linux.intel.com>
References: <20250704075225.3212486-1-sakari.ailus@linux.intel.com>
	 <20250704075450.3221972-1-sakari.ailus@linux.intel.com>
Autocrypt: addr=nicolas.dufresne@collabora.com; prefer-encrypt=mutual;
 keydata=mQGiBEUQN0MRBACQYceNSezSdMjx7sx6gwKkMghrrODgl3B0eXBTgNp6c431IfOOEsdvk
 oOh1kwoYcQgbg4MXw6beOltysX4e8fFWsiRkc2nvvRW9ir9kHDm49MkBLqaDjTqOkYKNMiurFW+go
 zpr/lUW15QqT6v68RYe0zRdtwGZqeLzX2LVuukGwCg4AISzswrrYHNV7vQLcbaUhPgIl0D+gILYT9
 TJgAEK4YHW+bFRcY+cgUFoLQqQayECMlctKoLOE69nIYOc/hDr9uih1wxrQ/yL0NJvQCohSPyoyLF
 9b2EuIGhQVp05XP7FzlTxhYvGO/DtO08ec85+bTfVBMV6eeY4MS3ZU+1z7ObD7Pf29YjyTehN2Dan
 6w1g2rBk5MoA/9nDocSlk4pbFpsYSFmVHsDiAOFje3+iY4ftVDKunKYWMhwRVBjAREOByBagmRau0
 cLEcElpf4hX5f978GoxSGIsiKoDAlXX+ICDOWC1/EXhEEmBR1gL0QJgiVviNyLfGJlZWnPjw6xhhm
 tHYWTDxBOP5peztyc2PqeKsLsLWzAr7QnTmljb2xhcyBEdWZyZXNuZSA8bmljb2xhc0BuZHVmcmVz
 bmUuY2E+iGIEExECACIFAlXA3CACGwMGCwkIBwMCBhUIAgkKCwQWAgMBAh4BAheAAAoJEHFTAi2sB
 qgcJngAnRDBTr8bhzuH0KQwFP1nEYtfgpKdAKCrQ/sJfuG/8zsd7J8wVl7y3e8ARbRDTmljb2xhcy
 BEdWZyZXNuZSAoQi4gU2MuIEluZm9ybWF0aXF1ZSkgPG5pY29sYXMuZHVmcmVzbmVAZ21haWwuY29
 tPohgBBMRAgAgBQJFlCyOAhsDBgsJCAcDAgQVAggDBBYCAwECHgECF4AACgkQcVMCLawGqBwhLQCg
 zYlrLBj6KIAZ4gmsfjXD6ZtddT8AoIeGDicVq5WvMHNWign6ApQcZUihtElOaWNvbGFzIER1ZnJlc
 25lIChCLiBTYy4gSW5mb3JtYXRpcXVlKSA8bmljb2xhcy5kdWZyZXNuZUBjb2xsYWJvcmEuY28udW
 s+iGIEExECACIFAkuzca8CGwMGCwkIBwMCBhUIAgkKCwQWAgMBAh4BAheAAAoJEHFTAi2sBqgcQX8
 An2By6LDEeMxi4B9hUbpvRnzaaeNqAJ9Rox8rfqHZnSErw9bCHiBwvwJZ77QxTmljb2xhcyBEdWZy
 ZXNuZSA8bmljb2xhcy5kdWZyZXNuZUBjb2xsYWJvcmEuY29tPohiBBMRAgAiBQJNzZzPAhsDBgsJC
 AcDAgYVCAIJCgsEFgIDAQIeAQIXgAAKCRBxUwItrAaoHLlxAKCYAGf4JL7DYDLs/188CPMGuwLypw
 CfWKc9DorA9f5pyYlD5pQo6SgSoiC0R05pY29sYXMgRHVmcmVzbmUgKEIgU2MuIEluZm9ybWF0aXF
 1ZSkgPG5pY29sYXMuZHVmcmVzbmVAdXNoZXJicm9va2UuY2E+iGAEExECACAFAkUQN0MCGwMGCwkI
 BwMCBBUCCAMEFgIDAQIeAQIXgAAKCRBxUwItrAaoHPTnAJ0WGgJJVspoctAvEcI00mtp5WAFGgCgr
 +E7ItOqZEHAs+xabBgknYZIFPU=
Organization: Collabora Canada
User-Agent: Evolution 3.56.2 (3.56.2-1.fc42) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250704_060549_035813_A2A9BD02 
X-CRM114-Status: GOOD (  14.31  )
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

TGUgdmVuZHJlZGkgMDQganVpbGxldCAyMDI1IMOgIDEwOjU0ICswMzAwLCBTYWthcmkgQWlsdXMg
YSDDqWNyaXTCoDoKPiBwbV9ydW50aW1lX3B1dF9hdXRvc3VzcGVuZCgpLCBwbV9ydW50aW1lX3B1
dF9zeW5jX2F1dG9zdXNwZW5kKCksCj4gcG1fcnVudGltZV9hdXRvc3VzcGVuZCgpIGFuZCBwbV9y
ZXF1ZXN0X2F1dG9zdXNwZW5kKCkgbm93IGluY2x1ZGUgYSBjYWxsCj4gdG8gcG1fcnVudGltZV9t
YXJrX2xhc3RfYnVzeSgpLiBSZW1vdmUgdGhlIG5vdy1yZWR1bnRhbnQgZXhwbGljaXQgY2FsbCB0
bwo+IHBtX3J1bnRpbWVfbWFya19sYXN0X2J1c3koKS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBTYWth
cmkgQWlsdXMgPHNha2FyaS5haWx1c0BsaW51eC5pbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogTmlj
b2xhcyBEdWZyZXNuZSA8bmljb2xhcy5kdWZyZXNuZUBjb2xsYWJvcmEuY29tPgoKPiAtLS0KPiBU
aGUgY292ZXIgbGV0dGVyIG9mIHRoZSBzZXQgY2FuIGJlIGZvdW5kIGhlcmUKPiA8VVJMOgo+IGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXBtLzIwMjUwNzA0MDc1MjI1LjMyMTI0ODYtMS1z
YWthcmkuYWlsdXNAbGludXguaQo+IG50ZWwuY29tPi4KPiAKPiBJbiBicmllZiwgdGhpcyBwYXRj
aCBkZXBlbmRzIG9uIFBNIHJ1bnRpbWUgcGF0Y2hlcyBhZGRpbmcgbWFya2luZyB0aGUgbGFzdAo+
IGJ1c3kgdGltZXN0YW1wIGluIGF1dG9zdXNwZW5kIHJlbGF0ZWQgZnVuY3Rpb25zLiBUaGUgcGF0
Y2hlcyBhcmUgaGVyZSwgb24KPiByYzI6Cj4gCj4gwqDCoMKgwqDCoMKgwqAgZ2l0Oi8vZ2l0Lmtl
cm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3JhZmFlbC9saW51eC1wbS5naXQgXAo+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwbS1ydW50aW1lLTYuMTctcmMxCj4gCj4g
wqBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy5jIHwgMSAtCj4gwqAxIGZpbGUg
Y2hhbmdlZCwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcv
bWVkaWEvcmt2ZGVjL3JrdmRlYy5jCj4gYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3Jr
dmRlYy5jCj4gaW5kZXggZDcwNzA4OGVjMGRjLi40NDVmN2M5MmVlZTMgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMuYwo+ICsrKyBiL2RyaXZlcnMvc3Rh
Z2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmMKPiBAQCAtNzY1LDcgKzc2NSw2IEBAIHN0YXRpYyB2
b2lkIHJrdmRlY19qb2JfZmluaXNoKHN0cnVjdCBya3ZkZWNfY3R4ICpjdHgsCj4gwqB7Cj4gwqAJ
c3RydWN0IHJrdmRlY19kZXYgKnJrdmRlYyA9IGN0eC0+ZGV2Owo+IMKgCj4gLQlwbV9ydW50aW1l
X21hcmtfbGFzdF9idXN5KHJrdmRlYy0+ZGV2KTsKPiDCoAlwbV9ydW50aW1lX3B1dF9hdXRvc3Vz
cGVuZChya3ZkZWMtPmRldik7Cj4gwqAJcmt2ZGVjX2pvYl9maW5pc2hfbm9fcG0oY3R4LCByZXN1
bHQpOwo+IMKgfQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
