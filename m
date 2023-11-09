Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0265C4167B
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 21:39:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EP0Xx++NcO3ltTJc9xveGzULtLYHhFNLNwMzwevbdlw=; b=j9fw2NQQsLDvW3
	VFPezp/ifOAtqGL18a50zmbz2NcYI55Lai02zmVZaTJsJg1QCyRWUR+HSGbD1czCqPQH8dAil9P3T
	jlqNzX4v+K90Ssy3xmmOEV1nMvCW9ubso2gqbl5/gdhLZ9zL8zLbAlTKmP2IoX02a+sgUUbnVbELF
	k5hz2eo2MSZzk/M+1otZfxQ0IHBq2hBPUjbG9Wep1tYSRi5Qc8muzwrumBipyxe5+2WXPXKBs7Sma
	Fig5Ij+7tHa32Z6AOVADhNgvYRK0AD5qKQ/gp6KtBCdMZS4pzK9yDj/oCSvCVNVT3w7JZj1A6eVkX
	qMsc7Ttcm4aaxp42b0og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Cjn-007HET-1D;
	Thu, 09 Nov 2023 21:38:55 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Cjk-007HDg-0n
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Nov 2023 21:38:53 +0000
Received: from [100.84.166.245] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 52CF66607413;
	Thu,  9 Nov 2023 21:38:45 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699565927;
	bh=iOlbhHLosbanbJteZZRBksDsgyI0sGawtDPHWA7bX8g=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=HruUzFIZsc9c/Sc91mVwLrxyAlcFzwo9DMLwfv1x5JUxYqBgykIXC5uptr/pe7KI6
	 vIfketUq1GCs3LzHUuvzAcQq+sO22ahvAH1cX30bt7u7bY2THBnB22IX9nE7jvBtWc
	 /iDKOnahxhXJV/xWD31a9a/Q2/DIHmPaiUnKQjLMReEUJqweLFvFilS2evsKOBTAPV
	 7hAWaxjdGmDKuaRSiJWpvNEAiWez9btLOb+ST4O4KmAk3h/zEWAf+/TC0LUJEZMZjm
	 d+HDm6SyFdFJU2FtJWjaoxz13EJfHyUclg/HcF3sdal9JB/m2/QPUTGFjJwr85+c/P
	 Cs8eDpqqrKFDw==
Message-ID: <fd9ca918dcbc892169b9f0dae7d0de537f4035ed.camel@collabora.com>
Subject: Re: [PATCH 3/4] media: verisilicon: Hook the (TRY_)DECODER_CMD
 stateless ioctls
From: Nicolas  Dufresne <nicolas.dufresne@collabora.com>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Philipp Zabel
 <p.zabel@pengutronix.de>, Mauro Carvalho Chehab <mchehab@kernel.org>, Hans
 Verkuil <hverkuil-cisco@xs4all.nl>, Daniel Almeida
 <daniel.almeida@collabora.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Sebastian Fricke
 <sebastian.fricke@collabora.com>, Thomas Petazzoni
 <thomas.petazzoni@bootlin.com>
Date: Thu, 09 Nov 2023 16:38:36 -0500
In-Reply-To: <20231109201640.340556-3-paul.kocialkowski@bootlin.com>
References: <20231109201640.340556-1-paul.kocialkowski@bootlin.com>
	 <20231109201640.340556-3-paul.kocialkowski@bootlin.com>
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_133852_484700_96DCF123 
X-CRM114-Status: GOOD (  16.05  )
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

