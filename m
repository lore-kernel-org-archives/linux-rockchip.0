Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D36810D1489
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Mar 2026 22:26:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EMPBm8cBp946aJnGH4XTRlp+XrEbLzADiiteiH+pn/0=; b=vvZoYuv1Lev/uE
	fLBLLDDYBnDpdO/Zpo73FZ54/WAjlmPW4sx3CiG1SJG8N7pUqPLo48H3cYfcpuBqLtjy38Hd1iGDX
	m2Be8uwHyJQhj+7puyRJtWxXCsKqt+UBtbu3VWNYodnrmpvxtdkFhWN9YzFICoJLFYRyArpecfmmI
	UaGQm2gBFdmUO9taoAncaUiqVZrqi3ls9jk7Mx4tXfGC+7OnZBhFf5Tvj8unk3N+uLWrUpruiNvQX
	jZLpA68exaFlGIm3Fi+Va5ehzL0Z/sbfYytSMaQv1O5efe/qA8BCZeXDa1Gwdz7g5zF59S8Ofr3lV
	FJ1zXhtnhArTYi9l8RrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6c6i-00000009M9q-2gef;
	Sat, 28 Mar 2026 22:26:16 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6c6f-00000009M9P-1oop;
	Sat, 28 Mar 2026 22:26:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ksn/ONXvwjFSl7uoWMydoUCTQ2n21ymYZkV8pvqF/8A=; b=IrbqNRvGeY9gFvxXGYjzBeb65D
	oyV0CIkcphy8AMq9OdHok9Wx2jkD+i8SPTdK44SuUZj++7tuLMzSf/8u/IibGJNzOskprqmp0TiCW
	UiiYtbkj4Yk+2XkiibEtMIdc++DkTFZXZ4stjxKKTZTkcOER3QXkWghjq5eH0f6Jae/UFPtSUPgj+
	AbHdISz6jIVhlHDqKlsJ9SJBWs2h3uelqwy3YjN9dO4s0EYnn0jzKoPGXXT//ZPr6js1sr2/0I+Fv
	hPqkENCp+Y8NJ4vDaCl64J2Zv9URbJvXvkQlc5yp82CpA9kCS/QlIVPkreSVOTuGXN2kHo1mCvwKB
	YuaeBQVA==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:32806)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1w6c6a-000000007W4-46Aa;
	Sat, 28 Mar 2026 22:26:09 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1w6c6X-0000000012S-1fvd;
	Sat, 28 Mar 2026 22:26:05 +0000
Date: Sat, 28 Mar 2026 22:26:05 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: =?utf-8?B?6LCi6Ie06YKmIChYSUUgWmhpYmFuZyk=?= <Yeking@red54.com>
Cc: linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] net: stmmac: dwmac-rk: Fix typo in comment
Message-ID: <achVffNlW_VPZu5W@shell.armlinux.org.uk>
References: <tencent_833D2AD6577F21CF38ED1C3FE8814EB4B308@qq.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <tencent_833D2AD6577F21CF38ED1C3FE8814EB4B308@qq.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260328_152613_488091_A131DAAC 
X-CRM114-Status: UNSURE (   6.48  )
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

T24gU2F0LCBNYXIgMjgsIDIwMjYgYXQgMDE6NDM6MzFQTSArMDAwMCwg6LCi6Ie06YKmIChYSUUg
WmhpYmFuZykgd3JvdGU6Cj4gQ29ycmVjdCB0aGUgdHlwbyAicmszNTIwIiB0byAicmszNTI4IiBp
biBjb21tZW50Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IOiwouiHtOmCpiAoWElFIFpoaWJhbmcpIDxZ
ZWtpbmdAUmVkNTQuY29tPgoKUmV2aWV3ZWQtYnk6IFJ1c3NlbGwgS2luZyAoT3JhY2xlKSA8cm1r
K2tlcm5lbEBhcm1saW51eC5vcmcudWs+CgpUaGFua3MhCgotLSAKUk1LJ3MgUGF0Y2ggc3lzdGVt
OiBodHRwczovL3d3dy5hcm1saW51eC5vcmcudWsvZGV2ZWxvcGVyL3BhdGNoZXMvCkZUVFAgaXMg
aGVyZSEgODBNYnBzIGRvd24gMTBNYnBzIHVwLiBEZWNlbnQgY29ubmVjdGl2aXR5IGF0IGxhc3Qh
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
