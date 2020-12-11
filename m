Return-Path: <SRS0=0eoG=FP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 557B7C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Dec 2020 10:45:05 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A005323F2B
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Dec 2020 10:45:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A005323F2B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oqY01agxVbo/bZa+HpRGlIbYSmGj8jR+kglwjePNww0=; b=PrGmO+VVxCfLh9Bw7GCjWQKo5
	F89rpEOTx3+Gv2lh/roqiTB1Q4R6IrijWVNwv96S7QIQY4KoARKp40xJMGh88faeHsox5j0IJOo6e
	BHEMokwhzxXI/ZaZFiROKxFUp7yGaPLCcLmh7ucCklUe4zMLjKHhdLu3u4cHAgXZuSGe1Gdzhf8+k
	7RedkidMHVJrodq5v74xGmR6ZI5SwUOKpz381Hi93uUyCyIwVfRpWLqMSFsz8RtgBvEnI2ihJ38fZ
	wQWjq/feQHHD96qNQlyk5V8oWJ0KIajuuz798tH9UfDY0U/UrqnaHzFQk0DWK4kVwjD0CDmMVR8AI
	vcqTgzlUA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1knfv0-000738-1e; Fri, 11 Dec 2020 10:44:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1knfuu-00071T-NH; Fri, 11 Dec 2020 10:44:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A98FC31B;
 Fri, 11 Dec 2020 02:44:49 -0800 (PST)
Received: from [10.57.61.6] (unknown [10.57.61.6])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F0CA63F68F;
 Fri, 11 Dec 2020 02:44:47 -0800 (PST)
Subject: Re: [PATCH] pwm: rockchip: Eliminate potential race condition when
 probing
To: Trent Piepho <tpiepho@gmail.com>, Simon South <simon@simonsouth.net>,
 Thierry Reding <thierry.reding@gmail.com>
References: <875z5nof46.fsf@simonsouth.net>
 <20201130004419.1714-1-simon@simonsouth.net> <X9JfbpTnfqUVk6iN@ulmo>
 <2304095.iZASKD2KPV@zen.local>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <07807886-0abc-52a2-d3b5-d994b0d7c701@arm.com>
Date: Fri, 11 Dec 2020 10:44:46 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <2304095.iZASKD2KPV@zen.local>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201211_054452_879820_075FA743 
X-CRM114-Status: GOOD (  28.02  )
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
Cc: linux-pwm@vger.kernel.org, heiko@sntech.de, bbrezillon@kernel.org,
 linux-rockchip@lists.infradead.org, u.kleine-koenig@pengutronix.de,
 lee.jones@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjAyMC0xMi0xMCAyMTowMCwgVHJlbnQgUGllcGhvIHdyb3RlOgo+IE9uIFRodXJzZGF5LCBE
