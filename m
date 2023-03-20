Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 321D0C7618A
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Mar 2023 02:38:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N4p/JEpE750F1+L0JGKY9RVZ8OwRL2hfgyKxFb0ip3M=; b=pA77VdOsQ6ay8q
	K/cAPui8n5ut5HK+w7Ejev0u7JwrzdGj7srY1r0wDPrMLlbnzwKWX0Cg9U+tZVcqk5AL+RvAAUT81
	tNlhZGUtiz6w4kl4KuMJ1+I2+vripUg6sbNlhBB9Z6aGEbryubZBtwvnEeBNaWMVfLUb2TBDmXERL
	QWPU4LTRpFkcmeOgZOCY/7PYaXu+3Em7QXf9deyohd6b4HqhXaPd3r+CZtq779OpPQCaqlEeYXekr
	GAoViMFgP5Tbcal3pPHv4qIZWdVSMqic3CyILhAHm4x3yIPNsktnx/NhanwcQfxEr4za69fuQl3iS
	7CX58F9xrBdZDg9b/lwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pe5Q2-007vmp-2G;
	Mon, 20 Mar 2023 02:38:42 +0000
Received: from mail-m11879.qiye.163.com ([115.236.118.79])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pe5Pz-007vmJ-0y
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Mar 2023 02:38:40 +0000
Received: from [172.16.12.33] (unknown [58.22.7.114])
	by mail-m11879.qiye.163.com (Hmail) with ESMTPA id E84A1680467;
	Mon, 20 Mar 2023 10:38:34 +0800 (CST)
Message-ID: <867179bc-a21f-5479-f27f-2e17fc5a9a01@rock-chips.com>
Date: Mon, 20 Mar 2023 10:38:35 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 4/4] usb: typec: tcpm: fix source caps may lost after soft
 reset
Content-Language: en-US
To: Guenter Roeck <linux@roeck-us.net>, heikki.krogerus@linux.intel.com,
 gregkh@linuxfoundation.org, heiko@sntech.de
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, huangtao@rock-chips.com,
 william.wu@rock-chips.com, jianwei.zheng@rock-chips.com,
 yubing.zhang@rock-chips.com, wmc@rock-chips.com
References: <20230313025843.17162-1-frank.wang@rock-chips.com>
 <20230313025843.17162-5-frank.wang@rock-chips.com>
 <f5650fa4-db16-b1e4-f5b4-917fbcabb415@roeck-us.net>
From: Frank Wang <frank.wang@rock-chips.com>
In-Reply-To: <f5650fa4-db16-b1e4-f5b4-917fbcabb415@roeck-us.net>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkxJGFYfGE8YHx9OGRkYShhVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSkpLSEpMVUpLS1VLWQ
	Y+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PRg6Qio*PT0PDxIqDA9OCAMd
	PhxPFEpVSlVKTUxCSUxCQkpOQ0pNVTMWGhIXVR0JGhUQVQwaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFOTk1MNwY+
X-HM-Tid: 0a86fce2010b2eb5kusne84a1680467
X-HM-MType: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230319_193839_500911_25027411 
X-CRM114-Status: GOOD (  14.43  )
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

