Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2770DC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Dec 2023 20:03:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2afQu4S2THUoeOHbSyMIQv3QxlnMspBBDdUNPw++Ymc=; b=2P6iCm6ENKQmg9
	OVQP9l3O9wmVOpTxP5uijUX44U8k8wOq/vlhTfDcHqulsGb4VN7V/9CDDSJgckL1qaga4TI5UycG5
	6JOE62DVio649UKtz2Q1a96AZaF8yh9DF+0ednykGFy2PD3rwWLR+ACdHODz+HtACCMzDmzB9eB1q
	+JxXK15qejlb5bHuZlSJzFr8lAY+hehr3EMOoo6wyRc0kZuX6LCFJXdK2F05/Ty6V61/84FQDbQWm
	D1kwdlqzBha6cC3zMP4SVOL5Xg9mnqK7Ai/7NW4WYIZcjENLpweTASbM2e4UQghb099y21KIP63ds
	tODlJc2hH3ZgfNdssMyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rD8yf-00Cf7K-1o;
	Tue, 12 Dec 2023 20:03:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rD8yb-00Cf5c-36;
	Tue, 12 Dec 2023 20:03:35 +0000
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rD8yJ-00069W-Cc; Tue, 12 Dec 2023 21:03:15 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Lee Jones <lee@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Alex Bee <knaerzche@gmail.com>
Cc: Elaine Zhang <zhangqing@rock-chips.com>, Johan Jonker <jbx6244@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, alsa-devel@alsa-project.org,
 linux-clk@vger.kernel.org, linux-phy@lists.infradead.org,
 Alex Bee <knaerzche@gmail.com>
Subject: Re: [PATCH 00/31] Fix and improve Rockchip RK3128 support
Date: Tue, 12 Dec 2023 21:03:14 +0100
Message-ID: <2167016.irdbgypaU6@phil>
In-Reply-To: <20230829171647.187787-1-knaerzche@gmail.com>
References: <20230829171647.187787-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231212_120333_997312_621177A3 
X-CRM114-Status: GOOD (  10.30  )
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

Hi Alex,

Am Dienstag, 29. August 2023, 19:16:16 CET schrieb Alex Bee:
> this series fixes some issues I found when testing my "new" RK3128 board
> with the mainline kernel and adds some core functionality like SMP bringup,
> usb and networking.

before I discard this thread, is everything from here migrated to
separate serieses or are there patches in this big pile that are still
relevant on their own, that haven't been applied?
[I lost track of what did go where ;-) ]


Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
