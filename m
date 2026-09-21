Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D717C982E1
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2026 06:36:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4GM7+n9bDnAb8H53bTccUYOudD7wTyuNbMdmGfR+i3U=; b=Xcl7PicRrDknWJ
	NAbqUCC3Nb413w8GSCCRySXHUrjDl08XrI2hiAdX/9924j6T7TCI+R1/o4ASw2MEv1I1vjWNrRaQg
	FtgXuB2OyG6O3cMQdreQWeAtPZXrwDqL7CK0n0YiSPRGLF/mlDsvcpkhYbAxKmvN14vaie3Pf5ZmM
	fwMcGTaPGayjyEIXKt/ZC7zxCMoqZ2cDQNVZuRxMlDLxOyOGpsNBVCCIwhVC3Dcmb/uiMSHZmXnAo
	0jlYquifVovDiOYQwEO8VwMmBONiyJhs7jzStSltVPJLNB8kuneU1AZ9eee/6txMRkAivxQovoPH1
	md1agPNgbn9ad7TgXrog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Xdl-000000012i7-3Za0;
	Mon, 21 Sep 2026 06:36:37 +0000
Received: from mail-m83103.xmail.ntesmail.com ([156.224.83.103])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Xdi-000000012g6-07yU;
	Mon, 21 Sep 2026 06:36:36 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4e87e853c;
	Mon, 21 Sep 2026 14:36:26 +0800 (GMT+08:00)
Message-ID: <ee8bf4cf-b2bd-4cbd-ba8c-2e7a871203e1@rock-chips.com>
Date: Mon, 21 Sep 2026 14:36:25 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Caesar Wang <wxt@rock-chips.com>,
 Kevin Hilman <khilman@linaro.org>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] pmdomain: rockchip: fix domain check in
 rockchip_pm_add_one_domain()
To: Sergey Shtylyov <s.shtylyov@auroraos.dev>, Ulf Hansson <ulfh@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-pm@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20260920175928.42566-1-s.shtylyov@auroraos.dev>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20260920175928.42566-1-s.shtylyov@auroraos.dev>
X-HM-Tid: 0aa0c2ae1f1d03a4kunm8c2b5e35309363
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDHhhJVksdTE1CHxlISk9CGlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=kMQEIk5wm+g8UmyBDt3/0JnReaXCZVItYbM0nLAQDOdsl62qdaAqKGEa9njMr3zell849z8plW8LVvvLMDQK3kvxBFs+652EswyGO8aFqRiabnIN5D6z0jKvhXzwjbhkJJ+T9Ml3JCJMH/1VArRIWJMeOR2AnWpZRHzw0brBHAo=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=bLpwACqn9YN+hnHNFYXY6u+qLT2vyykvPNkreQhWJbE=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260920_233634_340200_97CE32FE 
X-CRM114-Status: GOOD (  21.07  )
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

