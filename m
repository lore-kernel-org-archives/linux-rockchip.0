Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BDD1C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Mar 2022 22:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nLbXGNVt6ZGvHJY1kPDffY0MFiwq0LXZI+XMylO6Euc=; b=R3p2LdN4EnrCXb
	EAZgeVf2JadjIOVX/watM4HJZ7j8clasjrk81iFvklblsvYSbt642WUCv2G5IzrZIankSErZKvTp8
	gSvYzY4FtEQqHn4lF1MDck0wgagWS7mmd6c0EMCvEJnybAUScnlqRTkhy/dFIvcZwgiWZ71HDj9td
	HZMH44qgARqV1uSi6M2T0+4R6xpkDg01/LPtvtq6SqfOzQzBFMNvEAlr5bsFbIaG8amVTKZGJayGZ
	IwdNkRB819LdVbtmGKciOgVZHMHZUGwaOgbp8WVPRy4vdB4blW5hdh01YnllB6TZkfWxhkPUuDPBg
	KIlxWzAECZBQ8lMB358A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1na3gI-003tbi-L8; Thu, 31 Mar 2022 22:54:18 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1na3g7-003tYM-4x; Thu, 31 Mar 2022 22:54:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A36D7615E6;
 Thu, 31 Mar 2022 22:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C945C340ED;
 Thu, 31 Mar 2022 22:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648767246;
 bh=LX9sRJomQSNzLVPo+TLLNQVLhf0zSJX7M/h2n5GyPT8=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=ibv0zJ9jINegOaaYAoQ/WES61Mov/1uBn2DfjaI395tMsoR4BTL3lMAOgOnfFF3Lp
 t38x/S/JZOUAg9zawWw6XU1ua2eFYMUeirLO7kbegla6cPN6AP2M7DSAbU15uRVW3k
 yW0YNgI5bGChzEIDEh5LEDpcw+BSpdEazBV8RIlL1de4JhPzFpe76NnOHUFwDK+wkL
 GZ2mgt2QniU1v4eOY/zemwqoVp+sihWzgwxFRchcQwnrDOugcl0WlP4CnMBHNtMoqs
 Zv4JlxzQo4Cmn2OT4om8XsIwOJV28PtEqJxXQ8qdrYyH5fDuk4KtK8I0WfguKMM/Tg
 FYuXC7tYQxbpw==
MIME-Version: 1.0
In-Reply-To: <20220329113657.4567-1-jbx6244@gmail.com>
References: <20220329113657.4567-1-jbx6244@gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: clock: convert rockchip,
 rk3288-cru.txt to YAML
From: Stephen Boyd <sboyd@kernel.org>
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de, zhangqing@rock-chips.com
Date: Thu, 31 Mar 2022 15:54:04 -0700
User-Agent: alot/0.10
Message-Id: <20220331225406.0C945C340ED@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220331_155407_263610_55A7CCB1 
X-CRM114-Status: GOOD (  11.66  )
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

Quoting Johan Jonker (2022-03-29 04:36:56)
> Current dts files with RK3288 'cru' nodes are manually verified.
> In order to automate this process rockchip,rk3288-cru.txt has to be
> converted to YAML.
> 
> Changed:
>   Add properties to fix notifications by clocks.yaml for example:
>     clocks
>     clock-names
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---

Same comments about clocks applies here. Please send a cover letter
anytime there's more than one patch being sent so that we can easily see
the topic at a top-level of the patch series "Convert Rockchip clk
bindings to yaml and add clocks property". Furthermore, I don't see why
we need to have a different series for each file. Just combine
everything into one series please with a cover letter.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