ZWNlbWJlciAxMCwgMjAyMCA5OjQ4OjMwIEFNIFBTVCBUaGllcnJ5IFJlZGluZyB3cm90ZToKPj4g
T24gU3VuLCBOb3YgMjksIDIwMjAgYXQgMDc6NDQ6MTlQTSAtMDUwMCwgU2ltb24gU291dGggd3Jv
dGU6Cj4+PiBAQCAtMzI2LDIxICszMjksMzggQEAgc3RhdGljIGludCByb2NrY2hpcF9wd21fcHJv
YmUoc3RydWN0Cj4+PiBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpPgo+Pj4gICAJCXJldHVybiByZXQ7
Cj4+PiAgIAkKPj4+ICAgCX0KPj4+Cj4+PiAtCXJldCA9IGNsa19wcmVwYXJlX2VuYWJsZShwYy0+
Y2xrKTsKPj4+ICsJcmV0ID0gY2xrX3ByZXBhcmUocGMtPmNsayk7Cj4+Pgo+Pj4gICAJaWYgKHJl
dCkgewo+Pj4KPj4+IC0JCWRldl9lcnIoJnBkZXYtPmRldiwgIkNhbid0IHByZXBhcmUgZW5hYmxl
IGJ1cyBjbGs6ICVkXG4iLCByZXQpOwo+Pj4gKwkJZGV2X2VycigmcGRldi0+ZGV2LCAiQ2FuJ3Qg
cHJlcGFyZSBidXMgY2xrOiAlZFxuIiwgcmV0KTsKPj4+Cj4+PiAgIAkJcmV0dXJuIHJldDsKPj4+
ICAgCQo+Pj4gICAJfQo+Pj4KPj4+ICsJLyoKPj4+ICsJICogSWYgaXQgYXBwZWFycyB0aGUgUFdN
IGhhcyBhbHJlYWR5IGJlZW4gZW5hYmxlZCwgcGVyaGFwcyBieSBhCj4+PiArCSAqIGJvb3Rsb2Fk
ZXIsIHJlLWVuYWJsZSBpdHMgY2xvY2sgdG8gaW5jcmVtZW50IHRoZSBjbG9jaydzIGVuYWJsZQo+
Pj4gKwkgKiBjb3VudGVyIGFuZCBlbnN1cmUgaXQgaXMga2VwdCBydW5uaW5nIChwYXJ0aWN1bGFy
bHkgaW4gdGhlIGNhc2UKPj4+ICsJICogd2hlcmUgdGhlcmUgaXMgbm8gc2VwYXJhdGUgQVBCIGNs
b2NrKS4KPj4+ICsJICovCj4+PiArCWVuYWJsZV9jb25mID0gcGMtPmRhdGEtPmVuYWJsZV9jb25m
Owo+Pj4gKwljdHJsID0gcmVhZGxfcmVsYXhlZChwYy0+YmFzZSArIHBjLT5kYXRhLT5yZWdzLmN0
cmwpOwo+Pj4gKwllbmFibGVkID0gKGN0cmwgJiBlbmFibGVfY29uZikgPT0gZW5hYmxlX2NvbmY7
Cj4+Cj4+IEdpdmVuIHRoYXQgd2UgZG9uJ3QgZW5hYmxlIHRoZSBidXMgY2xvY2sgYmVmb3JlIHRo
aXMsIGlzIGl0IGV2ZW4gc2FmZSB0bwo+PiBhY2Nlc3MgcmVnaXN0ZXJzIG9uIHRoZSBidXMgaWYg
dGhlIGNsb2NrIGlzIGRpc2FibGVkPyBJJ3ZlIHNlZW4gYSBsb3Qgb2YKPj4gY2FzZXMgd2hlcmUg
YWNjZXNzZXMgdG8gYW4gdW5jbG9ja2VkIGJ1cyBlaXRoZXIgbGVhZCB0byBzaWxlbnQgaGFuZ3Mg
b3IKPj4gdmVyeSBub2lzeSBjcmFzaGVzLCBhbmQgSSB3b3VsZCBleHBlY3Qgc29tZXRoaW5nIGxp
a2UgdGhhdCAob3Igc29tZXRoaW5nCj4+IGluIGJldHdlZW4pIHRvIGhhcHBlbiBvbiBSb2NrY2hp
cCBTb0NzLgo+IAo+IEkgd291bGQgYWxzbyBhc3N1bWUgcmVnaXN0ZXIgYWNjZXNzIHdpdGggdGhl
IGNsb2NrIGRpc2FibGVkIHdvdWxkIGhhbmcgb3IKPiBvdGhlcndpc2UgZmFpbC4gIFRoZXJlIGFy
ZSBwb3NzaWJseSB0d28gY2xvY2tzLCBvbmUgY2FsbGVkICJidXMgY2xvY2siIGFuZAo+IHRoZSBv
dGhlciAiQVBCIGNsb2NrIi4gIEFQQiBiZWluZyBBZHZhbmNlZCBQZXJpcGhlcmFsIEJ1cy4gIE5v
dCB0aGUgZ3JlYXRlc3QKPiBjaG9pY2Ugb2YgbmFtZXMuICBJIGFzc3VtZSB0aGUgQVBCIGNsb2Nr
IGlzIG5lZWRlZCBmb3IgcmVnaXN0ZXIgYWNjZXNzIGFuZAo+IHRoZSAiYnVzIGNsb2NrIiBpcyB1
c2VkIHRvIGdlbmVyYXRlIHRoZSBQV00gc2lnbmFsIGFuZCBkb2VzIG5vdCBuZWVkIHRvIGJlCj4g
ZW5hYmxlZCBmb3IgcmVnaXN0ZXIgYWNjZXNzLiAgVW5mb3J0dW5hdGVseSB0aGUgUkszMzk5IGRv
Y3MgZG8gbm90IGhhdmUgYQo+IGNsb2NrIGRpYWdyYW0gZm9yIHRoZSBQV00gb3IgaW5jbHVkZSBk
ZXRhaWxzIHN1Y2ggYXMgdGhlc2UuCj4gCj4gVGhlcmUgaXMgYSBsb3cgcG93ZXIgbW9kZSBiaXQg
aW4gdGhlIGNvbnRyb2wgcmVnaXN0ZXIgdGhhdCBkaXNhYmxlcyB0aGUgUFdNCj4gc2lnbmFsJ3Mg
Y2xvY2suICBBbmQgd2hpY2ggY2xvY2sgZG9lcyB0aGF0IGRpc2FibGVkLCB0aGUgIkFCUCBjbG9j
ayIgb3IgdGhlCj4gImJ1cyBjbG9jayI/ICBJIHF1b3RlIMKnMTguNi40LCAidGhlIEFQQiBidXMg
Y2xvY2sg4oCmIGlzIGdhdGVk4oCmIiAgSXQncyBsaWtlCj4gdGhleSdyZSBiZWluZyBpbnRlbnRp
b25hbCBhbWJpZ3VvdXMuCgpGV0lXIEkgdGhpbmsgaXQgYmVjb21lcyBjbGVhciBlbm91Z2ggaWYg
eW91IHJlYWQgdGhlIERUIGJpbmRpbmcgaW4gCnBhcmFsbGVsIHdpdGggdGhlIGNvZGUgLSBpZiBk
ZXZtX2Nsa19nZXQoJnBkZXYtPmRldiwgInB3bSIpIGZhaWxzLCB0aGUgCmRyaXZlciBmYWxscyBi
YWNrIHRvIGFzc3VtaW5nIHRoZSBSSzMzOTktb3ItZWFybGllciBjYXNlIG9mIGEgc2luZ2xlIAp1
bm5hbWVkIGNsb2NrLCBzbyAiQ2FuJ3QgZ2V0IGJ1cyBjbGsiIGlzIHJlZmVycmluZyBzcGVjaWZp
Y2FsbHkgdG8gdGhlIApkZXZtX2Nsa19nZXQoJnBkZXYtPmRldiwgTlVMTCkgY2FsbCB3aGVyZSB0
aGF0IGNsb2NrICppcyogYWxzbyB0aGUgQVBCIApjbG9jay4KClBvc3NpYmx5IHRoZSBkcml2ZXIg
Y291bGQgZG8gd2l0aCBhIHNsaWdodGx5IGNsZWFyZXIgc3RydWN0dXJlIGhlcmUsIGJ1dCAKY29t
cGF0aWJpbGl0eSBmYWxsYmFja3MgYXJlIGluZXZpdGFibHkgbWVzc3kgdG8gc29tZSBkZWdyZWUu
CgpSb2Jpbi4KCj4gQW55d2F5LCBmcm9tIHRoZSBleGlzdGluZyBjb2RlLCBpdCBzZWVtcyBjbGVh
ciB0aGF0IHBjLT5wY2xrIG5lZWRzIHRvIGJlCj4gZW5hYmxlZCBmb3IgcmVnaXN0ZXIgYWNjZXNz
IGFuZCBwYy0+Y2xrIHRvIGdlbmVyYXRlIGEgc2lnbmFsLiAgVGhlIGNhbGwgdG8KPiBjbGtfcHJl
cGFyZShwYy0+cGNsaykgc2hvdWxkIGJlY29tZSBjbGtfcHJlcGFyZV9lbmFibGUocGMtPnBjbGsp
IGFuZCBtb3ZlZAo+IHRvIGJlZm9yZSB0aGUgZW5hYmxlZF9jb25mIGNoZWNrLiAgVGhlbiBjbGtf
ZGlzYWJsZShwYy0+cGNsaykgYWZ0ZXJ3YXJkLgo+IFRoZSBleGlzdGluZyBjb2RlIHdpbGwgZGlz
YWJsZSBwY2xrIGV2ZW4gaWYgdGhlIFBXTSBpcyBlbmFibGVkLCBzbyB1bmxlc3MKPiB0aGF0IGlz
IGFsc28gYSBidWcsIGl0IHNob3VsZCBiZSBvayB0byBkaXNhYmxlIHBjLT5wY2xrIGFmdGVyIGVu
YWJsaW5nCj4gcGMtPmNsay4KPiAKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwo+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+IExpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCj4gCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
