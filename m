Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E5A4CD11C2
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Apr 2024 05:15:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ET3hhETBBfBZUqvukBCw5eb3uPg2EqCHHwecxEOXna4=; b=QZ9os2oBCEM2fT
	LckR5+ZmwSxqlz5t98j1CarB6msMs5CkimG5csYkzRZOxiqS6Aak7A4JbaYAHtZP5bBFXEWZgrFve
	tQtnD/4jBrOWcznmYmHOeRTYcDDbOIy2Adh6cJmVDv8DzB6jYFZI+ScisnuPyAhNIPOxBxcVz7r6v
	vip0y2FP7Qh+cNTmhoVUGgVbPsZK/Mto4OMkThYqV5unENqqRAmf1B3MbWeC/b5vg9JY1J3GM8XeF
	I29wR234nTPEDUahmOEWco4jS1OR+BAblyWumwCPjLjhar7a6TF0bb1sGvXDZCf0KJKVvgsSd3P6H
	JUVTcWS+a82bgWwSOHew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruQJ0-000000058wR-1BjR;
	Wed, 10 Apr 2024 05:15:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruQIp-000000058o9-1Sxh;
	Wed, 10 Apr 2024 05:15:20 +0000
Received: from ip-185-104-138-50.ptr.icomera.net ([185.104.138.50] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ruQIi-0008Ut-SD; Wed, 10 Apr 2024 07:15:12 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	conor+dt@kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Designate the system power controller on QuartzPro64
Date: Wed, 10 Apr 2024 07:15:01 +0200
Message-Id: <171272604789.1867483.1717225065687252209.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <c602dfb3972a0844f2a87b6245bdc5c3378c5989.1712512497.git.dsimic@manjaro.org>
References: <c602dfb3972a0844f2a87b6245bdc5c3378c5989.1712512497.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240409_221519_515406_0B71C307 
X-CRM114-Status: UNSURE (   8.99  )
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

On Sun, 7 Apr 2024 19:56:24 +0200, Dragan Simic wrote:
> Designate the primary RK806 PMIC on the Pine64 QuartzPro64 as the system
> power controller, so the board shuts down properly on poweroff(8).
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Designate the system power controller on QuartzPro64
      commit: c2b6d3a2bbf6352f7cddff2abe81dc4af4887672

Added a Fixes-tag

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
