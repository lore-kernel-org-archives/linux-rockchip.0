Return-Path: <SRS0=Brux=FE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6E4C64E8A
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Nov 2020 01:52:25 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B463120757
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Nov 2020 01:52:24 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Kgu3h76y"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B463120757
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ueGa5dqkvs+Ya43SmS05aAkX34W0/GEyqC/RRRavAoU=; b=Kgu3h76yZMg/uBnFTgFytON+Q
	u1TO7d3STG+FVeWSfnoykcwb4rbWr0yeDgyEMk3hv4KFsWCjjII9+1KNY9KqlWKJY+gqnZDwO8GzM
	y0CHxWcg+JqZs1jHp4shdv6cVVFTeSen2ueJDnqqjkOWfEXCtBzZAAKNf/UmnVN14zl8R2cPPla5D
	pRFLlLY8sNLUHqhu1MMfik1KxbGuJMWK/8Hr90kZIIJnQ6gBvQd4eXSZRL64Gdq2fHcfz9N8148K7
	PT2H3Bxn/HUnZptAlj8Zkid3+UYxD/ENRDcEEsbBcdQVXVIqxLs0UZDbDn+eD5ZFbPdD7e3KBEaA0
	mON+kmCLA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kjYMP-0002WD-F1; Mon, 30 Nov 2020 01:52:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kjYMH-0002UW-Ao; Mon, 30 Nov 2020 01:52:06 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kjYME-0007OY-EN; Mon, 30 Nov 2020 02:52:02 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: rename sdhci nodename to mmc in
 rk3399.dtsi
Date: Mon, 30 Nov 2020 02:51:57 +0100
Message-Id: <160670107988.1055391.14402297807608969522.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201116132311.8318-1-jbx6244@gmail.com>
References: <20201116132311.8318-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201129_205205_406380_181CC19E 
X-CRM114-Status: GOOD (  11.48  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, 16 Nov 2020 14:23:11 +0100, Johan Jonker wrote:
> A test with the command below gives for example this error:
> 
> /arch/arm64/boot/dts/rockchip/rk3399-evb.dt.yaml:
> sdhci@fe330000: $nodename:0: 'sdhci@fe330000'
> does not match '^mmc(@.*)?$'
> 
> Fix it by renaming sdhci to mmc.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: rename sdhci nodename to mmc in rk3399.dtsi
      commit: 9a9f642784074d09efe9337e64b959f76c9f6913

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
