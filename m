Return-Path: <SRS0=/gBD=NP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PULL_REQUEST,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35C92C4338F
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 18:42:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EC33661262
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 18:42:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org EC33661262
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MXCz9wO4RlGsgtXL6p/K5d5za3z/7CP4EpkDkjEHPa4=; b=AjMDiuXpFmdhy4
	9P0TFDWC8Pqdbaj1WdHrojOeEsWFc7X/AKMFgTaUUXJhPlAH86cMJdht0gLpckmxpTvpjZ6jC+ANJ
	Xpj2jSWth8YzK3TE9m2EYs4wu+aC4Z3IO1e8/WOdPDkGxObKsVx1HfN841T9BkrRjYJNuN6GHjQDZ
	1e1Oq1gQmgv/xqqD6xmFGpclJELUHHXjkF579RRJrLs3qp96hDdINKhqlS23B8bVWpFawmjKENR8F
	4wzPX+kzf3FAcU1evFCmXAXH5cvOQw2IZ4LwfEVD2sPJFTaXyd03NKTxVDSx8jIGzQiWigMeu0m7D
	ig9Kn64+ThwLPCt/o+sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIbNi-004OP8-4b; Tue, 24 Aug 2021 18:42:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIbNf-004OOJ-VX
 for linux-rockchip@lists.infradead.org; Tue, 24 Aug 2021 18:42:41 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 39C5F61262;
 Tue, 24 Aug 2021 18:42:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629830559;
 bh=5+7OlgytRuk9jsnnaZMaOIZ4xSRW/nRwJD9qg194EG8=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=hfnAJZQUUYSQWyoxezHWslXLpEs/MsExfdh+VRjoQ/2Jog3fB6EnhwtO9FDbSfrdL
 gAOhM2wPBldl2XUdxqjnYr8RXyZ1qEZfrEpUWxSnHsY0/4LTKqEEVZ6gnA6BX/P20n
 2bNRbtKHgP1pLTEOrnBbJWZ5J2B0LAzLoYxqcp18mVfT+NlWP2v2beoCzdQn2nLCYY
 PCj6xVw8etmhMFA2RHBRRwMbNf80id3So4flvC7QJfxerfOmQfhpWcZ4vEuG+7rWTW
 6uOUMeK4QXsqyqE03sOLOEWO+zI9GSHqztJP/Dq1SGoXDKFPbJOLxgNtYeOmktB+Ew
 DW8HR7trnbuaw==
MIME-Version: 1.0
In-Reply-To: <4308060.PYKUYFuaPT@phil>
References: <4308060.PYKUYFuaPT@phil>
Subject: Re: [GIT PULL] Rockchip clock changes for 5.15
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Date: Tue, 24 Aug 2021 11:42:38 -0700
Message-ID: <162983055800.1317818.353040062648469258@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210824_114240_070272_FCB8FCC1 
X-CRM114-Status: UNSURE (   6.50  )
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

Quoting Heiko Stuebner (2021-08-22 03:14:41)
> Hi Mike, Stephen,
> 
> please find below Rockchip clock changes for 5.15
> 
> Please pull, thanks
> Heiko
> 
> The following changes since commit e73f0f0ee7541171d89f2e2491130c7771ba58d3:
> 
>   Linux 5.14-rc1 (2021-07-11 15:07:40 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.15-rockchip-clk1
> 
> for you to fetch changes up to c0c81245dac7caaef4db627fb7043495d1afe662:
> 
>   clk: rockchip: make rk3308 ddrphy4x clock critical (2021-07-29 12:43:11 +0200)
> 
> ----------------------------------------------------------------

Thanks. Pulled into clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
