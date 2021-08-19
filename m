Return-Path: <SRS0=Qwjt=NK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23E69C4338F
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Aug 2021 23:04:36 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 52A2F6101A
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Aug 2021 23:04:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 52A2F6101A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ypElNHBS61TlVKGqBBdms5q+fWQDnddK8vjnsGjKGrk=; b=XKThEKwugnQ5Wg
	30LDuCUxs+J5TfJ6kbYnooc1fN3/OWwKwB75MIi2MrKRGa8CpMUKit+jDy2PPB1L58pRQwlZnZKb0
	HKTKTIavTWgYD4ny/wwqxmrtls3qN3TtVo+CWASPfv9Le2QxASm8D7ZsLrhYI4RAkgPbeLyoEDosM
	RR+aa6l6zktfuJp2C9+VsLkr4hwTS9QXUer+b7tBZL3DQgFGNUCe3iMgHs/Ad/NW4tUqVmrmVXvZd
	jBiIE6dGNGXdHfjs5AgovWdbsZQmrWvCMuxwOxkHdyrGgSbPfK9zMDQfWIWVdlhTE3gpE2RU28oAZ
	/TCgWdFe2A2RnKJiAcSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGr5K-009hKG-8F; Thu, 19 Aug 2021 23:04:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGr5H-009hGh-VM; Thu, 19 Aug 2021 23:04:29 +0000
Received: from [212.185.68.41] (helo=phil.client.m3-hotspots.de)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mGr4y-00005w-2K; Fri, 20 Aug 2021 01:04:08 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 jay.xu@rock-chips.com, linux-kernel@vger.kernel.org, lgirdwood@gmail.com,
 linux-arm-kernel@lists.infradead.org, broonie@kernel.org
Subject: Re: [PATCH] soc: rockchip: io-domain: Remove unneeded semicolon
Date: Fri, 20 Aug 2021 01:04:06 +0200
Message-Id: <162941424101.2925714.5080372869374112327.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <1629361749-97977-1-git-send-email-jiapeng.chong@linux.alibaba.com>
References: <1629361749-97977-1-git-send-email-jiapeng.chong@linux.alibaba.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210819_160428_047862_D3417783 
X-CRM114-Status: UNSURE (   7.69  )
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

On Thu, 19 Aug 2021 16:29:09 +0800, Jiapeng Chong wrote:
> Fix the following coccicheck warnings:
> 
> ./drivers/soc/rockchip/io-domain.c:118:2-3: Unneeded semicolon.

Applied, thanks!

[1/1] soc: rockchip: io-domain: Remove unneeded semicolon
      commit: 9e5747c57807ad8a04c356340190cfdd0bd54111

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
