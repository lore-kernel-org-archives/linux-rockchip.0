Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A9D9C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Nov 2022 20:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E0ErnszpdU4Esi/3SOJvwvDt/kHP9ahXurBcoLdr4Dg=; b=DMsAflrSPUewGW
	fjAq2Kw80Mq/gqq3oa8OxRe0dzR7Dl/nWY9Qjjjs2hHKJaaNi9HLjFJCs7Cm6GzGuc3eQVljqDsGS
	GAHv6l44RlS/GysPqwuk/54FvFFLRpx88xoI/7F97cnP/crdywXROvUExcaGPR7zpNzBjZDURS5lY
	GW74gJgrKAkmXvF/dL1rOfGeF2yo2rQJodeMl2WADSicEALOo/m8kh6UWvLM6DpJsnVxvY+3dEXQS
	wrpp3ivKfB71lOUKL7Ld8VrOn2zsQZSYaoDv4DYRcny13hROC53FiGGcSMdTpdSFmKhPirFb+REvi
	clAfKJaQEBtTt2N830HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p06mk-00BDTF-Ut; Tue, 29 Nov 2022 20:00:54 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p06mi-00BDRW-L9
	for linux-rockchip@lists.infradead.org; Tue, 29 Nov 2022 20:00:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3C8E0618C1;
	Tue, 29 Nov 2022 20:00:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C38FC433D6;
	Tue, 29 Nov 2022 20:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669752050;
	bh=nsQ6UZTMVS7LxhIx+qo0FTX8OImT7Hswtc/eyiei6i0=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=HGshhsHq2CrvtUiUE9E7ql6ycdfYLuHU30B8aLpOoYSKXsIESDxsMc49AAjrWwmDL
	 dRtuorbsL1RrggJfa/G82ZD7Kc1H+FRqX3P7mtY4OaHv5aiDeNJqb5b23YzFiN4ne3
	 eilsUza/kNPYEMIf5Ydy3a8o4Tfwa64O8l81J+jx1MlxYlfit0yFzriLIHA4w1wsxB
	 NkKDRquw55xROA3meOxUrfRCo4OqXN7BKCo3SonONo3JMtE8eccYM76sHr3OhJO+BS
	 9la6TD31Lekex+n6zQn+WulfcjxbaIDTNOsi7RUOoBv2ptTeaeYlckSQKuTl30DLGZ
	 YA043B3i1hKJA==
MIME-Version: 1.0
In-Reply-To: <23196966.EfDdHjke4D@phil>
References: <23196966.EfDdHjke4D@phil>
Subject: Re: [GIT PULL] Rockchip clock changes for 6.1 #1
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Date: Tue, 29 Nov 2022 12:00:48 -0800
User-Agent: alot/0.10
Message-Id: <20221129200050.9C38FC433D6@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221129_120052_767686_BC3F5EA2 
X-CRM114-Status: GOOD (  10.62  )
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

Quoting Heiko Stuebner (2022-11-23 06:01:01)
> Hi Mike, Stephen,
> 
> please find below a pull-request with some Rockchip stuff.
> 
> Mainly the support for the clock-controller for the new and shiny rk3588,
> 
> Please pull.
> 
> Thanks
> Heiko
> 
> The following changes since commit 9abf2313adc1ca1b6180c508c25f22f9395cc780:
> 
>   Linux 6.1-rc1 (2022-10-16 15:36:24 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.2-rockchip-clk-1
> 
> for you to fetch changes up to 739a6a6bbdb793bd57938cb24aa5a6df89983546:
> 
>   clk: rockchip: Fix memory leak in rockchip_clk_register_pll() (2022-11-23 14:51:30 +0100)
> 
> ----------------------------------------------------------------

Thanks. Pulled into clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
