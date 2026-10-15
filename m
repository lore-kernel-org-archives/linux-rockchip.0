Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46F15CC6B30
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 02:26:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7QP9NThleVkMSdkhs88lr6iWg0zn3TlAwHMbfrwaYBo=; b=D8nfvW51Lb/FO4
	entGDmHeeirnpoSLNAY5AV72VAHUoAaYhB656y9oLs9+2lkUVYMJ8WVtMOCzZfp/2nqp4DBxa1SKy
	6Mhom6PC9JrdadSFWh7eFC4qJ9RavYoBjGM0GFJUJSGmKYY9fqjQrLrK3owak3AXI+Nu/D8dSSb9k
	7/hy4BkKUxgvSkeZZQVPKwT+0VPUwvF5gKRBu9kumvyEKxoWj1BLkqjVLA8Ex+bNLy5aukn1vxoW7
	5jjTDLUdTqEYGh9hfvJAJXXjGjFPML2YcqYx0iQEmh6T3LSxG4jl3yiNOyA/K/Hye8lg4q9qwq6BO
	bvfYKTle6KibojOFJ4Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHBB4-0000000GfDz-2DB8;
	Thu, 15 Oct 2026 02:26:42 +0000
Received: from mail-m12813.netease.com ([103.209.128.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHBB0-0000000GfD2-07SS;
	Thu, 15 Oct 2026 02:26:40 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 5118e404e;
	Thu, 15 Oct 2026 10:26:22 +0800 (GMT+08:00)
Message-ID: <d7db7de5-4972-4dd0-85a3-e310dcabc41e@rock-chips.com>
Date: Thu, 15 Oct 2026 10:26:22 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Diederik de Haas <diederik@cknow-tech.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/9] arm64: dts: rockchip: rk3588s-nanopi: fix sd min/max
 voltage
To: joachim.eastwood@gmail.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
References: <20261014-nanopi-m6-improvements-v1-0-e713f71eb4d3@gmail.com>
 <20261014-nanopi-m6-improvements-v1-1-e713f71eb4d3@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20261014-nanopi-m6-improvements-v1-1-e713f71eb4d3@gmail.com>
X-HM-Tid: 0aa13d61ced903a4kunma3935b973a1b6b
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDT0tIVh8eQkseSBkeGENLGVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=bPSPIGgCYsm60FR/2OenmMqXm/1ZYlWtn9B+4FhIG6oMbhP/OT606vuKuQTk4WTYqL6CWWtX/PtaNWp8DCLWMfhhi+H2zUO7mKKs7753r00EipVTOkj1i63gwwDGKTZwDuaKvc919fok6RGynOEEnLxXa+0ZyIk+RP8ZPi5Yp2I=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=vp2SpKAypkVSfLwmsVtgSuvUILnoRWt5eBLTi3/1asg=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_192638_644752_DC412AFF 
X-CRM114-Status: GOOD (  14.26  )
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

SGkgSm9hY2hpbSwKCuWcqCAyMDI2LzEwLzE1IOaYn+acn+WbmyAwOjMzLCBKb2FjaGltIEVhc3R3
b29kIHZpYSBCNCBSZWxheSDlhpnpgZM6Cj4gRnJvbTogSm9hY2hpbSBFYXN0d29vZCA8am9hY2hp
bS5lYXN0d29vZEBnbWFpbC5jb20+Cj4gCj4gVGhpcyByZWd1bGF0b3IgaXMgb25seSBhIHNpbXBs
ZSBwb3dlciBzd2l0Y2ggYW5kIGNhbm5vdCBjaGFuZ2UgdGhlCj4gb3V0cHV0IHZvbHRhZ2UuCj4g
CgpJdCB3b3VsZCBiZSBiZXR0ZXIgaWYgeW91IGNvdWxkIHB1dCB0aGUgc2NoZW1hdGljaW50byB0
aGUgY292ZXIgbGV0dGVyCnNvIGZvbGtzIGNvdWxkIGNoZWNrIGl0IGVhc2lseS4KCmh0dHBzOi8v
d2lraS5mcmllbmRseWVsZWMuY29tL3dpa2kvaW1hZ2VzLzgvODUvTmFub1BpX002XzI0MDVfU0NI
LlBERgoKUmV2aWV3ZWQtYnk6IFNoYXduIExpbiA8U2hhd24ubGluQHJvY2stY2hpcHMuY29tPgoK
PiBGaXhlczogYzA4MjU3ZDY0MmFjICgiYXJtNjQ6IGR0czogcm9ja2NoaXA6IHJlZmFjdG9yIHJr
MzU4OHMtbmFub3BpLXI2IHRvIHN1cHBvcnQgTTYgYm9hcmRzIikKPiBTaWduZWQtb2ZmLWJ5OiBK
b2FjaGltIEVhc3R3b29kIDxqb2FjaGltLmVhc3R3b29kQGdtYWlsLmNvbT4KPiAtLS0KPiAgIGFy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy1uYW5vcGkuZHRzaSB8IDQgKystLQo+
ICAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBk
aWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLW5hbm9waS5k
dHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLW5hbm9waS5kdHNpCj4g
aW5kZXggMjJiMGNkZWUyMmI0Li44YzM2MjY4ZTk4NzYgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLW5hbm9waS5kdHNpCj4gKysrIGIvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLW5hbm9waS5kdHNpCj4gQEAgLTc5LDggKzc5LDgg
QEAgdmNjXzN2M19zZF9zMDogcmVndWxhdG9yLXZjYy0zdjMtc2QtczAgewo+ICAgCQlwaW5jdHJs
LTAgPSA8JnNkX3MwX3B3cj47Cj4gICAJCXJlZ3VsYXRvci1uYW1lID0gInZjY18zdjNfc2RfczAi
Owo+ICAgCQlyZWd1bGF0b3ItYm9vdC1vbjsKPiAtCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9
IDwzMDAwMDAwPjsKPiAtCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwzMDAwMDAwPjsKPiAr
CQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwzMzAwMDAwPjsKPiArCQlyZWd1bGF0b3ItbWlu
LW1pY3Jvdm9sdCA9IDwzMzAwMDAwPjsKPiAgIAkJdmluLXN1cHBseSA9IDwmdmNjXzN2M19zMz47
Cj4gICAJfTsKPiAgIAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
