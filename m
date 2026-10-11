Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED14ACA9EC7
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Oct 2026 01:50:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y61qe+QLOlKyT/gI3ex+opCYonGJEIq3gm2DyhhF/KA=; b=xkVicCJFN0pR+4
	5SRW8Tdc+Xh6II0LbzRlQb6BIDCQdQpLn77+60Zl6dTmDaRYLmxaPJ3itvh9oFYOxfz3t7lAGFcQX
	sZqJkvTeQeZG6AbxD5g4cqnKH3Z1eFpbFikLEtIYF1Tqs3yCZWRkBZRy13wF5hQQl3Zj9dabXXws9
	WpfpE9iWz73oaCdZMWtHSdNvnNCO9cXaVpE6Tl3gHx0/6yA7HCdtUDNsUrHgn+wawV2kg8uWe5YwE
	ygu08zMn9qVTDOavuMggUDxYHpBEGXsvYVn0KYj/qo/E4PJonje64g6doiUlmntYhn63/0S95GPVr
	0YwKyZccu/aQHoqKN6KQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFihC-00000008dKs-3sWk;
	Sun, 11 Oct 2026 01:49:50 +0000
Received: from mail-m60244.netease.com ([210.79.60.244])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFih8-00000008dKM-3X5Y;
	Sun, 11 Oct 2026 01:49:50 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 5097b761b;
	Sun, 11 Oct 2026 09:49:39 +0800 (GMT+08:00)
Message-ID: <8bf7a001-8b65-4129-8b41-a2986bb78643@rock-chips.com>
Date: Sun, 11 Oct 2026 09:49:39 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Enable HS400 enhanced strobe on
 Kobol Helios64 eMMC
To: iav@iav.lv, Heiko Stuebner <heiko@sntech.de>
References: <20261011-b4-helios64-emmc-hs400-v1-1-36951d319229@iav.lv>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20261011-b4-helios64-emmc-hs400-v1-1-36951d319229@iav.lv>
X-HM-Tid: 0aa128a6c25703a4kunm693df481f314c
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCH0JPVkoZQ0lJTE0YTh5PSVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=DunVzkjct1HK2gDhGF78vAGWOTvXmbTFQCh7jdOS9zME+63fNyXovf246jrlLtHymCuh7IhBhE6hXj7e22ZxFXxNQRR65irjZ3/7IU3Y41SWAfKeJWwf5C0gppNIqzSez7L2SkUBt7yRgAX2XFZGGv4ZhPowE9pEnx+s9w7iurY=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=1i8L10GRky4bG22WnSj3l/2lPWD2x42vP1059qe6SY4=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261010_184947_463102_70ACF2EA 
X-CRM114-Status: GOOD (  16.17  )
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

5ZyoIDIwMjYvMTAvMTEg5pif5pyf5pelIDU6NTIsIElnb3IgVmVsa292IHZpYSBCNCBSZWxheSDl
hpnpgZM6Cj4gRnJvbTogSWdvciBWZWxrb3YgPGlhdkBpYXYubHY+Cj4gCj4gVGhlIGVNTUMgb2Yg
SGVsaW9zNjQgcnVucyBpbiBIUzIwMC4gUnVuIGl0IGluIEhTNDAwIGVuaGFuY2VkIHN0cm9iZSBh
dAo+IDE1MCBNSHosIGFzIG9uIEdydS4gVGhlIHN0cm9iZSBsaW5lIGdvZXMgc3RyYWlnaHQgZnJv
bSB0aGUgU29DIHRvIHRoZQo+IERTIHBpbiBvZiB0aGUgZU1NQyB3aXRoIG5vIHB1bGwtZG93biBv
biB0aGUgYm9hcmQsIHNvIGVuYWJsZSB0aGUgb25lCj4gaW4gdGhlIGVNTUMgUEhZLgo+IAoKUmV2
aWV3ZWQtYnk6IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgoKPiBBc3Npc3Rl
ZC1ieTogTExNCj4gU2lnbmVkLW9mZi1ieTogSWdvciBWZWxrb3YgPGlhdkBpYXYubHY+Cj4gLS0t
Cj4gU2NoZW1hdGljLCBzaGVldCAxNDoKPiBodHRwczovL3dpa2kua29ib2wuaW8vaGVsaW9zNjQv
ZmlsZXMvc2NoZW1hdGljcy9IZWxpb3M2NF9TY2hlbWF0aWNzX1JldjEuMi5wZGYKPiAKPiBUZXN0
ZWQgb24gbWFpbmxpbmUgd2l0aCB0aHJlZSAyIEdpQiB3cml0ZSBhbmQgcmVhZC1iYWNrIHBhc3Nl
cywgbm8KPiBlcnJvcnMuIFJhdyByZWFkcyBnbyBmcm9tIDE4MCBNQi9zIGluIEhTMjAwIHRvIDI0
NyBNQi9zLiBXaXRob3V0IHRoZQo+IHB1bGwtZG93biwgd3JpdGVzIGRyb3BwZWQgdG8gYWJvdXQg
MSBNQi9zIHdpdGggcmVwZWF0ZWQKPiAibW1jMTogcnVubmluZyBDUUUgcmVjb3ZlcnkiLgo+IC0t
LQo+ICAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkta29ib2wtaGVsaW9zNjQu
ZHRzIHwgNCArKysrCj4gICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCj4gCj4gZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWtvYm9sLWhlbGlv
czY0LmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWtvYm9sLWhlbGlv
czY0LmR0cwo+IGluZGV4IDYzYWQ3OWI0YzhhYy4uZjc4NDgyYzRjMjg1IDEwMDY0NAo+IC0tLSBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWtvYm9sLWhlbGlvczY0LmR0cwo+
ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWtvYm9sLWhlbGlvczY0
LmR0cwo+IEBAIC0zMjAsNiArMzIwLDcgQEAgJmNwdV9sMyB7Cj4gICB9Owo+ICAgCj4gICAmZW1t
Y19waHkgewo+ICsJcm9ja2NoaXAsZW5hYmxlLXN0cm9iZS1wdWxsZG93bjsKPiAgIAlzdGF0dXMg
PSAib2theSI7Cj4gICB9Owo+ICAgCj4gQEAgLTU4Niw4ICs1ODcsMTEgQEAgJnNhcmFkYyB7Cj4g
ICB9Owo+ICAgCj4gICAmc2RoY2kgewo+ICsJYXNzaWduZWQtY2xvY2stcmF0ZXMgPSA8MTUwMDAw
MDAwPjsKPiAgIAlidXMtd2lkdGggPSA8OD47Cj4gICAJbW1jLWhzMjAwLTFfOHY7Cj4gKwltbWMt
aHM0MDAtMV84djsKPiArCW1tYy1oczQwMC1lbmhhbmNlZC1zdHJvYmU7Cj4gICAJbm9uLXJlbW92
YWJsZTsKPiAgIAl2cW1tYy1zdXBwbHkgPSA8JnZjYzF2OF9zeXNfczA+Owo+ICAgCXN0YXR1cyA9
ICJva2F5IjsKPiAKPiAtLS0KPiBiYXNlLWNvbW1pdDogZDJhYmNiYjkwNWIwZTRiMmUwNmIyNTdm
YTFlNWJjZjRmYWE2ZGJkYQo+IGNoYW5nZS1pZDogMjAyNjEwMTEtYjQtaGVsaW9zNjQtZW1tYy1o
czQwMC05Yzc4NGYzNWQ4ZGQKPiAKPiBCZXN0IHJlZ2FyZHMsCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
