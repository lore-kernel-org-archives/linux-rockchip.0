Return-Path: <SRS0=ISdC=DA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0DC38C4363D
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 01:38:04 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 076DB2371F
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 01:38:02 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="RvKdhkQ/"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 076DB2371F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aksiYPfJLv2mHr76ujoFKToO8HhPSAuc4QmO4e2EMrw=; b=RvKdhkQ/kO35RmBUhIHkoV+br
	AXWMOHUGMjBC8NfJlmvoxnD6+bCUluzZ+0DQQJJuTA7TIurT6t0XEarNcPkwyOcZD0nbID59lElpQ
	2WZQRIXK4p/Z4Ou+gGl+O9v8/6e8gK8NppLMZW3CiEFVEUZFXH8DGMuhood5c+cim3izZq/4ybO+m
	sTbaVLQaHFpcNjZKAXvnnKdUabqEu+uVRu7UBVNjpfaSJt7eBoBCzxEzdKaZH/FT95NMoJ/8tYZWS
	X/bSxsGHOKsO4KSoRAqDAZLKhrGIhfI76jRJW0Yz2ggyqFIV7ZKbX/K5cV3+IgGUpMhswYTAzb+FY
	z82ov//jA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKtjH-0006oe-9P; Wed, 23 Sep 2020 01:37:55 +0000
Received: from regular1.263xmail.com ([211.150.70.200])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKtjD-0006nJ-Rh
 for linux-rockchip@lists.infradead.org; Wed, 23 Sep 2020 01:37:54 +0000
Received: from localhost (unknown [192.168.167.32])
 by regular1.263xmail.com (Postfix) with ESMTP id CC57111AC;
 Wed, 23 Sep 2020 09:37:45 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED: 0
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.39] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P19669T139950693541632S1600825059359918_; 
 Wed, 23 Sep 2020 09:37:40 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <6ceb410db81355261b525d39c7a6a36f>
X-RL-SENDER: algea.cao@rock-chips.com
X-SENDER: algea.cao@rock-chips.com
X-LOGIN-NAME: algea.cao@rock-chips.com
X-FST-TO: linux-rockchip@lists.infradead.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v2 1/3] drm: rockchip: hdmi: fix clock rounding code
To: Vicente Bergas <vicencb@gmail.com>, Doug Anderson
 <dianders@chromium.org>, Andy Yan <andy.yan@rock-chips.com>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org
References: <20200922203107.2932-1-vicencb@gmail.com>
 <20200922203107.2932-2-vicencb@gmail.com>
