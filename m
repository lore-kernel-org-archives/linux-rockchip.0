Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC1BBCAC5B0
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Sep 2025 12:28:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KumqifzVeYf4DElwvergtjvXt0oKGktJDLYALVozriw=; b=iABf3R+7YuLDpC
	a8fZoE7BW5MaMNbaIeG/ajO01u0t4iMXTA22mzRtksHyCl8PJqzCL5ZVLtTbgDfYH6469muksAeRr
	cY/zZkmZuSiz+2jnSwhzNLscC64b6ZI982dZhV8t06mny0lWSv608ws/u7mt1NL/4nnzUqYF7Obdz
	OWD5139AkHlN9N8F28SCjFQaJmL2fidN8iGG0XGkRL6h7vjY39bCSEhLHIz71XcbEQRLdnytvdmAt
	LRgmQQ5mxvn0RPCWztPAzYkKvw27C8ReLWn/fuH6aGhKHz4ViYwyQnDEF/+Oqqog3cHAdw1LHOG2O
	JrAnFD1Ex55ZovHnRfwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3CzX-00000002THv-2DXF;
	Mon, 29 Sep 2025 12:28:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3CzU-00000002TGy-1Gv9;
	Mon, 29 Sep 2025 12:28:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=B8HxvMsbOZxtQTKCjlW7Kh23DmVfi7q+asxmvEAD1C4=; b=YnZatRgIPhzKJONzIVGCaHMQQY
	1nrYsVtq/K941C5fGf/uwNRKN5rpgyYTJxcdEqv01pa3i/io1qTiUIeD2E13IysRIRmGuq7WVnolv
	0PH8/3iDNtsHv0GA8H5JZVDb8tYU7K25jONEw7wcLq0smzrOVKJTdYJggftRdF7iBGjjCuzyLeLz8
	CESZJ13RqBC3+UmFqITlg0lh/cGlu96DLslx6zJFrh0+0dC3FLKc2Z8fBZVms31Al+8ilqiE7/kJV
	/SpF8mDF6ZqnhzquOzCIPes56n9bUSSGnGA/b7XYgIUXIo98F4Eg5bZ+qWSH1SXpr6eB04jWUJrmJ
	7AKnu1VQ==;
Received: from e227-076.eduroam.tuwien.ac.at ([128.130.227.76] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1v3CzL-00072s-3M; Mon, 29 Sep 2025 14:28:19 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 quentin.schulz@cherry.de, kever.yang@rock-chips.com, naoki@radxa.com,
 honyuenkwun@gmail.com, inindev@gmail.com, ivan8215145640@gmail.com,
 neil.armstrong@linaro.org, mani@kernel.org, dsimic@manjaro.org,
 pbrobinson@gmail.com, alchark@gmail.com, didi.debian@cknow.org,
 jjm2473@gmail.com, jbx6244@gmail.com, Liangbin Lian <jjm2473@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/3] dt-bindings: arm: rockchip: Add LinkEase EasePi R1
Date: Mon, 29 Sep 2025 14:28:17 +0200
Message-ID: <5700676.tIAgqjz4sF@phil>
In-Reply-To: <20250929065714.27741-3-jjm2473@gmail.com>
References: <20250929065714.27741-1-jjm2473@gmail.com>
 <20250929065714.27741-3-jjm2473@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_052828_339549_F92C9BC1 
X-CRM114-Status: UNSURE (   7.46  )
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

QW0gTW9udGFnLCAyOS4gU2VwdGVtYmVyIDIwMjUsIDA4OjU3OjEzIE1pdHRlbGV1cm9ww6Rpc2No
ZSBTb21tZXJ6ZWl0IHNjaHJpZWIgTGlhbmdiaW4gTGlhbjoKPiBMaW5rRWFzZSBFYXNlUGkgUjEg
aXMgYSBoaWdoLXBlcmZvcm1hbmNlIG1pbmkgcm91dGVyIGJhc2VkIG9uIFJLMzU2OC4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBMaWFuZ2JpbiBMaWFuIDxqam0yNDczQGdtYWlsLmNvbT4KCkluIHYxIHRo
aXMgcGF0Y2ggcmVjZWl2ZWQgYW4KQWNrZWQtYnk6IENvbm9yIERvb2xleSA8Y29ub3IuZG9vbGV5
QG1pY3JvY2hpcC5jb20+CgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
