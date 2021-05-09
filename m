Return-Path: <SRS0=cCFl=KE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14CCFC433ED
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 May 2021 23:57:20 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5EEF961361
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 May 2021 23:57:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5EEF961361
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Mvbr8lP4WOBtqTiPN+F6G1r6rhCSaAbK+pOoOKLJ71k=; b=SdBqCqwxyWDJDpfSoBlfHi+XK
	zuxmBlLQvDOgyQGAO4QoIPo5ykMrGJu6csPdKWWGOx1ZEmRJ5i7WFtb586fnDYMCXkwoB1MDP80+F
	up3ZRQuCzqPchMCap0WgBNenwH/wVdwJeVMlPkNfo41xzZ/0H2l6Bw0EXMOuP7oHaSZkE+CarEDJx
	2vM0PHUQwvIRC8/DxMPOU1/1KMy/UiyrBOi/U4udSXJRosrf017qeFhhhNw8+zYAMh8v7K/1Q6Dq2
	t64w9s4FV+kG7Ew/hIDY9yKRDGyf5bCPa1zfHS1cluced12LrjPzTAnAB7viQ+yHEXI8Xw5E2xXDJ
	wuXEga3aQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lftIR-00CYBA-H3; Sun, 09 May 2021 23:57:15 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lftGf-00CY0g-3E; Sun, 09 May 2021 23:55:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=NnhooGrk0fEjovaECqYeGn0WmvBvXKRr1PFnXETlWds=; b=B8s3E0SBQCIdbVGWTTJcmCcCJV
 L0NKNLenEqvzi8CjMQ2owbNTXA30yuK3U2UpjcnVGtkqQV9nhZgqUOIVmm7PfvTGyRV9zRS5Rg5Gh
 /xuMKisO3fz5ybpUtzSnevcmo81zckoA1VF8WyFR6PI/PGKGKMEYtmszlc5TyHn4Rl54t1HLGJ+B+
 WXRte7dijq7ZFDg0l4FVhroxGQc14jgVixkbXxDZAP2S1JDg4KGc6v+ayM2mqOzXrD5gwuonK9cVQ
 6cOfi/+VrqfaOgNr8YmMHmiEwjcQ6ovJc77Jc2g2fAg0iZXRytKxjSruI95NQRCWP7QiL89Mwh7Tj
 rzXClETw==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lftGb-008A12-OE; Sun, 09 May 2021 23:55:23 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lftGV-0007y6-DY; Mon, 10 May 2021 01:55:15 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chen-Yu Tsai <wens@kernel.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 0/4] arm64: dts: rockchip: rk3328: Enable USB3 on some SBCs
Date: Mon, 10 May 2021 01:55:09 +0200
Message-Id: <162060449717.1266480.5856172101082132800.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210504083616.9654-1-wens@kernel.org>
References: <20210504083616.9654-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210509_165521_811156_7A7173AF 
X-CRM114-Status: GOOD (  13.87  )
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

On Tue, 4 May 2021 16:36:12 +0800, Chen-Yu Tsai wrote:
> Here are some patches that enable USB3 on RK3328 SBCs that I own. The
> changes are quite straightforward, except for the NanoPi R2S, which
> has a USB3 Ethernet chip attached. I am aware that there's already a
> patch [1] for that. This is my spin on things using the USB device
> binding, with comments on how the USB ports are arranged, that I had
> done but couldn't find the time to send out.
> 
> [...]

Applied, thanks!

[1/4] arm64: dts: rockchip: rk3328: Enable USB3 for Rock64
      commit: bbac8bd65f5402281cb7b0452c1c5f367387b459
[2/4] arm64: dts: rockchip: rk3328: Enable USB3 for ROC-RK3328-CC
      commit: 75f95927334dea863f16f4ecd29cc709edc3c6ad
[3/4] arm64: dts: rockchip: rk3328: Enable USB3 for Rock Pi E
      commit: bf340c8084d2932936f385ebf48c4734b2911457
[4/4] arm64: dts: rockchip: rk3328: Enable USB3 Ethernet on NanoPi R2S
      commit: d49f120e27dc1689e11a14e9714e63a390dd4520

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
