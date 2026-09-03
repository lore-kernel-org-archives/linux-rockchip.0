Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E81F0C624D4
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2026 06:51:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h8hA+ZjnCnSTP8645IEFdM+Hpqv9qyDSwM3t9l4n7R8=; b=Nknrjvgm/NDTTq
	gtYvORpLLqvbcQ2xWKyJSvCd0s/VJjSpJlxIYqrs0vm5WZWwVqZ3qEePAqtQbFtqKeLN9jhLMjoMX
	g6sKA2KHo5kxY+5R9pJQxu+sRPmIcb7UmT4HPcKC59BEklDK1c1lZlQTnWSRllYZPEexr1dEU1ocF
	XeoF+bH+cw8uues1T8nQ2rYEDXn8PtZgH8AY2uxQcOK1nVFGMNJc6Kn2zxJVTaUlDXIKQmlx12yG8
	oLW+p8Pa6LmX9+28P3DOf2J+63TB/f3ZnA6tJNAy+AzfZNAXytZhf/7lTT+RWTfBoa0Va3VZDF3hU
	9xhejU6oGrf0+p0uLx8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x21II-0000000GVr4-2Zme;
	Thu, 03 Sep 2026 06:51:30 +0000
Received: from sender4-op-o11.zoho.com ([136.143.188.11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x21IG-0000000GVqc-1AS5;
	Thu, 03 Sep 2026 06:51:29 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1788418279; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=mI5TxV9T26KLVPzQLeqcFHoC/lN6cuL/O/xDyuorrq9EqGlnIZcIt2cPuBy+XF9eDOwL9a/EkL5qR+DzwMwNMnGUQOTSAn9JXJKncxfC4ZrI8M+MTuIY6vh/JUK8u7suFAl4remvr/R0k8/dVMeStdbOFiTEZB5vJInr82EPJu0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1788418279; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=Er0+jf5qJ7+MA51OSpnVT+FMczAyphggtDBLkpQXO4c=; 
	b=lkaUMpL0cElA3/wMMziec7VPPkdPTAK2scVBRXvPvLIR8f5WUPXYNjYSNafh7Uq9orHIMwvo2tPJ1xRKdbGhujIig25r5ju72CelsK7qoEgcdkzDrGSC3pbUfLmBW/440KYPKRn8ocz0iWlkWyvZkH1BbzBTjaO7YWVkuYQLQqQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1788418279;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=Er0+jf5qJ7+MA51OSpnVT+FMczAyphggtDBLkpQXO4c=;
	b=cIX6bqhC/3XCAkCL6Tc6nvhZtYeuTxGDr1kaobPawvv7CvvYybPZSJn3ZTsT31C+
	/37n9RTnycYHAneXf+msH150uvy1Wv2ccEkigPVUzeyq0wTSRyMQqYAKVn1XcB8IaSY
	iFfqs5XvYWUkV2skmAZE8QPuilEnt4eNCzmIp6rU=
Received: by mx.zohomail.com with SMTPS id 178841827811934.23632285902954;
	Wed, 2 Sep 2026 23:51:18 -0700 (PDT)
Message-ID: <92f2fa35-aff2-4c14-b617-0884f90af44f@collabora.com>
Date: Thu, 3 Sep 2026 08:51:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/9] media: hevc: add bounded tile-count helpers
To: Michael Bommarito <michael.bommarito@gmail.com>,
 Hans Verkuil <hverkuil@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Yunfei Dong <yunfei.dong@mediatek.com>, Jonas Karlman <jonas@kwiboo.se>,
 Heiko Stuebner <heiko@sntech.de>, Kees Cook <kees@kernel.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260617021906.2746743-1-michael.bommarito@gmail.com>
 <20260617021906.2746743-4-michael.bommarito@gmail.com>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20260617021906.2746743-4-michael.bommarito@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_235128_366400_7650EF30 
X-CRM114-Status: GOOD (  17.46  )
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

CkxlIDE3LzA2LzIwMjYgw6AgMDQ6MTksIE1pY2hhZWwgQm9tbWFyaXRvIGEgw6ljcml0wqA6Cj4g
VGhlIHN0YXRlbGVzcyBIRVZDIGRlY29kZXJzIGNvbXB1dGUgdGhlIG51bWJlciBvZiB0aWxlIGNv
bHVtbnMgYW5kIHJvd3MKPiBmcm9tIG51bV90aWxlX2NvbHVtbnNfbWludXMxIC8gbnVtX3RpbGVf
cm93c19taW51czEgYW5kIGNsYW1wIGl0IHRvIHRoZQo+IGNvbHVtbl93aWR0aF9taW51czFbXSAv
IHJvd19oZWlnaHRfbWludXMxW10gY2FwYWNpdHkgYmVmb3JlIHVzaW5nIGl0IGFzIGEKPiBsb29w
IGJvdW5kLiBBZGQgc2hhcmVkIGhlbHBlcnMgaW4gYSBuZXcgPG1lZGlhL3Y0bDItaGV2Yy5oPiBz
byB0aGUgcmt2ZGVjCj4gYW5kIGhhbnRybyBkcml2ZXJzIGRvIG5vdCBlYWNoIG9wZW4tY29kZSB0
aGUgbWluX3QoKSBjbGFtcC4KPgo+IEFzc2lzdGVkLWJ5OiBDbGF1ZGU6Y2xhdWRlLW9wdXMtNC04
Cj4gU2lnbmVkLW9mZi1ieTogTWljaGFlbCBCb21tYXJpdG8gPG1pY2hhZWwuYm9tbWFyaXRvQGdt
YWlsLmNvbT4KClJldmlld2VkLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25h
cmRAY29sbGFib3JhLmNvbT4KCj4gLS0tCj4gICBpbmNsdWRlL21lZGlhL3Y0bDItaGV2Yy5oIHwg
NDEgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gICAxIGZpbGUgY2hh
bmdlZCwgNDEgaW5zZXJ0aW9ucygrKQo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvbWVk
aWEvdjRsMi1oZXZjLmgKPgo+IGRpZmYgLS1naXQgYS9pbmNsdWRlL21lZGlhL3Y0bDItaGV2Yy5o
IGIvaW5jbHVkZS9tZWRpYS92NGwyLWhldmMuaAo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5k
ZXggMDAwMDAwMDAwMDAwMC4uOTczYzk2YmUxNmJlNAo+IC0tLSAvZGV2L251bGwKPiArKysgYi9p
bmNsdWRlL21lZGlhL3Y0bDItaGV2Yy5oCj4gQEAgLTAsMCArMSw0MSBAQAo+ICsvKiBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vci1sYXRlciAqLwo+ICsvKgo+ICsgKiBIZWxwZXIg
ZnVuY3Rpb25zIGZvciBIRVZDIHN0YXRlbGVzcyBjb2RlY3MuCj4gKyAqLwo+ICsKPiArI2lmbmRl
ZiBfTUVESUFfVjRMMl9IRVZDX0gKPiArI2RlZmluZSBfTUVESUFfVjRMMl9IRVZDX0gKPiArCj4g
KyNpbmNsdWRlIDxsaW51eC9taW5tYXguaD4KPiArI2luY2x1ZGUgPG1lZGlhL3Y0bDItY3RybHMu
aD4KPiArCj4gKy8qKgo+ICsgKiB2NGwyX2hldmNfcHBzX251bV90aWxlX2NvbHVtbnMgLSBudW1i
ZXIgb2YgSEVWQyB0aWxlIGNvbHVtbnMsIGJvdW5kZWQKPiArICogQHBwczogdGhlIFY0TDIgSEVW
QyBQUFMgY29udHJvbAo+ICsgKgo+ICsgKiBSZXR1cm4gdGhlIG51bWJlciBvZiB0aWxlIGNvbHVt
bnMgKG51bV90aWxlX2NvbHVtbnNfbWludXMxICsgMSkgY2xhbXBlZCB0bwo+ICsgKiB0aGUgY2Fw
YWNpdHkgb2YgY29sdW1uX3dpZHRoX21pbnVzMVtdLiBUaGUgY29udHJvbCB2YWxpZGF0aW9uIGFs
cmVhZHkKPiArICogcmVqZWN0cyBvdXQtb2YtcmFuZ2UgY291bnRzOyB0aGlzIGtlZXBzIHRoZSBj
b25zdW1pbmcgZHJpdmVycyBib3VuZGVkIHRvby4KPiArICovCj4gK3N0YXRpYyBpbmxpbmUgdW5z
aWduZWQgaW50Cj4gK3Y0bDJfaGV2Y19wcHNfbnVtX3RpbGVfY29sdW1ucyhjb25zdCBzdHJ1Y3Qg
djRsMl9jdHJsX2hldmNfcHBzICpwcHMpCj4gK3sKPiArCXJldHVybiBtaW5fdCh1bnNpZ25lZCBp
bnQsIHBwcy0+bnVtX3RpbGVfY29sdW1uc19taW51czEgKyAxLAo+ICsJCSAgICAgQVJSQVlfU0la
RShwcHMtPmNvbHVtbl93aWR0aF9taW51czEpKTsKPiArfQo+ICsKPiArLyoqCj4gKyAqIHY0bDJf
aGV2Y19wcHNfbnVtX3RpbGVfcm93cyAtIG51bWJlciBvZiBIRVZDIHRpbGUgcm93cywgYm91bmRl
ZAo+ICsgKiBAcHBzOiB0aGUgVjRMMiBIRVZDIFBQUyBjb250cm9sCj4gKyAqCj4gKyAqIFJldHVy
biB0aGUgbnVtYmVyIG9mIHRpbGUgcm93cyAobnVtX3RpbGVfcm93c19taW51czEgKyAxKSBjbGFt
cGVkIHRvIHRoZQo+ICsgKiBjYXBhY2l0eSBvZiByb3dfaGVpZ2h0X21pbnVzMVtdLgo+ICsgKi8K
PiArc3RhdGljIGlubGluZSB1bnNpZ25lZCBpbnQKPiArdjRsMl9oZXZjX3Bwc19udW1fdGlsZV9y
b3dzKGNvbnN0IHN0cnVjdCB2NGwyX2N0cmxfaGV2Y19wcHMgKnBwcykKPiArewo+ICsJcmV0dXJu
IG1pbl90KHVuc2lnbmVkIGludCwgcHBzLT5udW1fdGlsZV9yb3dzX21pbnVzMSArIDEsCj4gKwkJ
ICAgICBBUlJBWV9TSVpFKHBwcy0+cm93X2hlaWdodF9taW51czEpKTsKPiArfQo+ICsKPiArI2Vu
ZGlmIC8qIF9NRURJQV9WNEwyX0hFVkNfSCAqLwoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
