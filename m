Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D185BC5B552
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Jun 2025 10:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B6GCqE70wZK8sexsBlVkKkfGMZMO3J+NbmdZyUDP2EU=; b=axlyJDcG0T4PV5
	DScCC0ypd0QFzwjohFfOmyf8onNFgCxLyWs4PN9FMO1f2Qv5t8xgh8hH6ceGAzXmKn+p8bhIbdcaj
	zwmAlCHLdMVgVZBjUJb/0dwEf6EDlt31f5NLIzAvJ+3UOul2uIdRsISzK0o11uF9N5FfM7G9goTCi
	j+ieEtAzFl+Rp8UcoVx6FIZi1GlnLvJcAdrPFPBsho+H+Njgg6hCUKkRvUeuJ481231icJPhhxZxU
	WM3FEFDT8/DMrgYEOSMMjkIC2RrUb9DRADcRZwL1Zz6j99LCF0nKUCljSY3utV05mAPqe1ci7KumI
	MFkRTuugjTK6LxjPsF3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOa2m-00000003wdG-47tl;
	Mon, 09 Jun 2025 10:47:56 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOZfJ-00000003tWu-2ifH;
	Mon, 09 Jun 2025 10:23:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=xEZECS6vbso0nmjjQa/VPYjFi0sU5YUT4fgKEZQNaBU=; b=fODl7cRehmK4ybPZIIU1U4jMKE
	dPgLtOuOCi5cqZojh60rej7k5NPL0tStWG7D7HbcTAvBOSPx75B209oeP+3R/C9xiUQbioCLAMZ4V
	Zl0oKlcj7Ayafdx9aAz7rE52pUr+G7B/8A+A7LF4+rC+HVYz3JgTV8K/wi/YTZSXNZB3NlN+MfFdo
	UoyDRdX3d9wT/nJCM4E7j++YDXkkFHee2KERGEKMBXReMes3RG7P/JLpXSU3uOCZDXxB1/AjJiODG
	4G7XcJjTVB5OIdXdh7zSoWpDaczZyMak3YU5F3SnxlfThwJncTfrLnTzJ8NegrrdOOhXUnRX45WDj
	ai11mSdw==;
Received: from i53875b1c.versanet.de ([83.135.91.28] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uOZfB-0006Av-PN; Mon, 09 Jun 2025 12:23:33 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	krzk+dt@kernel.org,
	robh@kernel.org,
	sebastian.reichel@collabora.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	conor+dt@kernel.org,
	jbx6244@gmail.com
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Add cd-gpios for sdcard detect on Cool Pi CM5
Date: Mon,  9 Jun 2025 12:22:57 +0200
Message-ID: <174946455537.762051.5518711921835874992.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250524064223.5741-1-andyshrk@163.com>
References: <20250524064223.5741-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250609_032341_682722_BE423E8C 
X-CRM114-Status: UNSURE (   8.88  )
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


On Sat, 24 May 2025 14:42:12 +0800, Andy Yan wrote:
> cd-gpios is used for sdcard detects for sdmmc.
> 
> 

Applied, thanks!

[1/2] arm64: dts: rockchip: Add cd-gpios for sdcard detect on Cool Pi CM5
      commit: e625e284172d235be5cd906a98c6c91c365bb9b1
[2/2] arm64: dts: rockchip: Add cd-gpios for sdcard detect on Cool Pi 4B
      commit: 98570e8cb8b0c0893810f285b4a3b1a3ab81a556

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
