Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF4F4C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Feb 2022 07:35:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6kx8C7AmrHoVJz1B92DeBVwqd1qAJEy1VkuOE1Ohu8E=; b=LCqQuG/HsGidl0
	1YLt6i9N5AqjM3bYQBwM3qWyXKPUBKQLmu76oPtOKJ44RztC71qvVt+e6c0ZL0OBZU3TDhzyE5MCS
	kx0uzjmXJzV9821ymWTO2F5kI7UajuXzBWF0cHF4W7tgZHquUu73YLHXTG0asUAfPUm4fNcjOpv4q
	5q7TpRHuVpExQYehP4xzf6vifUfA7JvPearju76njo4ELRvzB9dWm40E9tj3G9Rt4t/+XUR70a01q
	tTcZUxLZ71XnnnAwHVw2Er0NbWT9HLMwsDZu2xqKS8mIokAVC0BPKIpY3kZdVcO6fOVh7VvTSWqtW
	ftH6lg3DeJwUMtbBzNJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nLKHD-00GNNy-2t; Sat, 19 Feb 2022 07:35:31 +0000
Received: from mail-m176231.qiye.163.com ([59.111.176.231])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nLKGz-00GNJF-NG; Sat, 19 Feb 2022 07:35:19 +0000
Received: from [172.16.12.141] (unknown [58.22.7.114])
 by mail-m176231.qiye.163.com (Hmail) with ESMTPA id DF1B76C00F6;
 Sat, 19 Feb 2022 15:35:12 +0800 (CST)
Message-ID: <8a386dbf-645b-8054-368b-535ded778d71@rock-chips.com>
Date: Sat, 19 Feb 2022 15:35:12 +0800
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
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20220218080024.GU18637@pengutronix.de>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUhPN1dZLVlBSVdZDwkaFQgSH1lBWRofSxlWHh8fS0gdH01JHh
 lLVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWVVLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PCI6KTo*Vj5LKAgKDDo0TgkR
 Qh4wCgJVSlVKTU9OSU5NSkpIT01CVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
 WUFZTkNVSUlVTFVKSk9ZV1kIAVlBTklNQjcG
X-HM-Tid: 0a7f10e7fc2fd9a9kuwsdf1b76c00f6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220218_233517_976959_6AB42265 
X-CRM114-Status: GOOD (  20.98  )
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

