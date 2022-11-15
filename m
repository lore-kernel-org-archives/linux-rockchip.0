Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCE06C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Nov 2022 11:23:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NMG7qfxTcsFqR+83O1xfi5P7gN27KMuzp034l8xhdVw=; b=aLMze9pTRXskV8
	em8NKDu87DoPptWJgLMqnNYA87IqU2OEc9OJnXnYLOwMWaRYcKgw+yilP7lqo8kMVNq0N4Y8aZTEf
	i3kqypmXvXwot0JbXubNqgKeOnPtCAIyEETP1P/Xh6U0uOfCf0YuJcZpGRM+QkR7zFBL2jTaiCJb3
	2BseGo2FomkiPjTtOksoOMVwKCVf4HrVCZRHlMvs1koVrupov+HeoKUa8+BDrZOBPvI3egi88Xf2c
	ooYJmn3SFoP8KCAYg1XCl9e2llyfYCYNUvk74GDvrl19sIPjhgYBpCYAA+y5HEMDWCc/qT5Mta64e
	Bt12q46H3pdxgByJqwDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouu2H-00AYcM-4b; Tue, 15 Nov 2022 11:23:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouu2C-00AYa6-UD
	for linux-rockchip@lists.infradead.org; Tue, 15 Nov 2022 11:23:22 +0000
Received: from wf0498.dip.tu-dresden.de ([141.76.181.242] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ouu27-0007jk-0k; Tue, 15 Nov 2022 12:23:15 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: "Rafael J. Wysocki" <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>, Amit Kucheria <amitk@kernel.org>, Zhang Rui <rui.zhang@intel.com>, Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, kernel@collabora.com
Subject: Re: [PATCH 2/7] thermal: rockchip: Simplify clock logic
Date: Tue, 15 Nov 2022 12:23:13 +0100
Message-ID: <5186412.LvFx2qVVIh@phil>
In-Reply-To: <20221031175058.175698-3-sebastian.reichel@collabora.com>
References: <20221031175058.175698-1-sebastian.reichel@collabora.com> <20221031175058.175698-3-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221115_032321_011101_0CA4EF8D 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
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

Am Montag, 31. Oktober 2022, 18:50:53 CET schrieb Sebastian Reichel:
> By using devm_clk_get_enabled() the clock acquisition and
> enabling can be done in one step with automatic error
> handling.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Oh nice, I didn't yet know this helper existed.

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
