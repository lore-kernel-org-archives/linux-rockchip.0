Return-Path: <SRS0=VpfD=G4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82353C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jan 2021 23:56:44 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E804522597
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jan 2021 23:56:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E804522597
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZIN98a4p4cgFMvICPNvSfmksRkWT24NGT9zfGyNgAoc=; b=DT9uKbKRCUiimn3fTAIycIzm8
	QB6hE7BLsnxKjwaWjkbibCaY/Dthujlz9UVNU0K0mOfzPFx5sdleiZ89EI9bIC85OBnDqy/I68cek
	bPmKaepl03TjOxleoWGYgC2j64ySYIajOoisuZ7iKW6vB1ouacy93Cg9pGLvS2L044nrGzmQ+6K4c
	SVxEed4CWVRfZKVWnuc2ToQbEElkRiwC14E0SJ+KJ0j9wmsVtw7avpbDhBHT9TJ+Hn8Tab1YwlXcn
	4Hrz5M6ABdzje9NHNlpTi1r6OWoCVzF93ZxJASQQtZ4hiVqq9CtjiGFTjVCBDUWCUei78+WafL2Ek
	MWW6UolZg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l4Biq-00009k-VF; Mon, 25 Jan 2021 23:56:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l4Bih-00005T-1k; Mon, 25 Jan 2021 23:56:31 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1l4Big-00066j-5K; Tue, 26 Jan 2021 00:56:30 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: fix ranges property format for
 rk3399 pcie node
Date: Tue, 26 Jan 2021 00:56:19 +0100
Message-Id: <161161878916.2050283.16726038610400153417.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210122171243.16138-1-jbx6244@gmail.com>
References: <20210122171243.16138-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210125_185631_175813_044DBF2A 
X-CRM114-Status: GOOD (  10.16  )
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

On Fri, 22 Jan 2021 18:12:43 +0100, Johan Jonker wrote:
> A test with the command below gives for example this error:
> /arch/arm64/boot/dts/rockchip/rk3399-evb.dt.yaml: pcie@f8000000:
> ranges: 'oneOf' conditional failed, one must be fixed:
> 
> The pcie ranges property is an array. The dt-check expects that
> each array item is wrapped with angle brackets, so fix that ranges
> property format for the rk3399 pcie node.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: fix ranges property format for rk3399 pcie node
      commit: 6b8cc4b3e4c6a968fca48c3ef6477db755a78a3f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
