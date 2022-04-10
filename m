Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A1F6C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Apr 2022 17:13:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qf1C6Ze30gVsGfbnRoRldURsqnWwGDUB13k/jcqJ9KE=; b=Xi0aVBWGrs5Ok3
	ND5Un0zu9H2x7GMfqF9xvwNIG+r4ECesuqL+V24cKw5TjpD5+k69SK3kKDRUOy4MBJhna+lLcbY9H
	ui3bxWaameuZxVqgXoE3HmHsp96tDYDwRYok6Ou4cJ6gCp93ZnV/4nqsQmq8Isot579mUvq+gvuEN
	kUZk5V7rptFY7K/cay6VOGGG0IKZWexEcHvYfNDUfzm5Wtol3yXMmKfovB376WCWlgC63k194Cipc
	CRqd5e4u/EHG3qNeD5SMqIVcVHnj/8MJvS4Jx/0czNZ36ZVljiHkM+ixkTCz3rBBNMrBQ+LUy5LcI
	oRkmdiHZND9V0oydBp1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ndb8N-005ApQ-H9; Sun, 10 Apr 2022 17:13:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ndb7Z-005ANs-2b; Sun, 10 Apr 2022 17:13:06 +0000
Received: from p508fdda7.dip0.t-ipconnect.de ([80.143.221.167]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1ndb7S-0006hD-7o; Sun, 10 Apr 2022 19:12:58 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chanwoo Choi <cw00.choi@samsung.com>,
 Brian Norris <briannorris@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Lin Huang <hl@rock-chips.com>,
 Derek Basehore <dbasehore@chromium.org>, linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v4 00/15] rk3399: Clean up and enable DDR DVFS
Date: Sun, 10 Apr 2022 19:12:52 +0200
Message-Id: <164961074166.23152.15908748993701910543.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220308190901.3144566-1-briannorris@chromium.org>
References: <20220308190901.3144566-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220410_101305_155871_89F1C963 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
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

On Tue, 8 Mar 2022 11:08:46 -0800, Brian Norris wrote:
> This series covers 2 primary tasks:
> 
> 1) Resubmit prior work:
> 
> [RESEND PATCH v5 3/4] arm64: dts: rockchip: Enable dmc and dfi nodes on gru.
> https://lore.kernel.org/lkml/20210308233858.24741-2-daniel.lezcano@linaro.org/
> [RESEND PATCH v5 2/4] arm64: dts: rk3399: Add dfi and dmc nodes.
> https://lore.kernel.org/lkml/20210308233858.24741-3-daniel.lezcano@linaro.org/
> 
> [...]

Applied, thanks!

[11/15] arm64: dts: rk3399: Add dfi and dmc nodes
        commit: 1b3f36854ab74839693582bc957930f4416ce8ff
[12/15] arm64: dts: rockchip: Enable dmc and dfi nodes on gru
        commit: 80bc6f34c559c97069b75d6eb453d4218c3ed017

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
