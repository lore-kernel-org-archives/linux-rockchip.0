Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B918AD20684
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Oct 2024 07:56:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:To:From:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dNEUT8lLZ6SHMIDWjep4iGVdUYNpPKiaBh+TVGKzAhQ=; b=2SWHoE8WLOCVES
	G3RyY1M5mmtR2b537j+rwb2UxNf/gIv8x3rX1eNbMobBsOGEp5/Aw96GaZ2PbbMkG/rTgn5MS0Rf5
	evb0U+O3GSWtoaEKhs6BdlFdtKN6ABEAWjqNoMIFtrCtV5X0xbqCjKGiAq9Zxv6We5aoCDss3pJ/I
	cWPXoXQXfKPBBMIbj6CpOPgHwrMEy5teGH1VFgqCfIJpSo1Qt3EnroRR7emlGz2RZpraDnHFdHaz9
	mxu/Pl6fO7ZRHvKcIhm4SdJLjWlZSkQ+4EOQxMy5Q/jmjNEK+bP/gISsg493ejT4huU0gu9whwM3m
	ZPxanhFr5PpdgHuC44Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0ytO-0000000Auc9-1Nfv;
	Wed, 16 Oct 2024 07:56:26 +0000
Received: from mail.geniusthrive.pl ([217.61.112.199])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0yrh-0000000Au7A-1ls5
	for linux-rockchip@lists.infradead.org;
	Wed, 16 Oct 2024 07:54:44 +0000
Received: by mail.geniusthrive.pl (Postfix, from userid 1002)
	id 235E185416; Wed, 16 Oct 2024 09:51:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=geniusthrive.pl;
	s=mail; t=1729065156;
	bh=5k7KaERzV9XtiDAeG3jYJqSXCiNxYwmW5KPssYFF/k8=;
	h=Date:From:To:Subject:From;
	b=CIa2pKepn1rAfB9+JqdXoxJZCeGnuRVdt9zB6yPxSoS1N8KbNVhks8cg2Qy4Lzdek
	 NrOF8U7xtskzU1ZGpyBV6Bm7hPcrz5IqNeq30EcPsqcaMY5/Ph7Y7RHlMsCKQgQHjv
	 v/O66DGynIDpQKdLEmhxicS4/OyqS9YVY5xnwo+oSCjqv0ZeWcixOyqmrAh6z7QdtT
	 dbnPWXbnvNDmUKIlY+9EhIdSpIth3EQipKEjfPQLQT8LVNL52QWBWrZp3EuxnXoNfz
	 NDmqJUwC1sLrYlcLPrLF6bO9C4YWgRIDz5ZcN0N/g9EfyBLAWYHW5mCO2GMzcAWsbX
	 QCODkxIMirxzA==
Received: by mail.geniusthrive.pl for <linux-rockchip@lists.infradead.org>; Wed, 16 Oct 2024 07:50:57 GMT
Message-ID: <20241016084500-0.1.ab.1hahg.0.o10qsda3ps@geniusthrive.pl>
Date: Wed, 16 Oct 2024 07:50:57 GMT
From: "Patryk Wysocki" <patryk.wysocki@geniusthrive.pl>
To: <linux-rockchip@lists.infradead.org>
Subject: Zapytanie ofertowe 
X-Mailer: mail.geniusthrive.pl
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_005442_385039_EBE06A97 
X-CRM114-Status: UNSURE (   0.59  )
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

RHppZcWEIGRvYnJ5LAoKUG96d29sacWCZW0gc29iaWUgbmEga29udGFrdCwgcG9uaWV3YcW8IGpl
c3RlbSB6YWludGVyZXNvd2FueSB3ZXJ5ZmlrYWNqxIUgbW/FvGxpd2/Fm2NpIG5hd2nEhXphbmlh
IHdzcMOzxYJwcmFjeS4KCldzcGllcmFteSBmaXJteSB3IHBvenlza2l3YW5pdSBub3d5Y2gga2xp
ZW50w7N3IGJpem5lc293eWNoLgoKQ3p5IG1vxbxlbXkgcG9yb3ptYXdpYcSHIHcgY2VsdSBwcnpl
ZHN0YXdpZW5pYSBzemN6ZWfDs8WCb3d5Y2ggaW5mb3JtYWNqaT8KCgpQb3pkcmF3aWFtClBhdHJ5
ayBXeXNvY2tpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
