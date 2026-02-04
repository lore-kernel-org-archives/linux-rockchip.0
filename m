Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B64CEA7944
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Feb 2026 19:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=he1pzFNEILiWIR/79zRAV0823l0w+t3+BElCTPv4kXw=; b=2SeYtNFKtcOVg4
	vo/ADUU/HhPHTf8sDZLfy/q/fd/s7KF9n1pet9xOFjx738qU7ntcjzNmtwHtfirrsBjEqqJDNaRu7
	DDTJZnxVSVFV7XnZ7ywqSyvL2IgnoT5n64ad6EEpOe5zBNkA+SBToTbjpZWeNSSY+viTTUwH1uj7o
	FrnY3ApWxiAi/3rk3R1F+C1u7fH/pPCqmWy75RjXEF3f6nGTsjYGWUnilEUc2/97jkooeC5i9n1u3
	1woR3UnVcVaGSXLyaxwDfF2VlecFOMcXTghPT1mnGa4ijzTw4UpiW/WpY5r9QF9zsfcrlGNIlE2SG
	JujJNv/YJwvlMP2mS+sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnj1D-000000090Ow-0H3z;
	Wed, 04 Feb 2026 19:58:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnj19-000000090Nx-2Tcg;
	Wed, 04 Feb 2026 19:58:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=dt3Z/Cgo0Nl3MpY57b0JubP2dxKNjWvqAO/32zYPcho=; b=U7bu5OUniqo6Olu36IlqocMsH+
	262O4zregLAcmwC6jveuusa2Sc8guXWhDH8ABrJctf3y7GAfRJCxxbghqzBQENbXev8sms9d0t5kG
	Cnlxo7V8hE/KFlAhN13b70IQ+wP5H08DYcN8UNXGiINPhJK7mHlKgLQref/mYUAKKca+dCkwLzgAI
	5bvsB4emNIkMJjpF66WesCuWhU/HYV41NDr5oufKN+RcfTdQjPj1E8wRPTqcHULOl4USJmN1L+9jI
	PrbfS4kax2fHuEhMdkSPeTQgShNLgYJzSyAzMlWWmQCtKzDgscEwjWJHPUNKOcc7okFqe4pwAZsqQ
	6D7Oasow==;
Received: from i53875ac7.versanet.de ([83.135.90.199] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vnj12-0070vf-PN; Wed, 04 Feb 2026 20:58:21 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Andrew Lunn <andrew@lunn.ch>,
 "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, netdev@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>
Subject: Re: [PATCH net-next 2/6] net: stmmac: rk: replace empty set_to_rmii() with
 supports_rmii
Date: Wed, 04 Feb 2026 20:58:20 +0100
Message-ID: <10482755.VV5PYv0bhD@diego>
In-Reply-To: <E1vnYxq-00000007hor-3yXt@rmk-PC.armlinux.org.uk>
References: <aYMN2gZMfLPKuukG@shell.armlinux.org.uk>
 <E1vnYxq-00000007hor-3yXt@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_115827_624213_3F1B1D9B 
X-CRM114-Status: UNSURE (   8.51  )
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

QW0gTWl0dHdvY2gsIDQuIEZlYnJ1YXIgMjAyNiwgMTA6MTQ6MjIgTWl0dGVsZXVyb3DDpGlzY2hl
IE5vcm1hbHplaXQgc2NocmllYiBSdXNzZWxsIEtpbmcgKE9yYWNsZSk6Cj4gUmF0aGVyIHRoYW4g
cHJvdmlkaW5nIGEgbm93LWVtcHR5IHNldF90b19ybWlpKCkgbWV0aG9kIHRvIGluZGljYXRlCj4g
dGhhdCBSTUlJIGlzIHN1cHBvcnRlZCwgc3dpdGNoIHRvIHNldHRpbmcgb3BzLT5zdXBwb3J0c19y
bWlpIGluc3RlYWQuCj4gCj4gU2lnbmVkLW9mZi1ieTogUnVzc2VsbCBLaW5nIChPcmFjbGUpIDxy
bWsra2VybmVsQGFybWxpbnV4Lm9yZy51az4KClJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8
aGVpa29Ac250ZWNoLmRlPgpUZXN0ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2gu
ZGU+ICNweDMwLHJrMzMyOCxyazM1NjgscmszNTg4CgoKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
