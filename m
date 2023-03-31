Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C4ABC7619A
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Mar 2023 00:46:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YD8Pgf4wU9UF2DfpgI94L8E48rimfNYm99kq665doZU=; b=g7RyFW9OnU6Xy4
	Z/M1R1m/7VaYoFnSf0adiYY2iEuTJdxDLNugWUgcq/TbxB3aI1kxP25kTSgnK9UProj1THV5Gw+qo
	7axB0BgcxDFmOm5rqGA9Uo/wK6q+N16upJZWNXsVx10NFlloW+blEh8KR6rzsoh3sIyZhCqJ7YdCb
	gd0AiAtxHFY0S1PNPyWfmTIkazdYbZRN39p1hjUM9tdqgAim3xa6S0zfD1avn7ZeV6Qg+cJoOqVgG
	pC/UJUlnfz6/pSrUKqSq1/fR9q8UIgGg/yDcOTWPlzUS2iSFMGd5+2Bd2JGQnoXZsl4Zfvr21EMyc
	FJSXA2bpoNK8tm154PXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pi2uI-005T7m-2j;
	Fri, 31 Mar 2023 00:46:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pi2uG-005T6k-2K;
	Fri, 31 Mar 2023 00:46:18 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pi2u9-00085a-Vg; Fri, 31 Mar 2023 02:46:10 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-kernel@vger.kernel.org,
	Javier Martinez Canillas <javierm@redhat.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Judy Hsiao <judyhsiao@chromium.org>,
	zain wang <wzz@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	Lin Huang <hl@rock-chips.com>,
	Brian Norris <briannorris@chromium.org>,
	linux-arm-kernel@lists.infradead.org,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Douglas Anderson <dianders@chromium.org>,
	devicetree@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Enric Balletbo i Serra <eballetbo@kernel.org>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Remove non-existing pwm-delay-us property
Date: Fri, 31 Mar 2023 02:46:03 +0200
Message-Id: <168022355549.2421590.10536271143101805673.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230330231924.2404747-1-javierm@redhat.com>
References: <20230330231924.2404747-1-javierm@redhat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_174616_757981_E665F16F 
X-CRM114-Status: GOOD (  11.34  )
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

On Fri, 31 Mar 2023 01:19:23 +0200, Javier Martinez Canillas wrote:
> There is neither a driver that parses this nor a DT binding schema that
> documents it, so let's remove from the DTS files that make use of this.
> 
> The properties that exist are post-pwm-on-delay-ms and pwm-off-delay-ms,
> defined in the pwm-backlight DT binding. If the delays are really needed
> then those properties should be used instead.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Remove non-existing pwm-delay-us property
      commit: 3adf89324a2b2a9dbc2c12d8895021e7e34e3346

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
