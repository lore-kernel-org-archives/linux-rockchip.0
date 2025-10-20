Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C27C6CCD193
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 14:06:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fJC0Wazotq5gUTa7M5NwYIrAGrvm7rWK6VlcJ1JeLN0=; b=MhjqyvqWDmgk7y
	7gmoGtJW+UO60rQQW1He9fzdudpuN4E/oMDB/iwlHnZpvuZ15T55e6bGCZNWKzKnnQP+J2qtwSqz+
	Hl3NE+saMiW0EqjmTT5T7DYlPC8kDdRR9fPZlLjYzMZLpdDkAwMIKhWcfVPQGtGVKzlOtB1jWHfpj
	LMBrvwZYMmTYG5jAZXLW0j+bMXdPMqn5iOvO6+0sWnkuh3VHcCCP/psj0qDCJjULE9CQTKtfa2FLN
	kSeKsI915kGbfy6f7cfQxkKbD/zcu8341kflnXRLPBE8AiIwrR5uR7zDremjAZ7Kevxgl2sEQ1Zb0
	xM2zG0wDPz8n5nToaIWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAqXC-0000000DtwE-20YF;
	Mon, 20 Oct 2025 14:06:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAqX9-0000000Dtt3-0tp0;
	Mon, 20 Oct 2025 14:06:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Pflb5s+SJUFaJBxo0UKXFW7gXNOuL5Iw15aBc9AITb8=; b=UjckIrLksIfw9rYYkmWqAmVSIo
	rTyZFqdvbheIOnWfSV5jlPjiq6ydD7k2N5zlbS0qQUjsW2xRr0jbxdOHnkBQBLaA8ZQZeaZJb4/eb
	YjiTSWuWIktubek2jlZm4KVyKM8/19QqCvzBrjmuQ8wJxJRvWwhXOejTzMKidvGBAqx2XrEQNdc2q
	+sQhtx5Eqo0g+Cav2OtV6IE4oTlEXW6HgFJusgH3SsrU5oglwCMVaavJZN6alTbkRx6BVc+vuu+8U
	6pIF+QMIDgUwrJqyZZqHV1GWzDQ4ZwJHVjsD1nguzj1m33Elbf/feRQP1hNIRcXwAFOcDPYLGWdMD
	jAWH3zmA==;
Received: from [212.111.240.218] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vAqX0-000213-GG; Mon, 20 Oct 2025 16:06:38 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Brian Masney <bmasney@redhat.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Brian Masney <bmasney@redhat.com>
Subject: Re: [PATCH v2 8/9] phy: rockchip: phy-rockchip-samsung-hdptx: convert from
 round_rate() to determine_rate()
Date: Mon, 20 Oct 2025 16:06:37 +0200
Message-ID: <3378525.aeNJFYEL58@phil>
In-Reply-To: <20250810-phy-clk-round-rate-v2-8-9162470bb9f2@redhat.com>
References: <20250810-phy-clk-round-rate-v2-0-9162470bb9f2@redhat.com>
 <20250810-phy-clk-round-rate-v2-8-9162470bb9f2@redhat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_070647_251320_3368A8C2 
X-CRM114-Status: UNSURE (   7.11  )
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

QW0gTW9udGFnLCAxMS4gQXVndXN0IDIwMjUsIDAwOjQ1OjM2IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgQnJpYW4gTWFzbmV5Ogo+IFRoZSByb3VuZF9yYXRlKCkgY2xrIG9w
cyBpcyBkZXByZWNhdGVkLCBzbyBtaWdyYXRlIHRoaXMgZHJpdmVyIGZyb20KPiByb3VuZF9yYXRl
KCkgdG8gZGV0ZXJtaW5lX3JhdGUoKSB1c2luZyB0aGUgQ29jY2luZWxsZSBzZW1hbnRpYyBwYXRj
aAo+IG9uIHRoZSBjb3ZlciBsZXR0ZXIgb2YgdGhpcyBzZXJpZXMuCj4gCj4gU2lnbmVkLW9mZi1i
eTogQnJpYW4gTWFzbmV5IDxibWFzbmV5QHJlZGhhdC5jb20+CgoKUmV2aWV3ZWQtYnk6IEhlaWtv
IFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
