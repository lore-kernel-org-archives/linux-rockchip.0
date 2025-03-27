Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6D91C3600B
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Mar 2025 09:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qLrlF7pVwZJJhvNjNGxI8jGxiscieI7ku7KsbW3Oz7w=; b=au0oNHG9+rtGAb
	55BbZPQDCOOvTcfBIR/DS9lDVNuexXthg80qKxLUiwL17Tc4Xlijz9d5YX0IASOBxsNSBNgRixEjI
	jvpU1e+BddVuehgi/twXlHgsYPOQ3//MRj/EF/kfuACGBkLv1Hmm/7lPenbcmcyBDDIi8e1GjT0kV
	p/QRc09f5aevlGFIteeonQ+T25xq07OjontOCd7uuhyMIw1J9xc0jAEAFr93jvXdfQGIQecCsM/vP
	aRLs3LaAmowmi0QxlmERHvSKe4vwxMNC+i79aucKI5k4SQ54OlJM/sfvE5th4xtNZ+Z+FZIQzIV7e
	SL1git/zDpO8WA7H+jSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txjP4-0000000AYRG-1Ml7;
	Thu, 27 Mar 2025 09:19:58 +0000
Received: from mail.growdeal.pl ([141.95.55.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txjNd-0000000AYJv-1qab
	for linux-rockchip@lists.infradead.org;
	Thu, 27 Mar 2025 09:18:31 +0000
Received: by mail.growdeal.pl (Postfix, from userid 1002)
	id 4D0D024634; Thu, 27 Mar 2025 09:15:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=growdeal.pl; s=mail;
	t=1743066943; bh=nU0fzD5wnLwbt9yoUSBeMInFHzMm7DGirLXtUO2ZpV8=;
	h=Date:From:To:Subject:From;
	b=U1YQBG2xede0WUm6lS8IUf7rfbqfy2dNEY9WM1Yo5FG5IUIv9sSf0+9sp9PfpiDWi
	 wwtiFqwPVhWcmQEQaACOQran8kX3hrJKJjD+09TnaxTd5npQcXjQzn1nWUjS4x8F0a
	 m7Z8uka5eqpGdSyyMSWBBGY3aGfXfUlRSBQsUPwiOGswZvXGLZubP1bzJCvLP1ofoo
	 eNmdSMFJIXFhXhYrDSMvU/0j1iWtEmtp9Rw35mUlZR43W8je6VtByp4VpoWAHtGgaA
	 nsL+zi/E4P9pIW9+T9/iQ5ZoilzxoyzbM8pY30O38Kh+zYLK3xJFOCCCc4aoxWgCfP
	 H8Mv13S4AvBDg==
Received: by mail.growdeal.pl for <linux-rockchip@lists.infradead.org>; Thu, 27 Mar 2025 09:15:21 GMT
Message-ID: <20250327083154-0.1.1f.lgbe.0.1t4fqchxaa@growdeal.pl>
Date: Thu, 27 Mar 2025 09:15:21 GMT
From: =?UTF-8?Q?"Pawe=C5=82_Zajdlicz"?= <pawel.zajdlicz@growdeal.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Rekrutacja handlowca 
X-Mailer: mail.growdeal.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_021830_170913_43B6F259 
X-CRM114-Status: UNSURE (   0.96  )
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

V2l0YW0sCgpDenkgbWFqxIUgUGHFhHN0d2EgYWt0dWFsbmllIHBvdHJ6ZWJ5IHogemFrcmVzdSBy
ZWtydXRhY2ppIG9zw7NiIGRvIGR6aWHFgnUgaGFuZGxvd2Vnbz8gCgpQb21hZ2FteSBza3V0ZWN6
bmllIHJla3J1dG93YcSHIG9zb2J5IG5hIHN0YW5vd2lza2EgUHJ6ZWRzdGF3aWNpZWxhIEhhbmRs
b3dlZ28sIFNhbGVzIE1hbmFnZXJhLCBhIHRha8W8ZSBLYWRyeSBNYW5hZ2Vyc2tpZWogdyBvYnN6
YXJ6ZSBzcHJ6ZWRhxbx5LgoKQ3p5IG1vxbxlbXkgcG9yb3ptYXdpYcSHPwoKClBvemRyYXdpYW0K
UGF3ZcWCIFphamRsaWN6CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
