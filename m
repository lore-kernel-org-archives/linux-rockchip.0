Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26A0DF3ED5C
	for <linux-rockchip@archiver.kernel.org>; Sat, 11 Apr 2026 23:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W3x6uEh76ysRtofdT0KESDKdKnwWxM+XZ57lzsjIWh4=; b=KbKy/hVPXil8iq
	ZYIH26PvEKo3392Wa/hBy/sYnjCAlNMnJOB2Oqw5ImlYjIC9Zxi42F1cRmebQcZUz9Mg/Tx4118Oy
	Vo6FqWEeYdnwGcpFHnB5IqUOGsX63q1zooczZgkj57meDoLDhBxsUsuJ87ko75jw4xtpX+RcF2CxR
	aT4AQts8tEy2FVDOI8CxHWr+4I4Ii3PFsTMEWFl7nrGuo6rDfFlP9K9suut/E9UTkEk+GgqygQPUY
	8kWZQs1Ix0SaUD1o22oa2KylRM5+D+AhWr7gtpmxlEoiNvdQ8e/roiCwJyURNojEivJbtoxa819gb
	yKezyO740WhxrsxkQRVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBhYK-0000000Drm5-2oS6;
	Sat, 11 Apr 2026 23:15:48 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBhYJ-0000000Drly-45mQ
	for linux-rockchip@lists.infradead.org;
	Sat, 11 Apr 2026 23:15:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 204326015B;
	Sat, 11 Apr 2026 23:15:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3379C116C6;
	Sat, 11 Apr 2026 23:15:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775949346;
	bh=cauOxnkjRELK8dcA7zmL5inijQj5/tR6tnWWhsiG1Vc=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=q7L/nlyI+PeG2ah+p7+/TVnD6cg8u42pXtuPtDZD82ipUvvNWhkRITH6/iDNi6oh3
	 qjAw/gSWX+cirbvy8GJNt0ilqWFJKA1oC144dmRkx0ItCLdADJA7IAzX2PT8KwB6gf
	 FwbzdtxJSiAe3i1SW+66Tu0Jd50GYIy2YvwqgLBdGbihp2KxoEBt3Eu9e11eHbbMwG
	 pKRO2M2nkVd8Vwyq4UxaQW7XGQ7MCsLh64dhNzecRirPn4Gp+g27TAn0c7ciEOuGnz
	 iBHVaS9BjSX2EEgFfJdotxYOj/6vxmNIOWejBTiw+mYLqqOunEZ5KOgfblqMqUx8Hm
	 sIzgIPgmFEF/g==
MIME-Version: 1.0
In-Reply-To: <3746710.R56niFO833@phil>
References: <3746710.R56niFO833@phil>
Subject: Re: [GIT PULL] Rockchip clock changes for 7.1 #1
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Date: Sat, 11 Apr 2026 16:15:44 -0700
Message-ID: <177594934499.5403.15761642378116047555@lazor>
User-Agent: alot/0.12
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

Quoting Heiko Stuebner (2026-03-30 06:42:00)
> Hi Mike, Stephen,
> 
> please find below a pull-request with a Rockchip clock change for 7.1
> One new clock driver and sone newly accessible existing clocks.
> 
> Please pull.
> 
> Thanks
> Heiko
> 
> 
> The following changes since commit 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f:
> 
>   Linux 7.0-rc1 (2026-02-22 13:18:59 -0800)
> 
> are available in the Git repository at:
> 
>   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v7.1-rockchip-clk1
> 
> for you to fetch changes up to 41b1a6760959017c4fa1dbc7c3cc318406ab1455:
> 
>   clk: rockchip: rk3568: Add PCIe pipe clock gates (2026-03-10 09:34:27 +0100)
> 
> ----------------------------------------------------------------

Thanks. Pulled into clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
