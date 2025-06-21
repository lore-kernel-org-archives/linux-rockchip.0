Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAACBC71157
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Jun 2025 18:44:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BOpxcAJ67WqAx/qXH6FRw/72Q40Uiy6b8Khb7uiTs7I=; b=0K+W8wSZCRlwDT
	RnZqP9SO/s7TxID3RYbPzQkSMSx2U3bLVKMQVvlBPQ9zoe90mkAiyzGDyy85TQPIzVaRjqNJH34Iv
	5AA2+QDQPqLQi16Kzt7qOs62fBVONxeJW+vkCwJm1MDsHp9WrELqCW11CYMh1cP4TTP9iKkGWVd9G
	W6Q+1BpWBmVPVB6pHeForP5t8dUnlpi7x7qYgh2qOixAOvKZ9j38ZPiMV5YEt+iZMeanfscfOGv1y
	BYLICm0yMBAWpZpSthobeuQ+IDinYatTZnfP0oi5liBtIKu5MDaZvtyfGrDCT5JMFoUJxnZLjLfUg
	UKmLV8csSw5/3jnJZhtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uT3CS-000000009Tb-2OI1;
	Sat, 21 Jun 2025 18:44:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uT3CQ-000000009Rb-1lMa;
	Sat, 21 Jun 2025 18:44:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=LOYzEFryhpWMDpLqFIhYynTTjYVsx1UHxgnT1pXFT10=; b=ZexhGV+Kmh5Mh87IfQxPw/qKeM
	+fdXdNKlpnNTm+8i0q+LJtC6zav6fJzLkR68ACvxRSodcWNdpVNvEW9MFpy70j066xUowmgXVxnsQ
	ZSSwlsozJKOtQQe4ZKbfXwCrR/8krp5IuANlkAHt7neAoy9ZnhVOOsuskxoYuv0XCH0acBk+O95vh
	aeJrv1AiXyAEtfMep6gkvtRT3oUQyQaRH507J4hzMZ/zAR3zvXZNPzNJNBO46zT84re2SYzZn63I4
	dTOnFN6/qg2r6dvxdaP+Fe+jzRvFsIFg6uiv9FW9qYyP4NsnBkPMSnPj6coiSnUeMWP4F3fq2OCLG
	OmE4qMyQ==;
Received: from 85-207-219-154.static.bluetone.cz ([85.207.219.154] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uT3CH-0002NJ-1N; Sat, 21 Jun 2025 20:44:13 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: amadeus@jmu.edu.cn, ziyao@disroot.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 0/3] rockchip: Add GPU support for RK3528
Date: Sat, 21 Jun 2025 20:44:12 +0200
Message-ID: <2333578.IobQ9Gjlxr@phil>
In-Reply-To: <20250621090026.23293-1-amadeus@jmu.edu.cn>
References: <175045054807.1572438.8910024255365917623.b4-ty@sntech.de>
 <20250621090026.23293-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250621_114422_480828_4DF3D869 
X-CRM114-Status: UNSURE (   9.66  )
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

QW0gU2Ftc3RhZywgMjEuIEp1bmkgMjAyNSwgMTE6MDA6MjYgTWl0dGVsZXVyb3DDpGlzY2hlIFNv
bW1lcnplaXQgc2NocmllYiBDaHVrdW4gUGFuOgo+IEhpLAo+IAo+ID4gQXBwbGllZCwgdGhhbmtz
IQo+ID4KPiA+IFsyLzNdIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgR1BVIG5vZGUgZm9yIFJL
MzUyOAo+ID4gICAgICAgY29tbWl0OiA2Yjg4YjhhNjQwZmE1ZDIxNjllMGNlNDdiODhkYzMwNzI3
ZmMxMTA1Cj4gPiBbMy8zXSBhcm02NDogZHRzOiByb2NrY2hpcDogRW5hYmxlIEdQVSBvbiBSYWR4
YSBFMjBDCj4gPiAgICAgICBjb21taXQ6IDY2OTA4MGViN2Y3YzQ3MjBhYTRlNjQwYTQ5Zjc0OTBj
ZDkyOGNmY2MKPiAKPiBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVs
L2dpdC9tbWluZC9saW51eC1yb2NrY2hpcC5naXQvY29tbWl0Lz9pZD02Yjg4YjhhNjQwZmE1ZDIx
NjllMGNlNDdiODhkYzMwNzI3ZmMxMTA1Cj4gCj4gU2hvdWxkIHRoZSBncHVfb3BwX3RhYmxlIG5v
ZGUgYmUgYWJvdmUgdGhlIHBpbmN0cmwgbm9kZT8KCnllcyBpdCBzaG91bGQuICJvIiBiZWZvcmUg
InAiIDotKSAuCgpBcyB0aHQgY29tbWl0IHdhcyBqdXN0IGZyb20geWVzdGVyZGF5LCBJJ3ZlIGFt
ZW5kZWQgaXQgdG8gbW92ZSB0aGUKdGFibGUgdG8gaXRzIGNvcnJlY3QgcG9zaXRpb24gbm93LgoK
VGhhbmtzIGZvciBjYXRjaGluZyB0aGF0LgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
