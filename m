Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1543C4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Apr 2024 18:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rb/yNamu3OBMeWSVVaeUyzss1JbkN0ynsd/mY72hq10=; b=fMwtmpnwgZ4anx
	AkKsD0VJU+xROY2ZCjP7pqDgmNAc04NDXtC4kIx4UJtusT9jYm3fRrUHaOghd39S5s5BlnC+EQZla
	09JZ3YPwVBCYqrbvalp+selsI7gWjvPvwX0G6kv+Sz261jXNSwlRcrha3561NXwU+PFP+bEbIsKwk
	DIBuJOxrBhRAQxHaRPQAmyOUYNm9wW8ssxNDsp/oIUMEkTmkO2E851yaP6cuDynoGbrMQKeZsysmO
	yuyH3h28Pvf5wzBpVHGZYY6MpwmVcyUkBGvcNc4wZjTYUdUZe+rn43uquecVExl54wbNlvwDs2psi
	I7vbenRUi4PHcY2ZQ5Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruzCJ-0000000DhAk-2zVe;
	Thu, 11 Apr 2024 18:30:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruzCF-0000000Dh7p-224h
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Apr 2024 18:30:53 +0000
Received: from ip-185-104-138-67.ptr.icomera.net ([185.104.138.67] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ruzCC-0001so-3Y; Thu, 11 Apr 2024 20:30:48 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	agx@sigxcpu.org,
	neil.armstrong@linaro.org,
	airlied@gmail.com,
	daniel@ffwll.ch,
	sam@ravnborg.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	quic_jesszhan@quicinc.com,
	kernel@puri.sm,
	dri-devel@lists.freedesktop.org,
	robh@kernel.org,
	megi@xff.cz,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: (subset) [PATCH 0/5] Add Support for RK3326 GameForce Chi
Date: Thu, 11 Apr 2024 20:29:54 +0200
Message-Id: <171286007459.1886699.12166776113258136187.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240325134959.11807-1-macroalpha82@gmail.com>
References: <20240325134959.11807-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240411_113051_919417_3798472D 
X-CRM114-Status: GOOD (  10.32  )
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

On Mon, 25 Mar 2024 08:49:54 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the GameForce Chi [1].
> 
> The GameForce Chi has the following hardware:
> Tested:
>  - 3.5" dual lane 640x480 DSI display.
>  - 15 GPIO based face buttons.
>  - 2 ADC based face buttons.
>  - 1 ADC joystick (left) connected to internal SARADC.
>  - RGB LED arrays for key backlighting
>  - Dual internal speakers.
>  - Realtek RTL8723BS SDIO WiFi.
>  - Single SDMMC slot.
> 
> [...]

Applied, thanks!

[4/5] dt-bindings: arm: rockchip: Add GameForce Chi
      commit: c1bc09960d05cfbfb94cfdfb66b4733e3ddf1638
[5/5] arm64: dts: rockchip: Add GameForce Chi
      commit: ad59da1ab997e81061ec980300fb7ce2d5e4bc5d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
