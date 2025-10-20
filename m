Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD130CCD193
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 08:02:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CRgAYM6OyBnMS/ZFbw0s0eM7ndjMHF0ncQuF1ko+tqw=; b=kU9+Hu/HUB9bev
	8PrzQWvb+H/4hfhMwei1l8SywmMoraGgZ8BwswAmYvcpILZaoQlQMJY4sGaOeEuvf1slcNB7dyF0f
	KwvFsNXZJdlC9ceYuk3FTPTqt8W3Roei+ydgw1ii3rGIJej7XL+HO0e6P4UDwSegu0Xo2TKnHDodA
	nqnvOBYAQD7sHNcJPnZ5xVaVpPRBdTuAo7wUCbWqrsZCDZRf8opE1paFVIFF1z31UvliR7UNh7z6o
	UzRT26df7LY08TruKkxPyOTU7kdIJ5LpMI9dBtgzL7+X0vv3uOS4jVajThtT9awc/5FhwdVYaOlZ3
	fhfHGgJq1lyEjGibPP4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAkqd-0000000CIJ4-0O5Q;
	Mon, 20 Oct 2025 08:02:31 +0000
Received: from mail.proventix.pl ([51.195.118.1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAkqa-0000000CIH3-0lPn
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Oct 2025 08:02:29 +0000
Received: by mail.proventix.pl (Postfix, from userid 1002)
	id 9C7E7A4294; Mon, 20 Oct 2025 10:01:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=proventix.pl; s=mail;
	t=1760947343; bh=jxb0oDMobd7GaIcoqojTSF8ZoNcoVg4kM8ohJkoHKb8=;
	h=Date:From:To:Subject:From;
	b=OBRk5OStHLz+fcUIrOZGoB4kDyA3cYWWea/klWcTl+kAWU0qSX8AbFz9iiQNBnUym
	 cgp6Ml5/OzD6dXZiKq6psHHaaBKvMYVfux90O/24CJ5ROeXk4nl5aWAqUEH0HFOXTT
	 6d3zyQhfwc8C65tttNWcJQucVoJcaccsS3kfkGjGtv2OYK+PItWjSa86UgdSkIH+yL
	 nZv2OqXN7lRy1dhrSR1msGBowHWAfx/Ef0hZfsu93LxDtQZg+a8LjzyiA5O6skX3Uu
	 0UG4ArnSWTycUBREamGWnw283zG+BU9rk4FqSng+m2/0P/Yr1lTQ2kBYJdaHluBw9S
	 OtLIy/mURE/BQ==
Received: by mail.proventix.pl for <linux-rockchip@lists.infradead.org>; Mon, 20 Oct 2025 08:00:21 GMT
Message-ID: <20251020084500-0.1.ol.3jc6m.0.b9flm34ptm@proventix.pl>
Date: Mon, 20 Oct 2025 08:00:21 GMT
From: "Adrian Liszka" <adrian.liszka@proventix.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?Prosz=C4=99_o_kontakt?=
X-Mailer: mail.proventix.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_010228_491611_A23AE2CC 
X-CRM114-Status: UNSURE (   0.26  )
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

RHppZcWEIGRvYnJ5LAoKQ3p5IGplc3QgbW/FvGxpd2/Fm8SHIG5hd2nEhXphbmlhIHdzcMOzxYJw
cmFjeSB6IFBhxYRzdHdlbT8KClogY2jEmWNpxIUgcG9yb3ptYXdpYW0geiBvc29ixIUgemFqbXVq
xIVjxIUgc2nEmSBkemlhxYJhbmlhbWkgendpxIV6YW55bWkgemUgc3ByemVkYcW8xIUuCgpQb21h
Z2FteSBza3V0ZWN6bmllIHBvenlza2l3YcSHIG5vd3ljaCBrbGllbnTDs3cuCgpaYXByYXN6YW0g
ZG8ga29udGFrdHUuCgoKWiBwb3pkcm93aWVuaWFtaQpBZHJpYW4gTGlzemthCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
