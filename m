Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9FDCE88D66
	for <linux-rockchip@archiver.kernel.org>; Sat,  4 Apr 2026 11:41:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/8xs+vxyf6CQ1Qp3gJT9LJtQeWhY0Xuj22AcEvm8oyk=; b=wD8hyyTCkSzTlH
	oaa632RFnNT6ef8DAwBlsJmLZbmQEQ7vqcMcFMRh/lBa73lC5l1O8JnWlBExZi4nZoUoVuBCy4Zqf
	yq3DdOvzyE38o2ixWa/HjF6RfAmsFO5JOxzEdmr8lOMQCyWFAoqBdM6yqmtRLHMWfCVHraPtUbpQo
	W8jjolN0ho9JhEiwx2iCkud/lLbeWcqkyLGau/3ECq9mSzV1N+hLMyo9ccM6gn8ZmrOqa+jM91jNb
	fXLJngQpPA/JF3eSa+is7odBubGtYXxRDWjzbn2q4Oi5DcUGfKjiD2TMVzHqqXdiAMQOT08DEhBQr
	1zaHIqqkZFsfJpUI1wUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8zN4-00000003QYV-1UXE;
	Sat, 04 Apr 2026 11:40:58 +0000
Received: from mail-m3282.qiye.163.com ([220.197.32.82])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8zN0-00000003QXf-3Qqu;
	Sat, 04 Apr 2026 11:40:56 +0000
Received: from [172.16.12.17] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 398ad1038;
	Sat, 4 Apr 2026 19:40:38 +0800 (GMT+08:00)
Message-ID: <f1b9a97a-f1f9-0757-5dc7-33960318be61@rock-chips.com>
Date: Sat, 4 Apr 2026 19:40:36 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Cc: shawn.lin@rock-chips.com
Subject: Re: [PATCH 1/2] pmdomain/rockchip: skip QoS operations for idle-only
 domains
To: Daniel Bozeman <daniel@orb.net>, finley.xiao@rock-chips.com,
 ulf.hansson@linaro.org, heiko@sntech.de, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>
References: <20260331180223.1682283-1-daniel@orb.net>
 <5c8732a3-6cc9-5d02-f56b-fc7ba29c7ce0@rock-chips.com>
 <fbf16b5a-1565-39c9-0d92-33a7a577212f@rock-chips.com>
 <adAwtiaU-32qjRRE@claude-dev>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <adAwtiaU-32qjRRE@claude-dev>
X-HM-Tid: 0a9d584b88b609cckunm47ea691a1661c0
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGU4dHlYaGR4fGB9MTkJCS0xWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=BpidNjhv1rke4/4+Gu342PUGVXa/6ZvmfPqF6dwimxlCX49Zk7Ou2PEcgzRY5t/xEG3n2xQi3VE5psBA0jJqZxyO87ly6dC7+09Y8mqUxVQ63M7CsIJ1GLVrv74fR8aAZSniw6cWqns0zFrRdvv1kpu+R6SjqAfiWKk93DY54Vo=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=ppO08De5fKDNxsOEOVN6crncqIPTkWq/KYv7kgENJ/Q=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260404_044055_374968_85F7C774 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
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

