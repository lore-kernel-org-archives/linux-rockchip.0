Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C195D5E386
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Nov 2024 23:40:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5hOg2/pGsRposWRD2DaSPZlBi1ERUQbU4KV9AiG8p3I=; b=fuBXNKK5RXifoM
	zDSJRLNXcNFSxTH+2L+6QUzAiWCvQmbjCF/xthX82dIDJqcPLT09SvGb87PiqZJ8qW5f5b5NOvF9T
	Kos3bQKpqtMKCJuRWPbXOtePxM2JZLlPXBv3CHac7R8uyniI1B+UyriZ2Zacrln1CEyLTI8DHl7HT
	6qNrXZhKhpYAyJssASPENkBuKoP4Ip5oUhOF5/6vVaCiLcU5gDMp5NFncg7ckvYdWR4OsvIqiD2gW
	QYS0uCbwwr6piamS2EpVpTWJDXNEr317FTeTX/x/r0yKSUtm+DQ/ZHrrwmI8xKWQQGIp9TWsWynZk
	Jtwl8lSwb39DvHWZs84A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9v3y-0000000E7We-1ARX;
	Sat, 09 Nov 2024 23:40:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9v2q-0000000E7Sd-3sHF
	for linux-rockchip@lists.infradead.org;
	Sat, 09 Nov 2024 23:39:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=016vrT94/bq8tQxp/b2gIW1czft0k80o/4hbTxdIxBc=; b=H/978Fnle5t56DpgABn8CW6QG3
	mnFuTd4rA3gdjzQe2JWD3zRyikY4TNa1/Ym3JBzpNOpIsm2wjS5DIKkjmLsmZvWmzquLLGTgupwFp
	Kbmotp05jl7E2V0Vz5mJllbfX/J7VRSy37mFhxKsgFg/sKYPHb8BapKkKyxWktsZHmJkbkbl6jFBm
	tCNPU7fm93hVgdywDOIvgAf0rPiFqYEcHdnaB+uuozZtJ4Ij7ixQMCsgja19cLK0BODnIDQlfnEWs
	BdNw7XlVr6juh17f+8AKIYf7TAswoh40o/IBB8kDSBm5w//BHKXnxM72YQqE1PazM6/nIIr/yF7pV
	AasEFPFw==;
Received: from i53875b28.versanet.de ([83.135.91.40] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t9v2g-0000da-OF; Sun, 10 Nov 2024 00:38:58 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	Enric Balletbo i Serra <eballetbo@kernel.org>,
	tzimmermann@suse.de,
	mripard@kernel.org
Subject: Re: [PATCH] drm/rockchip: vop: Fix a dereferenced before check warning
Date: Sun, 10 Nov 2024 00:38:55 +0100
Message-ID: <173119552201.5709.15637295819198976150.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241021072818.61621-1-andyshrk@163.com>
References: <20241021072818.61621-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241109_153909_099819_B57D63F2 
X-CRM114-Status: UNSURE (   8.81  )
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

On Mon, 21 Oct 2024 15:28:06 +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> The 'state' can't be NULL, we should check crtc_state.
> 
> Fix warning:
> drivers/gpu/drm/rockchip/rockchip_drm_vop.c:1096
> vop_plane_atomic_async_check() warn: variable dereferenced before check
> 'state' (see line 1077)
> 
> [...]

Applied, thanks!

[1/1] drm/rockchip: vop: Fix a dereferenced before check warning
      commit: ab1c793f457f740ab7108cc0b1340a402dbf484d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
