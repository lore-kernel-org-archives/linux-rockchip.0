Return-Path: <SRS0=VpfD=G4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916A1C433E9
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jan 2021 23:56:57 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B2651225AB
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jan 2021 23:56:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B2651225AB
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7UCXzZ+tESJwj75m6q4++M9AnZFvPgBDf1tH34ZuwCg=; b=Xn5eM2wSLXojIHC4l7gHkWD+P
	ZfBtk5pnYEhqSg1pM5np7UtWdpvE5dAollIQ/N4whA+9DYCM1DxDabXYXZ4s8szDAYgERhWnybhrR
	ygM0WJmD0RrRuHgqyIrqtbGnCe40Lkw5WsaOgAlzD/pgOGCimGYfsOzINK231HQWv/YE2En5KVGxz
	RYEwGU0c4R+Q6PNq9ZQXRtVjFe4Gv0+gena5+ZuKD5uJBnBBD6WRoFtvm9RhhM+V9c7z/OYMc8DwX
	biZMQyB1KPmsgWV+2VfTj8HfdpsUMxhSHPykDMvn6zYifBn2gBaY6LqpSEPGCDDv8yM8UUZTAP/ju
	KnWEupoqg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l4Bj3-0000Dw-O3; Mon, 25 Jan 2021 23:56:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l4Bih-00005Z-Ji; Mon, 25 Jan 2021 23:56:32 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1l4Big-00066j-Ns; Tue, 26 Jan 2021 00:56:30 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: cleanup cpu_thermal node of
 rk3399-rock960.dts
Date: Tue, 26 Jan 2021 00:56:21 +0100
Message-Id: <161161878917.2050283.17103817523010630624.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210118180054.9360-1-jbx6244@gmail.com>
References: <20210118180054.9360-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210125_185631_648616_879DB56B 
X-CRM114-Status: GOOD (  11.52  )
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

On Mon, 18 Jan 2021 19:00:54 +0100, Johan Jonker wrote:
> The cpu_thermal node in the rk3399-rock960.dts file does not
> reference &cpu_thermal directly to add the board-specific parts,
> but also repeats all the SoC default properties.
> Clean the whole thing up and fix alignment.
> Place new nodes in the correct alphabetical order.
> Compered to rk3399.dtsi the temperature property in
> cpu_alert0 changes from <70000> to <65000>.
> A sustainable-power property was added.
> The trip property in cooling map0 points to <&cpu_alert1>
> instead of <&cpu_alert0>.

Applied, thanks!

[1/1] arm64: dts: rockchip: cleanup cpu_thermal node of rk3399-rock960.dts
      commit: 376e46b5dd0ad9d06f029bbc4a66dd25dd059597

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