SGkgU2FzY2hhOgoKT24gMi8xOC8yMiAxNjowMCwgU2FzY2hhIEhhdWVyIHdyb3RlOgo+IE9uIEZy
aSwgRmViIDE4LCAyMDIyIGF0IDExOjUwOjMyQU0gKzA4MDAsIEFuZHkgWWFuIHdyb3RlOgo+PiBI
aSBTYXNjaGE6Cj4+Cj4+IE9uIDIvMTcvMjIgMjI6MDYsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+
Pj4gQW0gRG9ubmVyc3RhZywgMTcuIEZlYnJ1YXIgMjAyMiwgMTQ6NTg6MjMgQ0VUIHNjaHJpZWIg
U2FzY2hhIEhhdWVyOgo+Pj4+IEhpIEFuZHksCj4+Pj4KPj4+PiBQbGVhc2UgdHJpbSB0aGUgY29u
dGV4dCBpbiB5b3VyIGFuc3dlcnMgdG8gdGhlIHJlbGV2YW50IHBhcnRzLCBpdCBtYWtlcwo+Pj4+
IGl0IGVhc2llciB0byBmaW5kIHRoZSB0aGluZ3MgeW91IHNhaWQuCj4+Pj4KPj4+PiBPbiBUaHUs
IEZlYiAxNywgMjAyMiBhdCAwODowMDoxMVBNICswODAwLCBBbmR5IFlhbiB3cm90ZToKPj4+Pj4g
SGkgU2FzY2hhOgo+Pj4+Pgo+Pj4+Pj4gKwo+Pj4+Pj4gKwlkcm1fZm9yX2VhY2hfZW5jb2Rlcl9t
YXNrKGVuY29kZXIsIGNydGMtPmRldiwgY3J0Y19zdGF0ZS0+ZW5jb2Rlcl9tYXNrKSB7Cj4+Pj4+
PiArCQlzdHJ1Y3Qgcm9ja2NoaXBfZW5jb2RlciAqcmtlbmNvZGVyID0gdG9fcm9ja2NoaXBfZW5j
b2RlcihlbmNvZGVyKTsKPj4+Pj4+ICsJCXN0cnVjdCBkZXZpY2Vfbm9kZSAqbm9kZSwgKnBhcmVu
dDsKPj4+Pj4+ICsKPj4+Pj4+ICsJCXBhcmVudCA9IG9mX2dldF9wYXJlbnQocmtlbmNvZGVyLT5w
b3J0KTsKPj4+Pj4+ICsKPj4+Pj4+ICsJCWZvcl9lYWNoX2VuZHBvaW50X29mX25vZGUocGFyZW50
LCBub2RlKSB7Cj4+Pj4+IElzIHRoZXJlIGFueSBodXJ0IGRpcmVjdGx5IHVzZSBvdXIgZG93bnN0
cmVhbSB2ZW5kb3Iga2VybmVsIG1ldGhvZCBoZXJlOiB1c2UKPj4+Pj4gdmNzdGF0ZS0+b3V0cHV0
X2lmIHNldCBieSBlbmNvZGVyIGRyaXZlciB0byBnZXQgd2hpY2ggaW50ZXJmYWNlIHdlIHNob3Vs
ZAo+Pj4+PiBlbmFibGUgaGVyZT8KPj4+PiBUaGVyZSBpcyBubyB2Y3N0YXRlLT5vdXRwdXRfaWYg
aW4gbWFpbmxpbmUgY3VycmVudGx5LiBPaywgd2UgY291bGQgYWRkCj4+Pj4gdGhhdC4gVGhlIG90
aGVyIHRoaW5nIGlzIHRoYXQgdGhlcmUgYXJlIG11bHRpcGxlIEhETUkgaW50ZXJmYWNlcyBhbmQK
Pj4+PiB0aGUgaWQgb2YgdGhlIEhETUkgZW5jb2RlciBpcyBlbmNvZGVkIGludG8gb3V0cHV0X2lm
LiBEb3duc3RyZWFtIGtlcm5lbAo+Pj4+IGFkZHMgT0YgYWxpYXNlcyB0byB0aGUgSERNSSBwb3J0
cy4gSSBkaWRuJ3Qgd2FudCB0byBnbyB0aGF0IHJvdXRlCj4+Pj4gYmVjYXVzZSBpdCBkb2Vzbid0
IHNlZW0gdG8gYmUgdmVyeSBlbGVnYW50IHRvIG1lLgo+PiBhbGlhc2VzIGlzIGEgdmVyeSBjb21t
IHN0cmF0ZWd5IGluIGRldmljZSB0cmVlIHdvcmxkLgo+IFllcywgYnV0IG5vdCBmb3IgcmV0cmll
dmluZyBiaXQgb2Zmc2V0cyBpbnRvIHJlZ2lzdGVycy4gTm9ybWFsbHkgYWxpYXNlcwo+IGNhbiBi
ZSBjaGFuZ2VkIGF0IGJvYXJkIGxldmVsIHdpdGhvdXQgY29uZnVzaW5nIGRyaXZlcnMuCj4KPj4g
QW5kIHlvdXIgbWV0aG9kIGFsc28KPj4gYWRkIG5lZWQgYWRkaXRpb25hbCBkdCBiaW5kcyB0byBk
ZWZpbmUgUkszNTY4X1ZPUDJfRVBfeHh4Cj4+Pj4+IFlvdSBtZXRob2QgaXMgb2sgd2l0aCBkZXZp
Y2UgdHJlZSwgIGJ1dCBpdCB0aWVkIHVwIHRoaXMgZHJpdmVyIHRvIGRldmljZQo+Pj4+PiB0cmVl
LCB3ZSBhcmUgbm93IHRyaW5nIHRvIGV4dGVuZCB2b3AyIGRyaXZlciB3b3JrIHdpdGggQUNQSSwg
c28gd2UgaG9wZSB0aGlzCj4+Pj4+IGRyaXZlciBjYW4gYmUgbXVjaCBtb3JlIGZsZXhpYmxlLgo+
Pj4+IFRoZSBjdXJyZW50IHJvY2tjaGlwIGRybSBkcml2ZXIgc2VlbXMgdG8gYmUgcHJldHR5IG11
Y2ggdGllZCB0byBkZXZpY2UKPj4+PiB0cmVlLiBUaGVyZSBhcmUgcHJvYmFibHkgbWFueSBvdGhl
ciBwbGFjZXMgdGhhdCBuZWVkIHBhcmFsbGVsIHBhdGhzIGZvcgo+Pj4+IEFDUEkgc3VwcG9ydCwg
SSB0aGluayB3ZSBjYW4gZGVsYXkgdGhpcyBwYXJ0aWN1bGFyIHBhcnQgdW50aWwgd2Ugc2VlIHRo
ZQo+Pj4+IHdob2xlIHBpY3R1cmUuIEluIHRoZSBlbmQgd2UgY2FuIHN0aWxsIHJldHJpZXZlIHRo
ZSBvdXRwdXRfaWYKPj4+PiBpbmZvcm1hdGlvbiBkaWZmZXJlbnRseSB3aXRoIEFDUEkgd2hpbGUg
c3RpbGwgcmV0cmlldmluZyB0aGUgaW5mb3JtYXRpb24KPj4+PiBmcm9tIHRoZSBkZXZpY2UgdHJl
ZSB0aGUgd2F5IHdlIGFyZSBkb2luZyBjdXJyZW50bHkuCj4+IFRoZSBjdXJyZW50IGRyaXZlciBv
bmx5IHJlZmVyZW5jZSBkZXZpY2UgdGhlZSBhdCBkcml2ZXIgaW5pdGlhbCwgd2Ugbm90IHdyYXAK
Pj4KPj4gZGV2aWNlIHRyZWUgcmVsYXRlZCB0aGluZ3MgaW4gb3RoZXIgcGFydHMsIHNvIGlmIHdl
IGV4dGVuZCBpdCB0byBzdXBwb3J0Cj4+IEFDUEksCj4+Cj4+IHdlIGp1c3QgbmVlZCBtb2RpZnkg
dGhlIGluaXRpYWwgY29kZSwgdGhpcyBtYWtlIHRoaW5ncyBlYXNpZXIuCj4gVGhlIGRldmljZSB0
cmVlIHBhcnNpbmcgY291bGQgYmUgbW92ZWQgb3V0IG9mIHZvcDJfY3J0Y19hdG9taWNfZW5hYmxl
KCkKPiBpbnRvIHNvbWUgaW5pdGlhbGlzYXRpb24gcGF0aC4gSW4gdGhlIGVuZCBpdCdzIHN0YXRp
YyBpbmZvcm1hdGlvbiwKPiB0aGVyZSdzIG5vIG5lZWQgdG8gZG8gaXQgcmVwZWF0ZWRseSBpbiBh
dG9taWNfZW5hYmxlLgoKVGhpcyBjb3VsZCBiZSBvbmUgc29sdXRpb24sIHRoZSByZXBlYXRlZGx5
IHBhcnNpbmcgZGV2aWNlIHRyZWUgaW4gCmF0b21pY19lbmFibGUgaXMgYWxzbyBteSBjb25jZXJu
LgoKSW4gYWRkaXRpb24sIHRoZXJlIGFyZSAyIEhETUksIDIgZURQLCAyIE1JUEkgb24gdGhlIGNv
bWluZyByazM1ODgsIHNvIAppdCdzIGJldHRlciB0byBjb25zaWRlciBnaXZlIHBvc2l0aW9uCgpm
b3IgSERNSTEsIEVEUDEsIGluwqAgaW5jbHVkZS9kdC1iaW5kaW5ncy9zb2Mvcm9ja2NoaXAsdm9w
Mi5oCgo+Cj4gU2FzY2hhCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
