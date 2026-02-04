Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30EAAEA7943
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Feb 2026 19:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C8dSZrmliqs/+bvuOxk/rBirUO9VH37X9+/RgrXenEU=; b=nlDnJx5FKBvw5m
	gX+tFx65hFOhVbJ8Zwa4yhNX2TEZhQpbrBwiNo1gPrhawsqZFkTZpLFSPTSIa4JmcfQJeuf29iRCV
	HB6y8FP6g38OjFjXMOdrctFxsycWkL41MyUog/s+qsYkJSzgh4oCYxmen3lR24dCUtcygqIYm48SU
	u3D43IEYTJUHYOPsns/PyQYLGPwgA3wYvLg9X7CgXiJ1F8iTl/2c/e3fyy7TFJZ+5m3l/RycoYyFI
	XGiLVFCg5VJsKdntKAIq1Ekb/gQ8NzDnKBR+7MhAyJw75cothl5p2RBDhh/9AXZdEokH8wK8lnTw+
	KfRQHbh1/lEZBZO8FUWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnj0D-000000090F8-1uZr;
	Wed, 04 Feb 2026 19:57:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnj0B-000000090Ee-0Ws2;
	Wed, 04 Feb 2026 19:57:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=xlx7imhS8egX26fBI66YJcapLdUQv4lJsXpksytMu7E=; b=dIvU9IvgO3p2j6fNWBS7K6IHZu
	SXBMK7cCzcttVrJkGOcvsIiSmsyVXNcr8tiQo8l+3bmQ5dhW+Q6qf6C+C1gK5btrMOVy59fLjJEyt
	9pEbloNKFVhF+TAMbfK9Wv0D1EuIdPJ1kdkOKNb8QhjvmQP0OdeBZ35dAsBAo+NXQyle4KkI5C1cH
	vFRFzfFk2I+z66IlowQ6TnkbNrH+lfdd4EmwlYixiY0oXv3UF26aAGekUlhkmiyfeYxOpwdMsgw2f
	le+XSgzInUdW8BemnIxcQmF97bpj4TkpQxUz9DWkTq2TzCs8F/ZeZpqLY3nEn/krNCtb9j9facFVo
	vCTK22eg==;
Received: from i53875ac7.versanet.de ([83.135.90.199] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vnizy-0070uw-LC; Wed, 04 Feb 2026 20:57:15 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Andrew Lunn <andrew@lunn.ch>,
 "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, netdev@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>
Subject: Re: [PATCH net-next 1/6] net: stmmac: rk: introduce flags indicating support
 for RGMII/RMII
Date: Wed, 04 Feb 2026 20:57:13 +0100
Message-ID: <3535226.C4sosBPzcN@diego>
In-Reply-To: <E1vnYxl-00000007hol-3XiH@rmk-PC.armlinux.org.uk>
References: <aYMN2gZMfLPKuukG@shell.armlinux.org.uk>
 <E1vnYxl-00000007hol-3XiH@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_115727_168567_9C64C53B 
X-CRM114-Status: GOOD (  10.94  )
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

QW0gTWl0dHdvY2gsIDQuIEZlYnJ1YXIgMjAyNiwgMTA6MTQ6MTcgTWl0dGVsZXVyb3DDpGlzY2hl
IE5vcm1hbHplaXQgc2NocmllYiBSdXNzZWxsIEtpbmcgKE9yYWNsZSk6Cj4gSW50cm9kdWNlIHR3
byBib29sZWFuIGZsYWdzIGludG8gc3RydWN0IHJrX3ByaXZfZGF0YSBpbmRpY2F0aW5nCj4gd2hl
dGhlciBSR01JSSBhbmQvb3IgUk1JSSBpcyBzdXBwb3J0ZWQgZm9yIHRoaXMgaW5zdGFuY2UuIFVz
ZSB0aGVzZQo+IHRvIGNvbmZpZ3VyZSB0aGUgc3VwcG9ydGVkX2ludGVyZmFjZXMgbWFzayBmb3Ig
cGh5bGluaywgdmFsaWRhdGUgdGhlCj4gaW50ZXJmYWNlIG1vZGUuIEluaXRpYWxpc2UgdGhlc2Ug
ZnJvbSBlcXVpdmFsZW50IGZsYWdzIGluIHRoZQo+IHJrX2dtYWNfb3BzIG9yIGRlcGVuZGluZyBv
biB0aGUgcHJlc2VuY2Ugb2YgdGhlIG9wcy0+c2V0X3RvX3JnbWlpIGFuZAo+IG9wcy0+c2V0X3Rv
X21paSBtZXRob2RzLiBGaW5hbGx5LCBtYWtlIG9wcy0+c2V0X3RvXyogb3B0aW9uYWwuCj4gCj4g
VGhpcyB3aWxsIGFsbG93IHVzIHRvIGdldCByaWQgb2YgZW1wdHkgc2V0X3RvX3JtaWkoKSBtZXRo
b2RzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFJ1c3NlbGwgS2luZyAoT3JhY2xlKSA8cm1rK2tlcm5l
bEBhcm1saW51eC5vcmcudWs+CgpSZXZpZXdlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNu
dGVjaC5kZT4KVGVzdGVkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPiAjcHgz
MCxyazMzMjgscmszNTY4LHJrMzU4OAoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
