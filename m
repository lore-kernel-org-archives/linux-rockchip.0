Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5DA210F92EC
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Apr 2026 01:18:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qtSTFzLGnFF0kVywpCt+836d8ZqobJ/+57V013xX6Rs=; b=YuGBltp1bgFTII
	o7q5tG44/fHioQrRzthaRVSc5KPLlqKppj4VoAYc7FUYTlZmiL2nynF3neADXGkRHva08iwGupVXK
	5SM6OR1rRQS7y1sYJnxwx73q5jrct9E90lWQGLwtvuXauPcEL6FqEcmlQuUlOJAZlHt4eA/F0qlzW
	ohkL7Er2qYOpn4ZHtY50a0/3tjIhK4qDYxYja12MB05i5NT4VWgAIPO4TTljBdUSa0hKbyuCzjH1J
	vqq4R1G33N9alaq7/R/9l/EpC4hCtYWtK4D5JcYSInvCiOSS8dOQ4Lsz06rX0XyfVU+eXC35DA0m6
	Xnj4ZTY388wmHNLesF1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7kDm-0000000Dmip-3e3a;
	Wed, 01 Apr 2026 01:18:14 +0000
Received: from mail-m32107.qiye.163.com ([220.197.32.107])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7kDg-0000000Dmht-43Wl;
	Wed, 01 Apr 2026 01:18:10 +0000
Received: from [172.16.12.17] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 39100b138;
	Wed, 1 Apr 2026 09:17:48 +0800 (GMT+08:00)
Message-ID: <5c8732a3-6cc9-5d02-f56b-fc7ba29c7ce0@rock-chips.com>
Date: Wed, 1 Apr 2026 09:17:45 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Cc: shawn.lin@rock-chips.com, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, ulf.hansson@linaro.org, heiko@sntech.de
Subject: Re: [PATCH 1/2] pmdomain/rockchip: skip QoS operations for idle-only
 domains
To: Daniel Bozeman <daniel@orb.net>
References: <20260331180223.1682283-1-daniel@orb.net>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20260331180223.1682283-1-daniel@orb.net>
X-HM-Tid: 0a9d469e3dd509cckunmbd42e9a8f80c51
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGU5OTFYeQ0pNTkpCH08dS05WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=NoDHYN/y933X4usXs+vkbBkTesgf6cA+1duQalmTmx8Gn1TlLa2iKxI9gxB2vzmj/EpBNVcqd2LwvQdVxfUI7IitMgL0RgSAQD273Zo83qkzWNQeo8Zr2LzW2FU09PAtpMH7/oXcg/HAIEyH9Ioq942sWk7KYCzlTLjwk6dyDZA=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=84tddcSLoInqnr4qLcDW/JZ/jewF+U0Wxnidmb7LaMs=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260331_181809_553053_A2FA462F 
X-CRM114-Status: GOOD (  17.68  )
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

