Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE688C3A59D
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Oct 2022 19:13:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U3gsIU3VMuRTUfqmYT8HjI4g9jnsrW6FnZyytZX7AOk=; b=mmcOF/xqr3EMlB
	ZpNW9XsHvHkIVYfUxo+6tRiFCb9EeUWXwXcPGeJHLedSVaM2MIcvHQmkp1CMFyBH+SsOBhQOX/beZ
	hiVp2SGMdQNjSJZjD1XzhlS54hdef2bzMNnQ3fWQqqN7vX8+9ejoZD9BgN8PaCvWupmha82G9vQ/j
	jvLXPoi/ohT0CL88ZsHAkhP89ZCqUPH9hv9jHFDYB/i9nV/rpicVOr1Ag0uctwrxHchvCiR/UnNwZ
	ztX9T/J1a1auq2lg/TaHhs0852HoOSLdNU1vWaTMJaLwJ+cZQkGOImuzrfpNfZUO/FCko9lGRJTIc
	TdORe75KB9SMd5h6NLeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olxS0-009Xg8-09; Fri, 21 Oct 2022 19:13:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olxRy-009XfR-DD
	for linux-rockchip@lists.infradead.org; Fri, 21 Oct 2022 19:12:59 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1olxRq-0008J9-4z; Fri, 21 Oct 2022 21:12:50 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: "Rafael J. Wysocki" <rafael@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>, Amit Kucheria <amitk@kernel.org>, Zhang Rui <rui.zhang@intel.com>, Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Finley Xiao <finley.xiao@rock-chips.com>, kernel@collabora.com, Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH 1/2] thermal: rockchip: Support RK3588 SoC in the thermal driver
Date: Fri, 21 Oct 2022 21:12:49 +0200
Message-ID: <13126689.uLZWGnKmhe@diego>
In-Reply-To: <20221021174721.92468-2-sebastian.reichel@collabora.com>
References: <20221021174721.92468-1-sebastian.reichel@collabora.com> <20221021174721.92468-2-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221021_121258_472501_39641A8E 
X-CRM114-Status: UNSURE (   8.95  )
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

Am Freitag, 21. Oktober 2022, 19:47:20 CEST schrieb Sebastian Reichel:
> From: Finley Xiao <finley.xiao@rock-chips.com>
> 
> The RK3588 SoC has seven channels TS-ADC(TOP, BIG_CORE0, BIG_CORE1,
> LITTEL_CORE, CENTER, GPU, and NPU).
> 
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> [rebase, squash fixes]
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
