Return-Path: <SRS0=Se97=KJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D942C433ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 12:06:27 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 93B8561458
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 12:06:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 93B8561458
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sVNG0kn6RQE/HlQta6sYfQJnYaiWDf9wrQPDuKwp7Lk=; b=BiSrQdbBGrvq/pylZqdzTkSMJ
	anK1DAqb8sypncKOCmXjGnz+Ca1wi0hAeAF/mF0qSfNlpnFjvKUksZWlJSVRRiyrvGmCRCQvIe0d4
	WfHepsE495o9tUZJ2h7RUb1Vr83upISIz91IUPtOUGBhFSO4CZJn1mF6Cj3jNlBouO7Fh4cfkEDVv
	3vFYcE93NVvMfJjSovlmLxr9wmVtTMGwmGqIeYgfC3M6wtqxQrFk+jXNJydBYMaQ+hvHPtKDy3lfz
	vmWP9keFiqsIWjVypb1BLkBKBJDYAW/cN+lIBIJk9lSFn+bOxroygmTMR79XlpHiBJ7XHyBIgXWB7
	uguZ0vSrw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhWaF-007zI9-3G; Fri, 14 May 2021 12:06:23 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhWa3-007zH0-9k; Fri, 14 May 2021 12:06:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=XMBQq/CuHhCz/0jEh9ZbEr4I8LYg8y+4Z91XCtMAl0A=; b=yX1/NT2gSZfwByWO0ukCpUWyfe
 n53Q+Ew7EDZiq6lg5pTN9RhanlR+gxrnmQdAYoebGw2/IyKRNnh9EK6HLZqKB7KL2eSz+mSCZOAt5
 tmVzZ9PmvreJjqbJG+9lDGbHPRsp8MP3nh7v6uamxCb4j8SjerIGORx+KrcBHKG4WyVZEvUFewR7z
 uQaar/sSZURdIqrQZBAew+sgEiXm0zvKud8+N+NwHxGIpEgrLRYMcrD2hPsjx+0o6TbkpvgGGyN39
 EnmNRBF7jfIH2zQhkwjaw3i6I/LFjlSdGMgOrzln3uu7PhZFkl5Ga1BijcQd26yCL9l7h+pBJ2rZ5
 lD7EiQiw==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhWa0-00BxVi-SG; Fri, 14 May 2021 12:06:10 +0000
Received: from p5b127fa9.dip0.t-ipconnect.de ([91.18.127.169]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lhWZq-0002WL-OD; Fri, 14 May 2021 14:05:58 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, "Elaine@vger.kernel.org" <Elaine@vger.kernel.org>,
 sboyd@kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 Elaine Zhang <zhangqing@rock-chips.com>, linux-clk@vger.kernel.org,
 kever.yang@rock-chips.com, huangtao@rock-chips.com,
 tony.xie@rock-chips.com, linux-kernel@vger.kernel.org,
 finley.xiao@rock-chips.com, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v1] clk: rockchip: Optimize PLL table memory usage
Date: Fri, 14 May 2021 14:05:56 +0200
Message-Id: <162099394917.1964929.5627318553471535848.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210511090726.15146-1-zhangqing@rock-chips.com>
References: <20210511090726.15146-1-zhangqing@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_050608_934937_91CAFB64 
X-CRM114-Status: UNSURE (   9.06  )
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

On Tue, 11 May 2021 17:07:26 +0800, Elaine@vger.kernel.org wrote:
> Before the change: The sizeof rk3568_pll_rates = 2544
> Use union: The sizeof rk3568_pll_rates = 1696
> 
> In future Soc, more PLL types will be added, and the
> rockchip_pll_rate_table will add more members,
> and the space savings will be even more pronounced
> by using union.

Applied, thanks!

[1/1] clk: rockchip: Optimize PLL table memory usage
      commit: 23029150a05b59ebacca6dd76f6c14dc67a95877

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
