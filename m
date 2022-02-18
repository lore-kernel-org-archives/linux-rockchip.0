Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B31EFC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Feb 2022 03:50:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WYni6reD3OuJH0M1dSD5L6ao5zAnBuXpmjv0ITqtZhw=; b=lZAI16ERD/xuP7
	IbMAU31gSQyNTQC9wx3uaOePANS+68QXVLXn+CPkVg9iA5vsDfxg/dgq3hJeHiO5rUwZKvRaHjp6o
	JqUKKgdW0z+lJ6XYH6IfuJTVFIALY2A7hg2ZWfvrChH/5xZzyiD78Q5kOww0/heuDMES9lt3hzKD/
	gBflVEX32g1ty/EDzAzLY5nDNaxtYV9rPFSxZjZE+iedBDEEBBJgNQ/Elyk5CU/re4N54wPGaI0/Y
	9PZzFjfTSSXZtEbAKj1niWPr1dAJvutaCMasPh6UWq+yeqAhnqbx2ODKz/CjPMCHJkYMsVJte21gq
	78i/c0gfu3tCNs77lQ8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nKuIF-00Cow1-5x; Fri, 18 Feb 2022 03:50:51 +0000
Received: from mail-m176231.qiye.163.com ([59.111.176.231])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nKuI2-00Cou2-4L; Fri, 18 Feb 2022 03:50:40 +0000
Received: from [172.16.12.141] (unknown [58.22.7.114])
 by mail-m176231.qiye.163.com (Hmail) with ESMTPA id 633CD6C013E;
 Fri, 18 Feb 2022 11:50:33 +0800 (CST)
Message-ID: <8c0b1d1e-6787-8edc-c1fd-e1b68b92e60e@rock-chips.com>
Date: Fri, 18 Feb 2022 11:50:32 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v6 21/23] drm: rockchip: Add VOP2 driver
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>
References: <20220217082954.2967889-1-s.hauer@pengutronix.de>
 <e1eb945b-d7da-f21c-ee19-e19f7f1d9b04@rock-chips.com>
 <20220217135823.GR18637@pengutronix.de> <6072461.kR79ftKOrO@diego>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <6072461.kR79ftKOrO@diego>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUhPN1dZLVlBSVdZDwkaFQgSH1lBWUJMTE1WGE1LSUIeSUtKQh
 hNVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWVVLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Oio6Ogw4Ez5KHgodEDIwTixO
 Ci9PFApVSlVKTU9OSk5NSUhIQk1DVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
 WUFZTkNVSUlVTFVKSk9ZV1kIAVlBT0NNSjcG
X-HM-Tid: 0a7f0af3f1ddd9a9kuws633cd6c013e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220217_195038_367523_2AD043D0 
X-CRM114-Status: GOOD (  23.11  )
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

