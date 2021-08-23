Return-Path: <SRS0=s7m+=NO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 39DCCC4338F
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 16:44:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D67AF6124B
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 16:44:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D67AF6124B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o1qkocCCfZeG+AUlw3JwEhRzQQ+jw3Y4mYLTajIoAiA=; b=tdIhMQFAqs8oPA
	MwngFmvy21GZoNQykw2+D8ktaRWg7E8IxDxUPXpNsFsvp4c8yPNnDMBzV8iSGs95n3l+6b+M7bx6P
	01ktzTC+oEywUys4gzDoZAybTh9ThpaEXITbNrqngH3RmmkzXjzvoLqQOqYKImiqs7EsrdBndlX0P
	qrkVnNXpfwNxz6+BtRJPAsq6vts23LL99HeyFf3sQ54p4VIe2zWuEAjjkUofvKohjlo5KTO8ilza1
	5oBqghxK5wI58Hp/Bku4/cJcpX0E/gYgR5zOwLqEJrLcUO4tl35FAi22x8qsNDeI0Mr84glOZ/sS3
	rAbeQ+eIDRK3CB+CAUag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mID3z-0002ag-Bs; Mon, 23 Aug 2021 16:44:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mID3n-0002Yh-8l; Mon, 23 Aug 2021 16:44:32 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 55BF6610F8;
 Mon, 23 Aug 2021 16:44:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629737066;
 bh=7w5FXWeb8P/JBu4RqLDy7fzGAXbval5K4YO4wkz3Tn8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=QRPsy8S1buyVDP9dLd+eDgJJ0x7b+mpjd+QiKp17gSoCfIyr9cTC4G+Px9ZSVsWbl
 OdMipVIHQKzyX4St+fNM8uMsktO3/osoQjVeJb+ijLUj8UaVHBY/dPo+oZdngbIXh0
 ep3Odv0n41HiNoR6MKshMxFAVDF3GuvV55qj3gaFSjUPLv194qHl5K/prEJ2Jauk+C
 e7gxbFkoiMd3hTXRZB1zMeM+AORbj1pyS+jfibY7MCqLj9NvEk/Y1qiEDIlMLsUvUO
 1HifTcI35mpL7oJFxzbg1laOWr4bUQKUdazBHG6sSSPv2vX4rvZJvnGTTJXsBfuyAM
 O0suswGiISgGQ==
Date: Mon, 23 Aug 2021 09:44:25 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>, Jose Abreu
 <joabreu@synopsys.com>, "David S . Miller" <davem@davemloft.net>, Maxime
 Coquelin <mcoquelin.stm32@gmail.com>
Subject: Re: [PATCH] net: stmmac: dwmac-rk: fix unbalanced pm_runtime_enable
 warnings
Message-ID: <20210823094425.78d7a73e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210823143754.14294-1-michael.riesch@wolfvision.net>
References: <20210823143754.14294-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_094431_375836_E4AC680A 
X-CRM114-Status: UNSURE (   7.58  )
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

On Mon, 23 Aug 2021 16:37:54 +0200 Michael Riesch wrote:
> In the commit to be reverted, support for power management was
> introduced to the Rockchip glue code. Later, power management support
> was introduced to the stmmac core code, resulting in multiple
> invocations of pm_runtime_{enable,disable,get_sync,put_sync}.

Can we get a Fixes tag? I.e. reference to the earliest commit where 
the warning can be triggered?

> The multiple invocations happen in rk_gmac_powerup and
> stmmac_{dvr_probe, resume} as well as in rk_gmac_powerdown and
> stmmac_{dvr_remove, suspend}, respectively, which are always called
> in conjunction.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
