Return-Path: <SRS0=X5eU=C7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 130FFC4363D
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 14:06:26 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8BD6120936
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 14:06:25 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="1izkJ9Ya"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8BD6120936
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=p7Vml7JhZzAtNUKmL1ClPya65B+ZJCrjrc3aVinLDhE=; b=1izkJ9YakpEks+JFVoqSjRTlP
	vag5kxfzKnZ3ebcH+/EcFAYTxSN0Sz5CC0ZSIPra80IAuVBMg/EM38QkIn8zYJ4rHJNxvJ8VIkvQl
	kCL4EihGR4U12wavxU9en8Y17EY4iUYKuJ8CudcmwpPX+smG/SuBZmaDCvzy3lQ3dpb2d5oNviWr3
	OeTwgJzClGAz+UbGeKjlHn3cldkcQDz1mBu/5Ia6hn1S3AYT+sb4eYWPtpP+e0PEcepXGmJ2VO6ON
	csmWcj8Ni8kAUdz7GKTOI/TYOw8IxlWZrn8OegHaubKpYFja1wLiKppFmSa4qArojmzTLQZ5XABFA
	KAM05UECA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKivy-0002nS-Ro; Tue, 22 Sep 2020 14:06:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKivu-0002lt-2e; Tue, 22 Sep 2020 14:06:15 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kKivi-0000Ut-Om; Tue, 22 Sep 2020 16:06:02 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: devicetree@vger.kernel.org, m.reichl@fivetechno.de,
 David Bauer <mail@david-bauer.net>, kever.yang@rock-chips.com,
 linux-arm-kernel@lists.infradead.org, robin.murphy@arm.com,
 jbx6244@gmail.com, robh+dt@kernel.org, andy.yan@rock-chips.com,
 jagan@amarulasolutions.com, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R2S
Date: Tue, 22 Sep 2020 16:06:01 +0200
Message-Id: <160078353166.2390697.16495251990636395272.b4-ty@sntech.de>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200920154528.88185-1-mail@david-bauer.net>
References: <20200920154528.88185-1-mail@david-bauer.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200922_100614_404371_B9845AAF 
X-CRM114-Status: GOOD (  10.39  )
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
Cc: Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sun, 20 Sep 2020 17:45:27 +0200, David Bauer wrote:
> Add devicetree binding documentation for the FriendlyARM NanoPi R2S.

Applied, thanks!

[1/2] dt-bindings: Add doc for FriendlyARM NanoPi R2S
      commit: 8cfcf3279419acbf2d2c471262bfb18d9e175fc9
[2/2] arm64: dts: rockchip: Add support for FriendlyARM NanoPi R2S
      commit: f1ec83f880dbeaceb10d33c40c47aa1769b787e8

After adapting to the renamed pinctrl name.

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
