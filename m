Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5F9AC6FD1F
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Mar 2023 02:29:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A5YGQk40OX4IggrzvnXYoxC7oR1Itq7lvZuH3mvpCTA=; b=Bl5bIA1w3INGT5
	b4kanZEQAhyXvcYQtdk6N4YV7hDPImY/qGv4Ei6xoBxgayN2J/z/1WFfQ3Q+UBTIRPHHpjRNgehsM
	w00ZL7nHd8st5s2pFSNjDAmXSSkb0iX/LdWiiFvrX1+qDmZGJKm6vDHUOB/HpDXz9Rgh5j87mC2yO
	y/S+nm54ACM1foOqlnMi9HFH9FrPpH8YWfPWA/LRLlNBWLoH6aEauUr9OJo1Z4neVYMHVxyyLPla4
	mNf5WsNY+6rtNPUs2CePpphSS9pwsTIqFsWbOkSosJInHq43I8VkJ+dfydXUp4ufmYBsWNDSQGBU4
	tr5khd9Dq0LR9S1ZgVlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pe5Gs-007vER-2b;
	Mon, 20 Mar 2023 02:29:14 +0000
Received: from mail-m11879.qiye.163.com ([115.236.118.79])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pe5Gp-007vDf-1y
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Mar 2023 02:29:13 +0000
Received: from [172.16.12.33] (unknown [58.22.7.114])
	by mail-m11879.qiye.163.com (Hmail) with ESMTPA id 331BD6802DA;
	Mon, 20 Mar 2023 10:28:55 +0800 (CST)
Message-ID: <879d18af-e3a9-e953-1b3a-99965f74f63e@rock-chips.com>
Date: Mon, 20 Mar 2023 10:28:55 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 1/4] usb: typec: tcpm: fix cc role at port reset
Content-Language: en-US
To: Guenter Roeck <linux@roeck-us.net>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: gregkh@linuxfoundation.org, heiko@sntech.de, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 huangtao@rock-chips.com, william.wu@rock-chips.com,
 jianwei.zheng@rock-chips.com, yubing.zhang@rock-chips.com, wmc@rock-chips.com
References: <20230313025843.17162-1-frank.wang@rock-chips.com>
 <20230313025843.17162-2-frank.wang@rock-chips.com>
 <ZBA8Y/dbozOk2df7@kuha.fi.intel.com>
 <f0f0ac72-0a90-da9e-f686-49c21a76866b@rock-chips.com>
 <ZBRN11OwtkvXk1Hd@kuha.fi.intel.com>
 <d5d1880b-2852-a168-b155-26f972a96457@roeck-us.net>
From: Frank Wang <frank.wang@rock-chips.com>
In-Reply-To: <d5d1880b-2852-a168-b155-26f972a96457@roeck-us.net>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGRgdSFZISU1MS0xCTRpLTU9VEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSkpLSEpMVUpLS1VLWQ
	Y+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PTo6Mio4Qj0WVhI4KjIRPwEw
	IT0wFEtVSlVKTUxCSUxCSEhNS09DVTMWGhIXVR0JGhUQVQwaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFPTkJCNwY+
X-HM-Tid: 0a86fcd9289c2eb5kusn331bd6802da
X-HM-MType: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230319_192911_794283_AD8E3C9E 
X-CRM114-Status: GOOD (  15.82  )
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

