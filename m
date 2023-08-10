Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEB06C001B0
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Aug 2023 21:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YZKqqNC++/QNsNYmTJ7lBH7YHECvUOFDbCMtHrl8C7k=; b=BNah5tCeQLtBWa
	bJaevNEHsB1bKyIrAFClMXAlT+w7G3lgp3LLrL1FTcjiwFe/FCmbnuylwm6G+6vlA3uawCx82OmGs
	V0Xgi0PgHBefUdBZAZ9fyyOgfCzqzYDk6lUK1kG5imu5E3v6i3mk5y73hddX0xV93pq46ULfg09y6
	AAX4hx2EZI2g6I2INIv1uacCXYSNzeuhJ481VsMfWTKTae/JdzHIvPdm/ZYMspJ9uH5ATthliqpg3
	CPCUez2mWJmbPjEWsZjMmjJtDmVkM/LdqZwnloK2KSy0CFj1fsZ4dPU3tiWdWOwIwS0VGlEUlLwGq
	ObspxxM+b0cyuDxe8IBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUCtN-008iWX-1L;
	Thu, 10 Aug 2023 21:08:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUCtK-008iVl-1O;
	Thu, 10 Aug 2023 21:08:23 +0000
Received: from i53875bbf.versanet.de ([83.135.91.191] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qUCtI-0007Zu-MM; Thu, 10 Aug 2023 23:08:20 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jagan Teki <jagan@edgeble.ai>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: (subset) [PATCH 00/14] drm: rockchip: Add RV1126 Display (MIPI DSI) support
Date: Thu, 10 Aug 2023 23:08:19 +0200
Message-Id: <169170168839.3443046.13360294936213008351.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230731110012.2913742-1-jagan@edgeble.ai>
References: <20230731110012.2913742-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230810_140822_604270_63C032F8 
X-CRM114-Status: UNSURE (   9.43  )
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

[05/14] dt-bindings: display: rockchip-vop: Document rv1126 vop
        commit: aadbaac84fc95efa800e4c73ae86fefb8c86288b
[06/14] drm/rockchip: vop: Add rv1126 vop_lite support
        commit: 3c3cfcb93f6e6e1cede0cdfe3ec24f16ee108929
[07/14] dt-bindings: display: rockchip-dw-mipi-dsi: Document rv1126 DSI
        commit: 9610f9fdf9a01ddab0479a4d5959d93ce5a4b2d4
[08/14] drm/rockchip: dsi: Add rv1126 MIPI DSI support
        commit: 11fdb231f4127bf60839a63a8c7ed640ebe4751a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