KyBKb25hcwoK5ZyoIDIwMjYvMDQvMDQg5pif5pyf5YWtIDU6MjcsIERhbmllbCBCb3plbWFuIOWG
memBkzoKPiBJIHJhbiBib3RoIHRlc3RzIHlvdSByZXF1ZXN0ZWQ6Cj4gCj4gVGVzdCAxOiBBZGRl
ZCBwcl9lcnIgdG8gcm9ja2NoaXBfcGRfcG93ZXJfb24vb2ZmIHRvIGlkZW50aWZ5Cj4gdGhlIGNy
YXNoaW5nIGRvbWFpbi4gV2l0aCBwYXRjaCAyIG9ubHkgKHNraXAgRVBST0JFX0RFRkVSKSwKPiB0
aGUgY3Jhc2ggb2NjdXJzIG9uIFBEX1ZPOgoKVGhhbmtzIGZvciBmaW5nIHRoZSBQRF9WTywgYW5k
IEknbSBzdGlsbCByZXF1ZXN0aW5nIG1vcmUgZG9jcyBpbnRlcm5hbGx5CnRvIGNoZWNrIHdoYXQn
cyBnb2luZyBvbi4gSSBzZWUgdGhlcmUgYXJlIHNldmVyYWwgcW9zIG5vZGVzIHVuZGVyIFBEX1ZP
LApidXQgSSdtIG5vdCBzdXJlIGlmIHRoZXkgYWxsIGJlbG9uZyB0byBQRF9WTyBhbmQgZXZlbiBu
b3Qgc3VyZSBpZiB0aGVpcgpyZWdpc3RlcnMgYXJlIGRlZmluZSBjb3JyZWN0bHkuCgpQZXJoYXBz
LCBjb3VsZCB5b3UgaGVscCBkaWcgbW9yZSBieSByZW1vdmluZyB0aGUgcW9zIG9uZSBieSBvbmUg
ZnJvbQpQRF9WTyB0byBuYXJyb3cgZG93biB0aGUgYnJva2VuIHFvcz8KCkkgYWxzbyBsb29wIGlu
IEpvbmFzIHdobyBzdWJtaXRlZCB0aGUgY29kZSwgdG8gaGF2ZSBhIGxvb2suKEknbSAgYWxzbwpz
dXJwcmlzZWQgdG8gc2VlIHRoZXJlIGFyZW4ndCBhbnkgUW9zIG5vZGVzIHVuZGVyIFBEX1ZPIGlu
IHZlbmRvcgprZXJuZWwgZm9yIHJlZmVyZW5jZSwgYnV0IHVwc3RyZWFtIGNvZGUgaGFzLi4uKQoK
PiAKPiAgICByb2NrY2hpcF9wZF9wb3dlcl9vZmY6IHZvIHB3cl9tYXNrPTB4MAo+ICAgIEludGVy
bmFsIGVycm9yOiBzeW5jaHJvbm91cyBleHRlcm5hbCBhYm9ydDogMDAwMDAwMDA5NjAwMDAxMAo+
ICAgIFdvcmtxdWV1ZTogcG0gZ2VucGRfcG93ZXJfb2ZmX3dvcmtfZm4KPiAgICBDYWxsIHRyYWNl
Ogo+ICAgICByZWdtYXBfbW1pb19yZWFkMzJsZSsweDgvMHgyMAo+ICAgICBfcmVnbWFwX2J1c19y
ZWdfcmVhZCsweDZjLzB4YWMKPiAgICAgX3JlZ21hcF9yZWFkKzB4NjAvMHhkOAo+ICAgICByZWdt
YXBfcmVhZCsweDRjLzB4N2MKPiAgICAgcm9ja2NoaXBfcG11X3NldF9pZGxlX3JlcXVlc3QuaXNy
YS4wKzB4OTgvMHgxNmMKPiAgICAgcm9ja2NoaXBfcGRfcG93ZXIrMHgxMzAvMHg0OGMKPiAgICAg
cm9ja2NoaXBfcGRfcG93ZXJfb2ZmKzB4MzgvMHg0OAo+ICAgICBnZW5wZF9wb3dlcl9vZmYuaXNy
YS4wKzB4MWYwLzB4MmYwCj4gICAgIGdlbnBkX3Bvd2VyX29mZl93b3JrX2ZuKzB4MzQvMHg1NAo+
IAo+IFRlc3QgMjogU2FtZSBkZWJ1ZyBidWlsZCwgYm9vdGVkIHdpdGggY2xrX2lnbm9yZV91bnVz
ZWQKPiBhZGRlZCB0byBrZXJuZWwgY21kbGluZSB2aWEgVS1Cb290LiBTYW1lIGNyYXNoLCBzYW1l
IGRvbWFpbjoKPiAKPiAgICByb2NrY2hpcF9wZF9wb3dlcl9vZmY6IHZvIHB3cl9tYXNrPTB4MAo+
ICAgIEludGVybmFsIGVycm9yOiBzeW5jaHJvbm91cyBleHRlcm5hbCBhYm9ydDogMDAwMDAwMDA5
NjAwMDAxMAo+ICAgIChpZGVudGljYWwgY2FsbCB0cmFjZSkKPiAKPiBUaGUgY3Jhc2ggb2NjdXJz
IGV2ZW4gd2l0aCBjbGtfaWdub3JlX3VudXNlZC4gVGhlIFFvUwo+IHJlZ2lzdGVycyBmb3IgUERf
Vk8gYXJlIGluYWNjZXNzaWJsZSB3aGVuIGdlbnBkIGF0dGVtcHRzCj4gdG8gcG93ZXIgb2ZmIHRo
aXMgaWRsZS1vbmx5IGRvbWFpbi4KPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
