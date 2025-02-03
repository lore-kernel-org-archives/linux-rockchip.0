Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC02EC02193
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Feb 2025 08:25:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JRRhKGtuozksapTyc2UvOycArI7dSbVGEgn8gl2tCFc=; b=F58VlTbt6VVSGS
	FIOvWfsQFfMKBDRQRYhvqzR77Pn6k5YWzAbTrnBKwQEKaBGSLakJzMC9Ti9H3UX9VWOraHNOfpf+k
	4uf7HMrVtWAu6x3XWaYheA+zZW4AG0xL3JeSoV5WpdPoJfc02J0AAHzf2+e3+MrxHqDLgPnElbn4P
	wc+YDA3ooacLpXlGvnWkLshvalFvQLwJ116/jTSiR8x6kScWqiOLvIDacgaSsSBVn/Fw7NYgZBjjJ
	GCjSNsTEayawfbDH8ztB1bNSsYKtSMdpb9+nnfM7oPXnt/bV16BODUPmwNF80Y4nqyUekqy10Enw8
	T5NFqML0Q7Y7tXn/XpXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1termD-0000000EpbN-43df;
	Mon, 03 Feb 2025 08:25:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tercu-0000000EnaA-15Y3;
	Mon, 03 Feb 2025 08:16:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=reaWstUDNn0gyEm8JVdVpAA3G71FH+2FgWs8P9PO6rU=; b=nVLjUxqBX4etEg5dNV5JFfCarZ
	IXEYAiNM4brMmYnTMeE2CZpsnz/eodjPJxcZFzkqt7/E6HkQhpTDPhI4+eiyKEZaw0Uaydm6qercL
	ja3HZJgnzM94qVzbIHd3rWwykeSprH5AjgepTQBo/SoEmDRdtuF9hS8Lodjs43m/jbXrkK3+thWmT
	eOBukXrqEkj0arHWS+DMj2RZfxUdZZ2t3BxqM+Twp3T+yA82Y96yB+PBcMhDGfFS7beHBDGPHLZ2v
	3YBXYJnOaIgqkWydKz1S6QWF+GeIXA/AQCja8a7wRZWMatStWxxKlWpgsyyk5QVqTErKYRuA77LxU
	xplVYf0w==;
Received: from i53875b5c.versanet.de ([83.135.91.92] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tercj-0005Vr-E8; Mon, 03 Feb 2025 09:16:05 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	krzk+dt@kernel.org,
	dsimic@manjaro.org,
	robh@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Fix lcdpwr_en pin for Cool Pi GenBook
Date: Mon,  3 Feb 2025 09:15:53 +0100
Message-ID: <173857053622.78657.7882688074333021130.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250113104825.2390427-1-andyshrk@163.com>
References: <20250113104825.2390427-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250203_001616_318302_FBEE356D 
X-CRM114-Status: UNSURE (   9.89  )
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


On Mon, 13 Jan 2025 18:47:34 +0800, Andy Yan wrote:
> According to the schematic, the lcdpwr_en pin is GPIO0_C4,
> not GPIO1_C4.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix lcdpwr_en pin for Cool Pi GenBook
      commit: 52f5d7de3dc5ea9350170949d0ec19a9f0676e35

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
