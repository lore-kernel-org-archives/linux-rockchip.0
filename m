Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A63AAC0015E
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Aug 2023 13:00:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T29Ncsl8Hpizfxkhz6VfuyfXVLsYCYtY5VwWQ5EpXcQ=; b=oPFmjVXuXd6BlD
	KmWN5q7FOHvQQp19vD/Hedez9WJzVgtfOdBjKf+0DJkG5cbdbLM8uYUHp6PYY+Xf4FuBVLcfREHna
	Q7FcKxklyRULclaTREAk3a9/JXEMJK23UckSu7/K1tSNqRxMrzVsYQxZ1I2YJc7F+q8igV8hkBcL0
	30kIr6NOa+KKY0ArhrlqHEhyt/hzpVXK88jvRKMBXM9gcZMEcvHh9ksJXxdmK49b3TmTVB+n0Ejdr
	mvMTk3SbUr524ADfcLwsGS0CFBGhAG7+rz3vRoPnyJhAD8Kmyz/8UwuoZn2sAiO5N4SRicgpX7ivZ
	Z/MlvkibpAkGchcT6R4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUoEM-00DRPc-1Z;
	Sat, 12 Aug 2023 13:00:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUoEK-00DRP8-1J;
	Sat, 12 Aug 2023 13:00:33 +0000
Received: from i53875bbf.versanet.de ([83.135.91.191] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qUoEI-0000VT-Qu; Sat, 12 Aug 2023 15:00:30 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: (subset) [PATCH 00/14] drm: rockchip: Add RV1126 Display (MIPI DSI) support
Date: Sat, 12 Aug 2023 15:00:29 +0200
Message-Id: <169184522006.3623764.5771331478206681283.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230731110012.2913742-1-jagan@edgeble.ai>
References: <20230731110012.2913742-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230812_060032_466390_9149C996 
X-CRM114-Status: UNSURE (   9.45  )
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

On Mon, 31 Jul 2023 16:29:58 +0530, Jagan Teki wrote:
> Rockchip RV1126 has VOP_LITE Display engine which can route
> RGB and MIPI DSI display interfaces.
> 
> This patchset adds MIPI-DSI pipeline support for RV1126.
> 
> Any inputs?
> Jagan.
> 
> [...]

Applied, thanks!

[09/14] ARM: dts: rockchip: rv1126: Add PD_VO entry
        commit: 4fafaed5afcc3a58e982629dbc0471ba9ba8678f
[10/14] ARM: dts: rockchip: rv1126: Add VOP_LITE support
        commit: 1bf0dcb1e2a987a9281ae91f94e10c0de52c4952

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
