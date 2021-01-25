Return-Path: <SRS0=VpfD=G4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA698C433E6
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jan 2021 23:56:57 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1885F22AAC
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jan 2021 23:56:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1885F22AAC
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9ODHofXFtBMd7VmPmESzKakkTWMKBpkI+m9etoA8J4I=; b=qlIabvEiI1AIO8Yq3cFbvlAUx
	Y4sNiIdZCWukc8s8g4yF+3qW24ZsnILKzCBMTj28BS6MB6YdYHwYPwVgCCBjIidAWgjr8hDB7p6q2
	vSXKx7zUDoSArJzCbaS2hefLPqyVD0NEGWH9Tn4HLr/55HMMp2+JUoJIpu4GH5MfJ4jjolsO0SMNU
	rp7W6PBnVM7Hw3IzEfRoP44Y4Ce6B/ePwkj1KAcNmAUVEuCDgOhWWFRRC5TuNVkt4WFFwgoLMFzrx
	MCvY1/3KheAdnAFReGIfhU29QhuTZySKIhJmT8DwUwKt4sKYUHvZg/tUMjz7mHPisCvxxkuu3U9Ys
	ptgnkm9dA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l4Bj2-0000Db-RV; Mon, 25 Jan 2021 23:56:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l4Bih-00005U-Az; Mon, 25 Jan 2021 23:56:32 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1l4Big-00066j-EY; Tue, 26 Jan 2021 00:56:30 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: rename pinctrl nodename to gmac2io
 for nanopi-r2s board
Date: Tue, 26 Jan 2021 00:56:20 +0100
Message-Id: <161161878917.2050283.17759962582911912279.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210110194851.10207-1-jbx6244@gmail.com>
References: <20210110194851.10207-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210125_185631_445678_393C2BE2 
X-CRM114-Status: GOOD (  10.58  )
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

On Sun, 10 Jan 2021 20:48:51 +0100, Johan Jonker wrote:
> A test with the command below gives this error:
> /arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dt.yaml:
> ethernet-phy: 'reg' is a required property
> 
> The pinctrl nodename "ethernet-phy" conflicts with the rules
> in the "ethernet-phy.yaml" document, so rename it to "gmac2io".
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: rename pinctrl nodename to gmac2io for nanopi-r2s board
      commit: 16459ecac6d6bf6a817d9c0cf78d696461fdcd26

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
