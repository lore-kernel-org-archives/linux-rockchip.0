Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C90C9C5AE5B
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Nov 2023 17:02:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MgIcpMMimfGJCbcCwxMuH2zvrPPcJBncC5cIsUC2rIM=; b=xuscLrIthj9CLU
	4MWNxYCx06e3jdgoZnv0FeTHcgIyI+MJS8KBK1hS3VWiG7VH1Zps6hXKIf4o6mtjUgzrR1pwPQdhG
	ch2xfuRd/sg48kvF0ezbxLII8KL2trk6X5pd2/Ar1u7SvzDxYSctFTKtRn0G01fh6gBBOKwDWI8N3
	0lyIpIgVVsyP9F5ew012HCzGf5T56VGpbjV6Tsfn1Pf/LgH9BZjTU2QmFjL1MDVpNFwE3hW0GX4n4
	IJWrvq0gxG7GdtqnY8TvKT1gwh55FHia5Y+5/swQiVfpyDXu5w2xDQDqjz8gJMGqy++jCOF8ral1S
	H1X93pONhTptYGaiTOew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r57fQ-00DY3I-2p;
	Mon, 20 Nov 2023 17:02:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r57fM-00DXza-2Y;
	Mon, 20 Nov 2023 17:02:33 +0000
Received: from [194.95.143.137] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r57fI-0000jr-Uf; Mon, 20 Nov 2023 18:02:28 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>,
	hjc@rock-chips.com
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	airlied@gmail.com,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	daniel@ffwll.ch,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v1 0/4] Rockchip rk3066_hdmi update
Date: Mon, 20 Nov 2023 18:02:18 +0100
Message-Id: <170049972584.1779880.13529778706599017239.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cda574be-4f33-b66d-eb14-92c2b31d241e@gmail.com>
References: <cda574be-4f33-b66d-eb14-92c2b31d241e@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231120_090232_830251_F49B7FF5 
X-CRM114-Status: GOOD (  10.17  )
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

On Thu, 2 Nov 2023 14:40:13 +0100, Johan Jonker wrote:
> Update the Rockchip rk3066_hdmi driver in a somewhat similar way
> to what is proposed for the inno_hdmi driver.
> 
> Johan Jonker (4):
>   drm/rockchip: rk3066_hdmi: Remove useless mode_fixup
>   drm/rockchip: rk3066_hdmi: Switch encoder hooks to atomic
>   drm/rockchip: rk3066_hdmi: Remove useless output format
>   drm/rockchip: rk3066_hdmi: Remove unused drm device pointer
> 
> [...]

Applied, thanks!

[1/4] drm/rockchip: rk3066_hdmi: Remove useless mode_fixup
      commit: 1044f4a31734eef000f42cdaaf35bb2f76286be5
[2/4] drm/rockchip: rk3066_hdmi: Switch encoder hooks to atomic
      commit: ae3436a5e7c2ef4f92938133bd99f92fc47ea34e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
