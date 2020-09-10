Return-Path: <SRS0=KXJX=CT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E3FFC433E2
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Sep 2020 03:07:36 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CC2E121D40
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Sep 2020 03:07:35 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="S8EQwEgL"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CC2E121D40
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rzsWOjf8w5Squ7WfmVW17k7SZihsC2cyUjKwW4CWG0M=; b=S8EQwEgLSL24HPHs7cZMXHjn/
	Yv3MhdNpme5psd1JKEbLnXL4cTMxe1mzumnPBGE3kLcx8/t7sn8ZVfndjSKg7lBigxr8r5IYEXQlu
	ctGSoylQ9GqMhj9Vg9HSWL92H3uZSzmK7qxPNfRb86AILvptJud3CF+HdUAJt2c3ot4DSkiAqivoE
	h3JMPBdzLvyEuYGP7tB8vPQErw5zDvNOYR7E+zXyKVRbe8LzVP5mMvEx1mGDGEmCJk3NqYLMSGJt+
	cYx2VSw6WuhhwGLhL23fP/iLHQsrBjLEd6qiDuDERSighGoeC3e1LkafoOqgfLR5/2ioZPnGM6XoB
	rWRScmoCw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kGCvr-0004mx-1v; Thu, 10 Sep 2020 03:07:31 +0000
Received: from regular1.263xmail.com ([211.150.70.199])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kGCvn-0004m1-V8
 for linux-rockchip@lists.infradead.org; Thu, 10 Sep 2020 03:07:29 +0000
Received: from localhost (unknown [192.168.167.69])
 by regular1.263xmail.com (Postfix) with ESMTP id 487AD104E;
 Thu, 10 Sep 2020 11:07:19 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.236] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P25134T140525325764352S1599707237793667_; 
 Thu, 10 Sep 2020 11:07:18 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <9b78765c88d40245569064639cb03e69>
X-RL-SENDER: zhangqing@rock-chips.com
X-SENDER: zhangqing@rock-chips.com
X-LOGIN-NAME: zhangqing@rock-chips.com
X-FST-TO: kever.yang@rock-chips.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v3 6/6] clk: rockchip: rk3399: Support module build
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
References: <20200904074405.24439-1-zhangqing@rock-chips.com>
 <20200904074505.24917-1-zhangqing@rock-chips.com> <3524790.GmC4BGDxql@diego>
From: "elaine.zhang" <zhangqing@rock-chips.com>
Organization: rockchip
Message-ID: <ad06ac8a-e7f9-382d-1cbc-01aea6256e5c@rock-chips.com>
Date: Thu, 10 Sep 2020 11:07:17 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <3524790.GmC4BGDxql@diego>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200909_230728_467155_7FF556F1 
X-CRM114-Status: GOOD (  17.53  )
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
Cc: huangtao@rock-chips.com, xf@rock-chips.com, sboyd@kernel.org,
 mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, kever.yang@rock-chips.com,
 linux-rockchip@lists.infradead.org, xxx@rock-chips.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