SGkgR3VlbnRlciwKCk9uIDIwMjMvMy8xNyAyMDo0NywgR3VlbnRlciBSb2VjayB3cm90ZToKPiBP
biAzLzE3LzIzIDA0OjI0LCBIZWlra2kgS3JvZ2VydXMgd3JvdGU6Cj4+IE9uIFdlZCwgTWFyIDE1
LCAyMDIzIGF0IDEwOjU1OjIwQU0gKzA4MDAsIEZyYW5rIFdhbmcgd3JvdGU6Cj4+PiBIaSBIZWlr
a2ksCj4+Pgo+Pj4gT24gMjAyMy8zLzE0IDE3OjIwLCBIZWlra2kgS3JvZ2VydXMgd3JvdGU6Cj4+
Pj4gT24gTW9uLCBNYXIgMTMsIDIwMjMgYXQgMTA6NTg6NDBBTSArMDgwMCwgRnJhbmsgV2FuZyB3
cm90ZToKPj4+Pj4gSW4gdGhlIGN1cnJlbnQgaW1wbGVtZW50YXRpb24sIHRoZSB0Y3BtIHNldCBD
QzEvQ0MyIHJvbGUgdG8gb3BlbiB3aGVuCj4+Pj4+IGl0IGRvIHBvcnQgcmVzZXQgd291bGQgY2F1
c2UgdGhlIFZCVVMgcmVtb3ZlZCBieSB0aGUgVHlwZS1DIHBhcnRuZXIuCj4+Pj4+Cj4+Pj4+IFRo
ZSBGaWd1cmUgNC0yMCBpbiB0aGUgVENQQ0kgMi4wIHNwZWNpZmljYXRpb24gc2hvdyB0aGF0IHRo
ZSBDQzEvQ0MyCj4+Pj4+IHJvbGUgc2hvdWxkIHNldCB0byAwMWIgKFJwKSBvciAxMGIgKFJkKSBh
dCBQb3dlciBPbiBvciBSZXNldCBzdGFnZQo+Pj4+PiBpbiBEUlAgaW5pdGlhbGl6YXRpb24gYW5k
IGNvbm5lY3Rpb24gZGV0ZWN0aW9uLgo+Pj4+Pgo+Pj4+PiBTbyBzZXQgQ0MxL0NDMiB0byBSZCB0
byBmaXggaXQuCj4+Pj4+Cj4+Pj4+IFNpZ25lZC1vZmYtYnk6IEZyYW5rIFdhbmcgPGZyYW5rLndh
bmdAcm9jay1jaGlwcy5jb20+Cj4+Pj4+IC0tLQo+Pj4+PiDCoMKgIGRyaXZlcnMvdXNiL3R5cGVj
L3RjcG0vdGNwbS5jIHwgMiArLQo+Pj4+PiDCoMKgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMSBkZWxldGlvbigtKQo+Pj4+Pgo+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy91c2Iv
dHlwZWMvdGNwbS90Y3BtLmMgCj4+Pj4+IGIvZHJpdmVycy91c2IvdHlwZWMvdGNwbS90Y3BtLmMK
Pj4+Pj4gaW5kZXggYTBkOTQzZDc4NTgwMC4uNjZkZTAyYTU2ZjUxMiAxMDA2NDQKPj4+Pj4gLS0t
IGEvZHJpdmVycy91c2IvdHlwZWMvdGNwbS90Y3BtLmMKPj4+Pj4gKysrIGIvZHJpdmVycy91c2Iv
dHlwZWMvdGNwbS90Y3BtLmMKPj4+Pj4gQEAgLTQ4NTEsNyArNDg1MSw3IEBAIHN0YXRpYyB2b2lk
IHJ1bl9zdGF0ZV9tYWNoaW5lKHN0cnVjdCAKPj4+Pj4gdGNwbV9wb3J0ICpwb3J0KQo+Pj4+PiDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBicmVhazsKPj4+Pj4gwqDCoMKgwqDCoMKgIGNhc2UgUE9SVF9S
RVNFVDoKPj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqAgdGNwbV9yZXNldF9wb3J0KHBvcnQpOwo+
Pj4+PiAtwqDCoMKgwqDCoMKgwqAgdGNwbV9zZXRfY2MocG9ydCwgVFlQRUNfQ0NfT1BFTik7Cj4+
Pj4+ICvCoMKgwqDCoMKgwqDCoCB0Y3BtX3NldF9jYyhwb3J0LCBUWVBFQ19DQ19SRCk7Cj4+Pj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgIHRjcG1fc2V0X3N0YXRlKHBvcnQsIFBPUlRfUkVTRVRfV0FJ
VF9PRkYsCj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBQ
RF9UX0VSUk9SX1JFQ09WRVJZKTsKPj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqAgYnJlYWs7Cj4+
Pj4gV2lsbCB0aGlzIHdvcmsgaWYgdGhlIHBvcnQgaXMgZm9yIGV4YW1wbGUgc291cmNlIG9ubHk/
Cj4+Pgo+Pj4gWWVhaCwgdGhpcyBvbmx5IHNldCBhdCBwb3J0IHJlc2V0IHN0YWdlIGFuZCBDQyB2
YWx1ZSB3aWxsIGJlIHNldCBhZ2Fpbgo+Pj4gKFJkIGZvciBTaW5rLCBScF8qIGZvciBTb3VyY2Up
IHdoZW4gc3RhcnQgdG9nZ2xpbmcuCj4+Cj4+IE9rYXkuIExldCdzIHdhaXQgZm9yIGNvbW1lbnRz
IGZyb20gR3VlbnRlci4KPj4KPgo+IEZpZ3VyZSA0LTIwIGlzIHNwZWNpZmljYWxseSBmb3IgZHVh
bCByb2xlIHBvcnRzLiBBbHNvLCBzdGFydCB0b2dnbGluZyAKPiB3b3VsZCBub3QKPiBoYXBwZW4g
aWYgdGhlIGxvdyBsZXZlbCBkcml2ZXIgZG9lc24ndCBoYXZlIGEgc3RhcnRfdG9nZ2xpbmcgY2Fs
bGJhY2suIAo+IEkgdGhpbmsgdGhpcwo+IG1heSByZXF1aXJlIHNvbWUgdHdlYWtpbmcgYmFzZWQg
b24gdGhlIHBvcnQgdHlwZSBvciwgcmF0aGVyLCAKPiB0Y3BtX2RlZmF1bHRfc3RhdGUoKS4KPiBT
b21ldGhpbmcgbGlrZQo+Cj4gwqDCoMKgwqB0Y3BtX3NldF9jYyhwb3J0LCB0Y3BtX2RlZmF1bHRf
c3RhdGUocG9ydCkgPT0gU05LX1VOQVRUQUNIRUQgPyAKPiBUWVBFQ19DQ19SRCA6IHRjcG1fcnBf
Y2MocG9ydCkpOwoKVG8gYW1lbmQgbGlrZXMgYWJvdmUgbWFrZSBzZW5zZSwgSSBzaGFsbCBmaXgg
aXQgbGF0ZXIuCgoKQlIuCkZyYW5rCgo+Cj4gVGhhbmtzLAo+IEd1ZW50ZXIKPgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