SGkgRGFuaWVsLAoK5ZyoIDIwMjYvMDQvMDEg5pif5pyf5LiJIDI6MDIsIERhbmllbCBCb3plbWFu
IOWGmemBkzoKPiBJZGxlLW9ubHkgcG93ZXIgZG9tYWlucyAocHdyX21hc2sgPT0gMCkgY2Fubm90
IGFjdHVhbGx5IGJlIHBvd2VyZWQKPiBvbiBvciBvZmYuIHJvY2tjaGlwX2RvX3BtdV9zZXRfcG93
ZXJfZG9tYWluKCkgYWxyZWFkeSByZXR1cm5zIGVhcmx5Cj4gZm9yIHRoZXNlIGRvbWFpbnMsIGJ1
dCByb2NrY2hpcF9wZF9wb3dlcigpIHN0aWxsIGF0dGVtcHRzIFFvUyBzYXZlCj4gYW5kIGlkbGUg
cmVxdWVzdHMgYmVmb3JlIHJlYWNoaW5nIHRoYXQgY2hlY2suCj4gCj4gT24gUkszNTI4LCB0aGUg
aWRsZS1vbmx5IGRvbWFpbnMgKFBEX1JLVkVOQywgUERfVk8sIFBEX1ZQVSkgaGF2ZQo+IFFvUyBy
ZWdpc3RlcnMgdGhhdCBtYXkgYmUgaW5hY2Nlc3NpYmxlIHdoZW4gdGhlIGdlbmVyaWMgcG93ZXIg
ZG9tYWluCj4gZnJhbWV3b3JrIGF0dGVtcHRzIHRvIHBvd2VyIHRoZW0gb2ZmLCBsZWFkaW5nIHRv
IHN5bmNocm9ub3VzIGV4dGVybmFsCj4gYWJvcnRzLgo+IAoKSXMgaXQgdGhlIHJlYWwgYWJvcnQg
aGFwcGVuZWQgb24geW91ciBSSzM1MjggYm9hcmQ/IEkgYW0gdHJ5aW5nIHRvCnVuZGVyc3RhbmQg
dGhlIHByb2JsZW0gZmlyc3QuIEV2ZW4gd2l0aCBpZGxlLW9ubHkgcG93ZXJkb21haW4sIHRoZSBj
b2RlCmFsc28gc2F2ZSB0aGUgUW9TIHJlZ2lzdGVycyBiZWZvcmUgc2V0IGlkbGUgdG8gdGhlIHBv
d2VyZG9tYWluLCBzbwpob3cgdGhlIFFvUyByZWdpc3RlcnMgYmVjb21lIGluYWNjZXNzaWJsZT8K
Cj4gUmV0dXJuIGVhcmx5IGZyb20gcm9ja2NoaXBfcGRfcG93ZXIoKSB3aGVuIHB3cl9tYXNrIGlz
IHplcm8sIG1hdGNoaW5nCj4gdGhlIGV4aXN0aW5nIGd1YXJkIGluIHJvY2tjaGlwX2RvX3BtdV9z
ZXRfcG93ZXJfZG9tYWluKCkuCj4gCj4gRml4ZXM6IDFmZTc2N2E1NmMzMiAoInNvYzogcm9ja2No
aXA6IHBvd2VyLWRvbWFpbjogYWxsb3cgZG9tYWlucyBvbmx5IGhhbmRsaW5nIGlkbGUgcmVxdWVz
dHMiKQo+IFNpZ25lZC1vZmYtYnk6IERhbmllbCBCb3plbWFuIDxkYW5pZWxAb3JiLm5ldD4KPiAt
LS0KPiAgIGRyaXZlcnMvcG1kb21haW4vcm9ja2NoaXAvcG0tZG9tYWlucy5jIHwgMyArKysKPiAg
IDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9wbWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5zLmMgYi9kcml2ZXJzL3BtZG9tYWluL3JvY2tj
aGlwL3BtLWRvbWFpbnMuYwo+IGluZGV4IDQ5MGJiYjFkMWQuLjJlZWNhZTA5MmEgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9wbWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5zLmMKPiArKysgYi9kcml2
ZXJzL3BtZG9tYWluL3JvY2tjaGlwL3BtLWRvbWFpbnMuYwo+IEBAIC02NDAsNiArNjQwLDkgQEAg
c3RhdGljIGludCByb2NrY2hpcF9wZF9wb3dlcihzdHJ1Y3Qgcm9ja2NoaXBfcG1fZG9tYWluICpw
ZCwgYm9vbCBwb3dlcl9vbikKPiAgIAlpZiAocm9ja2NoaXBfcG11X2RvbWFpbl9pc19vbihwZCkg
PT0gcG93ZXJfb24pCj4gICAJCXJldHVybiAwOwo+ICAgCj4gKwlpZiAocGQtPmluZm8tPnB3cl9t
YXNrID09IDApCj4gKwkJcmV0dXJuIDA7Cj4gKwo+ICAgCXJldCA9IGNsa19idWxrX2VuYWJsZShw
ZC0+bnVtX2Nsa3MsIHBkLT5jbGtzKTsKPiAgIAlpZiAocmV0IDwgMCkgewo+ICAgCQlkZXZfZXJy
KHBtdS0+ZGV2LCAiZmFpbGVkIHRvIGVuYWJsZSBjbG9ja3NcbiIpOwo+IAo+IGJhc2UtY29tbWl0
OiBiYzMzMDY5OTgwMWQzYjRmOTkxMTAzNjU1MTJjYWVkNWFkY2ZhY2EzCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
