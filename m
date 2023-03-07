Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA6A3C678D5
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Mar 2023 22:25:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XplTkmpgudgWIdNmbJkMbO9Y1WkaTN1bJmppFfhHGCw=; b=c6aUjnW1mIVbwA
	MuztTEZvmhGJxDiSdONF5xv/D6EhJLNH495MlWzmyPs3+6Pjl9lVC/iNZ05PsrAGeXoTKNMIAV6IL
	GEJRGFenFv/W/ZSqR+m8EhM+YZJck29cKM+dhdSSipC4yBWtE+BYiU1HIGh5XQPt74BG2w6cslLYb
	6iimfHRXxM1Ni9QJPe8zRaKAckjqaTnYVhrq/9CiJgNBVaDj3nRVXA3sQliarJ6rtGuALsP3wsxLv
	R4+cs+t3h6LK5KQPzM6RGOMR85yo3iB68FMK0grG5aOHr+46T3GuAtwFqOPHqFIxdSSUE6vXUJwtd
	S0N87Ut8ot6Gqlm2ISIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZfjy-002elJ-GH; Tue, 07 Mar 2023 22:25:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZfjv-002ekP-JC
	for linux-rockchip@lists.infradead.org; Tue, 07 Mar 2023 22:25:00 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pZfju-0001hq-4a; Tue, 07 Mar 2023 23:24:58 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Maya Matuszczyk <maccraft123mc@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Subject: Re: (subset) [PATCH v2 0/4] Add internal display support to Odroid Go Super
Date: Tue,  7 Mar 2023 23:24:52 +0100
Message-Id: <167822787429.200624.6513384240605380879.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230213153816.213526-1-maccraft123mc@gmail.com>
References: <20230213153816.213526-1-maccraft123mc@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_142459_652804_B78C76FF 
X-CRM114-Status: UNSURE (   9.59  )
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

On Mon, 13 Feb 2023 16:38:12 +0100, Maya Matuszczyk wrote:
> This patch series introduces internal display to Odroid Go Super, which
> shares panel with Odroid Go Ultra and several clone devices.
> 

Applied, thanks!

[1/4] dt-bindings: display: panel: sitronix,st7701: Add Elida KD50T048A Panel
      commit: 441e129cbf81fa7365963141040814cee8ed94d6
[2/4] drm: panel: Add Elida KD50T048A to Sitronix ST7701 driver
      commit: e89838968ee4446073faa718e9303bd6341ee0d1
[3/4] drm: panel: Add orientation support for st7701
      commit: 5a2854e577dc2b4538711afb9d788a6fb835b640

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
