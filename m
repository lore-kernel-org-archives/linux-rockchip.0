Return-Path: <SRS0=Ii8/=IT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6203C433C1
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Mar 2021 20:14:54 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 197F26194C
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Mar 2021 20:14:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 197F26194C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=G1pQt0/gpTBd2D68DFQTuCMaLbLN8B+lI2TgQp50omY=; b=NGc7yEgVORfFMV/tNhG6Sw8Am
	dFHOBFuOUuVvs3TxmSPBNdwcFBrFjSLCb/vaJeuuYQWeHMXE6EruhIdnpXpXTh6mSD1FNhkmE2E7H
	K0SC8tuW681XOdYjexU6D3MGVsKtwdHCLE6J3b4cxazyiy87wudtm963BaZwDTfz3BOq1ymgWUCuU
	EQW8cAyNoIKK3YqMYbOcO8yVy8ElfuvCZAsk1Wq45GJMljTz9QRC/9jzCtbJ3p0cac/yea1LA2/vQ
	iWHazF7iM4IXNqABf9PggHwvL2JgxIs+UcfKK2DI8wfIwIXReluf/QxhW4yYarUoHv8vHZ0QV0oqW
	dTmyxJu8w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lO4TG-00AKo9-Jg; Sun, 21 Mar 2021 20:14:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lO4T9-00AKmS-2H
 for linux-rockchip@lists.infradead.org; Sun, 21 Mar 2021 20:14:44 +0000
Received: from p508fc3a3.dip0.t-ipconnect.de ([80.143.195.163]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lO4T8-0007Oi-BY; Sun, 21 Mar 2021 21:14:38 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
 Maciej Matuszczyk <maccraft123mc@gmail.com>, robh+dt@kernel.org,
 devicetree@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Add gpu opp nodes to px30 dtsi
Date: Sun, 21 Mar 2021 21:14:33 +0100
Message-Id: <161635763247.767241.2687165039729940534.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210225081943.127714-1-maccraft123mc@gmail.com>
References: <20210225081943.127714-1-maccraft123mc@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210321_201442_751237_F34EBA8F 
X-CRM114-Status: UNSURE (   7.08  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Thu, 25 Feb 2021 08:19:44 +0000, Maciej Matuszczyk wrote:
> 


Applied, thanks!

[1/1] arm64: dts: rockchip: Add gpu opp nodes to px30 dtsi
      commit: f43e351c963021812ffc61a15155d72e8773eee6

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
