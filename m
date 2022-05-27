Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A815C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 May 2022 18:26:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nYDr56D3rshaDrLPt+ui13L7CBsmY4dU/pKTdsZFCHU=; b=Or8koEUQ2q+1VJ
	rlf+YZwZDDqfuY3QziuBnRrld6txjAA/PtWjSxNvTr3s4aRzibE9qATxtEBC6dpcYvCTunxTs7zlx
	/jpYqnCSkUFqOmwqf/3urU4j3N73Xob45tpYzgDk6uLk3d4pPW9k+vbG4+wp2/uD5iqls1WM1mwE/
	j/ewk3uNVWxyZpIbVxu/mJmpAAQBgECrRn+4KKmxc59pT4e4mAFIxRrAMGWIn1jFLV/qatcP4FCDO
	wpSqEzXyPxHNYukp8p/YBpXqhNQNgfheRnbEWSgqGwlvDnDGgYlOMEmufhKi/2gTtWH1+lbdgqpci
	NYPQVqMXUKz3dltnK4zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nueew-000jT4-PP; Fri, 27 May 2022 18:26:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nuees-000jQs-8S; Fri, 27 May 2022 18:25:59 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <heiko@sntech.de>)
	id 1nueer-0005Dr-5K; Fri, 27 May 2022 20:25:57 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [GIT PULL] Rockchip dts32 changes for 5.19 #2
Date: Fri, 27 May 2022 20:25:56 +0200
Message-ID: <5131508.BEx9A2HvPv@phil>
In-Reply-To: <5916377.R56niFO833@phil>
References: <5916377.R56niFO833@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220527_112558_343242_E852252B 
X-CRM114-Status: UNSURE (   9.94  )
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

Am Dienstag, 17. Mai 2022, 21:35:39 CEST schrieb Heiko Stuebner:
> The following changes since commit 53070cfa8228bdc64148d1e8c76c9f97ed0dfd62:
> 
>   ARM: dts: rockchip: rename pcfg_pull_default node name on rk3036 (2022-04-11 02:16:33 +0200)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.19-rockchip-dts32-2
> 
> for you to fetch changes up to 36b1b58523b531f60721d42910e4d6fe447c90d5:
> 
>   ARM: dts: rockchip: add clocks property to cru node rk3228 (2022-05-17 21:08:20 +0200)
> 
> ----------------------------------------------------------------
> Amba and clock fixes to conform better to actual dt-bindings.

superseeded by v2.




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