SGkgR3VlbnRlciwKCk9uIDIwMjMvMy8xNyAyMDo1OCwgR3VlbnRlciBSb2VjayB3cm90ZToKPiBP
biAzLzEyLzIzIDE5OjU4LCBGcmFuayBXYW5nIHdyb3RlOgo+PiBJbnZva2Ugc2V0X3BkX3J4KCkg
bWF5IGZsdXNoIHRoZSBSWCBGSUZPIG9mIFBEIGNvbnRyb2xsZXIsIHNvIGRvCj4+IHNldF9wZF9y
eCgpIGJlZm9yZSBzZW5kaW5nIFNvZnQgUmVzZXQgaW4gY2FzZSBTb3VyY2UgY2FwcyBtYXkgYmUg
Zmx1c2hlZAo+PiBhdCBkZWJvdW5jZSB0aW1lIGJldHdlZW4gU09GVF9SRVNFVF9TRU5EIGFuZCBT
TktfV0FJVF9DQVBBQklMSVRJRVMgCj4+IHN0YXRlLgo+Pgo+Cj4gSXNuJ3QgdGhhdCBhIHByb2Js
ZW0gb2YgdGhlIGZ1c2IzMDIgZHJpdmVyIHRoYXQgaXQgZmx1c2hlcyBpdHMgYnVmZmVycwo+IHVu
Y29uZGl0aW9uYWxseSB3aGVuIGl0cyBzZXRfcGRfcngoKSBjYWxsYmFjayBpcyBjYWxsZWQgPwo+
Cj4gR3VlbnRlcgo+CgpUaGUgc3RvcnkgZ29lcyBsaWtlIHRoaXMswqAgdGhlIGZ1c2IzMDIgbm90
aWZpZWQgU09GVF9SRVNFVCBjb21wbGV0aW9uIHRvIApUQ1BNIGFuZCBiZWdhbiB0byByZWNlaXZl
IHRoZSBTb3VyY2UgQ2FwcyBhdXRvbWF0aWNhbGx5LApUQ1BNIGdvdCBjb21wbGV0aW9uIGZyb20g
ZnVzYjMwMiBhbmQgY2hhbmdlZCBzdGF0ZSB0byAKU05LX1dBSVRfQ0FQQUJJTElUSUVTIGFuZCBp
bnZva2VkIHNldF9wZF9yeCgpIGNhbGxiYWNrLiBIb3dldmVyLCB0aGUKZnVzYjMwMiBvciBUQ1BN
J3Mgd29ya2VyIG1heSBiZSBub3Qgc2NoZWR1bGVkIGluIHRpbWUsIHNldF9wZF9yeCgpIHdvdWxk
IApiZSBwZXJmb3JtZWQgYWZ0ZXIgdGhlIFNvdXJjZSBDYXBzIHBhY2tldHMgaGFkIHJlY2VpdmVk
CmludG8gZnVzYjMwMidzIEZJRk8sIGV2ZW4gYWZ0ZXIgdGhlIEdvb2RDUkMgKFNvdXJjZSBDYXBz
KSBoYWQgYmUgcmVwbGllZC4KClNvIG1ha2UgZm9yd2FyZCBzZXRfcGRfcngoKSBwcm9jZXNzIGJl
Zm9yZSBQRF9DVFJMX1NPRlRfUkVTRVQgc2VudCBhdCAKU09GVF9SRVNFVF9TRU5EIHN0YXRlIGNh
biBjbGVhbnVwIHRoZSBjb250ZXh0IGluIG91ciBzaWRlCmFuZCBlbnN1cmUgdGhlIHJpZ2h0IFBE
IGNvbW11Y2F0aW9uLiBJIGFtIG5vdCBzdXJlIHdoZXRoZXIgaXQgaXMgc2Vuc2libGU/CgpCUi4K
RnJhbmsKCj4+IFdpdGhvdXQgdGhpcyBwYXRjaCwgaW4gUEQgY2hhcmdlciBzdHJlc3MgdGVzdCwg
dGhlIEZVU0IzMDIgZHJpdmVyIG1heQo+PiBvY2N1ciB0aGUgZm9sbG93aW5nIGV4Y2VwdGlvbnMg
aW4gcG93ZXIgbmVnb3RpYXRpb24gc3RhZ2UuCj4+Cj4+IFsgLi4uXQo+PiBbIDQuNTEyMjUyXSBm
dXNiMzAyX2lycV9pbnRuCj4+IFsgNC41MTIyNjBdIEFNUyBTT0ZUX1JFU0VUX0FNUyBmaW5pc2hl
ZAo+PiBbIDQuNTEyMjY5XSBzdGF0ZSBjaGFuZ2UgU09GVF9SRVNFVF9TRU5EIC0+U05LX1dBSVRf
Q0FQQUJJTElUSUVTIAo+PiBbcmV2MyBOT05FX0FNU10KPj4gWyA0LjUxNDUxMV0gcGQgOj0gb24K
Pj4gWyA0LjUxNDUxNl0gcGVuZGluZyBzdGF0ZSBjaGFuZ2UgU05LX1dBSVRfQ0FQQUJJTElUSUVT
IAo+PiAtPkhBUkRfUkVTRVRfU0VORCBAIDMxMCBtcyBbcmV2MyBOT05FX0FNU10KPj4gWyA0LjUx
NTQyOF0gSVJROiAweDUxLCBhOiAweDAwLCBiOiAweDAxLCBzdGF0dXMwOiAweDkzCj4+IFsgNC41
MTU0MzFdIElSUTogQkNfTFZMLCBoYW5kbGVyIHBlbmRpbmcKPj4gWyA0LjUxNTQzNV0gSVJROiBQ
RCBzZW50IGdvb2QgQ1JDCj4+IFsgNC41MTY0MzRdIFBEIG1lc3NhZ2UgaGVhZGVyOiAwCj4+IFsg
NC41MTY0MzddIFBEIG1lc3NhZ2UgbGVuOiAwCj4+IFsgNC41MTY0NDRdIFBEIFJYLCBoZWFkZXI6
IDB4MCBbMV0KPj4KPj4gU2lnbmVkLW9mZi1ieTogRnJhbmsgV2FuZyA8ZnJhbmsud2FuZ0Byb2Nr
LWNoaXBzLmNvbT4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvdXNiL3R5cGVjL3RjcG0vdGNwbS5jIHwg
MTEgKysrKysrKy0tLS0KPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNCBk
ZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvdXNiL3R5cGVjL3RjcG0vdGNw
bS5jIAo+PiBiL2RyaXZlcnMvdXNiL3R5cGVjL3RjcG0vdGNwbS5jCj4+IGluZGV4IDllNTgzMDYw
ZTY0ZmMuLmJhNmJmNzE4MzhlZWQgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvdXNiL3R5cGVjL3Rj
cG0vdGNwbS5jCj4+ICsrKyBiL2RyaXZlcnMvdXNiL3R5cGVjL3RjcG0vdGNwbS5jCj4+IEBAIC00
MzIxLDEwICs0MzIxLDEyIEBAIHN0YXRpYyB2b2lkIHJ1bl9zdGF0ZV9tYWNoaW5lKHN0cnVjdCAK
Pj4gdGNwbV9wb3J0ICpwb3J0KQo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgdGNwbV9zZXRfc3RhdGUo
cG9ydCwgdW5hdHRhY2hlZF9zdGF0ZShwb3J0KSwgMCk7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBi
cmVhazsKPj4gwqDCoMKgwqDCoCBjYXNlIFNOS19XQUlUX0NBUEFCSUxJVElFUzoKPj4gLcKgwqDC
oMKgwqDCoMKgIHJldCA9IHBvcnQtPnRjcGMtPnNldF9wZF9yeChwb3J0LT50Y3BjLCB0cnVlKTsK
Pj4gLcKgwqDCoMKgwqDCoMKgIGlmIChyZXQgPCAwKSB7Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHRjcG1fc2V0X3N0YXRlKHBvcnQsIFNOS19SRUFEWSwgMCk7Cj4+IC3CoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGJyZWFrOwo+PiArwqDCoMKgwqDCoMKgwqAgaWYgKHBvcnQtPnByZXZfc3RhdGUg
IT0gU09GVF9SRVNFVF9TRU5EKSB7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldCA9IHBv
cnQtPnRjcGMtPnNldF9wZF9yeChwb3J0LT50Y3BjLCB0cnVlKTsKPj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgaWYgKHJldCA8IDApIHsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB0Y3BtX3NldF9zdGF0ZShwb3J0LCBTTktfUkVBRFksIDApOwo+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGJyZWFrOwo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Cj4+IMKg
wqDCoMKgwqDCoMKgwqDCoCB9Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCAvKgo+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAqIElmIFZCVVMgaGFzIG5ldmVyIGJlZW4gbG93LCBhbmQgd2UgdGltZSBvdXQg
d2FpdGluZwo+PiBAQCAtNDYwMyw2ICs0NjA1LDcgQEAgc3RhdGljIHZvaWQgcnVuX3N0YXRlX21h
Y2hpbmUoc3RydWN0IHRjcG1fcG9ydCAKPj4gKnBvcnQpCj4+IMKgwqDCoMKgwqAgY2FzZSBTT0ZU
X1JFU0VUX1NFTkQ6Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBwb3J0LT5tZXNzYWdlX2lkID0gMDsK
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIHBvcnQtPnJ4X21zZ2lkID0gLTE7Cj4+ICvCoMKgwqDCoMKg
wqDCoCBwb3J0LT50Y3BjLT5zZXRfcGRfcngocG9ydC0+dGNwYywgdHJ1ZSk7Cj4+IMKgwqDCoMKg
wqDCoMKgwqDCoCBpZiAodGNwbV9wZF9zZW5kX2NvbnRyb2wocG9ydCwgUERfQ1RSTF9TT0ZUX1JF
U0VUKSkKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdGNwbV9zZXRfc3RhdGVfY29uZChw
b3J0LCBoYXJkX3Jlc2V0X3N0YXRlKHBvcnQpLCAwKTsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGVs
c2UKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
