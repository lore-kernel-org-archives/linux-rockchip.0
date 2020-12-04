Return-Path: <SRS0=Y7pG=FI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F13EC433FE
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Dec 2020 03:02:05 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A74D9224DE
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Dec 2020 03:02:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A74D9224DE
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=gtsys.com.hk
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jjYB4DMRenQRmVk7fboF+Xg/QGZBfSIqWp99CwEFqds=; b=VPMlD9vP0OfrOnbW1gFeZaqGf
	VR4sivWbcOSjZKrEyZlODagQR+43MNk+rJEjKXKOfMB2tkR+yjX8zRZqRCMLHyVl4iySBlsjE7Jic
	M4/pz6lIaxKuJ/TiUHfXQwyEJs1Q/QYoOYyv16mKQpRGE2xzKOWH+dHauUlBZ089mzdYJ4aLAYtUa
	Wc0m60WaTVdIqmchrlETH4gsfP75LsId6Mkln0xJCa7gTQacF910HniDzqrx+T9ftYpZXtbxF7gMH
	MSNbl2tsaguIM0+anB+GPbacEgR57vHTCyvmCAkVC9j40xnIKqa8g/ef4QfMvOVx49z+MjfnuNImp
	ACRpNb2HQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kl1M5-00023G-Fy; Fri, 04 Dec 2020 03:01:57 +0000
Received: from [27.111.83.178] (helo=mail.gtsys.com.hk)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kl1Lz-00022Q-6y; Fri, 04 Dec 2020 03:01:53 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.gtsys.com.hk (Postfix) with ESMTP id 6AD952344E93;
 Fri,  4 Dec 2020 11:01:42 +0800 (HKT)
