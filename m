Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86F22C4345F
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Apr 2024 10:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F98qZBZT+xeKsiZcZbRbZLIQluJS4Jy2KVqNjVePrgY=; b=TXaVd/k9Mi6hkN
	VP/eaPtHol6DO6RTvnUJ/giXwaTl0EyKmJYXov5JXoHYc4Jf9mxETsFk/+GJtxEAGyjsj+N7CALXp
	w9wD+rG6ao7ETilT0KG9cwLRM4AeJ6fNSuaosKG2zDRsMmzriG5F89EeYqYgBIL7fxzTGao17QSEb
	gk2+rsYCUsp554B3tgpVIWfhlIxZL56aIBjydmoiRN7LkcL88xrqjVdqHovIRNWCe7qa5k4uXZyAn
	9lo6P//MpJ41nKTpMbWnA2vyINWk0pbp/5Lyk8U6cyH7FzbLcV3/aSyiho5zIc+lCAoNmcEEyrcH+
	TueaLclhZ2LgkvlYq8bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxlxJ-00000005NPv-1yrk;
	Fri, 19 Apr 2024 10:58:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxlxE-00000005NMR-3TOU;
	Fri, 19 Apr 2024 10:58:55 +0000
Received: from [213.70.33.226] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rxlxA-0000K1-IU; Fri, 19 Apr 2024 12:58:48 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: dri-devel@lists.freedesktop.org, Jani Nikula <jani.nikula@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 15/15] drm/rockchip: rk3066_hdmi: switch to struct drm_edid
Date: Fri, 19 Apr 2024 12:58:46 +0200
Message-ID: <4536294.1IzOArtZ34@phil>
In-Reply-To: <56ee6b7c3c018df55f5fe48a3e6d705dbad5ef74.1713273659.git.jani.nikula@intel.com>
References: <cover.1713273659.git.jani.nikula@intel.com>
 <56ee6b7c3c018df55f5fe48a3e6d705dbad5ef74.1713273659.git.jani.nikula@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240419_035852_931985_73564C1D 
X-CRM114-Status: UNSURE (   6.96  )
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

Am Dienstag, 16. April 2024, 15:22:29 CEST schrieb Jani Nikula:
> Prefer struct drm_edid based functions over struct edid.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Acked-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
