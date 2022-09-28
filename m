Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0F76C32771
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Sep 2022 22:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DCKUbvRA7eGEZdciunHx5oeKeiF20ZXRe/fhBb2rTSc=; b=Qlb1mbaymaX2h+
	WBb3FLw5E22tU1GVnWhvoAF2Svk8KTlaudrKiWhmwyutl0Eva0KcMXrB8naACZ3Fe0Sp0TcTZp1Y3
	pXJGbI4WHoSIpPn/X1x2dsixw1vfy6S7ds5zS5UBYPF0+kBDaOAn1LNrsdZm0IAPKL4eFpnaph8+T
	p4VEHseSpZuDovrIptZJeBzhi/trRbh+RmMBfIQ0bEaxVapSTpdpEHeoP+GxKvAXjqrqmwrknvu0n
	UOphgT5XN6yuLq5ti33zFH7D7ISW8pkHER85Gg+l+0zTsE6e3NALD4MfqtrNSQc/TlwsUrofKWN8p
	ISXfr+ACgB3cen+rUkDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odfxX-000anx-6J; Wed, 28 Sep 2022 22:55:19 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odfxV-000anR-2Q
	for linux-rockchip@lists.infradead.org; Wed, 28 Sep 2022 22:55:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id D0688CE1FD6;
	Wed, 28 Sep 2022 22:55:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C64AC433D7;
	Wed, 28 Sep 2022 22:55:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664405713;
	bh=hNYiDuQ5AdCYgoHAK6s4t8feEynKECm3atjOtYgNm3Y=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=gOlFqswNE+6ZxzbYeXOA/QgnkSGez8AHXe+sXpkuhng0XBOoDXUl2Sa4DDoDQcuDn
	 js6jrMJW1z2il/2TbF20E0q7Q8leKZNbs0euzav+DsoK9mfklHWSvBgghKL2BmuM/+
	 BmSWPp5Xa4oP+gZsP26b9uu3lvk4SnNF7nXf5BK9CfvtxMKarQFafJzCOLJOmlo/XD
	 s/+Xh/M94mT+ZRV6rKcAH1KPEOKAj76FVt9Bz1gftjAv1Uo5oSWErknkyUXnbRptcr
	 KVCIANE40v74NK+N+Q6FC24xDBUoPwDz+CrgHrZcoVddi3b3cweZzWSWxmiP3wsJRb
	 cdI0BHJ3Tuk8Q==
MIME-Version: 1.0
In-Reply-To: <6719652.G0QQBjFxQf@phil>
References: <6719652.G0QQBjFxQf@phil>
Subject: Re: [GIT PULL] Rockchip clock changes for 6.1 #1
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Date: Wed, 28 Sep 2022 15:55:11 -0700
User-Agent: alot/0.10
Message-Id: <20220928225513.3C64AC433D7@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_155517_304867_8D469634 
X-CRM114-Status: GOOD (  10.65  )
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

Quoting Heiko Stuebner (2022-09-24 04:17:18)
> Hi Mike, Stephen,
> 
> please find below a pull-request with some Rockchip stuff.
> 
> Mainly the support for the clock-controller for the rv1126,
> another yaml conversion and relicensing the bindings to
> gpl2+MIT following DT guidelines.
> 
> Please pull.
> 
> Thanks
> Heiko
> 
> 
> The following changes since commit 1c23f9e627a7b412978b4e852793c5e3c3efc555:
> 
>   Linux 6.0-rc2 (2022-08-21 17:32:54 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.1-rockchip-clock1
> 
> for you to fetch changes up to fffa0fa4d029c10406d417dd33f630bee4b12c02:
> 
>   dt-bindings: clock: rockchip: change SPDX-License-Identifier (2022-09-23 20:48:01 +0200)
> 
> ----------------------------------------------------------------

Thanks. Pulled into clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
