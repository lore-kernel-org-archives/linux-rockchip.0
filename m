Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7D7BC83F01
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Aug 2023 14:52:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:References:In-Reply-To:
	Message-ID:To:From:MIME-Version:Date:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6I8bezL6U+xZ92HJFjT/ENN+dw4qd3nzWOF2iejWFuA=; b=Ixes/TJzVj+7GJQqdtBsKAIoyH
	oz14cUkOa0hen0ewg/2nM9kV0p/cdV2owHBwrkrrx73J26GU1hKsdFH/sCCPQTiMlfmL7NnYQ1TxZ
	gl9KM3r3dKBA6dbPoxBmH4wAEUTsBqRmGwZYfQXPKno10gSE4AtsO26olqNxzISXZ7YEuhyfpdJHY
	WAl7OIW/0jA2KoK+3n19Ii+fqgyZTZJC+sZsZsICFCm1urFtlwdmqjabpykzOcZzhhh5s70AaAEDt
	Nyf4odVhRE9HoHBW7wr+lhwsE00fQvW9ydqyGqHFsSTuf/uG4voORHjV0EZDXlLo/yvXfW85QXw2/
	s94pUl8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qaH81-008B74-33;
	Sun, 27 Aug 2023 14:52:37 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qaH7y-008B6Z-2X;
	Sun, 27 Aug 2023 14:52:36 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 914C06101B;
	Sun, 27 Aug 2023 14:52:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EED6BC433C7;
	Sun, 27 Aug 2023 14:52:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693147952;
	bh=MgBcWTI2qHDrMRniSgygeVVCKzAF2WYi55HRvxRrsus=;
	h=Date:From:To:In-Reply-To:References:Subject:From;
	b=dLOqAaIRqk09KId/1MMIQ6mePKgERkTSRBn8RXiIC2tGB3Jg0BPGKd/8MTlkXkXuB
	 8VdDtCijdIJld8tPhUHCa5TE8Yg0ad8W/pGOwq85dQ2MWyu7h1YJ+U8/d9fjm/5Ef2
	 DEsx0I5fJFlTLenDf+xfuYui8JSRozafioMm+DJJ+vjc16SXkDyB8fzlDbU6o0X2NQ
	 OgzuGm0cFdxEOjKHylkxnDWcHQqmKzVJ67rSbKqEW3EiwshGyv9UYYy1ss8l7I7raB
	 7TllaST5Cih/1BkBeVI1CynKcnCjiOqYv/wviQk7NdDWiDy1Gn2rA1MWvg8wQ875Lt
	 Ex+NTF6L//9Wg==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id D11BAC595D7;
	Sun, 27 Aug 2023 14:52:31 +0000 (UTC)
Date: Sun, 27 Aug 2023 14:52:37 +0000
MIME-Version: 1.0
From: "Kernel.org Bugbot" <bugbot@kernel.org>
To: linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, bugs@lists.linux.dev, heiko@sntech.de
Message-ID: <20230827-b217334c9-6a3f67a0880f@bugzilla.kernel.org>
In-Reply-To: <20230419-b217334c0-3101f9f4b426@bugzilla.kernel.org>
References: <20230419-b217334c0-3101f9f4b426@bugzilla.kernel.org>
Subject: Re: linux rockchip gpio2b4 (gpio2b5) gpio2b7 broken
 GRF_GPIO2BL_IOMUX GRF_GPIO2BH_IOMUX 2bits 3bits pinctrl
 rk3328_mux_recalced_data (a fix exists, for a commiter brave enough to
 commit it)
X-Bugzilla-Product: Linux
X-Bugzilla-Component: Kernel
X-Mailer: peebz 0.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230827_075234_889501_2DFFD97E 
X-CRM114-Status: UNSURE (   5.09  )
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

antwain.schneider writes via Kernel.org Bugzilla:

for more than 6 years pinctrl had been mishandling hardware preventing usage of gpio pins

View: https://bugzilla.kernel.org/show_bug.cgi?id=217334#c9
You can reply to this message to join the discussion.
-- 
Deet-doot-dot, I am a bot.
Kernel.org Bugzilla (peebz 0.1)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
