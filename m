Return-Path: <SRS0=XvIT=DV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1B1D0C433E7
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 00:24:13 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 251072078A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 00:24:11 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="zbxriUPj"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 251072078A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TqUfUYK0u/a5ir2OiSCcZytUo9bnVv2dDn38l+OkdtI=; b=zbxriUPj9tufqKjzOOovXAsen
	zEPq3hLk42+aw7c8NvWHy+k1Ls672kdYOjSMnFh4kLtVzr7Qf/XeU274qrbBFHGOQaJK7HmjeLADn
	n7uYS4xLJ98JQdO4mycKWJSH85qu8Lpi071fN8yoKV6kH3xzc1nPynh+Jg0UmrSSrNFIHUr65pBYE
	N0MsiefQE7FkKhnLe7LVRGZfufs6FV1VdWz2JTHnjGgQ5CX6DvLGmSop2Rdz6KT/BzbVunjTCLn96
	TvwsssUbyhC76y3/W3/7MeBXEITRpRt255Sv1GLkVsfwhENyvqC+5YebfoZWhwfzZP2B1jsK8Dld4
	LcV12vmSQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kSUaG-0003hX-Jf; Wed, 14 Oct 2020 00:24:00 +0000
Received: from regular1.263xmail.com ([211.150.70.206])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSUaC-0003eG-BB
 for linux-rockchip@lists.infradead.org; Wed, 14 Oct 2020 00:23:58 +0000
Received: from localhost (unknown [192.168.167.235])
 by regular1.263xmail.com (Postfix) with ESMTP id 76FD739E;
 Wed, 14 Oct 2020 08:23:44 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.120] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P2981T139638898628352S1602635023646159_; 
 Wed, 14 Oct 2020 08:23:44 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <057012ada3f62f389750076c22335d90>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-rockchip@lists.infradead.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_v3_1/3=5d_pinctrl=3a_rockchip=3a_make_driv?=
 =?UTF-8?B?ZXIgYmUgdHJpc3RhdGUgbW9kdWxl44CQ6K+35rOo5oSP77yM6YKu5Lu255SxbGlu?=
 =?UTF-8?Q?ux-rockchip-bounces+kever=2eyang=3drock-chips=2ecom=40lists=2einf?=
 =?UTF-8?B?cmFkZWFkLm9yZ+S7o+WPkeOAkQ==?=
To: Jianqun Xu <jay.xu@rock-chips.com>, linus.walleij@linaro.org,
 heiko@sntech.de
References: <20201013063731.3618-1-jay.xu@rock-chips.com>
 <20201013063731.3618-2-jay.xu@rock-chips.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <b9f0f4d7-371e-9442-2f58-f4d1516bb181@rock-chips.com>
