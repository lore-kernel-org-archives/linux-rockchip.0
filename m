Return-Path: <SRS0=XvIT=DV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97069C433DF
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 00:24:30 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F3C042078A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 00:24:29 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="VyCCUaRp"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F3C042078A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YyqpPgGpKBQneI7GcYWdiaaQJHzPiW7WRJ9EfM17jo0=; b=VyCCUaRpzoIp210LNzTDV+r9i
	EB8jJAqBg5s9rVic8c5BvwFKaHGlqPdj+KtFNpG3VMDnC2b8W6ttPK+FkE+wFm+PwYMg8Yl3rj0Qs
	xnV9AtGQecBjvaEFCLhd0bS+dT1oomvsZ82tIe4FdrQrtl43/7i8xxx70CIQklEwa+a2lB3ttChLU
	bidAFfdRTIajt/DLqvxVizwGorWLv9+Ouitg99777lhy7luOpBcM1CpHJWtJW9x8GM19IReXSBOoG
	hIyQ4rWsvDd3w8jCE1RxeK2LvLYaaFi/b/0Ls0i4xnufPT20UCguHPrPgQCynN7gsK30rt8brlB+D
	6Vb1vhU/Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kSUaf-0003q4-Lm; Wed, 14 Oct 2020 00:24:25 +0000
Received: from regular1.263xmail.com ([211.150.70.203])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSUac-0003o8-24
 for linux-rockchip@lists.infradead.org; Wed, 14 Oct 2020 00:24:24 +0000
Received: from localhost (unknown [192.168.167.235])
 by regular1.263xmail.com (Postfix) with ESMTP id 69FCE7EA;
 Wed, 14 Oct 2020 08:24:18 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.120] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P2981T139638740072192S1602635057545293_; 
 Wed, 14 Oct 2020 08:24:18 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <271a6af95fa33b0f5f2f69fd55157ebe>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-rockchip@lists.infradead.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_v3_3/3=5d_pinctrl=3a_rockchip=3a_create_ir?=
 =?UTF-8?B?cSBtYXBwaW5nIGluIGdwaW9fdG9faXJx44CQ6K+35rOo5oSP77yM6YKu5Lu255Sx?=
 =?UTF-8?Q?linux-rockchip-bounces+kever=2eyang=3drock-chips=2ecom=40lists=2e?=
 =?UTF-8?B?aW5mcmFkZWFkLm9yZ+S7o+WPkeOAkQ==?=
To: Jianqun Xu <jay.xu@rock-chips.com>, linus.walleij@linaro.org,
 heiko@sntech.de
References: <20201013063731.3618-1-jay.xu@rock-chips.com>
 <20201013063731.3618-4-jay.xu@rock-chips.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <bf5880ec-8222-74e8-2d15-d9998e0149df@rock-chips.com>
Date: Wed, 14 Oct 2020 08:24:17 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201013063731.3618-4-jay.xu@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201013_202422_607208_E89623A3 
X-CRM114-Status: GOOD (  20.94  )
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