X-Virus-Scanned: Debian amavisd-new at gtsys.com.hk
Received: from mail.gtsys.com.hk ([127.0.0.1])
 by localhost (mail.gtsys.com.hk [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u-cXjOXYxjlA; Fri,  4 Dec 2020 11:01:42 +0800 (HKT)
Received: from s01.gtsys.com.hk (unknown [10.128.4.2])
 by mail.gtsys.com.hk (Postfix) with ESMTP id 4AEF820001F5;
 Fri,  4 Dec 2020 11:01:42 +0800 (HKT)
Received: from [10.128.2.32] (unknown [124.217.188.227])
 by s01.gtsys.com.hk (Postfix) with ESMTPSA id 50918C019FF;
 Fri,  4 Dec 2020 11:01:41 +0800 (HKT)
Subject: Re: [PATCH] phy: rockchip-emmc: emmc_phy_init() always return 0
From: Chris Ruehl <chris.ruehl@gtsys.com.hk>
To: Doug Anderson <dianders@chromium.org>
References: <20201201031015.23314-1-chris.ruehl@gtsys.com.hk>
 <CAD=FV=Wyk9BYR3cnfm=9tBh=XBxEP=udMTeaEYPzAqa5m8x=yg@mail.gmail.com>
 <f8a21465-91d0-9967-e559-d8f91f795028@gtsys.com.hk>
Message-ID: <e6d351f9-232c-ebab-2f4e-bf2ff4dc8238@gtsys.com.hk>
Date: Fri, 4 Dec 2020 11:01:40 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <f8a21465-91d0-9967-e559-d8f91f795028@gtsys.com.hk>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201203_220151_632182_83226D89 
X-CRM114-Status: GOOD (  29.44  )
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 LKML <linux-kernel@vger.kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Vinod Koul <vkoul@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksCgpPbiAyLzEyLzIwMjAgNDozNiBwbSwgQ2hyaXMgUnVlaGwgd3JvdGU6Cj4gCj4gT24gMi8x
Mi8yMDIwIDEyOjA1IGFtLCBEb3VnIEFuZGVyc29uIHdyb3RlOgo+PiBIaSwKPj4KPj4gT24gTW9u
LCBOb3YgMzAsIDIwMjAgYXQgNzoxMCBQTSBDaHJpcyBSdWVobCA8Y2hyaXMucnVlaGxAZ3RzeXMu
Y29tLmhrPiB3cm90ZToKPj4+Cj4+PiByb2NrY2hpcF9lbW1jX3BoeV9pbml0KCkgcmV0dXJuIHZh
cmlhYmxlIGlzIG5vdCBzZXQgd2l0aCB0aGUgZXJyb3IgdmFsdWUKPj4+IGlmIGNsa19nZXQoKSBm
YWlsZWQuIFRoZSBkZWJ1ZyBtZXNzYWdlIHByaW50IDAgb24gZXJyb3IgYW5kIHRoZSBmdW5jdGlv
bgo+Pj4gYWx3YXlzIHJldHVybiAwLgo+Pj4gRml4IGl0IHVzaW5nIFBUUl9FUlIoKS4KPj4+Cj4+
PiBGaXhlczogNTJjMDYyNGExMGNjZSBwaHk6IHJvY2tjaGlwLWVtbWM6IFNldCBwaHljdHJsX2Zy
cXNlbCBiYXNlZCBvbiBjYXJkIGNsb2NrCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgUnVl
aGwgPGNocmlzLnJ1ZWhsQGd0c3lzLmNvbS5oaz4KPj4+IC0tLQo+Pj4gwqAgZHJpdmVycy9waHkv
cm9ja2NoaXAvcGh5LXJvY2tjaGlwLWVtbWMuYyB8IDEgKwo+Pj4gwqAgMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3JvY2tjaGlw
L3BoeS1yb2NrY2hpcC1lbW1jLmMgCj4+PiBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2Nr
Y2hpcC1lbW1jLmMKPj4+IGluZGV4IDQ4ZTJkNzViMTAwNC4uNzVmYWVlNWMwZDI3IDEwMDY0NAo+
Pj4gLS0tIGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWVtbWMuYwo+Pj4gKysr
IGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWVtbWMuYwo+Pj4gQEAgLTI1Myw2
ICsyNTMsNyBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX2VtbWNfcGh5X2luaXQoc3RydWN0IHBoeSAq
cGh5KQo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgICovCj4+PiDCoMKgwqDCoMKgwqDCoMKgIHJrX3Bo
eS0+ZW1tY2NsayA9IGNsa19nZXQoJnBoeS0+ZGV2LCAiZW1tY2NsayIpOwo+Pj4gwqDCoMKgwqDC
oMKgwqDCoCBpZiAoSVNfRVJSKHJrX3BoeS0+ZW1tY2NsaykpIHsKPj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHJldCA9IFBUUl9FUlIocmtfcGh5LT5lbW1jY2xrKTsKPj4KPj4gSSdt
IHByZXR0eSBzdXJlIHlvdXIgcGF0Y2ggaXNuJ3QgY29ycmVjdCBhbmQgaXQgd291bGQgYnJlYWsg
dXNlIGNhc2VzLgo+PiBJcyBpdCBmaXhpbmcgc29tZSBidWcgdGhhdCB5b3UncmUgYXdhcmUgb2Ys
IG9yIHlvdSBmb3VuZCBpdCB2aWEgY29kZQo+PiBpbnNwZWN0aW9uPwo+Pgo+PiBTcGVjaWZpY2Fs
bHk6Cj4+Cj4+ICogVGhlIGJpZyBjb21tZW50IGJsb2NrIGluIHRoaXMgZnVuY3Rpb24gc2F5cyB0
aGF0IHRoZSBjbG9jayBpcwo+PiBvcHRpb25hbCBhbmQgdGhhdCB3ZSdyZSBpZ25vcmluZyBlcnJv
cnMuCj4+Cj4+ICogVGhlIHByaW50b3V0IGluIHRoaXMgZnVuY3Rpb24gaXMgImRiZyIgbGV2ZWws
IHdoaWNoIGlzIGFuIGV4dHJhCj4+IGluZGljYXRpb24gdGhhdCB3ZSBhcmVuJ3QgY29uY2VybmVk
IHdpdGggdGhlc2UgZXJyb3JzLgo+Pgo+PiBBcmd1YWJseSB0aGUgY29kZSBjb3VsZCBiZSBtYWRl
IGJldHRlci7CoCBJZiB5b3Ugd2FudCB0byBpbXByb3ZlIGl0LAo+PiB5b3UgY291bGQgY2hlY2sg
Zm9yIGp1c3QgdGhlIGVycm9yIHdlIGV4cGVjdCBpZiB0aGUgY2xvY2sgaXNuJ3QKPj4gc3BlY2lm
aWVkIChwcm9iYWJseSAtRU5PREVWLCBidXQgeW91IHNob3VsZCBjaGVjaykgYW5kIHRyZWF0IGFs
bCBvdGhlcgo+PiBmYWlsdXJlcyBhcyByZWFsIGVycm9ycy4KPj4KPj4KPj4gLURvdWcKPj4KPiAK
PiBIaSBEb3VnLAo+ICDCoEkgcmV2aWV3ZWQgdGhlIGNvZGUgd2hpbGUgaHVudGluZyBiZWhpbmQg
YW4gb3RoZXIgYnVnLCB3aXRoIGhzNDAwCj4gYW5kIHllcyBJIHNhdyB0aGUgY29tbWVudCB0aGF0
IHRoZXkgZG9uJ3QgY2FyZSBhYm91dCB0aGUgcHJvYmxlbQo+IGlmIHRoZSBjbGtfZ2V0KCkgcmV0
dXJuIGFuIGVycm9yLCBhbmQgc2V0IHRoZSBya19waHktPmVtbWNjbGsgPSBOVUxMCj4gcmVnYXJk
bGVzcywgbm90IHVzaW5nIHRoZSByZXQgdmFyaWFibGUgYnV0IGRlZmluZSBpdCBpc24ndCB1c2Vm
dWwuCj4gCj4gSWYgcmV0dXJuIGEgZXJyb3IgY29kZSBicmVhayBzb21ldGhpbmcgb24gdGhlIG90
aGVyIGhhbmQsIGJldHRlciBpdAo+IGhpdCBpdCByYXRoZXIgdGhlbiBzdXBwcmVzcyBpdCBpbiBJ
TUhPLgo+IAo+IExldCBtZSBmb2xsb3cgdGhlIGNhbGxlciBvZiB0aGUgZnVuY3Rpb24gYW5kIHNl
ZSBob3cgdGhleSB0cmVhdCB0aGUKPiBlcnIgIT0gMC4KPiAKPiBJZiBzb21ldGhpbmcgaXMgaW4g
ZGFuZ2VyLCBJIHdpbGwgYmUgZWZmZWN0ZWQgd2l0aCBteSByazMzOTkgcm9sbG91dCA6KQo+IAo+
IENocmlzCj4gCgpJIGNoZWNrIG15IGNhc2UsIHRoZSBkdHMgcHJvcGVydGllcyBlbW1jY2xrIGlz
IGRlZmluZWQgZm9yIHRoZSByazMzOTkuCihjaGVja2VkIGl0IEkgZG8gbm90IGhhdmUgYW4gZXJy
b3IsIGNsa19nZXQoKSB3b3JrcykKSWYgY2xrX2dldCgpIGZhaWxlZCBhbmQgd2UgcHJvcGFnYXRl
IGVycm9yPDAgdG8gdGhlIHBoeS1jb3JlLmMgd2hpY2ggdGhlbgpub3QgaW5jcmVhc2UgdGhlIHBo
eS0+aW5pdF9jb3VudCwgYnV0IHRocm93IGVycm9yIG1lc3NhZ2UgdGhhdCBzb21ldGhpbmcgZ29l
cwp3cm9uZy4KClNvbWVvbmUgc2hvdWxkIGV4cGxhaW4gdG8gbWUsIHdoeSB3ZSBzaG91bGQgY292
ZXIgdXAgYW4gZXJyb3IuCgpDaHJpcwoKCk90aGVyd2lzZQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
