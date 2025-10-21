Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EA44CCD1A7
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Oct 2025 06:59:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E+eeaXSionoG+Z6xBH+enZXopUJH7ATSWwHc9qG/MeI=; b=W9a68pY5dVbonz
	CqNJIL1CR1rjrYetPtFumVrNqdDOnzyS5qIQuUMuYOhbCh9uFbaMo6yPQD0HPTZcuwQc0+/P8WCCh
	hbnc1oJzR5qtPegq6kbPcqmHbpFD0kre6iAKUfhno8dvZaheok1JxuF1x/quhddT5o/gw8ia2QPth
	+xDh9T791dS/0G0kQsvTzflbwFGkCCYYxU3s/u5DFk/YN/MtaKj5jFIPU+cciQ83V4nWNrz68eZSq
	E60JauZ2CbnKQafj+5aPkB9a/6S9vgRgKzC7tOltvnNOPfaSyLmrY0QG6JM+IMyTozT5VlLJzqJJb
	DmYi63J9HwEbR0fKVmog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB6LX-0000000Fzxn-1myM;
	Tue, 21 Oct 2025 06:59:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB6LU-0000000Fzx4-1hZc;
	Tue, 21 Oct 2025 06:59:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=GDcK8E3M5R8B2VvEQJW+iEfSUDxX2Oq3t5ONK/ap61Q=; b=pwf2c2XmLc1x9Iteap7pq75l+l
	XMKItSA/Vz+pZ05mkpOVOVin98sEmrDl8VIhpjsjaCzCqts3AClXE0Jvu7j0kBc50J44V2ziAcIXi
	QREg7tt8/FJEWg3SwTKVCZA+tUTs+MLi6vs+rAU4crv2tiVW3tE9JKkl7RSiKpieBQof97eUW4ZHf
	dmPLnSvHqd2K/aIHHF4642k3IZVD2a8a9UTifLCtOxFwpJGL24YE5u9xNYIOjaQjTT2jTwY+jqZts
	WgkcACXigHyS2JUvFr2WYlLDwYwahAxnAfJh5eurQHINPhjST6XZ2ubYup6qd3o6r2w/8IJGp0pO3
	ugUfCO3A==;
Received: from [212.111.240.218] (helo=phil.guestnet.ukdd.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vB6LS-0000ZO-J5; Tue, 21 Oct 2025 08:59:46 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: quentin.schulz@cherry.de,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix indentation on rk3399 haikou demo dtso
Date: Tue, 21 Oct 2025 08:59:45 +0200
Message-ID: <176102998080.81864.1578466787311951738.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251020091139.3652738-1-heiko@sntech.de>
References: <20251020091139.3652738-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_235948_465058_FE12BAE8 
X-CRM114-Status: UNSURE (   9.05  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Mon, 20 Oct 2025 11:11:39 +0200, Heiko Stuebner wrote:
> The regulator-cam-dovdd-1v8 uses spaces for indentation, where it should
> use tabs. Fix this.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix indentation on rk3399 haikou demo dtso
      commit: 26f0f122f92f2e8c384c08a05956417bfb5f6fbe

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
