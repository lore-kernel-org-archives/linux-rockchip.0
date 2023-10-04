Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3185E8FDDB
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Oct 2023 09:01:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9V+FNnfL80vHUmar4JvYeJWWibwM0QEKuU0+DQBTun0=; b=QjRFM17nUcq6LO
	qgKonS0gZpMMNg6qfJ4Ir02olONsN/tmoFhMxS6+PyUSwSgKx6eCn1qUo1tGzVcAr9aZfZo9a//8E
	8/6/mDc02JeCTEPNb4/vhEZVHqi1U3/Z2MIzQhwTVUqs8oClK4Etg9C1o8fofqlXLoicogoDrmEyI
	PFi4f1dyAiry2wlqLCqlMlbRE/EW6GN0enaaLnFy972W9wsevMYeAzjTMhuBAA8d7qbJ+otR5PnW8
	IjO9laLiEkkeFL6J6APqDyV1dFxstLKMg4A/2wAXt+ftwE4p7qt50rbZ1+4aspOkcl2HW64H84T5r
	vMGEGg5vkAYlQ4KFVMuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnxkC-00GxQG-14;
	Wed, 04 Oct 2023 09:00:36 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnwaI-00GfU1-1C
	for linux-rockchip@bombadil.infradead.org;
	Wed, 04 Oct 2023 07:46:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Subject:To:From:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=mMhfBvhM53FtUQl1P3lyeSY5aDBQYiR8qQBy6YFQHi0=; b=TxM+GaDzIOa+c4zpZwISG/+s1f
	jFaPa8kaiFedKUfDi+C3eMrFnnl5Encr+ZQYTeLwmuOl0y2l+FoCrBDFKy5PBI3xasBwD+co6eV8L
	nY3ckNQ88w7k4g52u/m7m+SjCYtPKOIicZFFacRoFwENwmchsTMUGFdABHEWL3SWCWXqc1kIKgeIP
	TKmA/sAsRvGcwcd4pIq9zuOa7Kr91FHLpUx9jzCmMQPVgwpYJeioyoYEDbuCtKlATtmTIHi5sMOLo
	i3+MG5R+mwfzhqChQhWMzRgCn7hYLA6jaDJTkxLHIhM4EcpowK6DDJBEyfXlIXKU2uZ+ITfoLDE3X
	Beh8Kmiw==;
Received: from mail.citycodes.pl ([158.255.215.195])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnwaA-00Aae8-1w
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Oct 2023 07:46:16 +0000
Received: by mail.citycodes.pl (Postfix, from userid 1001)
	id 6FBF41F588; Wed,  4 Oct 2023 09:45:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=citycodes.pl; s=mail;
	t=1696405571; bh=mMhfBvhM53FtUQl1P3lyeSY5aDBQYiR8qQBy6YFQHi0=;
	h=Date:From:To:Subject:From;
	b=OQZv3OGP/5+PPvap9iJrw+QQZ/chFb7DYtM3aWkY9kRDMg9IAwWXRFZ0ijYXx39FX
	 gzfKflpwW2EbpCDY6K3lcKFMcB30Ww6S2/fP7PhCUqHdVjG88OP3p5DdXpGumixblI
	 AEhjjSF8SM3nOZHMG3hPH9a7tV0gnHywuczpmRKvcp9LAkEzZtZxBjY5i4Nackvy9P
	 x8alWVcDdW/ZU1m33VAJSS7WzZ6OCj1B753CdafvxFVkaTtVdX2FOmEXI+zIgVsI/c
	 1BTaV07ou68X1wE2TrT6w3gVxwVKqP2Nl+NAHBYddSUxTuTg1PvLWlf4dHLImpMMrr
	 XNib71rxbyrhQ==
Received: by mail.citycodes.pl for <linux-rockchip@lists.infradead.org>; Wed,  4 Oct 2023 07:45:38 GMT
Message-ID: <20231004084500-0.1.7v.j17k.0.x0g49q4b41@citycodes.pl>
Date: Wed,  4 Oct 2023 07:45:38 GMT
From: "Kamil Lasek" <kamil.lasek@citycodes.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?Rozszerzenie_Programu_M=C3=B3j_Pr=C4=85d_5.0?=
X-Mailer: mail.citycodes.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231004_084613_632555_A810E0A5 
X-CRM114-Status: UNSURE (   1.02  )
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

U3phbm93bmkgUGHFhHN0d28hCgpXIHJhbWFjaCBub3dlaiBlZHljamkgcHJvZ3JhbXUgTcOzaiBQ
csSFZCBtb2fEhSBvdHJ6eW1hxIcgUGHFhHN0d28gZG9maW5hbnNvd2FuaWUgbmEgemFrdXAgaSBt
b250YcW8IGZvdG93b2x0YWlraSBpL2x1YiBtYWdhenludSBlbmVyZ2lpLiBNYWtzeW1hbG5hIGt3
b3RhIGRvZmluYW5zb3dhbmlhIHd5bm9zaSA1OCB0eXMuIHrFgi4gCgpKYWtvIGZpcm1hIHd5c3Bl
Y2phbGl6b3dhbmEgdyB0eW0gemFrcmVzaWUgemFqbWllbXkgc2nEmSBQYcWEc3R3YSB3bmlvc2tp
ZW0gbyBkb2ZpbmFuc293YW5pZSBvcmF6IGluc3RhbGFjasSFIGkgc2Vyd2lzZW0gZG9wYXNvd2Fu
eWNoIGRvIFBhxYRzdHdhIGJ1ZHlua3UgcGFuZWxpIHPFgm9uZWN6bnljaC4KCkLEmWTEmSB3ZHpp
xJljem55IHphIGluZm9ybWFjasSZIGN6eSBzxIUgUGHFhHN0d28gemFpbnRlcmVzb3dhbmkuCgoK
UG96ZHJhd2lhbSwKS2FtaWwgTGFzZWsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
