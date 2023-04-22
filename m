Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84746C7618E
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Apr 2023 21:09:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:References:In-Reply-To:
	Message-ID:To:From:MIME-Version:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8tsVsS+0U5Oo37XobTYLwCqvXKRtDU60mjnm7eHQZ/g=; b=TaOy/TiJj1uZBs
	6G65UQBmAqsuBejSZ5yiPpSNz18mkxRacIfAf40kiUBWGsl9vAjF13Ij4iRRKq7EVh9Nh431nvAGg
	tFqFPK04F2WLhIMTKJXPSrfOdXRhcrXOCOTTCAlX3cQ5+uarKyi7eUQT/RGK2iScJm8Uu66lmMkus
	aPWbb/3EodjRfzavPwxM1+RodaRAkqLLyyb262rvVRQNjiim4PYJnAFUg2gy7POlrR3OIWsY4b21o
	wr7sBBEpGreNzXGOzf/K0G6m4cDwvD0D5IC6ldfD9LbZajQIgz66PvzHFPAZ/4s4ZX0Rzd/V1b7BG
	hPqSj5SaT7JWnMxFkAKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pqKTR-00DR0O-1M;
	Sat, 22 Apr 2023 21:08:49 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pqKTM-00DQzF-2i;
	Sat, 22 Apr 2023 21:08:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C008C60C6B;
	Sat, 22 Apr 2023 21:08:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2EC7CC433EF;
	Sat, 22 Apr 2023 21:08:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682197722;
	bh=0/t8qdmuIyeahzMxwLfNy1xLI4yMxcsuUOWqyPFUa3Y=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=Yv5Xf0GQqKPrzJxXORHRvPay4fFytxwoj1RphJ8S2pbMu3WF68Qo/zElgS+USi97J
	 M1SoqMeV2Th59wiDpInFOPO60O6yIW/ZBFcY42Y5mZHLsN4edk+mZPkpIEnhCqgBvi
	 7EoOd/Wm/ZzLCywQZFoCtbk2pdpbseX3kpYRGDpeFXU9z+/cq7OhAzdcjigWpHmxNt
	 BipS1yVTir5/qkiHi1aVS8x70jlDG5/AvqXrKOq5OBkzIS9y99A9rd7XZQiP5JZpB3
	 5aIJE4BxtdF54c0rdOa3hkqU3W4T4x7OyD92SnQLEkO54pVjOaCPRKy+GJUlng6ghw
	 UkLoSLulCugMQ==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 132C6E270DB;
	Sat, 22 Apr 2023 21:08:42 +0000 (UTC)
MIME-Version: 1.0
From: "Kernel.org Bugbot" <bugbot@kernel.org>
To: heiko@sntech.de, linux-arm-kernel@lists.infradead.org, 
 bugs@lists.linux.dev, linux-rockchip@lists.infradead.org
Message-ID: <20230422-b217334c4-6b3d3388d529@bugzilla.kernel.org>
In-Reply-To: <20230419-b217334c0-3101f9f4b426@bugzilla.kernel.org>
References: <20230419-b217334c0-3101f9f4b426@bugzilla.kernel.org>
Subject: Re: rockchip rk3328 pinctrl overflow
X-Bugzilla-Product: Linux
X-Bugzilla-Component: Kernel
X-Mailer: peebz 0.1
Date: Sat, 22 Apr 2023 21:08:42 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230422_140844_941864_00D2DB32 
X-CRM114-Status: UNSURE (   6.82  )
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

antwain.schneider writes via Kernel.org Bugzilla:

to try to make it clearer, gpio2b is marked as IOMUX_WIDTH_3BIT

GRF_GPIO2BL_IOMUX
2b0  2b1  2b2  2b3  2b4  2b5  2b6
[xxx][xxx][xxx][xxx][xxx][xxx][xxx] 21 bits without recalc
[xxx][xxx][xxx][xxx][xx ][xxx][xxx] 20 bits with current recalc
[xx ][xx ][xx ][xx ][xx ][xx ][xx ] 14 bits with proposed recalc

iomux sections are divided into 32 bit registers with 16 bits for values and 16 bits for writing, without the proposed recalc, there are just too many bits

View: https://bugzilla.kernel.org/show_bug.cgi?id=217334#c4
You can reply to this message to join the discussion.
-- 
Deet-doot-dot, I am a bot.
Kernel.org Bugzilla (peebz 0.1)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
