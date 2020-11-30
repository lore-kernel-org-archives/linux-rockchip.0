Return-Path: <SRS0=Brux=FE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33574C64E8A
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Nov 2020 01:52:37 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EFA222076A
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Nov 2020 01:52:35 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="nOMncZ92"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EFA222076A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pcbb04t93r7l9tkBf/5Hihh7EK1blj7CuB+2a4rHPuc=; b=nOMncZ92AQLIDHA9RLCxxwojP
	wSQHjWlInyvJShpMjQRESQeXZAF1X4gsjHGBeKEgbYDBZAho/ERqygChmnlN0JpvStL+sikT3dO49
	geNjLD9bZmGn3bjdvL6xrzffzpkBBtWamfVY267A9h5pr/pxTFS+dxHhK1U5gMigZ4RWGWcZCk1vl
	mFQS+eISUd+cAX9k8RctJ9MvWwy4bK//OwlxcsV3c9d5yzT1ly9+Jux9HvjkTO6Wo+uIf25+Dsglp
	j+8asqWTziN+Nnv5l3jF2jqY3w5dl3I8CZOGorpdq4oTuZuvkbnUJU8iXHmXrFirAk12xUwY68/T4
	U7Ythg6oA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kjYMh-0002aC-V9; Mon, 30 Nov 2020 01:52:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kjYMK-0002VG-5D; Mon, 30 Nov 2020 01:52:08 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kjYMF-0007OY-Kl; Mon, 30 Nov 2020 02:52:03 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Chen-Yu Tsai <wens@kernel.org>,
	Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 0/3] arm64: dts: rockchip: rk3328-roc-cc: Misc improvements
Date: Mon, 30 Nov 2020 02:52:00 +0100
Message-Id: <160670107988.1055391.17437580601124113737.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201126073336.30794-1-wens@kernel.org>
References: <20201126073336.30794-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201129_205208_244193_C571BC2D 
X-CRM114-Status: GOOD (  12.53  )
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
 Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, 26 Nov 2020 15:33:33 +0800, Chen-Yu Tsai wrote:
> Here are some improvements for the ROC-RK3328-CC.
> 
> Patch 1 sets dr_mode to "host" for OTG. Since the board has a type A
> host port wired to the OTG controller, setting this is appropriate.
> 
> Patch 2 enables HDMI audio.
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: rk3328-roc-cc: Set dr_mode to "host" for OTG
      commit: 4076a007bd0f6171434bdb119a0b8797749b0502
[2/3] arm64: dts: rockchip: rk3328-roc-cc: Enable HDMI audio
      commit: 65f0b420dea7e70d70cd6ef0f12f9ff81ab90d23
[3/3] arm64: dts: rockchip: rk3328-roc-cc: Enable analog audio
      commit: 5df4d4d16ce4c6e6a5cb9d4b684b187f28258219

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
