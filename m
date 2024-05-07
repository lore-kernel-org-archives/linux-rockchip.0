Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF451C10F1A
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 May 2024 12:23:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=llEf6qWUwGNjWFLaSy1bGxafVin+5aS8gWlZuckfNmc=; b=wlRLlG59TkUO5I
	pAVFNCZQ7AQoKLzqYOJC+Xf/ZxKkQ+Dlqc+2h3nkWyFc+Y3u9QDJqRIpwSg474s1LyFPy+cmiH0KM
	P5LUbBlAImpVUfmfU6dDJnpZ/afXAGGW+Ix7RbhtB74NFHaQRrfw0yD4s6U9fh5HYdEjPVhosPQYG
	GRTOPqXUJB+FNDJG9cBzgVjHlMJ+jbuM6a3VWi/aDHGFOGQmHjPbci2oFlfaBNS6fwcl7gCbSEcgF
	TkIQjTol/a4grmGPsdJi16ktkKFiyOMhGohYfemHa4Fr/j1UqTpEhoZ5IaKO9zO3T7dLYqo9eDSkD
	2GTFuaclqYgU6bDw8OAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4Jqw-0000000Atct-0ceY;
	Tue, 07 May 2024 12:23:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4Jqd-0000000AtNQ-1Er3;
	Tue, 07 May 2024 12:23:09 +0000
Received: from i53875b5d.versanet.de ([83.135.91.93] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1s4JqY-0006h6-VH; Tue, 07 May 2024 14:23:03 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: srinivas.kandagatla@linaro.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	quentin.schulz@cherry.de
Subject: [PATCH 0/3] Small changes for Rockchip NVMEM drivers
Date: Tue,  7 May 2024 14:22:53 +0200
Message-Id: <20240507122256.3765362-1-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_052307_586046_23C7340E 
X-CRM114-Status: UNSURE (   9.97  )
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

When the option for legacy cell dt layouts was added, the
Rockchip OTP driver seems to have been overlooked, so set
the necessary option to allow seeing the cells again.

And two patches set the nvmem-type option in the device config.

Heiko Stuebner (3):
  nvmem: rockchip-otp: set add_legacy_fixed_of_cells config option
  nvmem: rockchip-otp: Set type to OTP
  nvmem: rockchip-efuse: set type to OTP

 drivers/nvmem/rockchip-efuse.c | 1 +
 drivers/nvmem/rockchip-otp.c   | 2 ++
 2 files changed, 3 insertions(+)

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
