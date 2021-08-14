Return-Path: <SRS0=qoXn=NF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5802C4338F
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Aug 2021 07:34:25 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8BD7E601FA
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Aug 2021 07:34:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8BD7E601FA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ks0CcK6RxbRel7ADXkd9jVVyle7BGLCOnUmQ1HRU98A=; b=mFKi0as/FLChxC
	0TmGh/1+zaILzwcSZOynh2LGmtqYvDGqH66ChkvOzkUw3Oc0rFhJDuJgXL34x2x3UaDM2Tdiwkv/c
	QEDXW2KnNyK8VBrw/Mkiv4ru8C48Ijz6n3O2uraGDfgzGSj36LWF0G64gF85DsLBDL0MjCuSrLIyw
	yp92o0LJ2+AxAScqJaccT/4EOx626tP/bInHe2NnXZcNfj/M692NPiQf660zZ63x2BT2OqhY6gHeW
	DNLQ2EwYT2AHH6hcILxLdvpLNtKd1ZgU/vq1wrnn6arGDSXlAc5YsLlB5fsFMq1LOYfD671fRfXpz
	2RzU1IkApgjh2+Y5mVEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEoBQ-00Dycz-NL; Sat, 14 Aug 2021 07:34:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEoBE-00Dybs-1S; Sat, 14 Aug 2021 07:34:09 +0000
Received: from 82-99-180-238.static.bluetone.cz ([82.99.180.238]
 helo=phil.sntech)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mEoB4-0003bg-2O; Sat, 14 Aug 2021 09:33:58 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-kernel@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 Simon Xue <xxm@rock-chips.com>, Jianqun Xu <jay.xu@rock-chips.com>,
 Liang Chen <cl@rock-chips.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Zhang Changzhong <zhangchangzhong@huawei.com>,
 Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>,
 Johan Jonker <jbx6244@gmail.com>, Tobias Schramm <t.schramm@manjaro.org>,
 Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v3 0/7] arm64: dts: rockchip: rk3568-evb1-v10: add sd card
 support
Date: Sat, 14 Aug 2021 09:33:54 +0200
Message-Id: <162892642459.2674259.13856979859165200065.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210805120107.27007-1-michael.riesch@wolfvision.net>
References: <20210805120107.27007-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210814_003408_122012_7E8BA8DB 
X-CRM114-Status: GOOD (  14.32  )
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

On Thu, 5 Aug 2021 14:01:00 +0200, Michael Riesch wrote:
> This series enables the SD card reader on the RK3568 EVB1
> and completes the support for the on-board eMMC.
> 
> As the PMU IO domains are required, the patch series that
> introduces support for the RK3568 PMU IO domains [1] has been
> revised and integrated in this series.
> Additionally, the required voltage regulators of the RK809
> PMIC are enabled.
> 
> [...]

Applied, thanks!

[1/7] dt-bindings: power: add rk3568-pmu-io-domain support
      commit: fadbd4e7847905d61dd333a0d3d31654f4510bc6
[2/7] soc: rockchip: io-domain: add rk3568 support
      commit: 28b05a64e47cbceebb8a5f3f643033148d5c06c3
[3/7] arm64: dts: rockchip: enable io domains for rk356x
      commit: 2e9ce86bbea81022540ede98cac152df5566205e
[4/7] arm64: dts: rockchip: rk3568-evb1-v10: enable io domains
      commit: 915186bd99a55642ae77d7f9c46e295b3fd9dc1c
[5/7] arm64: dts: rockchip: rk3568-evb1-v10: add regulators of rk809 pmic
      commit: e3f6b997b6b17810583af79f458b35fc0a34d939
[6/7] arm64: dts: rockchip: rk3568-evb1-v10: add node for sd card
      commit: ef180dba76f583efc19c7d5f3d2809e0aa8856e8
[7/7] arm64: dts: rockchip: rk3568-evb1-v10: add pinctrl and alias to emmc node
      commit: eb8d07586e13fc7aa4ed68820240d36a03418193

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
