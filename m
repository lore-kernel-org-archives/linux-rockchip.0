Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99D6CC0218D
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Jan 2025 08:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VAq/d1wWCuN4wCe7tM0dh2rkNUPxoXCdpDrsNGqha2U=; b=4plnPpKIdQv8Xg
	hQdYheqB9nrc8rb3QH8SCvsd7QcjumrXaZGacNakC7aNbwdV4G/epnDTk9HHUdgy9s+eZDGvUmsxQ
	EpdqlSf02ZeqTXN5hg+SuvwqZ9CoiAtn/Kpnkys+2Lx7Im/siaLAXWSfuPtYOk2UqCsaKWZhY1yfY
	RDCm3sW7M8mJmds7FmY7pE2+0+NiTSOWw3vsua8tBh2xg3MlbXTIaJgKNFdx/Xb7Mi7l9kKSCpmBo
	317yKZjoKJXihaHh7ndDw7ayZCoVvU3IQrhPSztMvbblSoBqZoaeVj2MbBwYPfKZkLnVlCJNcXNCQ
	EO6aQXIO5P8SnUBaRvRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdmQJ-0000000ACW9-1J33;
	Fri, 31 Jan 2025 08:30:47 +0000
Received: from mail.cybercitadel.pl ([57.128.173.14])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdmQG-0000000ACT4-1x30
	for linux-rockchip@lists.infradead.org;
	Fri, 31 Jan 2025 08:30:46 +0000
Received: by mail.CyberCitadel.pl (Postfix, from userid 1002)
	id 33CE64DDE9; Fri, 31 Jan 2025 09:30:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=CyberCitadel.pl;
	s=mail; t=1738312241;
	bh=vUvp0ttX3lOxjdOrvZsKvJKNpHHNusfF6naBdS8j1E8=;
	h=Date:From:To:Subject:From;
	b=E+iC20V8+Kfe3t8DA88IAvlKNn4AYr5g/pM1Czf+xU6JL/bifsF5Mfo/r7Wt11CHY
	 JupJ+yWjkoDqYrKjmSV6osyxGaotgAaKdgIgxiscrqKoOUJjMOuU6pl2wrXdCe40x6
	 k1Q0Cbfz7WH00gwTlb//F6pdlYpX60Er9uPBzr1AEgrSJ1uXy4BBCkKO8OgBRuKjLK
	 tpz6xbg7xYDq7hrFDvVSZASzvMUynJEULC2kUlQxEAYDkgYW4SEepIVNS+XzmP+Szb
	 1zyoZArce/T9BIMVatDc9X6H/YiuUrcap/R5ZuX8TFXvjl++XEQFH8ZhiCNSi7IAfm
	 9MhYRc9u6fpog==
Received: by mail.CyberCitadel.pl for <linux-rockchip@lists.infradead.org>; Fri, 31 Jan 2025 08:30:32 GMT
Message-ID: <20250131084500-0.1.d9.2dqie.0.e3yai4elag@CyberCitadel.pl>
Date: Fri, 31 Jan 2025 08:30:32 GMT
From: "Marek Kucharski" <marek.kucharski@cybercitadel.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: =?UTF-8?Q?Prosz=C4=99_o_kontakt?=
X-Mailer: mail.CyberCitadel.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250131_003045_183576_78E6AACE 
X-CRM114-Status: UNSURE (   1.11  )
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
ZG8ga29udGFrdHUuCgoKUG96ZHJhd2lhbQpNYXJlayBLdWNoYXJza2kKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
