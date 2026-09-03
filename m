Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 625F1C624D7
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2026 06:51:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zEvICACP2W4+jwM5M6mvD0xhcrw2CLbL1Wl83hOQkTw=; b=PcsLJE/PcN7qNK
	XZfOie4yFf6AMYSAk9fhHgRUTIPjw43wG+a16pS0tekCIdsmyd+tWxuiY9YyXfC7zIiGz0zRHDYUA
	DXLo7D1dR2mytOFV5OSGiO0uJak2S4FVA9+soj1LraEz5NelKbFqHe/6lPbHQrtehYg9E+5fTj0Nx
	GNVQHc7WD/sJQjV/1CHYp4hPJEcLQ65muFc+2xQ0N/gJrgzXROOw3mlcwLUxBOOLd5ik+5AnwoX7L
	RRDTsOnLR3umHMHzhERKgF3yKAN0J7qWQiRyRT1dqyyTZq6nL7hLRurk7VcCHFqyuKWmJuuRryuww
	1Dn1+7Sni+swlfad+XsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x21Ie-0000000GVvT-3B9W;
	Thu, 03 Sep 2026 06:51:52 +0000
Received: from sender4-op-o11.zoho.com ([136.143.188.11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x21Ib-0000000GVut-3PXP;
	Thu, 03 Sep 2026 06:51:51 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1788418303; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=JvuMvDYG5fsGmgflGdZp5v1ute+FDtWL4w9qMGnapMlVsA00nTQLSTbeOK1aqnyQ/MDZWWBU9CGkIuAaR9oATPqQINNwj79Qpl7bmSk/6EKNEyy8uEAnBchY4TrwbrEueq8snpV+bSX6UeFJDTTK/CvRrQfNtWT3JO0d9mf5TtI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1788418303; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=tbhQo1C6TdPsTdJu3IOx+JBLZvNXuGNrIgAZrg4gMGY=; 
	b=Qc529jvy4LldeoDbP/FJVVSJjUtb5cNwz+5oDsp9Q5IdnHMpE0GQ+O1dZ0wyFSOgmYFUM3hF+zp398wj1GU/XrFbeqiEtlSwrZ7F9lDgJhqlDDsgb9QtikhU3diJyxOAJpygdOYqMVnhPjBZdmMfX1vjBlO0B2U0cTL3KkHYfSU=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1788418303;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=tbhQo1C6TdPsTdJu3IOx+JBLZvNXuGNrIgAZrg4gMGY=;
	b=dapLq44p8p+4sua8rTiEvL/qFd/9LGNHjFheeBya0U4U5qLotQc3SPAlnNYWajMU
	iM48g52T8RKF2I5Yrck3gwsEG/ZpY6G/xEpLvGoy3nf3DsdGiNkOOHmx3W3MylLQTNl
	hxGHD3k8opa56voc1U6aqc1r8cF5PggRT+Uo2gpw=
Received: by mx.zohomail.com with SMTPS id 1788418301780612.0505181546034;
	Wed, 2 Sep 2026 23:51:41 -0700 (PDT)
Message-ID: <628a89f0-0fa7-4304-9bd6-c7e3ad967ca6@collabora.com>
Date: Thu, 3 Sep 2026 08:51:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/9] media: verisilicon: hantro: bound G2 HEVC tile
 loop to the buffer capacity
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
 <20260617021906.2746743-6-michael.bommarito@gmail.com>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20260617021906.2746743-6-michael.bommarito@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_235149_895954_4548DDC6 
X-CRM114-Status: GOOD (  14.07  )
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
cHJlcGFyZV90aWxlX2luZm9fYnVmZmVyKCkgd3JpdGVzIG9uZSBlbnRyeSBwZXIgdGlsZSBpbnRv
IHRoZSB0aWxlX3NpemVzCj4gRE1BIGJ1ZmZlciwgc2l6ZWQgZm9yIGEgZ3JpZCBlcXVhbCB0byB0
aGUgUFBTIHVBUEkgYXJyYXkgY2FwYWNpdHkuIFVzZSB0aGUKPiBib3VuZGVkIHY0bDJfaGV2Y19w
cHNfbnVtX3RpbGVfY29sdW1ucygpIC8gdjRsMl9oZXZjX3Bwc19udW1fdGlsZV9yb3dzKCkKPiBo
ZWxwZXJzIHNvIHRoZSBsb29wcyBzdGF5IGluc2lkZSB0aGUgYnVmZmVyLgo+Cj4gRml4ZXM6IGNi
NWRkNWEwZmE1MSAoIm1lZGlhOiBoYW50cm86IEludHJvZHVjZSBHMi9IRVZDIGRlY29kZXIiKQo+
IEFzc2lzdGVkLWJ5OiBDbGF1ZGU6Y2xhdWRlLW9wdXMtNC04Cj4gU2lnbmVkLW9mZi1ieTogTWlj
aGFlbCBCb21tYXJpdG8gPG1pY2hhZWwuYm9tbWFyaXRvQGdtYWlsLmNvbT4KClJldmlld2VkLWJ5
OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KCj4g
LS0tCj4gICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19nMl9oZXZj
X2RlYy5jIHwgNiArKysrLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIg
ZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJp
c2lsaWNvbi9oYW50cm9fZzJfaGV2Y19kZWMuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVy
aXNpbGljb24vaGFudHJvX2cyX2hldmNfZGVjLmMKPiBpbmRleCBlOGMyZTgzMzc5ZGVmLi5lN2E3
YzdhNDI0NjdhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGlj
b24vaGFudHJvX2cyX2hldmNfZGVjLmMKPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Zl
cmlzaWxpY29uL2hhbnRyb19nMl9oZXZjX2RlYy5jCj4gQEAgLTUsNiArNSw4IEBACj4gICAgKiBD
b3B5cmlnaHQgKEMpIDIwMjAgU2FmcmFuIFBhc3NlbmdlciBJbm5vdmF0aW9ucyBMTEMKPiAgICAq
Lwo+ICAgCj4gKyNpbmNsdWRlIDxtZWRpYS92NGwyLWhldmMuaD4KPiArCj4gICAjaW5jbHVkZSAi
aGFudHJvX2h3LmgiCj4gICAjaW5jbHVkZSAiaGFudHJvX2cyX3JlZ3MuaCIKPiAgIAo+IEBAIC0x
NSw4ICsxNyw4IEBAIHN0YXRpYyB2b2lkIHByZXBhcmVfdGlsZV9pbmZvX2J1ZmZlcihzdHJ1Y3Qg
aGFudHJvX2N0eCAqY3R4KQo+ICAgCWNvbnN0IHN0cnVjdCB2NGwyX2N0cmxfaGV2Y19wcHMgKnBw
cyA9IGN0cmxzLT5wcHM7Cj4gICAJY29uc3Qgc3RydWN0IHY0bDJfY3RybF9oZXZjX3NwcyAqc3Bz
ID0gY3RybHMtPnNwczsKPiAgIAl1MTYgKnAgPSAodTE2ICopKCh1OCAqKWN0eC0+aGV2Y19kZWMu
dGlsZV9zaXplcy5jcHUpOwo+IC0JdW5zaWduZWQgaW50IG51bV90aWxlX3Jvd3MgPSBwcHMtPm51
bV90aWxlX3Jvd3NfbWludXMxICsgMTsKPiAtCXVuc2lnbmVkIGludCBudW1fdGlsZV9jb2xzID0g
cHBzLT5udW1fdGlsZV9jb2x1bW5zX21pbnVzMSArIDE7Cj4gKwl1bnNpZ25lZCBpbnQgbnVtX3Rp
bGVfcm93cyA9IHY0bDJfaGV2Y19wcHNfbnVtX3RpbGVfcm93cyhwcHMpOwo+ICsJdW5zaWduZWQg
aW50IG51bV90aWxlX2NvbHMgPSB2NGwyX2hldmNfcHBzX251bV90aWxlX2NvbHVtbnMocHBzKTsK
PiAgIAl1bnNpZ25lZCBpbnQgcGljX3dpZHRoX2luX2N0YnMsIHBpY19oZWlnaHRfaW5fY3RiczsK
PiAgIAl1bnNpZ25lZCBpbnQgbWF4X2xvZzJfY3RiX3NpemUsIGN0Yl9zaXplOwo+ICAgCWJvb2wg
dGlsZXNfZW5hYmxlZCwgdW5pZm9ybV9zcGFjaW5nOwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
