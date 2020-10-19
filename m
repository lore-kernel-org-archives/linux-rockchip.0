Return-Path: <SRS0=ZzQ+=D2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF24CC433E7
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Oct 2020 03:44:24 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B930722268
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Oct 2020 03:44:23 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="IhvWdAXW"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B930722268
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rfDY9BeUEMHXEwaeHJBCE0DJVl2VlMeJ1pjVU2RYXnA=; b=IhvWdAXWuda1r5NwXgBULpJul
	9nGKo4VxChaHKzoH5KZ20cYuEEQeox32SYdvxsXSZ77/+Y1afP7mx4X9AWm4byytTV/7bAUWINkUf
	rJfgdsUttNN7IYTWSsBi+n06e2Up7UeVsZTy4v1WbwiioWr+iAcdQw/Pfx2RrAYIp9pes1/d/T11A
	xlMuKOJSR7E7ZnBZm8DqpgeZQIQfUAKz/BjTLm5ITlPYoo+kMH2lWDX7+z9hqUpEfL30Luw/9xx8m
	PgfgW+UBGagYIGKBK/LfwDai3hArwvHmLBq2xa9Xo5QmISLN0DYU7BqIRIWiCs7yfaNm6haUcCfrC
	Ad6uDipDA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kUM5g-0003Ou-EN; Mon, 19 Oct 2020 03:44:08 +0000
Received: from regular1.263xmail.com ([211.150.70.204])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kUM5c-0003OU-Ut
 for linux-rockchip@lists.infradead.org; Mon, 19 Oct 2020 03:44:07 +0000
Received: from localhost (unknown [192.168.167.13])
 by regular1.263xmail.com (Postfix) with ESMTP id E2E2B2BA;
 Mon, 19 Oct 2020 11:43:56 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.120] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P1665T140084967511808S1603079033410318_; 
 Mon, 19 Oct 2020 11:43:54 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <f99b6cdefa6c3a4763585ece9ed9a3cc>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-kernel@vger.kernel.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v2] drm/of: Consider the state in which the ep is disabled
To: Sandy Huang <hjc@rock-chips.com>, heiko@sntech.de,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@linux.ie>, huangtao@rock-chips.com,
 andy.yan@rock-chips.com, linux-rockchip@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
References: <20200707112526.18438-1-hjc@rock-chips.com>
 <5c0cdb9d-8e35-fa0c-35b3-adfa7770fb30@rock-chips.com>
 <20201015152301.GE438822@phenom.ffwll.local>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <e016801a-61aa-de6c-cb90-c62e03bdd067@rock-chips.com>
Date: Mon, 19 Oct 2020 11:43:53 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201015152301.GE438822@phenom.ffwll.local>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201018_234405_250596_A03D4FB0 
X-CRM114-Status: GOOD (  16.72  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgRGFuaWVsLAoKT24gMjAyMC8xMC8xNSDkuIvljYgxMToyMywgRGFuaWVsIFZldHRlciB3cm90
ZToKPiBPbiBXZWQsIE9jdCAxNCwgMjAyMCBhdCAwOTo0ODo0M0FNICswODAwLCBLZXZlciBZYW5n
IHdyb3RlOgo+PiBIaSBNYWludGFpbmVycywKPj4KPj4gIMKgwqDCoCBEb2VzIHRoaXMgcGF0Y2gg
cmVhZHkgdG8gbWVyZ2U/Cj4gV291bGQgbWF5YmUgYmUgZ29vZCB0byBnZXQgc29tZSBhY2tzIGZy
b20gb3RoZXIgZHJpdmVycyB1c2luZyB0aGlzLCB0aGVuCj4gU2FuZHkgY2FuIHB1c2ggdG8gZHJt
LW1pc2MtbmV4dC4KClRoYW5rcyBmb3IgeW91ciByZXBseSwgSSBjYW4gdW5kZXJzdGFuZCBtb3Jl
ICdhY2tzJyB3aWxsIGJlIGJldHRlciwgYnV0IAp0aGVyZSBpcyBubyBjb21tZW50cyBvYmplY3Qg
dG8gdGhpcyBwYXRjaAoKb3IgYW55ICdOQUsnIGNvbW1vbiBmb3IgbW9yZSB0aGVuIDMgbW9udGhz
LCBtYWludGFpbmVycyBzaG91bGQgbW92ZSB0byAKbmV4dCBzdGVwLgoKClRoYW5rcywKCi0gS2V2
ZXIKCj4gLURhbmllbAo+PiBPbiAyMDIwLzcvNyDkuIvljYg3OjI1LCBTYW5keSBIdWFuZyB3cm90
ZToKPj4+IGRvbid0IG1hc2sgcG9zc2libGVfY3J0Y3MgaWYgcmVtb3RlLXBvaW50IGlzIGRpc2Fi
bGVkLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IFNhbmR5IEh1YW5nIDxoamNAcm9jay1jaGlwcy5j
b20+Cj4+PiAtLS0KPj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9kcm1fb2YuYyB8IDMgKysrCj4+PiAg
ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9kcm1fb2YuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fb2YuYwo+Pj4gaW5k
ZXggZmRiMDVmYmY3MmEwLi41NjVmMDVmNWYxMWIgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vZHJtX29mLmMKPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fb2YuYwo+Pj4gQEAg
LTY2LDYgKzY2LDkgQEAgdWludDMyX3QgZHJtX29mX2ZpbmRfcG9zc2libGVfY3J0Y3Moc3RydWN0
IGRybV9kZXZpY2UgKmRldiwKPj4+ICAgIAl1aW50MzJfdCBwb3NzaWJsZV9jcnRjcyA9IDA7Cj4+
PiAgICAJZm9yX2VhY2hfZW5kcG9pbnRfb2Zfbm9kZShwb3J0LCBlcCkgewo+Pj4gKwkJaWYgKCFv
Zl9kZXZpY2VfaXNfYXZhaWxhYmxlKGVwKSkKPj4+ICsJCQljb250aW51ZTsKPj4+ICsKPj4+ICAg
IAkJcmVtb3RlX3BvcnQgPSBvZl9ncmFwaF9nZXRfcmVtb3RlX3BvcnQoZXApOwo+Pj4gICAgCQlp
ZiAoIXJlbW90ZV9wb3J0KSB7Cj4+PiAgICAJCQlvZl9ub2RlX3B1dChlcCk7Cj4+IExvb2tzIGdv
b2QgdG8gbWUuCj4+Cj4+Cj4+IFJldmlld2VkLWJ5OiBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJv
Y2stY2hpcHMuY29tPgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
