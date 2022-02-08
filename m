Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 688A0C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Feb 2022 16:59:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T6JkYnmO9pkmw9BxMB80/QzCIdfQwHICQTR0DAkhqBI=; b=GgKjBUPg/v6Yxv
	53dViJRVGSaCAMqrTLW/KDx9MXIL7hMi42JWqrj71ROxog6k7uC3axXvSfA0aGW6S6LV+TCyJPlak
	zDjnnoqmAM8X1BxNYtkb3tf8GAfD3Qcc6x+eKLCV0a0GLPg9ENg5CXV+sNcblJzsF+ZX2DV+3xAIp
	igEpfhKAmXUN3bHGzPkKj/eMRu486hdLRnYdmUv22DqGP2n85LKdtsBl2eW3IAj9yVpUmGfJSCI2p
	rP0e/2gCl4UCZgzipox6KrjP0VtdJhTWEe1ThHKq52u5IYra5I6CyxV1r33mXO4uEJP07nhXVjWxm
	Mv4kgfj/MfTDU9mmXB5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHTqD-00Ey0B-Fe; Tue, 08 Feb 2022 16:59:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHTpw-00ExqD-Vb; Tue, 08 Feb 2022 16:59:30 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nHTpp-0002ya-Pw; Tue, 08 Feb 2022 17:59:21 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-arm-kernel@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Peter Geis <pgwipeout@gmail.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Liang Chen <cl@rock-chips.com>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: rename and sort the rk356x usb2
 phy handles
Date: Tue,  8 Feb 2022 17:59:17 +0100
Message-Id: <164433936977.231183.18016907224381474829.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220127190456.2195527-1-michael.riesch@wolfvision.net>
References: <20220127190456.2195527-1-michael.riesch@wolfvision.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_085929_037109_A800BE1C 
X-CRM114-Status: GOOD (  11.10  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Thu, 27 Jan 2022 20:04:55 +0100, Michael Riesch wrote:
> All nodes and handles related to USB have the prefix usb or usb2,
> whereas the phy handles are prefixed with u2phy. Rename for
> consistency reasons and to facilitate sorting.
> 
> This patch also updates the handles in the only board file that
> uses them (rk3566-quartz64-a.dts).

Applied, thanks!

[1/2] arm64: dts: rockchip: rename and sort the rk356x usb2 phy handles
[2/2] arm64: dts: rockchip: add usb2 support to rk3568-evb1-v10

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
