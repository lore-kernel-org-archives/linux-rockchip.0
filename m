Return-Path: <SRS0=faov=GK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90031C433E0
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jan 2021 12:32:44 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 37D5B23356
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jan 2021 12:32:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 37D5B23356
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NrhsqHfUJtlto+xNIPD0yxW68OPXdhu1w+YSXw11zY0=; b=nZo8pnxY8MTm8O1xbu6cUXK2y
	2aSregElAQzhk6tIccTEeSnRKjFE9aRyqujboThpJMfxzlmQJmvoyWWN+ZYkWuyZm0n80Wwar7bRp
	x/sJ2/oGAdCW49sEtLatdFjky/1H2NUOjz17Q+4NsVxHXehVuClPHGqpWhW2vpcYKvsrKR9nPSPvc
	TrytKcZxICS9lYYE+wQrZ68OlIrfQznQzAX/LGFoL7Yq0JtIMGJTu5ysnZUnXka9MdZgFxql6dHEy
	n4ow6Z9N1tYKX3BQGkS3uPPQsyWJD86C+6NrdXI8z3DXDLKqsBvV8kWd8ggsPRhUT+8Uvp7FsPqoQ
	OIovAfpBQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kxUT3-0005C8-6b; Thu, 07 Jan 2021 12:32:41 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kxUT0-0005AE-9k
 for linux-rockchip@lists.infradead.org; Thu, 07 Jan 2021 12:32:39 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 931831F4628C
Message-ID: <f499532ca147a0d2907a5020fb69def89d4c69a6.camel@collabora.com>
Subject: Re: [PATCH] media: rkvdec: silence ktest bot build warning
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Boris Brezillon <boris.brezillon@collabora.com>, Hans Verkuil
 <hverkuil@xs4all.nl>
Date: Thu, 07 Jan 2021 09:32:28 -0300
In-Reply-To: <20210107124132.3648e789@collabora.com>
References: <20201208155540.340583-1-adrian.ratiu@collabora.com>
 <76b5569c-bc19-3d11-4da7-cf0dbb244433@xs4all.nl>
 <20210107124132.3648e789@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210107_073238_468648_D62AD3A8 
X-CRM114-Status: GOOD (  13.88  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devel@driverdev.osuosl.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 kernel test robot <lkp@intel.com>, Adrian Ratiu <adrian.ratiu@collabora.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVGh1LCAyMDIxLTAxLTA3IGF0IDEyOjQxICswMTAwLCBCb3JpcyBCcmV6aWxsb24gd3JvdGU6
Cj4gT24gVGh1LCA3IEphbiAyMDIxIDEwOjEzOjQzICswMTAwCj4gSGFucyBWZXJrdWlsIDxodmVy
a3VpbEB4czRhbGwubmw+IHdyb3RlOgo+IAo+ID4gT24gMDgvMTIvMjAyMCAxNjo1NSwgQWRyaWFu
IFJhdGl1IHdyb3RlOgo+ID4gPiBTb21lIGNvbmZpZ3VyYXRpb25zIGJ1aWx0IGJ5IHRoZSBrdGVz
dCBib3QgcHJvZHVjZSB0aGUgZm9sbG93aW5nCj4gPiA+IHdhcm4sIHNvIG1hcmsgdGhlIHN0cnVj
dCBhcyBfX21heWJlX3VudXNlZCB0byBhdm9pZCB1bm5lY2Vzc2FyeQo+ID4gPiBNTCBzcGFtLgo+
ID4gPiDCoCAKPiA+ID4gPiA+IGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmM6
OTY3OjM0OiB3YXJuaW5nOiB1bnVzZWQgdmFyaWFibGUgJ29mX3JrdmRlY19tYXRjaCcgWy1XdW51
c2VkLWNvbnN0LXZhcmlhYmxlXcKgIAo+ID4gPiDCoMKgIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2Zf
ZGV2aWNlX2lkIG9mX3JrdmRlY19tYXRjaFtdID0gewo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIF4KPiA+
ID4gwqDCoCAxIHdhcm5pbmcgZ2VuZXJhdGVkLsKgIAo+ID4gCj4gPiBJIHN1c3BlY3QgdGhhdCB0
aGlzIGlzIGJlY2F1c2UgdGhlcmUgaXMgbm8gJ2RlcGVuZHMgb24gT0YnIGluIHRoZSBLY29uZmln
Lgo+ID4gCj4gPiAnX19tYXliZV91bnVzZWQnIGlzbid0IHVzZWQgZm9yIHRoaXMgYW55d2hlcmUg
ZWxzZSwgc28gdGhpcyBkb2VzIG5vdCBzZWVtIGxpa2UgdGhlCj4gPiByaWdodCBhcHByb2FjaC4K
PiAKPiBJdCdzIG5vdCB1bmNvbW1vbiB0byBkbyB0aGF0LCBlc3BlY2lhbGx5IHdoZW4geW91IHdh
bnQgdGhlIGRyaXZlciB0byBiZQo+IGNvbXBpbGUtdGVzdGVkIChgZ2l0IGdyZXAgLUMyIF9fbWF5
YmVfdW51c2VkfGdyZXAgb2ZfZGV2aWNlX2lkYCBldmVuCj4gcmVwb3J0cyAyIGRyaXZlcnMgaW4g
dGhlIG1lZGlhIHRyZWUgOlApLiBBIGBkZXBlbmRzIG9uIE9GYCBvciBhbgo+IGAjaWZkZWYgQ09O
RklHX09GYCBzZWN0aW9uIHN1cnJvdW5kaW5nIHRoZSBvZl9ya3ZkZWNfbWF0Y2ggZGVjbGFyYXRp
b24KPiB3b3VsZCBhbHNvIGRvIHRoZSB0cmljay4KPiAKCkknbSBmaW5lIGVpdGhlciB3YXksIF9f
bWF5YmVfdW51c2VkIG9yIGRlcGVuZHMgb24gT0YuCgpUaGFua3MsCkV6ZXF1aWVsCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