SGkgU2FzY2hhOgoKT24gMi8xNy8yMiAyMjowNiwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0g
RG9ubmVyc3RhZywgMTcuIEZlYnJ1YXIgMjAyMiwgMTQ6NTg6MjMgQ0VUIHNjaHJpZWIgU2FzY2hh
IEhhdWVyOgo+PiBIaSBBbmR5LAo+Pgo+PiBQbGVhc2UgdHJpbSB0aGUgY29udGV4dCBpbiB5b3Vy
IGFuc3dlcnMgdG8gdGhlIHJlbGV2YW50IHBhcnRzLCBpdCBtYWtlcwo+PiBpdCBlYXNpZXIgdG8g
ZmluZCB0aGUgdGhpbmdzIHlvdSBzYWlkLgo+Pgo+PiBPbiBUaHUsIEZlYiAxNywgMjAyMiBhdCAw
ODowMDoxMVBNICswODAwLCBBbmR5IFlhbiB3cm90ZToKPj4+IEhpIFNhc2NoYToKPj4+Cj4+Pj4g
Kwo+Pj4+ICsJZHJtX2Zvcl9lYWNoX2VuY29kZXJfbWFzayhlbmNvZGVyLCBjcnRjLT5kZXYsIGNy
dGNfc3RhdGUtPmVuY29kZXJfbWFzaykgewo+Pj4+ICsJCXN0cnVjdCByb2NrY2hpcF9lbmNvZGVy
ICpya2VuY29kZXIgPSB0b19yb2NrY2hpcF9lbmNvZGVyKGVuY29kZXIpOwo+Pj4+ICsJCXN0cnVj
dCBkZXZpY2Vfbm9kZSAqbm9kZSwgKnBhcmVudDsKPj4+PiArCj4+Pj4gKwkJcGFyZW50ID0gb2Zf
Z2V0X3BhcmVudChya2VuY29kZXItPnBvcnQpOwo+Pj4+ICsKPj4+PiArCQlmb3JfZWFjaF9lbmRw
b2ludF9vZl9ub2RlKHBhcmVudCwgbm9kZSkgewo+Pj4gSXMgdGhlcmUgYW55IGh1cnQgZGlyZWN0
bHkgdXNlIG91ciBkb3duc3RyZWFtIHZlbmRvciBrZXJuZWwgbWV0aG9kIGhlcmU6IHVzZQo+Pj4g
dmNzdGF0ZS0+b3V0cHV0X2lmIHNldCBieSBlbmNvZGVyIGRyaXZlciB0byBnZXQgd2hpY2ggaW50
ZXJmYWNlIHdlIHNob3VsZAo+Pj4gZW5hYmxlIGhlcmU/Cj4+IFRoZXJlIGlzIG5vIHZjc3RhdGUt
Pm91dHB1dF9pZiBpbiBtYWlubGluZSBjdXJyZW50bHkuIE9rLCB3ZSBjb3VsZCBhZGQKPj4gdGhh
dC4gVGhlIG90aGVyIHRoaW5nIGlzIHRoYXQgdGhlcmUgYXJlIG11bHRpcGxlIEhETUkgaW50ZXJm
YWNlcyBhbmQKPj4gdGhlIGlkIG9mIHRoZSBIRE1JIGVuY29kZXIgaXMgZW5jb2RlZCBpbnRvIG91
dHB1dF9pZi4gRG93bnN0cmVhbSBrZXJuZWwKPj4gYWRkcyBPRiBhbGlhc2VzIHRvIHRoZSBIRE1J
IHBvcnRzLiBJIGRpZG4ndCB3YW50IHRvIGdvIHRoYXQgcm91dGUKPj4gYmVjYXVzZSBpdCBkb2Vz
bid0IHNlZW0gdG8gYmUgdmVyeSBlbGVnYW50IHRvIG1lLgphbGlhc2VzIGlzIGEgdmVyeSBjb21t
IHN0cmF0ZWd5IGluIGRldmljZSB0cmVlIHdvcmxkLsKgIEFuZCB5b3VyIG1ldGhvZCAKYWxzbyBh
ZGQgbmVlZCBhZGRpdGlvbmFsIGR0IGJpbmRzIHRvIGRlZmluZSBSSzM1NjhfVk9QMl9FUF94eHgK
Pj4+IFlvdSBtZXRob2QgaXMgb2sgd2l0aCBkZXZpY2UgdHJlZSwgIGJ1dCBpdCB0aWVkIHVwIHRo
aXMgZHJpdmVyIHRvIGRldmljZQo+Pj4gdHJlZSwgd2UgYXJlIG5vdyB0cmluZyB0byBleHRlbmQg
dm9wMiBkcml2ZXIgd29yayB3aXRoIEFDUEksIHNvIHdlIGhvcGUgdGhpcwo+Pj4gZHJpdmVyIGNh
biBiZSBtdWNoIG1vcmUgZmxleGlibGUuCj4+IFRoZSBjdXJyZW50IHJvY2tjaGlwIGRybSBkcml2
ZXIgc2VlbXMgdG8gYmUgcHJldHR5IG11Y2ggdGllZCB0byBkZXZpY2UKPj4gdHJlZS4gVGhlcmUg
YXJlIHByb2JhYmx5IG1hbnkgb3RoZXIgcGxhY2VzIHRoYXQgbmVlZCBwYXJhbGxlbCBwYXRocyBm
b3IKPj4gQUNQSSBzdXBwb3J0LCBJIHRoaW5rIHdlIGNhbiBkZWxheSB0aGlzIHBhcnRpY3VsYXIg
cGFydCB1bnRpbCB3ZSBzZWUgdGhlCj4+IHdob2xlIHBpY3R1cmUuIEluIHRoZSBlbmQgd2UgY2Fu
IHN0aWxsIHJldHJpZXZlIHRoZSBvdXRwdXRfaWYKPj4gaW5mb3JtYXRpb24gZGlmZmVyZW50bHkg
d2l0aCBBQ1BJIHdoaWxlIHN0aWxsIHJldHJpZXZpbmcgdGhlIGluZm9ybWF0aW9uCj4+IGZyb20g
dGhlIGRldmljZSB0cmVlIHRoZSB3YXkgd2UgYXJlIGRvaW5nIGN1cnJlbnRseS4KClRoZSBjdXJy
ZW50IGRyaXZlciBvbmx5IHJlZmVyZW5jZSBkZXZpY2UgdGhlZSBhdCBkcml2ZXIgaW5pdGlhbCwg
d2Ugbm90IAp3cmFwCgpkZXZpY2UgdHJlZSByZWxhdGVkIHRoaW5ncyBpbiBvdGhlciBwYXJ0cywg
c28gaWYgd2UgZXh0ZW5kIGl0IHRvIHN1cHBvcnQgCkFDUEksCgp3ZSBqdXN0IG5lZWQgbW9kaWZ5
IHRoZSBpbml0aWFsIGNvZGUsIHRoaXMgbWFrZSB0aGluZ3MgZWFzaWVyLgoKPiBhZ3JlZWQgOi0p
IC4KPgo+IEkuZS4gYWRkaW5nIEFDUEkgc3VwcG9ydCBmb3IgUm9ja2NoaXAgZHJpdmVycyBzZXBh
cmF0ZWx5IGxhdGVyIG9uCj4gbWFrZXMgdGhpbmdzIHdheSBlYXNpZXIuCj4KPiBIYXZpbmcgYSBz
ZXBhcmF0ZSBkaXNjdXNzaW9uIGFib3V0IEFDUEkgY2hhbmdlcyBhdCB0aGF0IHBvaW50Cj4gYWxz
byBtYWtlcyB0aGUgd2hvbGUgcHJvY2VzcyBlYXNpZXIsIGFzIGFkZGluZyB0aGUgd2hvbGUgdGhp
bmcKPiBoZXJlIHdpbGwgZGVsYXkgZXZlcnl0aGluZyBldmVuIG1vcmUuCgoKIMKgSGVpa286IEkg
YW0gbm90wqAgYXNrIHRvIGFkZCBuZXcgY29kZSBmb3IgZnV0dXJlwqAgQUNQSSBzdXBwb3J0LCBJ
IGp1c3QKCmhvcGUgdGhlIG9yaWdpbmFsIGRvd25zdHJlYW0gbWV0aG9kwqAgY2FuIGtlZXAgdG8g
bWFrZSBmdXR1cmUgd29yayBlYXNpZXIuCgo+IEFsc28gaWYgYSBsYXRlciBzZXJpZXMgcmVhbGx5
IG9ubHkgaXMgYWJvdXQgYWRkaW5nIEFDUEkgc3VwcG9ydCwgdGhpcwo+IG1ha2VzIGZvciBlYXNp
ZXIgZGlzY3Vzc2lvbiBidXQgYWxzbyBlYXNpZXIgcmV2aWV3IG9mIGNoYW5nZXMuCj4gVGhlIG5l
dyBWT1AyIGRyaXZlciBpcyBiaWcgZW5vdWdoIGFzIGl0IGlzLgo+Cj4KPiBIZWlrbwo+Cj4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
