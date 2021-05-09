Return-Path: <SRS0=cCFl=KE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2CAC2C433B4
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 May 2021 23:57:21 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 550D961055
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 May 2021 23:57:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 550D961055
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=movVtxTvnMQkFV3J8AF54vIbltwWyh77jk2dW4A/le4=; b=aj9LnkuLB2+B4ENuwWfFGo2u+
	G1kK5MmZq8+zzXWv6gjsdX47d4oOt5RuFY6X7+Zdm/W9yokB0ierBXXE6sYi0WgUzNWSFu6NCcmbW
	yj2GEFIdxjLHIpF1TLAK2krshn7iA1lTsJGTEDoBBzsyKPRHJHsU5B1FovuoGpIkRptdeYOeh36t/
	cIhoRA+r2BD9prttSaBCduLsiXKQrfP/3pYuhF96Fk0ACp5T6YgG//dnl32a757dOq/klIgMpb6yv
	39dZiUYEuVrB2rNw+USTYcfXoacKlCOS83uxnhc0ub/ku0xHTCaFtS/GT85NA533h9QHjxoUwR7b/
	8f6S3lGpw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lftIP-00CYAd-Ti; Sun, 09 May 2021 23:57:14 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lftGe-00CY0e-Uf; Sun, 09 May 2021 23:55:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=lkPV8+6iSpc8RFXExK6EcTL3PK2aKz8ZhfV9I0jIZ8k=; b=Z+0/l1IEXWKegFBV7jsxsl1ehd
 XCLbCH+TbbEZ9Q7Gj9c7m1OgJ7Cr6vLF++mdiLFehFHkvZpgHhUVVfRUxHXRM1LApN4vQSRAxtCEj
 Kcz23cdGTbL7LyEduMzhivyPZ03rxW+omoTWEo4WeNJ3FKxQ5ezcYREnVxAXTJoU2S6qHs0JckiTU
 wgj1927cEOG5lUfP2Xq8bc3/iObZYE4U+oieF84yZWDlH70kg/RJJiIok2MH3TPoijraEH2QwbvJ6
 Dws76W9Il85+IA9LQWYXOhXaM5SiUum6Kmx911jRpShwPc5OIRMnBCY0O/Dwo5eBO40sAXee3aZ7t
 LBG+fEXw==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lftGb-008A11-Np; Sun, 09 May 2021 23:55:23 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lftGV-0007y6-Rg; Mon, 10 May 2021 01:55:15 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chen-Yu Tsai <wens@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: rk3328: rock-pi-e: Drop fephy
 pinctrl from gmac2phy
Date: Mon, 10 May 2021 01:55:10 +0200
Message-Id: <162060449717.1266480.17694664157569213328.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210426095916.14574-1-wens@kernel.org>
References: <20210426095916.14574-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210509_165521_805173_AC9DF06B 
X-CRM114-Status: GOOD (  10.28  )
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

On Mon, 26 Apr 2021 17:59:16 +0800, Chen-Yu Tsai wrote:
> Turns out the fephy pins are already claimed in the phy node, which is
> rightfully where they should be claimed.
> 
> Drop the pinctrl properties from the gmac2phy node for the ROCK Pi E.

Applied, thanks!

[1/1] arm64: dts: rockchip: rk3328: rock-pi-e: Drop fephy pinctrl from gmac2phy
      commit: e6526f90696e6a7d722d04b958f15b97d6fd9ce6

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
