Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C607CC6B08
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Oct 2026 11:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sA90QEihQn1kVS804SuHDpvOgRzrLAVU+4BtFRajLKE=; b=db2lSrMFPdvdSh
	9l0Llsjo4haF4XeeJ9abdBYYCmKaH6c2evdSfVBrp6AuxcXCXRKRr96qkcQT2Le0UiVN7TTTJxhON
	xGPRIlZTCozYhn94RkZ8acGmqMPRBllGwG9o9KqwV+ynaazdMnAX81Uk80VIcaMhpD5wPsCbpgLb2
	H9BKxFG1Dy19O8CX07/MbPj4h6U1JpR+XhZhX+b0ejxWagg+pJFaejmB4d3pC0Drb56whlq4FJB0Y
	pjWXVp0YIIrvbj/TPlsGawTmsV/LeJaT1q7Sfz6B7RW/wiBO+Rr59506HkuE4nVgT2BmJ5r1s+66l
	YTkErfuQakivcq6iqw2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGb9I-0000000Clld-226C;
	Tue, 13 Oct 2026 11:58:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGb9G-0000000ClkK-2hig;
	Tue, 13 Oct 2026 11:58:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=ZykDT+ldOzat3VDDIfdr94Z8vYDUwlbjCPKhDjwqAq8=; b=beEAKW6+D9+iNxOMMY0U47alwX
	9IM+2guNvCmM+zaK7ZAK5V4YiBCz1N7/1xsrp9vpTMaI/swxy4BFxZ1ERfm4Gzaz0rsCcdpeznHQO
	sQQwDsEM+rbxRo5GOQ4TRZBE+EojBkkWgWWr8StSUeWPl0Aj90lkeF7b5oLGWdmBQeqJsED7wHRCL
	JcRIDDYZHZ9pSspM4AueDpJy68wDjkffQG6bbKTYypYB3tx0KItxaJWPRwExZrgtXrta3DWyb287W
	YzCpuU5OOmnVq9Ee55bAgfaaFoXIdaOT/Kqi7+XkCggOd/1XRWLgFFZvQELYdn2mLIBPe3fgNiShW
	8chlMX5A==;
From: Heiko Stuebner <heiko@sntech.de>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Oded Gabbay <ogabbay@kernel.org>,
	Igor Paunovic <royalnet026@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: Re: [PATCH] accel/rocket: search every core slot when a core is removed
Date: Tue, 13 Oct 2026 13:58:08 +0200
Message-ID: <179189268363.3989522.7509478122641676060.b4-ty@b4>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260904125936.26234-1-royalnet026@gmail.com>
References: <20260904125936.26234-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261013_045826_682068_1BE21179 
X-CRM114-Status: UNSURE (   8.34  )
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


On Fri, 04 Sep 2026 14:59:36 +0200, Igor Paunovic wrote:
> rocket_remove() decrements rdev->num_cores for each core it removes,
> while find_core_for_dev() searches slots 0 to num_cores - 1. Unbinding
> the cores in the order they were bound therefore loses the last one: by
> the time it is removed the search range has already shrunk past its
> slot, so find_core_for_dev() returns -1 and rocket_remove() gives up
> without doing anything.
> 
> [...]

Applied, thanks!

[1/1] accel/rocket: search every core slot when a core is removed
      commit: 6eff1d69dae808a1518aee5a58d0853a8db3f1be

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
