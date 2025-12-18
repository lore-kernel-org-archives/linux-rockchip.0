Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BE72D68BCA
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Dec 2025 00:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7T4NOQbA3NnpaTBPddxQVR4rWK6RAoqztccYcPaatvI=; b=Y5ZVLK9z2QI0wS
	eosMOXGSyzN0MAV+OZiSp3yco4QlZ+PFXfmHErQTClTGH7T6p6iHyQYkvKiyNU83CAyapjZbZOix+
	gyhFS0Mpq/oTh+EfZs8lISeAKTxJhIjqCc0QT+3I+PQncMetDEr/rr+wi/8wi9y4QsrAx0XyZJQhZ
	mHj6zvAjdOPmIarBiddPu8e+fHKBXOP+DOIOw6RENqqR+zJrk2QvUrLyT03mtOCMUAEsukCheah0n
	RZrPXhBhqUEoI92ubzF0M8C7Zdpj8s6C3/riRR1Z3X7Bm7Mg3JRuXSb9NHfFXIqsSWHWCxQeQ9qkw
	YHUID+iZEJ6UIbwJ4uWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vW27q-00000007cOy-36Mk;
	Thu, 18 Dec 2025 00:44:14 +0000
Received: from mail-m3279.qiye.163.com ([220.197.32.79])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vW27m-00000007cNP-1E1p
	for linux-rockchip@lists.infradead.org;
	Thu, 18 Dec 2025 00:44:12 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2da80567b;
	Thu, 18 Dec 2025 08:43:58 +0800 (GMT+08:00)
Message-ID: <5be901ca-ff3c-4e42-b320-82b74c2290c4@rock-chips.com>
Date: Thu, 18 Dec 2025 08:43:57 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: add dma-coherent for pcie and gmac
 of RK3576
To: Heiko Stuebner <heiko@sntech.de>
References: <1764313762-78063-1-git-send-email-shawn.lin@rock-chips.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <1764313762-78063-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9b2ee9e06709cckunm78879dbe4ef4de
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0ofQ1YdGk9NSkpIH01LSENWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=Rn0HwTyxbCL28ez/bk2w4zSPzt2YKgCOu7VedixjHRf0IaoeNiKkJkqOAYSq5w0ADnqh2WoRM0nENmRB0ySTZ42iP6htsPPwyoR86b9Xs//ibSYc6wDYKLdu1QajiUUV0QsmK+cm+pGoAeqawqBy8yVGTjwV1ayNYmc6RQja8vY=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=I+7u+qlJshLbGwe9vhEtrq08WMmiW1b9RxlhnLKYlk0=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251217_164410_858616_4FA1F9E8 
X-CRM114-Status: GOOD (  18.11  )
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

