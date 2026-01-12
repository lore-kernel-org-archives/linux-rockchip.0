Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD8E2D25030
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jan 2026 01:33:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=79uTQFgBV79OsQcb+134jmlrTpymrORTXyCOKXlkPlo=; b=wPz8z5FxtF0eqg
	wO0AtEqbCu1P0w2oyLM+wEeuoATnAXRwNlr+fmilcMnjJ+54vV9yC/ksXTCj+6E6lyhhCTpBuGWcY
	7SE0Kx234iOvNT062ZDIvwzKLKuqJxLaDpdbG3098HiBJAGLrDQDiiJYPL8PJ/fUtl4m6cfbGASJT
	xmvh+nSJ+v0fUYyYedK/d3+hQ4ipJDBPMYmvicl/ECfWNX2InePfYkQ08RmxoiIQoWRt2/BxBCjZu
	G1sqiFtHn2QSZmOBceeUg4L0IY/6BZI5TVV0CfCv91eklCciRpVHQabxPKpXhPP76Y+3dtBNjYxoH
	UJ8ioinvBHDK9AkzK9Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vf6nl-00000004dJt-34b1;
	Mon, 12 Jan 2026 01:33:01 +0000
Received: from mail-m49237.qiye.163.com ([45.254.49.237])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vf6ng-00000004dJ6-3pzv;
	Mon, 12 Jan 2026 01:33:00 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 303f0cc91;
	Mon, 12 Jan 2026 09:32:50 +0800 (GMT+08:00)
Message-ID: <67ccb8f6-f9bd-4266-b79a-b688bd6d030b@rock-chips.com>
Date: Mon, 12 Jan 2026 09:32:49 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-rockchip@lists.infradead.org,
 linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, heiko@sntech.de, ulf.hansson@linaro.org
Subject: Re: [PATCH v1 0/3] mmc: dw_mmc-rockchip: Add stability quirk for
 NanoPi R76S
To: Marco Schirrmeister <mschirrmeister@gmail.com>
References: <20260110010715.1610159-1-mschirrmeister@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20260110010715.1610159-1-mschirrmeister@gmail.com>
X-HM-Tid: 0a9bafd59c4509cckunm6b904c3425d9cd
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0tKT1ZCGRgYH0hLHk0aT0NWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=PUZD15TFeHoo8gN2FFcDZ0avYlYQF5N7lfZAwZgerD57WM3N5NA8XTpdqiJRjcb7D8eXVbJPTrA+FaewvgoG9ZQn0n2ULA0ibPRhxksTlN7ilOpGtu4kLuykrxjWWvQPZNVq5SBZ0bWdp0ftlx2a+0N++WEODvAFbfRU+wKrCQ0=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=/coguvbuQJ6Lc8S2lu4ggKAcKXnFx/f9Jnk8AsJys3k=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260111_173259_077571_FC8E678E 
X-CRM114-Status: GOOD (  16.47  )
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

