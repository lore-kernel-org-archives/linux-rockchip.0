Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D826AFF886A
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Apr 2026 12:24:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LPo7bn359h2M9kN2DXdsC+LADZ9wnJGy5a1EAspiYo0=; b=4/Wx1ZG9L8GPDm
	SbgZYZ1D8xOXhIIQSoqSjko8k3RF9sIrgEsUkRWDbuQkzOLlezmaXdsFQ9yCrxX0etLTTiUM2LoBy
	CywdRRMcAc8ZZ/WJwLAw5WJzvnx2VEEABsWHZym4FeUNe/LpxlvbjDBOwGhanzYgdOZkkug+6SjNh
	a3bjATkOupDnQwSFPgdOM40JghGYsznvMzoBHWqXYcAAUAeJ/v7rhxCn9E35p+eNKPjXBe6iKWRCH
	kvSRr/a2lT5JehpYAmhX+C+69aGIfJNGjZFzlCnap6Yk94kaBo952ckfjUxT9NMJd8lBbYcqAJBGy
	mLYkmOEINoqj8XTPBBlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHL0Q-0000000GtMz-05ym;
	Mon, 27 Apr 2026 12:24:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHL00-0000000Gt9d-1tAt;
	Mon, 27 Apr 2026 12:23:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=vw3V9ZfPq6PThxSOCtgguaFkBodfELaZ7LQ1o0ghpf4=; b=JAHewWSnuM8OEin60mkfTLpvD6
	lgvibbXzHX+q7+T4sZhEHzbGqknD9ub5a0tJprTGpO0pEJu3U0EDT4M05W4p3ivmtfzwbP1YHXwF0
	BzweoJObppg7hBaoLKFBvAX1QCNYHAuLifbpGKzVRCqEtlOeX6khofvE9IOK4GjhwgBIrt7tgtOM+
	uRIpL89sy0mtyWxNzI1MgSDeSchYtxExm0Ycwki+tbvtA28nb4QzAAob7p3C1Zpl85GQtwxfpLWY4
	NtCnnIaJPdFqDfK7KIyRAVzgvquk9D4hfRvjQ4VZ4o7F6rk7CIVv9Na0QMUCxRJvKpQS/PYv7yL+1
	aApPzHIQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sten-Silver Ots <stensilver@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Torsten Duwe <duwe@lst.de>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Enable the NPU on rk3588-rock-5-itx
Date: Mon, 27 Apr 2026 14:23:24 +0200
Message-ID: <177729258231.1866089.18432864978582477876.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260413215301.4656-1-stensilver@gmail.com>
References: <20260413215301.4656-1-stensilver@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_052340_532019_E4532B23 
X-CRM114-Status: GOOD (  10.24  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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


On Tue, 14 Apr 2026 00:52:49 +0300, Sten-Silver Ots wrote:
> This commit enables the NPU on Radxa Rock 5 ITX board.
> The regulator vdd_npu_s0 was already in place and since the NPUs
> power domain supply is now described remove the always-on property
> from the regulator.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable the NPU on rk3588-rock-5-itx
      commit: e4f7054e819eece6fd83072ff2dcefc7a36224c0

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