5ZyoIDIwMjUvMTEvMjgg5pif5pyf5LqUIDE1OjA5LCBTaGF3biBMaW4g5YaZ6YGTOgo+IFRoZSBS
SzM1NzYgU29DIGVtcGxveXMgQVJNIENDSSBmb3IgbWFpbnRhaW5pbmcgY2FjaGUgY29oZXJlbmN5
Cj4gYmV0d2VlbiB0aGUgQ1BVIGNsdXN0ZXIgYW5kIGhpZ2gtc3BlZWQgcGVyaXBoZXJhbHMgaW5j
bHVkaW5nIFVTQjMsCj4gU0FUQSwgR01BQywgYW5kIFBDSWUgY29udHJvbGxlcnMuIFdoaWxlIHRo
ZSBVU0IzIGFuZCBTQVRBIGNvbnRyb2xsZXJzCj4gd2VyZSBjb3JyZWN0bHkgbWFya2VkIGFzIGRt
YS1jb2hlcmVudCwgdGhlIEdNQUMgYW5kIFBDSWUgbm9kZXMgd2VyZQo+IG92ZXJsb29rZWQuCj4g
Cj4gV2l0aG91dCBkbWEtY29oZXJlbnQsIHRoZSBrZXJuZWwgZmFsbHMgYmFjayB0byBzb2Z0d2Fy
ZSBjYWNoZSBtYWludGVuYW5jZQo+IGZvciBETUEgb3BlcmF0aW9ucywgcmVxdWlyaW5nIGV4cGxp
Y2l0IGNhY2hlIGZsdXNoaW5nIGFuZCBpbnZhbGlkYXRpbmcuCj4gVGhpcyBhZGRzIHNpZ25pZmlj
YW50IG92ZXJoZWFkIHRoYXQgZGVncmFkZXMgcGVyZm9ybWFuY2UgaW4gaGlnaC10aHJvdWdocHV0
Cj4gd29ya2xvYWRzLgo+IAo+IEFkZCB0aGUgbWlzc2luZyBkbWEtY29oZXJlbnQgcHJvcGVydGll
cyB0byBlbmFibGUgaGFyZHdhcmUgY29oZXJlbmN5IGFuZAo+IGF2b2lkIHVubmVjZXNzYXJ5IHNv
ZnR3YXJlIGNhY2hlIG1hbmFnZW1lbnQgb3ZlcmhlYWQuCj4gCgpHZW50bGUgcGluZy4uLiA6KQoK
PiBTaWduZWQtb2ZmLWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4KPiAt
LS0KPiBIaSBIZWlrbywKPiAKPiBUaGlzIHBhdGNoIG5lZWRzIFUtYm9vdCBzdXBwb3J0IHdoaWNo
IHdhcyBhZGRlZCBvbiBBcHIgMTUgMjAyNSBhdCBsZWFzdC4KPiBodHRwczovL2VsaXhpci5ib290
bGluLmNvbS91LWJvb3QvdjIwMjUuMTAvc291cmNlL2FyY2gvYXJtL21hY2gtcm9ja2NoaXAvcmsz
NTc2L3JrMzU3Ni5jI0wxNTYKPiAKPiBHaXZlbiB0aGF0IHdoZW4gdGhlIHRpbWUgVVNCMyBhbmQg
U0FUQSB3ZXJlIGFkZGVkLCB0aGV5IHNldCBkbWEtY29oZXJlbnQgYnV0IHdpdGhvdXQgYQo+IEND
SSBlbmFibGVkIFUtYm9vdCwgdGhleSB3ZXJlIGluIGZhY3QgYnJva2VuIGR1ZSB0byBubyBDQ0kg
c3VwcG9ydCBhbmQgbm8gc29mdHdhcmUgY2FjaGUKPiBtYWludGVuYWNlIHdoZW4gc2VlaW5nIGRt
YS1jb2hlcmVudC4gQnV0IHRoZXJlIGlzIG5vIGFueW9uZSBjb21wbGFpbmVkIGFib3V0IHRoZXMs
IHNvCj4gaXQgc2hvdWxkIGJlIG9rIHRoYXQgd2UgZG9uJ3QgbmVlZCB0byBib3RoZXIgb3Vyc2Vs
dmVzLgo+IAo+ICAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NzYuZHRzaSB8IDQg
KysrKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQg
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni5kdHNpIGIvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1NzYuZHRzaQo+IGluZGV4IGE4NmZjNmI0Li4zM2QyZTUyMSAx
MDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni5kdHNpCj4g
KysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NzYuZHRzaQo+IEBAIC03MDks
NiArNzA5LDcgQEAKPiAgIAkJCXJlc2V0LW5hbWVzID0gInB3ciIsICJwaXBlIjsKPiAgIAkJCSNh
ZGRyZXNzLWNlbGxzID0gPDM+Owo+ICAgCQkJI3NpemUtY2VsbHMgPSA8Mj47Cj4gKwkJCWRtYS1j
b2hlcmVudDsKPiAgIAkJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gICAKPiAgIAkJCXBjaWUwX2lu
dGM6IGxlZ2FjeS1pbnRlcnJ1cHQtY29udHJvbGxlciB7Cj4gQEAgLTc2Myw2ICs3NjQsNyBAQAo+
ICAgCQkJcmVzZXQtbmFtZXMgPSAicHdyIiwgInBpcGUiOwo+ICAgCQkJI2FkZHJlc3MtY2VsbHMg
PSA8Mz47Cj4gICAJCQkjc2l6ZS1jZWxscyA9IDwyPjsKPiArCQkJZG1hLWNvaGVyZW50Owo+ICAg
CQkJc3RhdHVzID0gImRpc2FibGVkIjsKPiAgIAo+ICAgCQkJcGNpZTFfaW50YzogbGVnYWN5LWlu
dGVycnVwdC1jb250cm9sbGVyIHsKPiBAQCAtMTcwOSw2ICsxNzExLDcgQEAKPiAgIAkJCXNucHMs
bXRsLXJ4LWNvbmZpZyA9IDwmZ21hYzBfbXRsX3J4X3NldHVwPjsKPiAgIAkJCXNucHMsbXRsLXR4
LWNvbmZpZyA9IDwmZ21hYzBfbXRsX3R4X3NldHVwPjsKPiAgIAkJCXNucHMsdHNvOwo+ICsJCQlk
bWEtY29oZXJlbnQ7Cj4gICAJCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ICAgCj4gICAJCQltZGlv
MDogbWRpbyB7Cj4gQEAgLTE3NTYsNiArMTc1OSw3IEBACj4gICAJCQlzbnBzLG10bC1yeC1jb25m
aWcgPSA8JmdtYWMxX210bF9yeF9zZXR1cD47Cj4gICAJCQlzbnBzLG10bC10eC1jb25maWcgPSA8
JmdtYWMxX210bF90eF9zZXR1cD47Cj4gICAJCQlzbnBzLHRzbzsKPiArCQkJZG1hLWNvaGVyZW50
Owo+ICAgCQkJc3RhdHVzID0gImRpc2FibGVkIjsKPiAgIAo+ICAgCQkJbWRpbzE6IG1kaW8gewoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
