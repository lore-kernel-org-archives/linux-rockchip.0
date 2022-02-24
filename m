Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 787C3C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Feb 2022 10:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2kiZwLR4ybFkmLsWwlM7BpvRJ/cvT+xT/gKn1esHsTg=; b=MG/MV4SFSRvVic
	++Ny8YE8+wiU80Tea5L+6MsTk1BFAfz+emy/P6tzo2yod4UKZFq14ht0fWU4ZhI0NqwJ3BaNdKu7p
	ovZTxCVZP18g6U4eUK7KLAHuJr75ZDYxk9PERGA9UdNQ45O3S72nIKjUop7A71kd3uJkXzsA72BO+
	8G/7XJ9vMrGsFdIP/AKfnnqpIqipEELgQKYGRmQ4+RzFZ0waQ1IhjAwhXsS00bJtaOaRIyewmV1mJ
	JwhkQWGxaiZkrW7omjjDbCvnJsNhas7yxcHWldOyj6QUtjmB4UwG2eWnsqq4HiNJPojsKrVpwS+dg
	NeMWTVcwh7xJx3vImkNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNBlu-000Qrp-BL; Thu, 24 Feb 2022 10:54:54 +0000
Received: from mail-m121144.qiye.163.com ([115.236.121.144])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNBlh-000Qql-G2; Thu, 24 Feb 2022 10:54:43 +0000
Received: from [172.16.12.141] (unknown [58.22.7.114])
 by mail-m121144.qiye.163.com (Hmail) with ESMTPA id B891EAC0373;
 Thu, 24 Feb 2022 18:54:35 +0800 (CST)
Message-ID: <39f8f014-8d69-47e7-9004-b401ebb17e29@rock-chips.com>
Date: Thu, 24 Feb 2022 18:54:35 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v6 21/23] drm: rockchip: Add VOP2 driver
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>
References: <20220217082954.2967889-1-s.hauer@pengutronix.de>
 <e1eb945b-d7da-f21c-ee19-e19f7f1d9b04@rock-chips.com>
 <20220217135823.GR18637@pengutronix.de> <6072461.kR79ftKOrO@diego>
 <8c0b1d1e-6787-8edc-c1fd-e1b68b92e60e@rock-chips.com>
 <20220218080024.GU18637@pengutronix.de>
 <8a386dbf-645b-8054-368b-535ded778d71@rock-chips.com>
 <20220224081909.GS9136@pengutronix.de>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20220224081909.GS9136@pengutronix.de>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUhPN1dZLVlBSVdZDwkaFQgSH1lBWRkfQ0JWHU0aGU1IH0tMHR
 9OVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktITUpVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PTY6DQw*Pj5LT1ENNhksSQsM
 IigwCS1VSlVKTU9OTEtLS0xNSEtKVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
 WUFZTkNVSUlVTFVKSk9ZV1kIAVlBTU5DSDcG
