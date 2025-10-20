Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F23CCCD1A2
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 14:06:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M2FNCccOKdIfH7d/Njc2l9qxsx4SYFYgd3sCCS3n+pU=; b=WGIN8749bWDWU1
	BvFThN95HKlbMNkin7ChxspvkPslTOOg3SrOHw+IOtbtiEAI56MqB7AKQN2bNVcJs/AAPs6Ov1hNx
	WPt0AkwnP7JsZmAWEabASSZDIetirkYx2vTpOfYtCk+CpJPWHXwXjgtCShz6WO4Z+Aj9y3MBMfa5f
	D7hQCBitu0b9Jbr9S9fDXKbaljYegQEl0qsPDTGwE/XyeTZ7N2Sm47PN0WjTsaXYohuDhHeyVLjH6
	mzOav60PYaeQy5kvHwgImTt1p8+GHJ52D+1g/mh2XPvbQAAl5ta9N21+ElBjcyGAMKpmdEv0OEtCq
	1aqSFMucsnm/qdFf9YRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAqWt-0000000DtlN-2dSA;
	Mon, 20 Oct 2025 14:06:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAqWp-0000000Dtif-26hp;
	Mon, 20 Oct 2025 14:06:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=0PWnVKIiov5KTPY8I52QIFf+vtTOPlLahNCTbyp5PPc=; b=yjg46oik+aetf7YnXtGPN0VGZ+
	h6il6ri2MY+hGDwuUdoRtlH6a+lMGLhy+KKASiNd5f+d4eXgAGmpH5DzpCK3H3fUnn9kOn48pO7Yx
	DcXyqKHBiVBaP1IxNrF0uJdY+bKNpGIItjOP2532bhdJGK9mMlxKSB788qk/4zcBwWynXX9Nk08kq
	yJz7qVWrv5mej8Ng/DjvWKg/NAk+o+v5V4LuF7nPr54Pxc+Bn5e1YZG348I20YaCoGtJtGK++4CwQ
	+9M3DaTuZESlxpHh93EkfvIbF1RJb3TFNeDBBCXN0gLf1m9SD50o6rf293TDiBkaN3g+s3Q4HxKUn
	L3Xkl8YA==;
Received: from [212.111.240.218] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vAqWc-00020A-7K; Mon, 20 Oct 2025 16:06:14 +0200
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
Subject: Re: [PATCH v2 7/9] phy: rockchip: phy-rockchip-inno-hdmi: convert from
 round_rate() to determine_rate()
Date: Mon, 20 Oct 2025 16:06:13 +0200
Message-ID: <13870920.uLZWGnKmhe@phil>
In-Reply-To: <20250810-phy-clk-round-rate-v2-7-9162470bb9f2@redhat.com>
References: <20250810-phy-clk-round-rate-v2-0-9162470bb9f2@redhat.com>
 <20250810-phy-clk-round-rate-v2-7-9162470bb9f2@redhat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_070627_532758_C0739684 
X-CRM114-Status: UNSURE (   7.29  )
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

QW0gTW9udGFnLCAxMS4gQXVndXN0IDIwMjUsIDAwOjQ1OjM1IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgQnJpYW4gTWFzbmV5Ogo+IFRoZSByb3VuZF9yYXRlKCkgY2xrIG9w
cyBpcyBkZXByZWNhdGVkLCBzbyBtaWdyYXRlIHRoaXMgZHJpdmVyIGZyb20KPiByb3VuZF9yYXRl
KCkgdG8gZGV0ZXJtaW5lX3JhdGUoKSB1c2luZyB0aGUgQ29jY2luZWxsZSBzZW1hbnRpYyBwYXRj
aAo+IG9uIHRoZSBjb3ZlciBsZXR0ZXIgb2YgdGhpcyBzZXJpZXMuCj4gCj4gU2lnbmVkLW9mZi1i
eTogQnJpYW4gTWFzbmV5IDxibWFzbmV5QHJlZGhhdC5jb20+CgoKUmV2aWV3ZWQtYnk6IEhlaWtv
IFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