From: crj <algea.cao@rock-chips.com>
Message-ID: <50002e7b-d1f2-8209-fe65-7f60f036f7d3@rock-chips.com>
Date: Wed, 23 Sep 2020 09:37:41 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.2.2
MIME-Version: 1.0
In-Reply-To: <20200922203107.2932-2-vicencb@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200922_213752_130313_20DBDD72 
X-CRM114-Status: GOOD (  17.46  )
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
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CtTaIDIwMjAvOS8yMyA0OjMxLCBWaWNlbnRlIEJlcmdhcyDQtLXAOgo+IFVuZGVyIGNlcnRhaW4g
Y29uZGl0aW9ucyB2b3BfY3J0Y19tb2RlX2ZpeHVwIHJvdW5kcyB0aGUgY2xvY2sKPiAxNDg1MDAw
MDAgdG8gMTQ4NTAxMDAwIHdoaWNoIGxlYWRzIHRvIHRoZSBmb2xsb3dpbmcgZXJyb3I6Cj4gZHdo
ZG1pLXJvY2tjaGlwIGZmOTQwMDAwLmhkbWk6IFBIWSBjb25maWd1cmF0aW9uIGZhaWxlZCAoY2xv
Y2sgMTQ4NTAxMDAwKQo+Cj4gVGhlIGlzc3VlIHdhcyBmb3VuZCBvbiBSSzMzOTkgYm9vdGluZyB3
aXRoIHUtYm9vdC4gVS1ib290IGNvbmZpZ3VyZXMgdGhlCj4gZGlzcGxheSBhdCAyNTYweDE0NDAg
YW5kIHRoZW4gbGludXggY29tZXMgdXAgd2l0aCBhIGJsYWNrIHNjcmVlbi4KPiBBIHdvcmthcm91
bmQgd2FzIHRvIHVuLXBsdWcgYW5kIHJlLXBsdWcgdGhlIEhETUkgZGlzcGxheS4KPgo+IFNpZ25l
ZC1vZmYtYnk6IFZpY2VudGUgQmVyZ2FzIDx2aWNlbmNiQGdtYWlsLmNvbT4KPiBUZXN0ZWQtYnk6
IFZpY2VudGUgQmVyZ2FzIDx2aWNlbmNiQGdtYWlsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMgfCA3ICsrLS0tLS0KPiAgIDEgZmlsZSBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AuYyBiL2RyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wLmMKPiBpbmRleCBjODBmN2Q5ZmQxM2YuLjky
ZWZiZDg5OWRlZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2No
aXBfZHJtX3ZvcC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2Ry
bV92b3AuYwo+IEBAIC0xMTc2LDEyICsxMTc2LDkgQEAgc3RhdGljIGJvb2wgdm9wX2NydGNfbW9k
ZV9maXh1cChzdHJ1Y3QgZHJtX2NydGMgKmNydGMsCj4gICAJICoKPiAgIAkgKiAyLiBHZXQgdGhl
IGNsb2NrIGZyYW1ld29yayB0byByb3VuZCB0aGUgcmF0ZSBmb3IgdXMgdG8gdGVsbCB1cwo+ICAg
CSAqICAgIHdoYXQgaXQgd2lsbCBhY3R1YWxseSBtYWtlLgo+IC0JICoKPiAtCSAqIDMuIFN0b3Jl
IHRoZSByb3VuZGVkIHVwIHJhdGUgc28gdGhhdCB3ZSBkb24ndCBuZWVkIHRvIHdvcnJ5IGFib3V0
Cj4gLQkgKiAgICB0aGlzIGluIHRoZSBhY3R1YWwgY2xrX3NldF9yYXRlKCkuCj4gICAJICovCj4g
ICAJcmF0ZSA9IGNsa19yb3VuZF9yYXRlKHZvcC0+ZGNsaywgYWRqdXN0ZWRfbW9kZS0+Y2xvY2sg
KiAxMDAwICsgOTk5KTsKPiAtCWFkanVzdGVkX21vZGUtPmNsb2NrID0gRElWX1JPVU5EX1VQKHJh
dGUsIDEwMDApOwo+ICsJYWRqdXN0ZWRfbW9kZS0+Y2xvY2sgPSByYXRlIC8gMTAwMDsKPiAgIAo+
ICAgCXJldHVybiB0cnVlOwo+ICAgfQo+IEBAIC0xMzgwLDcgKzEzNzcsNyBAQCBzdGF0aWMgdm9p
ZCB2b3BfY3J0Y19hdG9taWNfZW5hYmxlKHN0cnVjdCBkcm1fY3J0YyAqY3J0YywKPiAgIAo+ICAg
CVZPUF9SRUdfU0VUKHZvcCwgaW50ciwgbGluZV9mbGFnX251bVswXSwgdmFjdF9lbmQpOwo+ICAg
Cj4gLQljbGtfc2V0X3JhdGUodm9wLT5kY2xrLCBhZGp1c3RlZF9tb2RlLT5jbG9jayAqIDEwMDAp
Owo+ICsJY2xrX3NldF9yYXRlKHZvcC0+ZGNsaywgYWRqdXN0ZWRfbW9kZS0+Y2xvY2sgKiAxMDAw
ICsgOTk5KTsKCgpJbiBzb21lIFJLIHBsYXRmb3JtLCBzdWNoIGFzIFJLMzMyOCwgZGNsayBpcyBn
ZW5lcmF0ZWQgYnkgdGhlIElOTk8gSERNSSAKUEhZIFBMTCwgd2hpY2ggc3VwcG9ydAoKZnJhYyBk
aXZpZGVyIGNhbiBzdXBwb3J0IGFueSBkY2xrIGZyZXF1ZW5jeS4gQW5kIFRoZSBQTEwgbXVzdCB1
c2UgdGhlIApleGFjdCBjbG9jayB0byBkZXRlcm1pbmUKCnRoZSBQTEwgY29uZmlndXJhdGlvbi4g
U28gYWRqdXN0ZWRfbW9kZS0+Y2xvY2sgKiAxMDAwICsgOTk5IG1heSBjYXVzZSAKSU5OTyBIRE1J
IFBIWSBQTEwKCmNvdWxkbid0IGZpbmQgdGhlIHJpZ2h0IGNvbmZpZ3VyYXRpb24uIElOTk8gSERN
SSBQSFkncyBkcml2ZXIgcGF0aCBpczoKCmRyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hp
cC1pbm5vLWhkbWkuYwoKCj4gICAKPiAgIAlWT1BfUkVHX1NFVCh2b3AsIGNvbW1vbiwgc3RhbmRi
eSwgMCk7Cj4gICAJbXV0ZXhfdW5sb2NrKCZ2b3AtPnZvcF9sb2NrKTsKCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
