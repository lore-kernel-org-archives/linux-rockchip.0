Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89ACCE77180
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Dec 2024 00:00:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RU1nKwVBmZGalPKCVs7ruvfT0Ne8tPA3BSx4snCgEtM=; b=whPhQObTPGrYeF
	E/wu5pxEjePJBMmrYVGJuHh2aXzwUOKMuYbaQHJp33PaokewxXEFkkoutda4xU+Ls2H8QDxL1MQFG
	+wQRLGcjT48CkIpRYrkaf72JCAwH68BBft9ZOIPH5evK9kg9dKEFjcYJoA9VwKax+hGIAsE/agEH4
	96MQwfdPSTrzvUXCo1uFOoW5eexk/0kprGjuM5H03PWAm3v8vHWs7SmpWItExfmQ8vjlxsBNMekA3
	FCBdOgB8IJePi05By7QDnjOP/Le+Hd3qaN+ZjYB0qZ64s2VkX71UzgKHhLH2vl9yvaDoZBbRix6ah
	kjHpJE8JsZ0X6Pa1vcKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLWcy-0000000GZGf-2VTr;
	Thu, 12 Dec 2024 00:00:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLVT3-0000000GOfg-1f1Q;
	Wed, 11 Dec 2024 22:46:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=J4uMrsFePi+DBZGlK5bC9jVrtcVa4XLjgvOYdofBgAk=; b=gU4TsdgUnGXkU7jHZ6z93Yntt9
	8SGpOjd8iuXT+SE2JY0/FdWvVwfi2E5zlEcJFroSVWVVTq0twPUlfuYM10WZPdV81s/rX/0wPZ7Al
	bRQw+BJoLRxwhJ/PDloAVow+P6H9GzLKAVPSxRqoHRwudsXoX3WSYjMFD/lBkySvDdCLn4k2hjQro
	AM/zOTjaW8fJa+JRmoEQTice5lm4FvUFqbh3pF1pfOz0NtHiDIe9syfI/R5vnyH5UjXbBRoyk4QXF
	MIXNKDq85ZWSpAVh6pfo6FMzrzmXV5AHwR7PEPVYqNnK0KjbTlc/Q5w1tP2BdIi8Zm/h2DB+St2Xu
	Rxkbunxg==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLVSy-00000003uQh-1Mrk;
	Wed, 11 Dec 2024 22:46:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=J4uMrsFePi+DBZGlK5bC9jVrtcVa4XLjgvOYdofBgAk=; b=jqhFX5XjB/uFDDyAKv3HRztSoj
	04+EpIK8Wy8R0kLFcrvEvVJ3CXHLSU4O0LAzyunfRuJTWluoX/By3EFoPcR1z+HTClA9Sla1E2W4h
	JWKcWX1fnjsXPpGHTyHDyd2M/Yx/bYbpNupYoPe08Jv+P+Dp9LCxfwFu6Ack0xgu9YahDdG9eb3WZ
	MGMPBlrNKG4PCMnNdQowdxBMIgyd4mtcGg0ddjfqI5i4hx3MaB/cGLcqmGvDfFNE7WI0JLCH0S+y/
	oWuBcILHtr7MSRIvvKSAIdLPlrWh6dVemfTyjv308c+UEiGlXh5V2LdtrzOucZgrM/kRiV3Sn16Qx
	sneBq5Og==;
Received: from i53875bc4.versanet.de ([83.135.91.196] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tLVSi-0000ON-0w; Wed, 11 Dec 2024 23:45:44 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	kernel@collabora.com,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] drm/rockchip: dw_hdmi_qp: Simplify clock handling
Date: Wed, 11 Dec 2024 23:45:39 +0100
Message-ID: <173395708761.2509957.6810456712864653104.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241202-dw-hdmi-qp-rk-clk-bulk-v1-1-60a7cc9cd74e@collabora.com>
References: <20241202-dw-hdmi-qp-rk-clk-bulk-v1-1-60a7cc9cd74e@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_224600_539279_4ECB0079 
X-CRM114-Status: UNSURE (   9.42  )
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


On Mon, 02 Dec 2024 22:27:34 +0200, Cristian Ciocaltea wrote:
> Make use of the recently introduced devm_clk_bulk_get_all_enabled()
> helper to simplify the code a bit.
> 
> 

Applied, thanks!

[1/1] drm/rockchip: dw_hdmi_qp: Simplify clock handling
      commit: 19851fa2ba9824bede16f55234f63d9423897c3d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
