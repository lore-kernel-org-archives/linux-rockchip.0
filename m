Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B345C4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Apr 2024 18:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lMU22J/sLaQRn5tZm7sKgCYd/6Yv8vt801hu6QwCZEk=; b=DsJ3GcuKynGyuX
	ecquHJv1rLLIZkhpP1pBPFcVEos+Zrl/eMNL4wd/Wc+a4xjsmb1TnDiiJTIXRkQY6zo4Uxfj84VzA
	BD+hxtk4NfjZdJCbVoucxtY5gXkJ3WI7FodN5niQw2Kb5uflFx6RM/HtASsXtFpg4OpenQ1vXr+Ki
	XVreH4TAbAv69NZt65rHbEPU59zD6jfKap3WUNLB4lof+gZl6GUS0rtzMundrsZesWGSlovbrVVmL
	J8XtZUPHsPoSpvseuyTh1qgiEjPbUWeWsYSXM7n+GJmK5dX1AmycrJKIaBVpBSGKXIRptBcIEQpR1
	Pp9H+eErSu7mDS2OXJJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruzCC-0000000Dh6m-2GrX;
	Thu, 11 Apr 2024 18:30:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruzC7-0000000Dh2J-0fCG
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Apr 2024 18:30:45 +0000
Received: from ip-185-104-138-67.ptr.icomera.net ([185.104.138.67] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ruzC3-0001so-KE; Thu, 11 Apr 2024 20:30:41 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: (subset) [PATCH 0/4] User Requested Fixes for Powkiddy RK3566 Devices
Date: Thu, 11 Apr 2024 20:29:53 +0200
Message-Id: <171286007456.1886699.6885210862940923599.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240325175133.19393-1-macroalpha82@gmail.com>
References: <20240325175133.19393-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240411_113043_434826_7AB61B05 
X-CRM114-Status: GOOD (  11.53  )
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

On Mon, 25 Mar 2024 12:51:29 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Users have requested fixes for Powkiddy devices to help with some
> intermittent WiFi issues by adding additional properties to the
> SDMMC2 node. They have also requested that the model name be
> represented consistently with both the manufacturer name and model
> name. Lastly, there exists a second configuration of the RGB30 with
> a slightly different regulator layout we need to describe.
> 
> [...]

Applied, thanks!

[1/4] dts: rockchip: Add chasis-type for Powkiddy rk3566 devices
      commit: 9d3d2be86c7d4b1bc16b65a06ba06886913de7e8
[3/4] arm64: dts: rockchip: Correct model name for Powkiddy RK3566 Devices
      commit: 1b76d86dbc5faf907d74343e1b15daa84ab8322c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