Ck9uIDIwMjAvMTAvMTMg5LiL5Y2IMjozNywgSmlhbnF1biBYdSB3cm90ZToKPiBSZW1vdmUgdG90
YWxseSBpcnEgbWFwcGluZ3MgY3JlYXRlIGluIHByb2JlLCB0aGUgZ3BpbyBpcnEgbWFwcGluZyB3
aWxsCj4gYmUgY3JlYXRlZCB3aGVuIGRvCj4gICAgICBncGlvX3RvX2lycSAtPgo+ICAgICAgICAg
IHJvY2tjaGlwX2dwaW9fdG9faXJxIC0+Cj4gICAgICAgICAgICAgIGlycV9jcmVhdGVfbWFwcGlu
Zwo+Cj4gVGhpcyBwYXRjaCBjYW4gc3BlZWQgdXAgc3lzdGVtIGJvb3Qgb24sIGFsc28gYWJhbmRv
biBtYW55IHVudXNlZCBpcnEKPiBtYXBwaW5ncycgY3JlYXRlLgo+Cj4gUmV2aWV3ZWQtYnk6IEhl
aWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Cj4gU2lnbmVkLW9mZi1ieTogSmlhbnF1biBY
dSA8amF5Lnh1QHJvY2stY2hpcHMuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9waW5jdHJsL3BpbmN0
cmwtcm9ja2NoaXAuYyB8IDI4ICsrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0KPiAgIDEgZmls
ZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL3BpbmN0cmwvcGluY3RybC1yb2NrY2hpcC5jIGIvZHJpdmVycy9waW5jdHJs
L3BpbmN0cmwtcm9ja2NoaXAuYwo+IGluZGV4IGEyZjM2MWFhNmQwNS4uNzBkYzAzYWY1Njk5IDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvcGluY3RybC9waW5jdHJsLXJvY2tjaGlwLmMKPiArKysgYi9k
cml2ZXJzL3BpbmN0cmwvcGluY3RybC1yb2NrY2hpcC5jCj4gQEAgLTMxOTgsNyArMzE5OCw3IEBA
IHN0YXRpYyB2b2lkIHJvY2tjaGlwX2lycV9kZW11eChzdHJ1Y3QgaXJxX2Rlc2MgKmRlc2MpCj4g
ICAKPiAgIAkJaXJxID0gX19mZnMocGVuZCk7Cj4gICAJCXBlbmQgJj0gfkJJVChpcnEpOwo+IC0J
CXZpcnEgPSBpcnFfbGluZWFyX3Jldm1hcChiYW5rLT5kb21haW4sIGlycSk7Cj4gKwkJdmlycSA9
IGlycV9maW5kX21hcHBpbmcoYmFuay0+ZG9tYWluLCBpcnEpOwo+ICAgCj4gICAJCWlmICghdmly
cSkgewo+ICAgCQkJZGV2X2VycihiYW5rLT5kcnZkYXRhLT5kZXYsICJ1bm1hcHBlZCBpcnEgJWRc
biIsIGlycSk7Cj4gQEAgLTMzNzcsNyArMzM3Nyw3IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfaW50
ZXJydXB0c19yZWdpc3RlcihzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2LAo+ICAgCXVuc2ln
bmVkIGludCBjbHIgPSBJUlFfTk9SRVFVRVNUIHwgSVJRX05PUFJPQkUgfCBJUlFfTk9BVVRPRU47
Cj4gICAJc3RydWN0IGlycV9jaGlwX2dlbmVyaWMgKmdjOwo+ICAgCWludCByZXQ7Cj4gLQlpbnQg
aSwgajsKPiArCWludCBpOwo+ICAgCj4gICAJZm9yIChpID0gMDsgaSA8IGN0cmwtPm5yX2Jhbmtz
OyArK2ksICsrYmFuaykgewo+ICAgCQlpZiAoIWJhbmstPnZhbGlkKSB7Cj4gQEAgLTM0MDQsNyAr
MzQwNCw3IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfaW50ZXJydXB0c19yZWdpc3RlcihzdHJ1Y3Qg
cGxhdGZvcm1fZGV2aWNlICpwZGV2LAo+ICAgCj4gICAJCXJldCA9IGlycV9hbGxvY19kb21haW5f
Z2VuZXJpY19jaGlwcyhiYW5rLT5kb21haW4sIDMyLCAxLAo+ICAgCQkJCQkgInJvY2tjaGlwX2dw
aW9faXJxIiwgaGFuZGxlX2xldmVsX2lycSwKPiAtCQkJCQkgY2xyLCAwLCBJUlFfR0NfSU5JVF9N
QVNLX0NBQ0hFKTsKPiArCQkJCQkgY2xyLCAwLCAwKTsKPiAgIAkJaWYgKHJldCkgewo+ICAgCQkJ
ZGV2X2VycigmcGRldi0+ZGV2LCAiY291bGQgbm90IGFsbG9jIGdlbmVyaWMgY2hpcHMgZm9yIGJh
bmsgJXNcbiIsCj4gICAJCQkJYmFuay0+bmFtZSk7Cj4gQEAgLTM0MTMsMTQgKzM0MTMsNiBAQCBz
dGF0aWMgaW50IHJvY2tjaGlwX2ludGVycnVwdHNfcmVnaXN0ZXIoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldiwKPiAgIAkJCWNvbnRpbnVlOwo+ICAgCQl9Cj4gICAKPiAtCQkvKgo+IC0JCSAq
IExpbnV4IGFzc3VtZXMgdGhhdCBhbGwgaW50ZXJydXB0cyBzdGFydCBvdXQgZGlzYWJsZWQvbWFz
a2VkLgo+IC0JCSAqIE91ciBkcml2ZXIgb25seSB1c2VzIHRoZSBjb25jZXB0IG9mIG1hc2tlZCBh
bmQgYWx3YXlzIGtlZXBzCj4gLQkJICogdGhpbmdzIGVuYWJsZWQsIHNvIGZvciB1cyB0aGF0J3Mg
YWxsIG1hc2tlZCBhbmQgYWxsIGVuYWJsZWQuCj4gLQkJICovCj4gLQkJd3JpdGVsX3JlbGF4ZWQo
MHhmZmZmZmZmZiwgYmFuay0+cmVnX2Jhc2UgKyBHUElPX0lOVE1BU0spOwo+IC0JCXdyaXRlbF9y
ZWxheGVkKDB4ZmZmZmZmZmYsIGJhbmstPnJlZ19iYXNlICsgR1BJT19JTlRFTik7Cj4gLQo+ICAg
CQlnYyA9IGlycV9nZXRfZG9tYWluX2dlbmVyaWNfY2hpcChiYW5rLT5kb21haW4sIDApOwo+ICAg
CQlnYy0+cmVnX2Jhc2UgPSBiYW5rLT5yZWdfYmFzZTsKPiAgIAkJZ2MtPnByaXZhdGUgPSBiYW5r
Owo+IEBAIC0zNDM3LDEzICszNDI5LDE3IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfaW50ZXJydXB0
c19yZWdpc3RlcihzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2LAo+ICAgCQlnYy0+Y2hpcF90
eXBlc1swXS5jaGlwLmlycV9zZXRfdHlwZSA9IHJvY2tjaGlwX2lycV9zZXRfdHlwZTsKPiAgIAkJ
Z2MtPndha2VfZW5hYmxlZCA9IElSUV9NU0soYmFuay0+bnJfcGlucyk7Cj4gICAKPiArCQkvKgo+
ICsJCSAqIExpbnV4IGFzc3VtZXMgdGhhdCBhbGwgaW50ZXJydXB0cyBzdGFydCBvdXQgZGlzYWJs
ZWQvbWFza2VkLgo+ICsJCSAqIE91ciBkcml2ZXIgb25seSB1c2VzIHRoZSBjb25jZXB0IG9mIG1h
c2tlZCBhbmQgYWx3YXlzIGtlZXBzCj4gKwkJICogdGhpbmdzIGVuYWJsZWQsIHNvIGZvciB1cyB0
aGF0J3MgYWxsIG1hc2tlZCBhbmQgYWxsIGVuYWJsZWQuCj4gKwkJICovCj4gKwkJd3JpdGVsX3Jl
bGF4ZWQoMHhmZmZmZmZmZiwgYmFuay0+cmVnX2Jhc2UgKyBHUElPX0lOVE1BU0spOwo+ICsJCXdy
aXRlbF9yZWxheGVkKDB4ZmZmZmZmZmYsIGJhbmstPnJlZ19iYXNlICsgR1BJT19JTlRFTik7Cj4g
KwkJZ2MtPm1hc2tfY2FjaGUgPSAweGZmZmZmZmZmOwo+ICsKPiAgIAkJaXJxX3NldF9jaGFpbmVk
X2hhbmRsZXJfYW5kX2RhdGEoYmFuay0+aXJxLAo+ICAgCQkJCQkJIHJvY2tjaGlwX2lycV9kZW11
eCwgYmFuayk7Cj4gLQo+IC0JCS8qIG1hcCB0aGUgZ3BpbyBpcnFzIGhlcmUsIHdoZW4gdGhlIGNs
b2NrIGlzIHN0aWxsIHJ1bm5pbmcgKi8KPiAtCQlmb3IgKGogPSAwIDsgaiA8IDMyIDsgaisrKQo+
IC0JCQlpcnFfY3JlYXRlX21hcHBpbmcoYmFuay0+ZG9tYWluLCBqKTsKPiAtCj4gICAJCWNsa19k
aXNhYmxlKGJhbmstPmNsayk7Cj4gICAJfQo+ICAgCgpMb29rcyBnb29kIHRvIG1lLAoKUmV2aWV3
ZWQtYnk6IEtldmVyIFlhbmc8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKLSBL
ZXZlcgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