X-HM-Tid: 0a7f2b5e5214b039kuuub891eac0373
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220224_025441_848977_23851801 
X-CRM114-Status: GOOD (  23.90  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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

SGkgU2FzY2hhOgoKT24gMi8yNC8yMiAxNjoxOSwgU2FzY2hhIEhhdWVyIHdyb3RlOgo+IE9uIFNh
dCwgRmViIDE5LCAyMDIyIGF0IDAzOjM1OjEyUE0gKzA4MDAsIEFuZHkgWWFuIHdyb3RlOgo+PiBI
aSBTYXNjaGE6Cj4+Cj4+IE9uIDIvMTgvMjIgMTY6MDAsIFNhc2NoYSBIYXVlciB3cm90ZToKPj4+
IE9uIEZyaSwgRmViIDE4LCAyMDIyIGF0IDExOjUwOjMyQU0gKzA4MDAsIEFuZHkgWWFuIHdyb3Rl
Ogo+Pj4+IEhpIFNhc2NoYToKPj4+Pgo+Pj4+IE9uIDIvMTcvMjIgMjI6MDYsIEhlaWtvIFN0w7xi
bmVyIHdyb3RlOgo+Pj4+PiBBbSBEb25uZXJzdGFnLCAxNy4gRmVicnVhciAyMDIyLCAxNDo1ODoy
MyBDRVQgc2NocmllYiBTYXNjaGEgSGF1ZXI6Cj4+Pj4+PiBIaSBBbmR5LAo+Pj4+Pj4KPj4+Pj4+
IFBsZWFzZSB0cmltIHRoZSBjb250ZXh0IGluIHlvdXIgYW5zd2VycyB0byB0aGUgcmVsZXZhbnQg
cGFydHMsIGl0IG1ha2VzCj4+Pj4+PiBpdCBlYXNpZXIgdG8gZmluZCB0aGUgdGhpbmdzIHlvdSBz
YWlkLgo+Pj4+Pj4KPj4+Pj4+IE9uIFRodSwgRmViIDE3LCAyMDIyIGF0IDA4OjAwOjExUE0gKzA4
MDAsIEFuZHkgWWFuIHdyb3RlOgo+Pj4+Pj4+IEhpIFNhc2NoYToKPj4+Pj4+Pgo+Pj4+Pj4+PiAr
Cj4+Pj4+Pj4+ICsJZHJtX2Zvcl9lYWNoX2VuY29kZXJfbWFzayhlbmNvZGVyLCBjcnRjLT5kZXYs
IGNydGNfc3RhdGUtPmVuY29kZXJfbWFzaykgewo+Pj4+Pj4+PiArCQlzdHJ1Y3Qgcm9ja2NoaXBf
ZW5jb2RlciAqcmtlbmNvZGVyID0gdG9fcm9ja2NoaXBfZW5jb2RlcihlbmNvZGVyKTsKPj4+Pj4+
Pj4gKwkJc3RydWN0IGRldmljZV9ub2RlICpub2RlLCAqcGFyZW50Owo+Pj4+Pj4+PiArCj4+Pj4+
Pj4+ICsJCXBhcmVudCA9IG9mX2dldF9wYXJlbnQocmtlbmNvZGVyLT5wb3J0KTsKPj4+Pj4+Pj4g
Kwo+Pj4+Pj4+PiArCQlmb3JfZWFjaF9lbmRwb2ludF9vZl9ub2RlKHBhcmVudCwgbm9kZSkgewo+
Pj4+Pj4+IElzIHRoZXJlIGFueSBodXJ0IGRpcmVjdGx5IHVzZSBvdXIgZG93bnN0cmVhbSB2ZW5k
b3Iga2VybmVsIG1ldGhvZCBoZXJlOiB1c2UKPj4+Pj4+PiB2Y3N0YXRlLT5vdXRwdXRfaWYgc2V0
IGJ5IGVuY29kZXIgZHJpdmVyIHRvIGdldCB3aGljaCBpbnRlcmZhY2Ugd2Ugc2hvdWxkCj4+Pj4+
Pj4gZW5hYmxlIGhlcmU/Cj4+Pj4+PiBUaGVyZSBpcyBubyB2Y3N0YXRlLT5vdXRwdXRfaWYgaW4g
bWFpbmxpbmUgY3VycmVudGx5LiBPaywgd2UgY291bGQgYWRkCj4+Pj4+PiB0aGF0LiBUaGUgb3Ro
ZXIgdGhpbmcgaXMgdGhhdCB0aGVyZSBhcmUgbXVsdGlwbGUgSERNSSBpbnRlcmZhY2VzIGFuZAo+
Pj4+Pj4gdGhlIGlkIG9mIHRoZSBIRE1JIGVuY29kZXIgaXMgZW5jb2RlZCBpbnRvIG91dHB1dF9p
Zi4gRG93bnN0cmVhbSBrZXJuZWwKPj4+Pj4+IGFkZHMgT0YgYWxpYXNlcyB0byB0aGUgSERNSSBw
b3J0cy4gSSBkaWRuJ3Qgd2FudCB0byBnbyB0aGF0IHJvdXRlCj4+Pj4+PiBiZWNhdXNlIGl0IGRv
ZXNuJ3Qgc2VlbSB0byBiZSB2ZXJ5IGVsZWdhbnQgdG8gbWUuCj4+Pj4gYWxpYXNlcyBpcyBhIHZl
cnkgY29tbSBzdHJhdGVneSBpbiBkZXZpY2UgdHJlZSB3b3JsZC4KPj4+IFllcywgYnV0IG5vdCBm
b3IgcmV0cmlldmluZyBiaXQgb2Zmc2V0cyBpbnRvIHJlZ2lzdGVycy4gTm9ybWFsbHkgYWxpYXNl
cwo+Pj4gY2FuIGJlIGNoYW5nZWQgYXQgYm9hcmQgbGV2ZWwgd2l0aG91dCBjb25mdXNpbmcgZHJp
dmVycy4KPj4+Cj4+Pj4gQW5kIHlvdXIgbWV0aG9kIGFsc28KPj4+PiBhZGQgbmVlZCBhZGRpdGlv
bmFsIGR0IGJpbmRzIHRvIGRlZmluZSBSSzM1NjhfVk9QMl9FUF94eHgKPj4+Pj4+PiBZb3UgbWV0
aG9kIGlzIG9rIHdpdGggZGV2aWNlIHRyZWUsICBidXQgaXQgdGllZCB1cCB0aGlzIGRyaXZlciB0
byBkZXZpY2UKPj4+Pj4+PiB0cmVlLCB3ZSBhcmUgbm93IHRyaW5nIHRvIGV4dGVuZCB2b3AyIGRy
aXZlciB3b3JrIHdpdGggQUNQSSwgc28gd2UgaG9wZSB0aGlzCj4+Pj4+Pj4gZHJpdmVyIGNhbiBi
ZSBtdWNoIG1vcmUgZmxleGlibGUuCj4+Pj4+PiBUaGUgY3VycmVudCByb2NrY2hpcCBkcm0gZHJp
dmVyIHNlZW1zIHRvIGJlIHByZXR0eSBtdWNoIHRpZWQgdG8gZGV2aWNlCj4+Pj4+PiB0cmVlLiBU
aGVyZSBhcmUgcHJvYmFibHkgbWFueSBvdGhlciBwbGFjZXMgdGhhdCBuZWVkIHBhcmFsbGVsIHBh
dGhzIGZvcgo+Pj4+Pj4gQUNQSSBzdXBwb3J0LCBJIHRoaW5rIHdlIGNhbiBkZWxheSB0aGlzIHBh
cnRpY3VsYXIgcGFydCB1bnRpbCB3ZSBzZWUgdGhlCj4+Pj4+PiB3aG9sZSBwaWN0dXJlLiBJbiB0
aGUgZW5kIHdlIGNhbiBzdGlsbCByZXRyaWV2ZSB0aGUgb3V0cHV0X2lmCj4+Pj4+PiBpbmZvcm1h
dGlvbiBkaWZmZXJlbnRseSB3aXRoIEFDUEkgd2hpbGUgc3RpbGwgcmV0cmlldmluZyB0aGUgaW5m
b3JtYXRpb24KPj4+Pj4+IGZyb20gdGhlIGRldmljZSB0cmVlIHRoZSB3YXkgd2UgYXJlIGRvaW5n
IGN1cnJlbnRseS4KPj4+PiBUaGUgY3VycmVudCBkcml2ZXIgb25seSByZWZlcmVuY2UgZGV2aWNl
IHRoZWUgYXQgZHJpdmVyIGluaXRpYWwsIHdlIG5vdCB3cmFwCj4+Pj4KPj4+PiBkZXZpY2UgdHJl
ZSByZWxhdGVkIHRoaW5ncyBpbiBvdGhlciBwYXJ0cywgc28gaWYgd2UgZXh0ZW5kIGl0IHRvIHN1
cHBvcnQKPj4+PiBBQ1BJLAo+Pj4+Cj4+Pj4gd2UganVzdCBuZWVkIG1vZGlmeSB0aGUgaW5pdGlh
bCBjb2RlLCB0aGlzIG1ha2UgdGhpbmdzIGVhc2llci4KPj4+IFRoZSBkZXZpY2UgdHJlZSBwYXJz
aW5nIGNvdWxkIGJlIG1vdmVkIG91dCBvZiB2b3AyX2NydGNfYXRvbWljX2VuYWJsZSgpCj4+PiBp
bnRvIHNvbWUgaW5pdGlhbGlzYXRpb24gcGF0aC4gSW4gdGhlIGVuZCBpdCdzIHN0YXRpYyBpbmZv
cm1hdGlvbiwKPj4+IHRoZXJlJ3Mgbm8gbmVlZCB0byBkbyBpdCByZXBlYXRlZGx5IGluIGF0b21p
Y19lbmFibGUuCj4+IFRoaXMgY291bGQgYmUgb25lIHNvbHV0aW9uLCB0aGUgcmVwZWF0ZWRseSBw
YXJzaW5nIGRldmljZSB0cmVlIGluCj4+IGF0b21pY19lbmFibGUgaXMgYWxzbyBteSBjb25jZXJu
Lgo+Pgo+PiBJbiBhZGRpdGlvbiwgdGhlcmUgYXJlIDIgSERNSSwgMiBlRFAsIDIgTUlQSSBvbiB0
aGUgY29taW5nIHJrMzU4OCwgc28gaXQncwo+PiBiZXR0ZXIgdG8gY29uc2lkZXIgZ2l2ZSBwb3Np
dGlvbgo+Pgo+PiBmb3IgSERNSTEsIEVEUDEsIGluwqAgaW5jbHVkZS9kdC1iaW5kaW5ncy9zb2Mv
cm9ja2NoaXAsdm9wMi5oCj4gVGhlIGRlZmluZXMgYXJlIHJrMzU2OCBzcGVjaWZpYy4gcmszNTg4
IHdvdWxkIHVzZSBhIHNldCBvZiByazM1ODgKPiBzcGVjaWZpYyBkZWZpbmVzIGFsb25nIHdpdGgg
YSByazM1ODhfc2V0X2ludGZfbXV4KCkuCgoKV2h5IG5vdCB0cnkgdG8gc2hhcmUgdGhlc2UgUksz
NTY4X1ZPUDJfRVBfWFhYIGFjcm9zcyBhbGwgdm9wMiBldmVuIHZvcCAKYmFzZWQgcm9ja2NoaXAg
c29jcz8KCklmIG1ha2UgdGhlc2UgZGVmaW5pdGlvbiBSSzM1Njggc3BlY2lmaWMsIHdlIG5lZWQg
Y29weSBhbGwgb2YgaXQgYW5kIApjaGFuZ2UgMzU2OCB0byAzNTg4IHRoYW4gYWRkIEhETUkxLCBI
RE1JMCwgRURQMSxFRFAwCgp3aGVuIHJrMzU4OCBjb21pbmcsIGlmIHRoZXJlIGlzIGFub3RoZXIg
cmszNXh4LCB3ZSBuZWVkIHRvIHRoZSBzYW1lIAp0aGluZyBhZ2Fpbi4uLi4gYnV0IHRoZXkgc2hh
cmUgc2FtZSBjb2RlIGxvZ2ljIGFuZCBudW1iZXIsCgp0aGUgb25seSBkaWZmZXJlbmNlIGlzIHRo
ZSBkZWZpbml0aW9uIG5hbWUuCgoKUGxlYXNlIHRha2UgYSBsb29rIGF0IHRoZSBjdXJyZW50IHVw
c3RyZWFtIHZvcCBkcml2ZXIswqAgaXQgc3VwcG9ydCAxMyAKc29jcywgd2hlbiB3ZSBhZGQgc3Vw
cG9ydCBmb3IgYSBuZXcgdm9wICwgbW9zdCBvZgoKdGhlIHdvcmsgaXMganVzdCBhZGQgcmVnaXN0
ZXJzIGRlZmluaXRpb24gaW4gcm9ja2NoaXBfdm9wX3JlZy5jLCB3ZSAKZG9uJ3QgbmVlZCB0byBk
dXBsaWNhdGUgc29jIHNwZWNpZmljIGNvZGUgaW4gcm9ja2NoaXBfZHJtX3ZvcC5jLAoKdGhlc2Ug
bWFrZSB0aGUgdXBzdHJlYW0gcHJvY2VzcyBtdWNoIGVhc2llciwgYW5kIGtlZXAgdGhlIHZvcCBk
cml2ZXIgCnRpbnkgYW5kIGNsZWFuLgoKPiBTYXNjaGEKPgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
