Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7265C05027
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Jan 2023 13:39:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GJRKUYqqU90NP5mfGBz6kSvVmjZlZyK+wtxjVKIsUTY=; b=gGmkVgqUUfOdCP
	q/NZQKbKipZ4j6sUe02QoGcYrz1XIBzYF11NJEzDae7CFYYQ1jaZOpOMJI/e4A7RTLS88twUgY2BS
	XqJB9zDIG9hv78n/RRKzCjRIOB2dTi+kSgLcH3ptjn1lRueMauZR1MH0FPw4MbZBijYwpMSc+PhWB
	NUrGoT0AVkgS+WMNkNQN89r6nXexqHddtASYwvH2T8/Av5vUSmQQjRwkqdd5ssRZw1aF+0q85W6+U
	s/6ButwacseMB5X8Ow8NPb3gXzooonexOVlmnvL93J7Y1NZgqjEKyMGQKU6ZfRoQZvnHWjzq1ZbkV
	03EwNcDuBtE6JvDpSH5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pM7u8-001Vvk-Su; Sun, 29 Jan 2023 13:39:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pM7tx-001VqZ-C5; Sun, 29 Jan 2023 13:39:22 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pM7tq-0003rM-Ty; Sun, 29 Jan 2023 14:39:15 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Jagan Teki <jagan@amarulasolutions.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	Manoj Sai <abbaraju.manojsai@amarulasolutions.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Enable Ethernet for Radxa CM3 IO
Date: Sun, 29 Jan 2023 14:39:06 +0100
Message-Id: <167499930028.3595793.12135511389225494732.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230125161023.12115-1-jagan@amarulasolutions.com>
References: <20230125161023.12115-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230129_053921_449703_DF378BAB 
X-CRM114-Status: UNSURE (   9.33  )
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

On Wed, 25 Jan 2023 21:40:22 +0530, Jagan Teki wrote:
> From: Manoj Sai <abbaraju.manojsai@amarulasolutions.com>
> 
> Add ethernet nodes for enabling gmac1 on the Radxa CM3 IO board.
> 
> 

Applied, thanks!

[1/2] arm64: dts: rockchip: Enable Ethernet for Radxa CM3 IO
      commit: cc52bfc04726a574fc4440bbbe0c710890e7040a
[2/2] arm64: dts: rockchip: rk3566: Enable WiFi, BT support for Radxa CM3
      commit: af5a803bf212e077e5fb7a1d4cf6be02f74a74ca

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