Date: Wed, 14 Oct 2020 08:23:43 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201013063731.3618-2-jay.xu@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201013_202356_670587_167DD0DB 
X-CRM114-Status: GOOD (  18.05  )
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Ck9uIDIwMjAvMTAvMTMg5LiL5Y2IMjozNywgSmlhbnF1biBYdSB3cm90ZToKPiBNYWtlIHBpbmN0
cmwtcm9ja2NoaXAgZHJpdmVyIHRvIGJlIHRyaXN0YXRlIG1vZHVsZSwgc3VwcG9ydCB0byBidWls
ZCBhcwo+IGEgbW9kdWxlLCB0aGlzIGlzIHVzZWZ1bCBmb3IgR0tJLgo+Cj4gUmV2aWV3ZWQtYnk6
IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Cj4gU2lnbmVkLW9mZi1ieTogSmlhbnF1
biBYdSA8amF5Lnh1QHJvY2stY2hpcHMuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9waW5jdHJsL0tj
b25maWcgICAgICAgICAgICB8ICAyICstCj4gICBkcml2ZXJzL3BpbmN0cmwvcGluY3RybC1yb2Nr
Y2hpcC5jIHwgMTMgKysrKysrKysrKysrKwo+ICAgMiBmaWxlcyBjaGFuZ2VkLCAxNCBpbnNlcnRp
b25zKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waW5jdHJsL0tj
b25maWcgYi9kcml2ZXJzL3BpbmN0cmwvS2NvbmZpZwo+IGluZGV4IDgxNTA5NTMyNmUyZC4uYmM5
Nzc0YzFhZThkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGluY3RybC9LY29uZmlnCj4gKysrIGIv
ZHJpdmVycy9waW5jdHJsL0tjb25maWcKPiBAQCAtMjA3LDcgKzIwNyw3IEBAIGNvbmZpZyBQSU5D
VFJMX09YTkFTCj4gICAJc2VsZWN0IE1GRF9TWVNDT04KPiAgIAo+ICAgY29uZmlnIFBJTkNUUkxf
Uk9DS0NISVAKPiAtCWJvb2wKPiArCXRyaXN0YXRlICJSb2NrY2hpcCBncGlvIGFuZCBwaW5jdHJs
IGRyaXZlciIKPiAgIAlkZXBlbmRzIG9uIE9GCj4gICAJc2VsZWN0IFBJTk1VWAo+ICAgCXNlbGVj
dCBHRU5FUklDX1BJTkNPTkYKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waW5jdHJsL3BpbmN0cmwt
cm9ja2NoaXAuYyBiL2RyaXZlcnMvcGluY3RybC9waW5jdHJsLXJvY2tjaGlwLmMKPiBpbmRleCAw
NDAxYzFkYTc5ZGQuLjkyN2QxMzJkNjcxNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BpbmN0cmwv
cGluY3RybC1yb2NrY2hpcC5jCj4gKysrIGIvZHJpdmVycy9waW5jdHJsL3BpbmN0cmwtcm9ja2No
aXAuYwo+IEBAIC0xNiwxMCArMTYsMTIgQEAKPiAgICAqLwo+ICAgCj4gICAjaW5jbHVkZSA8bGlu
dXgvaW5pdC5oPgo+ICsjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+Cj4gICAjaW5jbHVkZSA8bGlu
dXgvcGxhdGZvcm1fZGV2aWNlLmg+Cj4gICAjaW5jbHVkZSA8bGludXgvaW8uaD4KPiAgICNpbmNs
dWRlIDxsaW51eC9iaXRvcHMuaD4KPiAgICNpbmNsdWRlIDxsaW51eC9ncGlvL2RyaXZlci5oPgo+
ICsjaW5jbHVkZSA8bGludXgvb2ZfZGV2aWNlLmg+Cj4gICAjaW5jbHVkZSA8bGludXgvb2ZfYWRk
cmVzcy5oPgo+ICAgI2luY2x1ZGUgPGxpbnV4L29mX2lycS5oPgo+ICAgI2luY2x1ZGUgPGxpbnV4
L3BpbmN0cmwvbWFjaGluZS5oPgo+IEBAIC00MjU4LDMgKzQyNjAsMTQgQEAgc3RhdGljIGludCBf
X2luaXQgcm9ja2NoaXBfcGluY3RybF9kcnZfcmVnaXN0ZXIodm9pZCkKPiAgIAlyZXR1cm4gcGxh
dGZvcm1fZHJpdmVyX3JlZ2lzdGVyKCZyb2NrY2hpcF9waW5jdHJsX2RyaXZlcik7Cj4gICB9Cj4g
ICBwb3N0Y29yZV9pbml0Y2FsbChyb2NrY2hpcF9waW5jdHJsX2Rydl9yZWdpc3Rlcik7Cj4gKwo+
ICtzdGF0aWMgdm9pZCBfX2V4aXQgcm9ja2NoaXBfcGluY3RybF9kcnZfdW5yZWdpc3Rlcih2b2lk
KQo+ICt7Cj4gKwlwbGF0Zm9ybV9kcml2ZXJfdW5yZWdpc3Rlcigmcm9ja2NoaXBfcGluY3RybF9k
cml2ZXIpOwo+ICt9Cj4gK21vZHVsZV9leGl0KHJvY2tjaGlwX3BpbmN0cmxfZHJ2X3VucmVnaXN0
ZXIpOwo+ICsKPiArTU9EVUxFX0RFU0NSSVBUSU9OKCJST0NLQ0hJUCBQaW4gQ29udHJvbGxlciBE
cml2ZXIiKTsKPiArTU9EVUxFX0xJQ0VOU0UoIkdQTCIpOwo+ICtNT0RVTEVfQUxJQVMoInBsYXRm
b3JtOnBpbmN0cmwtcm9ja2NoaXAiKTsKPiArTU9EVUxFX0RFVklDRV9UQUJMRShvZiwgcm9ja2No
aXBfcGluY3RybF9kdF9tYXRjaCk7CgpMb29rcyBnb29kIHRvIG1lLAoKUmV2aWV3ZWQtYnk6IEtl
dmVyIFlhbmc8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKLSBLZXZlcgoKCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