SGkgUGF1bCwKCgpMZSBqZXVkaSAwOSBub3ZlbWJyZSAyMDIzIMOgIDIxOjE2ICswMTAwLCBQYXVs
IEtvY2lhbGtvd3NraSBhIMOpY3JpdMKgOgo+IFRoZSAoVFJZXylERUNPREVSX0NNRCBpb2N0bHMg
YXJlIHVzZWQgdG8gc3VwcG9ydCBmbHVzaGluZyB3aGVuIGhvbGRpbmcgY2FwdHVyZQo+IGJ1ZmZl
cnMgaXMgc3VwcG9ydGVkLiBUaGlzIGlzIHRoZSBjYXNlIG9mIHRoaXMgZHJpdmVyIGJ1dCB0aGUg
aW9jdGxzIHdlcmUgbmV2ZXIKPiBob29rZWQgdG8gdGhlIGlvY3RsIG9wcy4KPiAKPiBBZGQgdGhl
bSB0byBjb3JyZWN0bHkgc3VwcG9ydCBmbHVzaGluZy4KCldoaWxlIHRoaXMgQ01EIGxvb2tzIHVz
ZWZ1bCBvbiBwYXBlciwgd2UgaGF2ZSBoYWQgbm8gdXNlIGZvciBpdCBpbiBhbnkKb3BlbiBzb3Vy
Y2UgdXNlciBzcGFjZS4gU28gd2l0aCB0aGlzIGluIG1pbmQsIHNoYWxsIHdlIHJlYWxseSBlbmFi
bGUgaXQKPyBIb3cgY2FuIHdlIGJlIHN1cmUgdGhhdCBpdHMgYWN0dWFsbHkgd29ya2luZyBhcyBp
bnRlbmRlZCA/CgpOaWNvbGFzCgo+IAo+IEZpeGVzOiAzNDBjZTUwZjc1YTYgKCJtZWRpYTogaGFu
dHJvOiBFbmFibGUgSE9MRF9DQVBUVVJFX0JVRiBmb3IgSC4yNjQiKQo+IFNpZ25lZC1vZmYtYnk6
IFBhdWwgS29jaWFsa293c2tpIDxwYXVsLmtvY2lhbGtvd3NraUBib290bGluLmNvbT4KPiAtLS0K
PiAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZHJ2LmMgIHwgMiAr
Kwo+ICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb192NGwyLmMgfCAz
ICsrKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19kcnYuYyBiL2RyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5jCj4gaW5kZXggYTlmYTA1
YWM1NmE5Li4zYTJhMGYyOGNiZmUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9y
bS92ZXJpc2lsaWNvbi9oYW50cm9fZHJ2LmMKPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3ZlcmlzaWxpY29uL2hhbnRyb19kcnYuYwo+IEBAIC05MDUsNiArOTA1LDggQEAgc3RhdGljIGlu
dCBoYW50cm9fYWRkX2Z1bmMoc3RydWN0IGhhbnRyb19kZXYgKnZwdSwgdW5zaWduZWQgaW50IGZ1
bmNpZCkKPiAgCj4gIAlpZiAoZnVuY2lkID09IE1FRElBX0VOVF9GX1BST0NfVklERU9fRU5DT0RF
Uikgewo+ICAJCXZwdS0+ZW5jb2RlciA9IGZ1bmM7Cj4gKwkJdjRsMl9kaXNhYmxlX2lvY3RsKHZm
ZCwgVklESU9DX1RSWV9ERUNPREVSX0NNRCk7Cj4gKwkJdjRsMl9kaXNhYmxlX2lvY3RsKHZmZCwg
VklESU9DX0RFQ09ERVJfQ01EKTsKPiAgCX0gZWxzZSB7Cj4gIAkJdnB1LT5kZWNvZGVyID0gZnVu
YzsKPiAgCQl2NGwyX2Rpc2FibGVfaW9jdGwodmZkLCBWSURJT0NfVFJZX0VOQ09ERVJfQ01EKTsK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9f
djRsMi5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fdjRsMi5j
Cj4gaW5kZXggYjNhZTAzN2E1MGY2Li5kYjE0NTUxOWZjNWQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fdjRsMi5jCj4gKysrIGIvZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fdjRsMi5jCj4gQEAgLTc4NSw2ICs3
ODUsOSBAQCBjb25zdCBzdHJ1Y3QgdjRsMl9pb2N0bF9vcHMgaGFudHJvX2lvY3RsX29wcyA9IHsK
PiAgCS52aWRpb2NfZ19zZWxlY3Rpb24gPSB2aWRpb2NfZ19zZWxlY3Rpb24sCj4gIAkudmlkaW9j
X3Nfc2VsZWN0aW9uID0gdmlkaW9jX3Nfc2VsZWN0aW9uLAo+ICAKPiArCS52aWRpb2NfZGVjb2Rl
cl9jbWQgPSB2NGwyX20ybV9pb2N0bF9zdGF0ZWxlc3NfZGVjb2Rlcl9jbWQsCj4gKwkudmlkaW9j
X3RyeV9kZWNvZGVyX2NtZCA9IHY0bDJfbTJtX2lvY3RsX3N0YXRlbGVzc190cnlfZGVjb2Rlcl9j
bWQsCj4gKwo+ICAJLnZpZGlvY190cnlfZW5jb2Rlcl9jbWQgPSB2NGwyX20ybV9pb2N0bF90cnlf
ZW5jb2Rlcl9jbWQsCj4gIAkudmlkaW9jX2VuY29kZXJfY21kID0gdmlkaW9jX2VuY29kZXJfY21k
LAo+ICB9OwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
