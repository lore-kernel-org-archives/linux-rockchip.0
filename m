Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17270C369D9
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Apr 2025 08:19:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Xr0xvPCl3J1fDazOQpObT1LCcHMB4vUzy5L9AB0wsSo=; b=5Ah4dMwHQKergV
	PaQrso9RJhjN0u/UzbHF3D3rlzDYUCo9MOZvRgFa4ZWYdVDlH5GxizaFbtnLUUVCcf4syscbjljcd
	rWrfEiFRqI1aqYqjf52PJyPXv/rZtbS31T+/MtganpBdhIfRgQibwE41okSbwKE7xukMXiz9v+hwP
	scyiC0+hSg9niAB3lXG1KpzAg54jST6NcQD3QgyXyJVsBwIL8AmwAzgk0yD89dZUnfEKQJNqJZEZd
	ixH/Hu+jkiY2Sjvovwnj8UCEb4y+S7z8qbc1ARSEwD6FYbtPMUoa+Wk4Pj2BE9AxZdw21N64XAnLw
	iGewEi4XbSN4+9ijsVfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uA2ep-0000000C7iv-2uva;
	Wed, 30 Apr 2025 08:19:07 +0000
Received: from mail.sparklesage.pl ([141.94.21.160])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uA2IN-0000000C3tN-0GFi
	for linux-rockchip@lists.infradead.org;
	Wed, 30 Apr 2025 07:55:56 +0000
Received: by mail.sparklesage.pl (Postfix, from userid 1002)
	id C0BBD4A7D3; Wed, 30 Apr 2025 09:55:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=sparklesage.pl;
	s=mail; t=1745999753;
	bh=7ZTtWeR14KGmyVZVpV9br+vqxTirh+yviRsdhzwGi7g=;
	h=Date:From:To:Subject:From;
	b=exkaev2vy7t55jK2ziJfMFtmP57o553u+oS6JUeud56NcekFgBuhb9Map5aJF2JX7
	 J7HpdM3ud4bySUBTvANmOnohrpF/4R75rFSbBKjltvVd2TW178m65r2w5jmFsZqRW3
	 zjPTFA48SBxrgombHq26STH6UTh79zW4eNclW7eHz+l1oiUizMCIp8+JZFtmHSehW1
	 bqczZOWup30d6nUaH0gLLuMiS/CVF/bsmLnxJxsQltfJ262TM3WpTEcB6do5tzz/pI
	 K4nizutp4DEcp8MNNYlF2PguLk3Y/1fW91Xpj6IQZ2VWA3oOCOJxgjm4tfvkejx6P7
	 diKycATHSGsZw==
Received: by mail.sparklesage.pl for <linux-rockchip@lists.infradead.org>; Wed, 30 Apr 2025 07:55:42 GMT
Message-ID: <20250430084500-0.1.dp.1lvpg.0.errz9ereac@sparklesage.pl>
Date: Wed, 30 Apr 2025 07:55:42 GMT
From: =?UTF-8?Q?"Katarzyna_Chowa=C5=84ska"?= <katarzyna.chowanska@sparklesage.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?Redukcja_nale=C5=BCno=C5=9Bci?=
X-Mailer: mail.sparklesage.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250430_005555_246507_2BD26E86 
X-CRM114-Status: UNSURE (   0.11  )
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

RHppZcWEIGRvYnJ5LAoKamFrbyBmaXJtYSBzcGVjamFsaXp1asSFY2Egc2nEmSB6IHpha3Jlc3Ug
cmVzdHJ1a3R1cnl6YWNqaSBpIHVwYWTFgm/Fm2NpIGtvbnN1bWVuY2tpZWogcG9tYWdhbXkgcHJ6
ZWRzacSZYmlvcmNvbSB3IG9kZMWCdcW8YW5pdSBpIHByenl3csOzY2VuaXUgcMWCeW5ub8WbY2kg
ZmluYW5zb3dlai4KCk5hc3phIGthbmNlbGFyaWEgb2ZlcnVqZSBwcm9mZXNqb25hbG5lIHdzcGFy
Y2llIHcgcHJvY2VzaWUgdXBhZMWCb8WbY2kgZ29zcG9kYXJjemVqLCBrdMOzcmEgZGFqZSBtb8W8
bGl3b8WbxIcgY2HFgmtvd2l0ZWdvIGx1YiBjesSZxZtjaW93ZWdvIHVtb3J6ZW5pYSB6b2Jvd2nE
hXphxYQsIGNvIHBvendvbGkgUGHFhHN0d3Ugcm96cG9jesSFxIcgZHppYcWCYWxub8WbxIcgYml6
bmVzb3fEhSBiZXogZG90eWNoY3phc293ZWdvIG9iY2nEhcW8ZW5pYSBmaW5hbnNvd2Vnby4KCk5h
c3p5bSBjZWxlbSBqZXN0IG5pZSB0eWxrbyByb3p3acSFemFuaWUgcHJvYmxlbXUgemFkxYJ1xbxl
bmlhLCBhbGUgcsOzd25pZcW8IG1lcnl0b3J5Y3puZSB3c3BhcmNpZSB3IHByb2Nlc2llIG9kYnVk
b3d5IFBhxYRzdHdhIHBvenljamkgYml6bmVzb3dlai4KCkplxZtsaSBjaGNpZWxpYnkgUGHFhHN0
d28gcHJ6ZWFuYWxpem93YcSHIHN3b2rEhSBzeXR1YWNqxJkgeiBla3NwZXJ0ZW0sIHByb3N6xJkg
byB3aWFkb21vxZvEhy4KCgpQb3pkcmF3aWFtCkthdGFyenluYSBDaG93YcWEc2thCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
