Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B110C5AD49
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 May 2025 07:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YZlt0u+MW3sYnwLmSkUmfOGusHNXzLgE9zaBkVVriFc=; b=hGVFMiNqEYgWlS
	4FG9r9j3b8CCfmz8MFkQ+bladgt8io5p2Ezuxf08XkkVQ0jFf4dhdXKqE4xW2u90grMhI04fkhZ6d
	9i5dLNHwS5ago0QdbDkDvBOuTQLEjm4U5BJnJ/5XvP5GTYMFgBQIRajCWA6LZkKaRyrVCMD7z1UV5
	+A7QIRahl8Z7l0fs9vZfCHQ3Yi16A3bBUzv16WD3S1L4IbnKBx8kLb3B1bXpTeu+Q4zcVjC4pmI9X
	xodNISm+EHZuKh/KAxCNofNfnMTOc6ut6dWxx7XvOyz+Hpwq9ca3t0wAF3fS6A35Drj6Pm5r9RrXt
	pd1k1tmOy4n2ExfzPZMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKXpR-0000000FBuQ-28nB;
	Thu, 29 May 2025 07:37:29 +0000
Received: from mail.genbiz.pl ([94.177.225.232])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKXp0-0000000FBnD-1UBX
	for linux-rockchip@lists.infradead.org;
	Thu, 29 May 2025 07:37:04 +0000
Received: by mail.genbiz.pl (Postfix, from userid 1002)
	id 777078376A; Thu, 29 May 2025 09:35:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=genbiz.pl; s=mail;
	t=1748504185; bh=QE2s7Sx3IpLcBTCvlyAnhlStw9+iPMwbl94HYtFJXq0=;
	h=Date:From:To:Subject:From;
	b=IesDxtrjvsktl5KFTTcz7mqL6Y+5j9M5TQH1XXYTQllxRRPt6e1gPyq1Cfm5J0Vp3
	 AZq1oyuLMm5HroEkBu/DGyX9Jk454X8YUbBA6QBWm91KZu5dWp0gaDZXVT1sD53oPc
	 5HM1dNCh3WxtcOAZ/Jr/h8jt5dLGkx+1FNEa+2dYlqOQvfZMmFFv030nY5Syhbil33
	 EBSGlRGB6J0bvmoqw/TgOZRS1bU+MF/wrBiV6FDAUbGvzCWyOefZKm7b9IA5fbieWZ
	 FgOeGuFKXSp7Vly0NYm/U8qQgp0QXOiHWS7B92F171WguyaRcLCAcmCd28qw2Wvsz9
	 t1DbJKLGkOx2g==
Received: by mail.genbiz.pl for <linux-rockchip@lists.infradead.org>; Thu, 29 May 2025 07:35:30 GMT
Message-ID: <20250529084502-0.1.1n.1x50.0.c803gc1fpp@genbiz.pl>
Date: Thu, 29 May 2025 07:35:30 GMT
From: =?UTF-8?Q?"Rados=C5=82aw_Grabowski"?= <radoslaw.grabowski@genbiz.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?Pytanie_o_samoch=C3=B3d_?=
X-Mailer: mail.genbiz.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250529_003703_070964_A2572157 
X-CRM114-Status: UNSURE (   0.07  )
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

RHppZcWEIGRvYnJ5LAoKQ3p5IGludGVyZXN1amUgUGHFhHN0d2Egcm96d2nEhXphbmllIHVtb8W8
bGl3aWFqxIVjZSBtb25pdG9yb3dhbmllIHNhbW9jaG9kw7N3IGZpcm1vd3ljaCBvcmF6IG9wdHlt
YWxpemFjasSZIGtvc3p0w7N3IGljaCB1dHJ6eW1hbmlhPyAKCgpQb3pkcmF3aWFtClJhZG9zxYJh
dyBHcmFib3dza2kKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
