Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BE6ECCFA19
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Nov 2025 22:58:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qUiWT7dwJqVdYON9C9xFyw/80rsftRcBg3ETJ9J6s/A=; b=x7/GKUYyU1iyyY
	OaNR1Hz9hRIqf41uFZMiNBJYApoK+uI3VxTXEDejs9xehijsvQhrQjFJVWxuAqGkKabXjpx27LG1/
	D7NlbpdGkftvMzDdl4189FpBnZlgCd73UskBlCbhYtuR37B71svPQOOKpUcFGST+WUv8L7PLln+kt
	FRy2mxR6ur561+9ZfcCWGAwMbJvRbSzU3GF1KTvkxncJIRa+D+PPJdgqJLURHucvNN2dheuJbR/Rs
	z2Ba4O79SPJI15ToermAS6DYqvfRl1HaSfCJuw9Pp6K5GLxW2j6ALAIMaS3bRqGYDyIOeQiN+pKeO
	hqcQ5qXol8aQF4B9cWxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH8wE-0000000GL8d-3mEi;
	Thu, 06 Nov 2025 22:58:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH8wD-0000000GL7C-0QhF
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Nov 2025 22:58:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=jrjjUU405OtS9jaA/9txxzDZ3RrrpZf1xnaEuiiPuV8=; b=hMV/MBeqgJKvm2NRnoZZLMwnkV
	7gEIubkO50uQxglke2ZmVlRYLosSO25SCLL4e0/C7Jo8XjCYXPPg53C3PPYdg+P86qU7URgrjJjUF
	hp8dM9d4lkIDW1TfMtA6mv4cxd4cbBpVN/bVZxh/0oUDT7u/Y+/Oys78L8MEtpI4oRZwD/N5bM7es
	zd670wgw1yTuTmjYaBg6VunnImwniAngim/ROXOcB6Y91DMmD+uMRZsHzeaa1ptxZCZJv/+hO3yZi
	u9D9hPhRyMhRXcGXxrTRLn4qK/PIbA7RAqlXNOz6O3Jf5ZQ/fZVON2wj0XaxoiTb1itnnHvukO6GP
	e3RKPLwA==;
Received: from i53875bac.versanet.de ([83.135.91.172] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vH8wB-0001pr-3E; Thu, 06 Nov 2025 23:58:39 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	jbx6244@gmail.com,
	sebastian.reichel@collabora.com,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: enable NPU on Gameforce Ace
Date: Thu,  6 Nov 2025 23:58:34 +0100
Message-ID: <176246989726.210200.8690075173314380266.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251106182436.771805-1-macroalpha82@gmail.com>
References: <20251106182436.771805-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_145841_140703_B8C1463B 
X-CRM114-Status: UNSURE (   8.46  )
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


On Thu, 06 Nov 2025 12:24:36 -0600, Chris Morgan wrote:
> Enable the NPU on the Gameforce Ace.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: enable NPU on Gameforce Ace
      commit: 8a429c58354a59fa3cbd1fd964fa2e310c47af4a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
