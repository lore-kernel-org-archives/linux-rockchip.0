Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63045EA7946
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Feb 2026 20:00:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l6LMSPT9J95F/44Pvi1aQIKyIAo3tCX/AynfI9d7kgg=; b=fIlGWRkEuJV82i
	v9BmD9s+WWBLd5ik5/U8cvOdLTS+SPyklFaqkupAOCIqJBW7/m0Y7gswG8f6vHBd+8/bUXr9LCIMS
	hJjEHdxZe7MSsh0F0s5jt7PkHqAOl97EWLr9/ieB+f8ThIYeFEZ6GH/aACuzkvfcPEh4sNs+pi36T
	w4YkkP0FmVu8hP+RYcE6hgxi7E+O1WwOuC6xlTrXMmL2bLkhZnv2eHkhcuS4ekhVicPPEqGMDfuU0
	Ii/1xhe/n/P+bMFwU/qAyYKIYXVrKU8AVKNDIL2YEmArDZSKwGmGSwYriSmL+AOBSkmP9eujcjCaW
	R8khjCjqDC99iZyhjY4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnj3R-000000090pr-0Ble;
	Wed, 04 Feb 2026 20:00:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnj36-000000090lQ-0VBv;
	Wed, 04 Feb 2026 20:00:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=nW+unrerB/cbLtA1UiEQFladZ+My5JzDyBWzNM95keA=; b=S4THZHFtHn/WeNSsp5GmKJNsf0
	PQ+Fq2ZQZw1LopvowKkt5kOr6E8H0dCasHBSbNJC/VPXjYa5k0h8GKXBLAq9fAbGFCDpRf0UZDabU
	aZ/iz2gp6/dOWdQ/Fjnl3pYJWfEizqNx1PdMYpJvwQvZnnOmxKQpJcqRI8cx8u4wFglbckWRm1MWG
	UL3B5zNUJxfk/oncWTojuVCE2wePliVAImUZH2usufSG1lnluz/lSpmuiU748wV52rFQSfxxM6t6t
	NVM9/O6k1kfRqSdd05l8WzVr05MEB76snbtaNJVzPDnDs7aWwvHuFAeAFYiDxmYOpWaoJ7Mza9vVt
	ob1myTXQ==;
Received: from i53875ac7.versanet.de ([83.135.90.199] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vnj2y-0070wb-UO; Wed, 04 Feb 2026 21:00:21 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Andrew Lunn <andrew@lunn.ch>,
 "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, netdev@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>
Subject: Re: [PATCH net-next 3/6] net: stmmac: rk: rk3328: gmac2phy only supports RMII
Date: Wed, 04 Feb 2026 21:00:20 +0100
Message-ID: <4037444.q0ZmV6gNhb@diego>
In-Reply-To: <E1vnYxw-00000007hox-0DqH@rmk-PC.armlinux.org.uk>
References: <aYMN2gZMfLPKuukG@shell.armlinux.org.uk>
 <E1vnYxw-00000007hox-0DqH@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_120032_069266_C1E9E95E 
X-CRM114-Status: UNSURE (   8.94  )
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

QW0gTWl0dHdvY2gsIDQuIEZlYnJ1YXIgMjAyNiwgMTA6MTQ6MjggTWl0dGVsZXVyb3DDpGlzY2hl
IE5vcm1hbHplaXQgc2NocmllYiBSdXNzZWxsIEtpbmcgKE9yYWNsZSk6Cj4gQXMgZGV0YWlsZWQg
aW4gYSBwcmV2aW91cyBjb21taXQgKCJuZXQ6IHN0bW1hYzogcms6IGNvbnZlcnQgcmszMzI4IHRv
Cj4gdXNlIGJzcF9wcml2LT5pZCIpIHJrMzMyOCBnbWFjMnBoeSBvbmx5IHN1cHBvcnRzIFJNSUks
IHdoZXJlYXMgZ21hYzJpbwo+IHN1cHBvcnRzIGJvdGggUk1JSSBhbmQgUkdNSUkuIENsZWFyIHN1
cHBvcnRzX3JnbWlpIGZvciBnbWFjMnBoeS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBSdXNzZWxsIEtp
bmcgKE9yYWNsZSkgPHJtaytrZXJuZWxAYXJtbGludXgub3JnLnVrPgoKUmV2aWV3ZWQtYnk6IEhl
aWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+ClRlc3RlZC1ieTogSGVpa28gU3R1ZWJuZXIg
PGhlaWtvQHNudGVjaC5kZT4gI3B4MzAscmszMzI4IGdtYWMyaW8scmszNTY4LHJrMzU4OAoKU2Fk
bHkgdGhlIHJrMzMyOC1ib2FyZCBJIGhhdmUgb25seSB1c2VzIHRoZSBnbWFjMmlvIGNvbnRyb2xs
ZXIuCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
