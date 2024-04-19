Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6989AC4345F
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Apr 2024 10:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Q/Z5aXy/osqN/Novg27WilvRBdlK5+yvMAXA12i8jE=; b=vLuA2p2jbKO7I4
	T8TmuQyEW5HAJT0u45X6MqsmgKUJFKWVMWPQw1VVAi7A76DbDtbZ/J4Msmwvk8SAlF53S7rj9hs4N
	O0IjdERUHsutIe0BSW4nmAxwsSqu0TNqDHK6m6/l/suLCPGRehcl0hRzN78KlTizoFT65ub5+ucAo
	/1wYLK5xSyU19bN8Qru7Fvl9c862A0mterdN7DB6mdSfU3QfERrcS2rJZ/iO+QgbJOPIYm6CqgztP
	tHa0d+vFGfRc7+LbZ3uHrWDMKQ3vUv7WpWrI/25ZOid3BQwz79HEICtMZxgyge67t1vMxbw3vZt9J
	QWonO4OzRl9vVAqFuDGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxlx6-00000005NHu-16km;
	Fri, 19 Apr 2024 10:58:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxlx1-00000005NEi-3Dqw;
	Fri, 19 Apr 2024 10:58:41 +0000
Received: from [213.70.33.226] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rxlwx-0000Jg-3z; Fri, 19 Apr 2024 12:58:35 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: dri-devel@lists.freedesktop.org, Jani Nikula <jani.nikula@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 14/15] drm/rockchip: inno_hdmi: switch to struct drm_edid
Date: Fri, 19 Apr 2024 12:58:33 +0200
Message-ID: <3126037.BEx9A2HvPv@phil>
In-Reply-To: <1218cb4fd79149c90dc0c82c42ae0c8a36acf055.1713273659.git.jani.nikula@intel.com>
References: <cover.1713273659.git.jani.nikula@intel.com>
 <1218cb4fd79149c90dc0c82c42ae0c8a36acf055.1713273659.git.jani.nikula@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240419_035839_816225_142F12C7 
X-CRM114-Status: UNSURE (   7.07  )
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

Am Dienstag, 16. April 2024, 15:22:28 CEST schrieb Jani Nikula:
> Prefer struct drm_edid based functions over struct edid.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Acked-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
