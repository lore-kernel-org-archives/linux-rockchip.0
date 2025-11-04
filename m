Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20704CCF9E3
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Nov 2025 10:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iEZvDkrHlVC8pBdD+ov0bZrjHgmj0fffQBYRu75gGb4=; b=1HP3evkxYPuo8L
	yCGiixq4/8gPrdHzykEz7/kaZErb6pUycjz0LgpVHjbQDNKRkSOkyoc50+XaCb1rsuKu6j1dypjcl
	ktyd6RYZE3spt3W9eZGWV9EPSS01Cs8Kugxad+NUjyxeQsk/+obtdC66dbal9CeYPfOwyuB2a1GOG
	tT9UXRMZ/YyFFyh3eK8EAszW8os/mtE5sompkdFSAHg5CGdb6v2KvRa4uHcxNwr6bOYedSL90IO10
	ptZ3mkXs5sfFow5lxbgCPMIrnBUuXXMnzY4EatCGJDT8qMFvOtOlhYLFNTM3h9YPUvP1HTxrPsekT
	c88syK7mtwTJ8NrxnH1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGEVN-0000000BdHY-23Bs;
	Tue, 04 Nov 2025 10:43:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGEVL-0000000BdGd-2b24;
	Tue, 04 Nov 2025 10:43:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=XjgsfMkrLaZXeX2KsYSs/abzxMl8bXYbsXOSIwq34Qk=; b=PAi+h2Ejyq4PpTkpTOO9TwDrvk
	hkAhoy2Oz8VEBgy1YcJ7fqmqV6aPcONiQ70PhnC9z+f6W7MdFesbfVJCoRBJzXKVP7RpayOo4qyZB
	qzdazj0fw5USxNsk3fwetilyjkhAY+nuTW1JTnEFsM909zdVYuIFGDzltIiYZQKNDNEFsEfWozAkc
	6kj9jiyMuegVsPBHePsQlTieq/91B2JZSZFdgxHr7LMUvtA+cos9iPGTIvvrDIgAHH8CCYekQOrm+
	uZ4AX5utJy6ylo6frILGyuZLFUScACdr71z7QHjzWBX+1lyFQPJxrxMCmZy8v9CBNq8pJWyB49n/6
	jS3jrGJA==;
Received: from i53875aae.versanet.de ([83.135.90.174] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vGEVG-000405-Au; Tue, 04 Nov 2025 11:43:06 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Ye Zhang <ye.zhang@rock-chips.com>,
 Linus Walleij <linus.walleij@linaro.org>, Ye Zhang <ye.zhang@rock-chips.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 tao.huang@rock-chips.com
Subject: Re: [PATCH v1 1/3] dt-bindings: pinctrl: Add rk3506 pinctrl support
Date: Tue, 04 Nov 2025 11:43:03 +0100
Message-ID: <3705122.LM0AJKV5NW@diego>
In-Reply-To: <20251104021223.2375116-2-ye.zhang@rock-chips.com>
References: <20251104021223.2375116-1-ye.zhang@rock-chips.com>
 <20251104021223.2375116-2-ye.zhang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251104_024311_701510_CA0D22DC 
X-CRM114-Status: UNSURE (   8.60  )
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

QW0gRGllbnN0YWcsIDQuIE5vdmVtYmVyIDIwMjUsIDAzOjEyOjIxIE1pdHRlbGV1cm9ww6Rpc2No
ZSBOb3JtYWx6ZWl0IHNjaHJpZWIgWWUgWmhhbmc6Cj4gQWRkIHRoZSBjb21wYXRpYmxlIHN0cmlu
ZyBmb3IgdGhlIHJrMzUwNiBTb0MuCj4gCj4gU2lnbmVkLW9mZi1ieTogWWUgWmhhbmcgPHllLnpo
YW5nQHJvY2stY2hpcHMuY29tPgoKUmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0Bz
bnRlY2guZGU+CgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
