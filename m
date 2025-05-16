Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24E54C3ABDD
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 May 2025 07:01:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O+xJneCtBe+BUejsq6BRHZJf5xXAaPcHEzuVZRQNrxo=; b=UATsU6voJfZVET
	RVpMUoBuBZkit3qSqi3ziG7BprUx2jLeZoeW5Djtq4TOX3MDiu5OZwY1nNrwzM//d+a1OOgDZJWUT
	C2olVGzpd0o7uxuni1N/C9ug/MlyGjAAQNVlFqyq38kDHCRA6UH1UkN/jYICevsZYgzUSZVq+UHPu
	nlHVoO7AMV0CP75uMTO15qjV7sozVxoiUaaTZUE4s8xE6Jo7kBp8o+o60/1RrB1zyP3W080KcDopd
	o5iRWKKAK97AdHJ2vedMi8M1b4z42miUJpnt38p+i28Rvzn/LRSVau1h9RkUQQJ33CtsqH5X0WyZp
	i47cUdCj58b+J0FB8yVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFp4S-00000002d1g-3i4U;
	Fri, 16 May 2025 07:01:28 +0000
Received: from mail-m49198.qiye.163.com ([45.254.49.198])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFp4O-00000002d0v-3YfW;
	Fri, 16 May 2025 07:01:27 +0000
Received: from localhost.localdomain (unknown [119.122.215.244])
	by smtp.qiye.163.com (Hmail) with ESMTP id 15416c95d;
	Fri, 16 May 2025 15:01:13 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: kever.yang@rock-chips.com
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	finley.xiao@rock-chips.com,
	heiko@sntech.de,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: Re: [PATCH v7 4/5] arm64: dts: rockchip: add core dtsi for RK3562 SoC
Date: Fri, 16 May 2025 15:01:06 +0800
Message-Id: <20250516070106.653870-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250509102308.761424-5-kever.yang@rock-chips.com>
References: <20250509102308.761424-5-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaTR5NVh5KSh5DSkpOS09CTlYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKTlVJT09ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSEJVSktLVU
	pCS0tZBg++
X-HM-Tid: 0a96d7e5a5d103a2kunm15416c95d
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NRg6Pio5LTE9PjYhLzMYOgxL
	Tk5PChFVSlVKTE9MSExDQ0xPTUhIVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUpK
	QlVKSUlVSUpOVUlPT1lXWQgBWUFJS0pJNwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250516_000125_056103_C8ED663E 
X-CRM114-Status: UNSURE (   7.76  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksCgpJIHBvc3RlZCB0byB0aGUgd3JvbmcgdGhyZWFkIGJlZm9yZSwgc28gSSByZXNlbnQgdGhp
cy4KU29ycnkgZm9yIHRoZSBub2lzZS4KCj4gPHNuaXA+Cj4gKwkJcGNpZTJ4MTogcGNpZUBmZjUw
MDAwMCB7Cj4gKwkJCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTYyLXBjaWUiLCAicm9ja2No
aXAscmszNTY4LXBjaWUiOwo+ICsJCQlidXMtcmFuZ2UgPSA8MHgwIDB4ZmY+Owo+IDxzbmlwPgo+
ICsJCQlpbnRlcnJ1cHQtbmFtZXMgPSAic3lzIiwgInBtYyIsICJtc2ciLCAibGVnYWN5IiwgImVy
ciIsICJtc2kiOwoKSSBub3RpY2VkIHRoYXQgdGhlIGJzcCA1LjEwIGtlcm5lbCBzYWlkIHRoYXQg
cGNpZSBvbmx5IGhhcyA4IE1TSSB2ZWN0b3JzLApbMV1bMl0gYnV0IGluIHRoZSBic3AgNi4xIGtl
cm5lbCBpdCBjaGFuZ2VkIHRvIDMyIE1TSSB2ZWN0b3JzIFszXS4KClRoZSByb2NrY2hpcCBkb2N1
bWVudGF0aW9uIGFsc28gc2F5cyB0aGVyZSBhcmUgb25seSA4IE1TSSB2ZWN0b3JzOgoKWzRdIFBh
Z2UzNyA4LjggIlJLMzUyOC9SSzM1NjIvUkszNTc25Y+v5YiG6YWN55qETVNJ5oiW6ICFTVNJLVjm
gLvmlbDmmK845LiqIgpUcmFuc2xhdGUgaW50byBFbmdsaXNoOiAiVGhlIHRvdGFsIG51bWJlciBv
ZiBNU0kgb3IgTVNJLVggdGhhdApjYW4gYmUgYWxsb2NhdGVkIGJ5IFJLMzUyOC9SSzM1NjIvUksz
NTc2IGlzIDgiCgpXZSBub3RpY2VkIHRoaXMgd2hlbiBzdXBwb3J0aW5nIHJrMzUyOCwgc28gd2hp
Y2ggb25lIGlzIGNvcnJlY3Q/CgpbMV0gaHR0cHM6Ly9naXRodWIuY29tL3JvY2tjaGlwLWxpbnV4
L2tlcm5lbC9jb21taXQvNGYwYzljY2M3OWMzNzNhYTk3MDg0YjNiMWFiMDY1MWNhNDI0ODIyNwpb
Ml0gaHR0cHM6Ly9naXRodWIuY29tL3JvY2tjaGlwLWxpbnV4L2tlcm5lbC9jb21taXQvYWZiODVj
NzU5Y2ZhZGM0MDUxYzQyYTk3MDM4NjAwNzFhOTg3N2YyZQpbM10gaHR0cHM6Ly9naXRodWIuY29t
L2Nvb2xwaS1nZW9yZ2UvY29vbHBpLWtlcm5lbC9jb21taXQvNTIyYjk0MTIyZWM3OTc3NjBkY2Q0
NjY4NTEyNTBjYmRmYWZmZjUwZgpbNF0gaHR0cHM6Ly9naXRodWIuY29tL0FybVNvTS9yazM1MDYt
cmtyNC4yLXNkay9ibG9iL21haW4vZG9jcy9jbi9Db21tb24vUENJZS9Sb2NrY2hpcF9EZXZlbG9w
ZXJfR3VpZGVfUENJZV9DTi5wZGYKClRoYW5rcywKQ2h1a3VuCgotLQoyLjI1LjEKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