SGkgU2VyZ2V5LAoK5ZyoIDIwMjYvMDkvMjEg5pif5pyf5LiAIDE6NTksIFNlcmdleSBTaHR5bHlv
diDlhpnpgZM6Cj4gSW4gcm9ja2NoaXBfcG1fYWRkX29uZV9kb21haW4oKSwgdGhlcmUncyB0aGUg
Y2hlY2sgKG1vc3QgcHJvYmFibHkgZm9yCj4gdGhlIGNhc2Ugd2hlcmUgdGhlICJyZWciIHByb3Ag
aGFzIGFuIHVuZXhwZWN0ZWQgdmFsdWU/KSB3aGljaCBkb2Vzbid0CgpBZ3JlZWQgdGhhdCBjaGVj
ayBpbmRlZWQgbWFrZXMgbGl0dGxlIHNlbnNlLiBCdXQgIm1vc3QgcHJvYmFibHkgZm9yIHRoZQpj
YXNlIHdoZXJlIHRoZSByZWcgcHJvcCBoYXMgYW4gdW5leHBlY3RlZCB2YWx1ZSIgZG9lcyBub3Qg
aG9sZDogYW4gCm91dC1vZi1yYW5nZSByZWcgdmFsdWUgaXMgYWxyZWFkeSByZWplY3RlZCBieSB0
aGUgImlkID49IHBtdS0+aW5mby0KID5udW1fZG9tYWlucyIgY2hlY2sgYWJvdmUsIGFuZCBudW1f
ZG9tYWlucyBlcXVhbHMKQVJSQVlfU0laRShkb21haW5faW5mbykgZm9yIGV2ZXJ5IFNvQywgc28g
dGhlcmUgYXJlIG5vIGhvbGVzIGluIHRoZQp0YWJsZSB0aGF0IHRoZSBuZXcgY2hlY2sgY291bGQg
Y2F0Y2ggd2l0aCB0aGUgY3VycmVudCBkYXRhLiBBRkFJQ1QsIHRoaXMgCnBhdGNoIGRvZXMgbm90
IGNoYW5nZSBhbnkgcnVudGltZSBiZWhhdmlvdXI7IGl0IG9ubHkgdHVybnMgZGVhZCBjb2RlCmlu
dG8gYSBkZWZlbnNpdmUgY2hlY2sgb24gdGhlIG1hdGNoLWRhdGEgdGFibGVzLgoKCj4gbWFrZSBt
dWNoIHNlbnNlIGFzIHRoZSB2YXJpYWJsZSBwZF9pbmZvIHdpbGwgYmUgTlVMTCBpZmYgcG11LT5p
bmZvLT4KPiBkb21haW5faW5mbyBpcyBOVUxMIGFuZCB0aGUgdmFyaWFibGUgaWQgaXMgMC4gIFdo
YXQgZG9lcyBtYWtlIHNlbnNlCj4gdGhlcmUgaXMgY2hlY2tpbmcgcGRfaW5mby0+cHdyX21hc2sg
YW5kIHBkX2luZm8tPnJlcV9tYXNrIHdoaWNoIChhcwo+IHNlZW1zIHRvIGZvbGxvdyBmcm9tIHRo
ZSBjb2RlKSBjYW4ndCBib3RoIGJlIDAgZm9yIGEgdmFsaWQgZG9tYWluLi4uCj4gCgpUaGF0IG1l
YW5zIHRoZXJlIGlzIG5vIGJ1ZyBiZWluZyBmaXhlZCBoZXJlLCBzaG91bGQgd2UgZHJvcCB0aGUg
Zml4ZXMgdGFnPwoKPiBGb3VuZCBieSBMaW51eCBWZXJpZmljYXRpb24gQ2VudGVyIChsaW51eHRl
c3Rpbmcub3JnKSB3aXRoIHRoZSBTdmFjZQo+IHN0YXRpYyBhbmFseXNpcyB0b29sLgo+IAo+IEZp
eGVzOiA3YzY5NjY5M2E0ZjUgKCJzb2M6IHJvY2tjaGlwOiBwb3dlci1kb21haW46IEFkZCBwb3dl
ciBkb21haW4gZHJpdmVyIikKPiBTaWduZWQtb2ZmLWJ5OiBTZXJnZXkgU2h0eWx5b3YgPHMuc2h0
eWx5b3ZAYXVyb3Jhb3MuZGV2Pgo+IAo+IC0tLQo+IFRoaXMgcGF0Y2ggaXMgYWdhaW5zdCB0aGUg
Zml4ZXMgYnJhbmNoIG9mIFVsZiBIYW5zc29uJ3MgbGludXgtcG0uZ2l0IHJlcG8uCj4gCj4gICBk
cml2ZXJzL3BtZG9tYWluL3JvY2tjaGlwL3BtLWRvbWFpbnMuYyB8IDIgKy0KPiAgIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3BtZG9tYWluL3JvY2tjaGlwL3BtLWRvbWFpbnMuYyBiL2RyaXZlcnMvcG1kb21haW4v
cm9ja2NoaXAvcG0tZG9tYWlucy5jCj4gaW5kZXggYmE2NmFlNzE5NDI4Li42OTc5MmUyYjIxNWIg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9wbWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5zLmMKPiAr
KysgYi9kcml2ZXJzL3BtZG9tYWluL3JvY2tjaGlwL3BtLWRvbWFpbnMuYwo+IEBAIC04MDksNyAr
ODA5LDcgQEAgc3RhdGljIGludCByb2NrY2hpcF9wbV9hZGRfb25lX2RvbWFpbihzdHJ1Y3Qgcm9j
a2NoaXBfcG11ICpwbXUsCj4gICAJCXJldHVybiAwOwo+ICAgCj4gICAJcGRfaW5mbyA9ICZwbXUt
PmluZm8tPmRvbWFpbl9pbmZvW2lkXTsKPiAtCWlmICghcGRfaW5mbykgewo+ICsJaWYgKCFwZF9p
bmZvLT5wd3JfbWFzayAmJiAhcGRfaW5mby0+cmVxX21hc2spIHsKPiAgIAkJZGV2X2VycihwbXUt
PmRldiwgIiVwT0ZuOiB1bmRlZmluZWQgZG9tYWluIGlkICVkXG4iLAo+ICAgCQkJbm9kZSwgaWQp
Owo+ICAgCQlyZXR1cm4gLUVJTlZBTDsKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