5ZyoIDIwMjYvMDEvMTAg5pif5pyf5YWtIDk6MDcsIE1hcmNvIFNjaGlycm1laXN0ZXIg5YaZ6YGT
Ogo+IFRoaXMgc2VyaWVzIGFkZHJlc3NlcyBhIG1pY3JvU0Qgc3RhYmlsaXR5IGlzc3VlIG9uIHRo
ZSBGcmllbmRseUVsZWMKPiBOYW5vUGkgUjc2UyAoUkszNTc2KS4gVGhlIGJvYXJkIGN1cnJlbnRs
eSBzdWZmZXJzIGZyb20gYSA0MDBrSHoKPiByZXR1bmluZyBsb29wIHdoZW4gdGhlIGNvbnRyb2xs
ZXIgYXR0ZW1wdHMgdG8gZW50ZXIgcnVudGltZS1zdXNwZW5kCj4gZHVyaW5nIGlkbGUgcGVyaW9k
cy4KPiAKPiBFdmlkZW5jZSBvZiB0aGUgZmFpbHVyZSBpbiBkbWVzZzoKPiBbRnJpIEphbiAgMiAw
MToyODowMiAyMDI2XSBtbWNfaG9zdCBtbWMxOiBCdXMgc3BlZWQgKHNsb3QgMCkgPSA0MDAwMDBI
ego+IFtGcmkgSmFuICAyIDAxOjI4OjAzIDIwMjZdIG1tY19ob3N0IG1tYzE6IEJ1cyBzcGVlZCAo
c2xvdCAwKSA9IDE5ODAwMDAwMEh6Cj4gW0ZyaSBKYW4gIDIgMDE6Mjg6MDMgMjAyNl0gZHdtbWNf
cm9ja2NoaXAgMmEzMTAwMDAubW1jOiBTdWNjZXNzZnVsbHkgdHVuZWQgcGhhc2UgdG8gMjMzCj4g
W0ZyaSBKYW4gIDIgMDE6Mjg6MDQgMjAyNl0gbW1jX2hvc3QgbW1jMTogQnVzIHNwZWVkIChzbG90
IDApID0gNDAwMDAwSHoKPiAKCkRvZXMgdGhpcyBwcm9ibGVtIGhhcHBlbiB3aXRoIGFsbCBtaWNy
b1NEcyBvciBqdXN0ICphKiBtaWNyb1NEIHBlcgp5b3VyIGRlc2NyaXB0aW9uPwpIYXZlIHlvdSBl
dmVyIHRyaWVkIHRvIGRpc2FibGUgU0RSMTA0IHN1cHBvcnQ/Cgo+IFRlc3RpbmcgY29uZmlybWVk
IHRoYXQgdGhlIGlzc3VlIGNhbiBiZSBtYW51YWxseSBhZGRyZXNzZWQgYnkKPiBkaXNhYmxpbmcg
cnVudGltZSBQTSB2aWEgc3lzZnM6Cj4gZWNobyBvbiA+IC9zeXMvZGV2aWNlcy9wbGF0Zm9ybS9z
b2MvMmEzMTAwMDAubW1jL3Bvd2VyL2NvbnRyb2wKPiAKPiBJIGV4cGVyaW1lbnRlZCB3aXRoIHZh
cmlvdXMgY2hhbmdlcyBpbiB0aGUgRGV2aWNlIFRyZWUsIGluY2x1ZGluZwo+IGxvd2VyaW5nIHRo
ZSBidXMgZnJlcXVlbmN5IGFuZCBhdHRlbXB0aW5nIHRvIGtlZXAgdGhlIHBvd2VyIGRvbWFpbnMK
PiBhY3RpdmUsIGJ1dCBub3RoaW5nIHN0b3BwZWQgdGhlIHJldHVuaW5nIGxvb3AuCj4gVGhlIGlz
c3VlIG9ubHkgd2VudCBhd2F5IHdoZW4gSSBmb3JjZWQgdGhlIGNvbnRyb2xsZXIgdG8gc3RheSBh
Y3RpdmUKPiBieSBkaXNhYmxpbmcgdGhlIHJ1bnRpbWUgcG93ZXIgbWFuYWdlbWVudC4KPiAKPiBU
aGlzIHF1aXJrIGlzIHRoZSBvbmx5IHdheSBJIGhhdmUgZm91bmQgdG8ga2VlcCB0aGUgU0RSMTA0
IGxpbmsgZnJvbQo+IGNyYXNoaW5nIG9uIHRoZSBOYW5vUGkgUjc2UywgSSBhbSBvcGVuIHRvIHN1
Z2dlc3Rpb25zIGlmIHRoZXJlIGlzCj4gYSBiZXR0ZXIgd2F5IHRvIGhhbmRsZSB0aGlzIGluIHRo
ZSBkcml2ZXIgb3IgdGhlIERUUy4KPiAKPiBNYXJjbyBTY2hpcnJtZWlzdGVyICgzKToKPiAgICBk
dC1iaW5kaW5nczogbW1jOiByb2NrY2hpcC1kdy1tc2hjOiBhZGQgcm9ja2NoaXAsZGlzYWJsZS1y
dW50aW1lLXBtCj4gICAgbW1jOiBob3N0OiBkd19tbWMtcm9ja2NoaXA6IGFkZCByb2NrY2hpcCxk
aXNhYmxlLXJ1bnRpbWUtcG0gcXVpcmsKPiAgICBhcm02NDogZHRzOiByb2NrY2hpcDogYWRkIHN0
YWJpbGl0eSBxdWlyayB0byBOYW5vUGkgUjc2Uwo+IAo+ICAgLi4uL2JpbmRpbmdzL21tYy9yb2Nr
Y2hpcC1kdy1tc2hjLnlhbWwgICAgICAgIHwgIDggKysrKysrCj4gICAuLi4vYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTc2LW5hbm9waS1yNzZzLmR0cyAgfCAgMSArCj4gICBkcml2ZXJzL21tYy9ob3N0
L2R3X21tYy1yb2NrY2hpcC5jICAgICAgICAgICAgfCAyNSArKysrKysrKysrKysrKysrLS0tCj4g
ICAzIGZpbGVzIGNoYW5nZWQsIDMxIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
