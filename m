Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 708C0C369D8
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Apr 2025 21:52:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uczfLrbNUhFF7fdWx4WTzZi+BSx7E7++JTgOGHgad00=; b=UEKnlsQuv0fbDv
	JaWQU2Z22LgQqzKVcMdz3EZj15Rsdu5bLb0FomvG17c8+nCW75EoE4dDumProjTXvsv3/GPhauqMA
	lS5f+a5LtlItdI273uwUeMR3IwjRjVJev8UkdHyQDZaYMDvhBEzCLPcqmZ3GHFiblZPelaZPzXLGi
	7djrcnm1W6cr6Sg60a/xya0nTun3o3qrURAkX4KmX8t/bop9GhlPSWUbuvukTcM0oQL2oxHFD/fm+
	2UGz0nSgjgWOEoFWkljCQrcAS0bEI36PsRxG/cfGLUM1M1Sfs2Ep6+MEkbQQFwZwvOwNBrb7hzwBx
	0NkvLqUBsIrjryqfbzNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8nRS-00000002YBi-36GG;
	Sat, 26 Apr 2025 21:52:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8nLu-00000002XKG-1vA7
	for linux-rockchip@lists.infradead.org;
	Sat, 26 Apr 2025 21:46:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=/DTFEM+pkJ+Mkw7kghTicDYEft9ISUGNnXmoLxJua+U=; b=NbepKxPACI5oL+DhYhHW7wJTmx
	uYf7JgEI7jyTA8PY6+xATVWtG12CnZU1zI8k7Q89BYhAegMZJnLM8u+sz1WQYIVr+T8jL0FhZG8ck
	MeWSE7tQ0Z1LgvZuB/HG8L5da/9avohbETcVsBkOJkXBhiIcwotf2J7JL5S1Bqa2YIdU4R2sCLbDa
	Ru6UVQBg0iNunr5Qz/z/5fIh0sHtc4i0n6CRRlZl8gKdCLrodX8DgoHnbC8jd5LERUFx0EWQmYk8N
	isg1nb5KqkEK5WDcOy+uQW6nhUyijWpTS3pc304c8imEpmUNO+kXDmonm4XXJ6AvY1qz4nxIK/PWY
	sB+tLwdQ==;
Received: from i53875aba.versanet.de ([83.135.90.186] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1u8nLt-0001OR-6L; Sat, 26 Apr 2025 23:46:25 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Enable HDMI0 audio output for Indiedroid Nova
Date: Sat, 26 Apr 2025 23:46:14 +0200
Message-ID: <174570370123.31943.14093231055934423991.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250415174711.72891-1-macroalpha82@gmail.com>
References: <20250415174711.72891-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250426_144626_492987_EE32CE82 
X-CRM114-Status: UNSURE (   7.42  )
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


On Tue, 15 Apr 2025 12:47:11 -0500, Chris Morgan wrote:
> Make available HDMI audio for the HDMI0 port.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable HDMI0 audio output for Indiedroid Nova
      commit: c79b4eb98915de877a3e344c9444635b5599f750

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