aGksCgrlnKggMjAyMC85Lzcg5LiK5Y2INjo0OSwgSGVpa28gU3TDvGJuZXIg5YaZ6YGTOgo+IEFt
IEZyZWl0YWcsIDQuIFNlcHRlbWJlciAyMDIwLCAwOTo0NTowNSBDRVNUIHNjaHJpZWIgRWxhaW5l
IFpoYW5nOgo+PiBzdXBwb3J0IENMS19PRl9ERUNMQVJFIGFuZCBidWlsdGluX3BsYXRmb3JtX2Ry
aXZlcl9wcm9iZQo+PiBkb3VibGUgY2xrIGluaXQgbWV0aG9kLgo+PiBhZGQgbW9kdWxlIGF1dGhv
ciwgZGVzY3JpcHRpb24gYW5kIGxpY2Vuc2UgdG8gc3VwcG9ydCBidWlsZGluZwo+PiBTb2MgUmsz
Mzk5IGNsb2NrIGRyaXZlciBhcyBtb2R1bGUuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEVsYWluZSBa
aGFuZyA8emhhbmdxaW5nQHJvY2stY2hpcHMuY29tPgo+PiBSZXZpZXdlZC1ieTogS2V2ZXIgWWFu
ZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KPj4gLS0tCj4+ICAgZHJpdmVycy9jbGsvcm9j
a2NoaXAvY2xrLXJrMzM5OS5jIHwgNTUgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+
PiAgIDEgZmlsZSBjaGFuZ2VkLCA1NSBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2Nsay9yb2NrY2hpcC9jbGstcmszMzk5LmMgYi9kcml2ZXJzL2Nsay9yb2NrY2hpcC9j
bGstcmszMzk5LmMKPj4gaW5kZXggY2UxZDI0NDZmMTQyLi40MGZmMTdhZWU1YjYgMTAwNjQ0Cj4+
IC0tLSBhL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1yazMzOTkuYwo+PiArKysgYi9kcml2ZXJz
L2Nsay9yb2NrY2hpcC9jbGstcmszMzk5LmMKPj4gQEAgLTUsOSArNSwxMSBAQAo+PiAgICAqLwo+
PiAgIAo+PiAgICNpbmNsdWRlIDxsaW51eC9jbGstcHJvdmlkZXIuaD4KPj4gKyNpbmNsdWRlIDxs
aW51eC9tb2R1bGUuaD4KPj4gICAjaW5jbHVkZSA8bGludXgvaW8uaD4KPj4gICAjaW5jbHVkZSA8
bGludXgvb2YuaD4KPj4gICAjaW5jbHVkZSA8bGludXgvb2ZfYWRkcmVzcy5oPgo+PiArI2luY2x1
ZGUgPGxpbnV4L29mX2RldmljZS5oPgo+PiAgICNpbmNsdWRlIDxsaW51eC9wbGF0Zm9ybV9kZXZp
Y2UuaD4KPj4gICAjaW5jbHVkZSA8bGludXgvcmVnbWFwLmg+Cj4+ICAgI2luY2x1ZGUgPGR0LWJp
bmRpbmdzL2Nsb2NrL3JrMzM5OS1jcnUuaD4KPj4gQEAgLTE2MDAsMyArMTYwMiw1NiBAQCBzdGF0
aWMgdm9pZCBfX2luaXQgcmszMzk5X3BtdV9jbGtfaW5pdChzdHJ1Y3QgZGV2aWNlX25vZGUgKm5w
KQo+PiAgIAlyb2NrY2hpcF9jbGtfb2ZfYWRkX3Byb3ZpZGVyKG5wLCBjdHgpOwo+PiAgIH0KPj4g
ICBDTEtfT0ZfREVDTEFSRShyazMzOTlfY3J1X3BtdSwgInJvY2tjaGlwLHJrMzM5OS1wbXVjcnUi
LCByazMzOTlfcG11X2Nsa19pbml0KTsKPj4gKwo+PiArc3RydWN0IGNsa19yazMzOTlfaW5pdHMg
ewo+PiArCQl2b2lkICgqaW5pdHMpKHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnApOwo+PiArfTsKPj4g
Kwo+PiArc3RhdGljIGNvbnN0IHN0cnVjdCBjbGtfcmszMzk5X2luaXRzIGNsa19yazMzOTlfcG11
Y3J1X2luaXQgPSB7Cj4+ICsJLmluaXRzID0gcmszMzk5X3BtdV9jbGtfaW5pdCwKPj4gK307Cj4+
ICsKPj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgY2xrX3JrMzM5OV9pbml0cyBjbGtfcmszMzk5X2Ny
dV9pbml0ID0gewo+PiArCS5pbml0cyA9IHJrMzM5OV9jbGtfaW5pdCwKPj4gK307Cj4+ICsKPj4g
K3N0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIGNsa19yazMzOTlfbWF0Y2hfdGFibGVb
XSA9IHsKPj4gKwl7Cj4+ICsJCS5jb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzM5OS1jcnUiLAo+
PiArCQkuZGF0YSA9ICZjbGtfcmszMzk5X2NydV9pbml0LAo+PiArCX0sICB7Cj4+ICsJCS5jb21w
YXRpYmxlID0gInJvY2tjaGlwLHJrMzM5OS1wbXVjcnUiLAo+PiArCQkuZGF0YSA9ICZjbGtfcmsz
Mzk5X3BtdWNydV9pbml0LAo+PiArCX0sCj4+ICsJeyB9Cj4+ICt9Owo+PiArTU9EVUxFX0RFVklD
RV9UQUJMRShvZiwgY2xrX3JrMzM5OV9tYXRjaF90YWJsZSk7Cj4+ICsKPj4gK3N0YXRpYyBpbnQg
X19pbml0IGNsa19yazMzOTlfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPj4g
K3sKPj4gKwlzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wID0gcGRldi0+ZGV2Lm9mX25vZGU7Cj4+ICsJ
Y29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCAqbWF0Y2g7Cj4+ICsJY29uc3Qgc3RydWN0IGNsa19y
azMzOTlfaW5pdHMgKmluaXRfZGF0YTsKPj4gKwo+PiArCW1hdGNoID0gb2ZfbWF0Y2hfZGV2aWNl
KGNsa19yazMzOTlfbWF0Y2hfdGFibGUsICZwZGV2LT5kZXYpOwo+PiArCWlmICghbWF0Y2ggfHwg
IW1hdGNoLT5kYXRhKQo+PiArCQlyZXR1cm4gLUVJTlZBTDsKPj4gKwo+PiArCWluaXRfZGF0YSA9
IG1hdGNoLT5kYXRhOwo+PiArCWlmIChpbml0X2RhdGEtPmluaXRzKQo+PiArCQlpbml0X2RhdGEt
PmluaXRzKG5wKTsKPj4gKwo+PiArCXJldHVybiAwOwo+PiArfQo+PiArCj4+ICtzdGF0aWMgc3Ry
dWN0IHBsYXRmb3JtX2RyaXZlciBjbGtfcmszMzk5X2RyaXZlciA9IHsKPj4gKwkuZHJpdmVyCQk9
IHsKPj4gKwkJLm5hbWUJPSAiY2xrLXJrMzM5OSIsCj4+ICsJCS5vZl9tYXRjaF90YWJsZSA9IGNs
a19yazMzOTlfbWF0Y2hfdGFibGUsCj4gSSBndWVzcyB3ZSBwcm9iYWJseSB3YW50Cj4gCQkuc3Vw
cHJlc3NfYmluZF9hdHRycyA9IHRydWUsCk9LLCBJIHdpbGwgYWRkIGl0IGluIHRoZSBuZXh0IHZl
cnNpb24uCj4KPiBoZXJlLCBiZWNhdXNlIHRoZXJlIGlzIG5vIHVubG9hZGluZy4KPiBBbHNvIHdo
YXQgaGFwcGVucyB3aGVuIHlvdSB0cnkgdG8gcm1tb2QgdGhlIG1vZHVsZT8KY29uc29sZTovICMg
bHNtb2QgfCBncmVwIGNsawoKY2xrX3JrODA4wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMTYz
ODTCoCAwCmNsa19yazMzOTnCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgNDkxNTLCoCAwIFtwZXJt
YW5lbnRdCmNsa19yb2NrY2hpcMKgwqDCoMKgwqDCoMKgwqDCoMKgIDU3MzQ0wqAgMzIgcm9ja2No
aXBfZG1jLHJvY2tjaGlwX29wcF9zZWxlY3QsY2xrX3JrMzM5OQpyb2NrY2hpcF9zaXDCoMKgwqDC
oMKgwqDCoMKgwqDCoCAyNDU3NsKgIDYgCnJrX3Zjb2RlYyxyb2NrY2hpcF9wd21fcmVtb3RlY3Rs
LHJvY2tjaGlwX2J1cyxudm1lbV9yb2NrY2hpcF9lZnVzZSxyb2NrY2hpcF9wbV9jb25maWcsY2xr
X3JvY2tjaGlwCgpjb25zb2xlOi8gIyBybW1vZCBjbGtfcmszMzk5CgpybW1vZDogZmFpbGVkIHRv
IHVubG9hZCBjbGtfcmszMzk5OiBEZXZpY2Ugb3IgcmVzb3VyY2UgYnVzeQoKY29uc29sZTovICMg
cm1tb2QgLWYgY2xrX3JrMzM5OQoKcm1tb2Q6IGZhaWxlZCB0byB1bmxvYWQgY2xrX3JrMzM5OTog
RGV2aWNlIG9yIHJlc291cmNlIGJ1c3kKCgpUaGUgYnVpbHRpbl9wbGF0Zm9ybV9kcml2ZXJfcHJv
YmUoKcKgIHdpdGhvdXQgdGhlIF9fZXhpdCBwYXJ0cy4KCj4KPiBIZWlrbwo+Cj4KPgo+CgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
