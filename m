Return-Path: <SRS0=Se97=KJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 868E9C433ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 15:41:49 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 49EE661057
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 15:41:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 49EE661057
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=lunn.ch
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K6dUcwxlRBGjL1+gsrtqpYvpf+96B4NjyfvPcu15CfM=; b=lkiITdRey/uuXSTQVy/ZCN3/b
	qlY3rGdjg69AEtQtGQA27tLUT6uESP04DHv0PBfd4IVmqHfzNAzryeDzMTPWprqCbUv/lu5U756eY
	dma4a23YCCK9+m74RCJhZ/72mqqo8CQhRpgicpWIIpB93Xq/MRh3GzKKnTlh7DH2M+jUuPjteihyB
	q4r+/UNIhAx4kM6l8Z5QtABOtqWFQqTHilzhLeGiPwtQSIy/v93r8yJv7E3EBSz5NPkDbUUm7ViLG
	YZDm5+iE8kXTDw0Kjl64GNcancQAf0gNgl6dhnDfbv7v4DgjbF0L0zXEIwhkZB7e6QvT6N7T3Qjb9
	5ayxaD/Bw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhZwd-008QBI-8J; Fri, 14 May 2021 15:41:43 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhZwc-008QBB-1L
 for linux-rockchip@desiato.infradead.org; Fri, 14 May 2021 15:41:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=JGPg2rGN1c6V/ZgAIaVM+slcrBMKD0rGiiBx+eLZO3E=; b=gPjHLo033aw33vs5fIxSrsV/DR
 QCEup4k5Riam578FlHyRIqEj4SPlnqPtTB7uscEcG7WN4yOhQYOU14A3RtaVEpKUPQNGT5sf0kw3i
 747BL8Tuj2nQM/ziyUWdpLkkAQ0Y5fUwVcbaL3EQt5dKNdRN05nZOTyXCDTBCG5P22Z6qn/RiHxY5
 kiQ4jY3dKRpyIyCrNX0elFj0WBuMTLeYSl2f+4B3ZmNWx8qHSWBHx59+g/zQoqY1k/s2M79kOMXW7
 6UEnKssRj2hwnUJb5D6L+J09H7aCaS8nMwBZlBKqEXVT3gsoz+CQDppMc+gcRx+uwu5BuQksgXigs
 dE9utdEg==;
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhZwZ-00C5dK-HF
 for linux-rockchip@lists.infradead.org; Fri, 14 May 2021 15:41:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=JGPg2rGN1c6V/ZgAIaVM+slcrBMKD0rGiiBx+eLZO3E=; b=GVdjFcI8OK/Bo9hHneBzVr4s8W
 V+xQ9NkGYW0TWXNNZ0pqk4c9dbcSYJ6BI9eOBM3H9/zcF+u2Q007kZYjvogndKCw0jtgZ31r14M+A
 HnotK1H/rKZ+jnYF6mQm8ThH/wZ2J8fKi0bzJIaWgPqHQa/IDcD3Ojevhg5CA50WRfq8=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1lhZwT-004Cnj-AV; Fri, 14 May 2021 17:41:33 +0200
Date: Fri, 14 May 2021 17:41:33 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Kernel Network Developers <netdev@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH v3] net: phy: add driver for Motorcomm yt8511 phy
Message-ID: <YJ6aLTo3fJ6kRvzK@lunn.ch>
References: <20210514115826.3025223-1-pgwipeout@gmail.com>
 <YJ56G23e930pg4Iv@lunn.ch>
 <CAMdYzYrSB0G7jfG9fo85X0DxVG_r-qaWUyVAa5paAW0ugLvoxw@mail.gmail.com>
 <YJ6OqpRTo+rlfb51@lunn.ch>
 <CAMdYzYrdNqDZdkCj5Jf9+MmGtZgy263cYmwWkB3rZY02dPefYw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMdYzYrdNqDZdkCj5Jf9+MmGtZgy263cYmwWkB3rZY02dPefYw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_084139_588179_A05A4AB1 
X-CRM114-Status: UNSURE (   7.25  )
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

> Good Catch!
> 
> Guess I'll have to set that too, anything else you'd recommend looking into?

I think for a first submission, you have the basics. I'm just pushing
RGMII delays because we have had backwards compatibility problems in
that area when added later. Experience suggests adding features in
other areas is much less of a problem. So as you suggested, you can
add cable test, downshift control, interrupts etc later.

    Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
