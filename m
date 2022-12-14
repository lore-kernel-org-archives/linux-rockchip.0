Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFC49C4167B
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Dec 2022 14:27:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0otPK4VXg0ppkKWcVyvJRFbciJZjatNr6jm0DHwrFGU=; b=49VuTA+dq8RksC
	kJb6rBJnLzfhuKQf531d8fDGDNSgS2S8ACUgqG9ZqC9HfqjXzEdON6XNWcCoJSB7zdsyPm850UU6o
	mvmTpR6zKdvMdHz+aOQ+7gpAa1Dk/7spw7nqPk3F0UMEPzRXBCQRcR8mEwJ2h/zSFi3vO0xkRRddZ
	Jwy90MR5S6ilRk97WDvAH77K61CxyHzEkdXT40sP8gesu/STtVT+T/yBz51Srmcdq4Se6ML3KehHY
	gNTxd2UQplhJ2Nj1K66QtUNGAc/ZQR7q3SoK0dqJP8RoiYTiwkzO4Fl3SNwtFNQ67+OMGHmSsgqvZ
	GsJy8uF97ZYaGft3obsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5Sjc-00HFos-Hd; Wed, 14 Dec 2022 14:27:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5SjA-00HFUE-ID; Wed, 14 Dec 2022 14:27:21 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1p5Sis-00050J-MP; Wed, 14 Dec 2022 15:27:02 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>,
	kever.yang@rock-chips.com
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	hjc@rock-chips.com,
	zhangqing@rock-chips.com,
	krzysztof.kozlowski+dt@linaro.org,
	philipp.tomsich@vrull.eu,
	soc@kernel.org,
	tglx@linutronix.de,
	daniel.lezcano@linaro.org,
	arnd@arndb.de,
	linux-rockchip@lists.infradead.org,
	sjg@chromium.org,
	olof@lixom.net
Subject: Re: (subset) [PATCH v2 0/4] Add basic Rockchip rk3128 DT support
Date: Wed, 14 Dec 2022 15:26:59 +0100
Message-Id: <167102796007.2796496.11503501153122031880.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <e83964fe-ad87-0905-4586-e235757c6b2b@gmail.com>
References: <e83964fe-ad87-0905-4586-e235757c6b2b@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221214_062720_646430_2A4ADE0A 
X-CRM114-Status: UNSURE (   8.53  )
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

On Fri, 28 Oct 2022 16:39:04 +0200, Johan Jonker wrote:
> Add basic Rockchip rk3128 DT support.
> 
> Features:
>   Quad-core ARM Cortex-A7MP Core processor
>   Clock & reset unit
>   Power management unit
>   Interrupt controller
>   DMAC
>   6x 64 bits Timers
>   4x PWMs
>   1x 32 bits watchdog
> 
> [...]

Applied for 6.3, thanks!

[1/4] dt-bindings: arm: rockchip: Add Rockchip RK3128 Evaluation board
      commit: a1392d5ac60864a3682c447fe62392eb56e9d93b
[3/4] ARM: dts: rockchip: add rk3128.dtsi
      commit: 9ef609cbdbf7a45599b0c9c21e9e7d2ae625896f
[4/4] ARM: dts: rockchip: add rk3128-evb.dts
      commit: 7232dafab89ac23b570d0adb3402164719fcbe3d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
