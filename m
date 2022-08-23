Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07E58C32792
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Aug 2022 12:45:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NWri6e97cnmFekNJuLusO4aNnvYnqlPjeggl+KFlcik=; b=P0XjrjH+ZeC3ee
	vgnLK72+SY/uvJAT0NJ5VhCU/FXpmjxooX1r6wwZJkKjmqV4yZSHX97hCgCdnz7tE5PPspjBLzlQ2
	3i/CYXVXupYLgkBUNKSRZpHzwFwq8Dg/CALZ2/vK33TsWs9Zl2sem9pw7GQhFP1A+zYNUSTUdepA7
	HTW8QE6V5g1vfsmLHZerqyl23w+d/y2cB9HvRITJdo/xD+dcX2uVTfRF+YJWNQF3r5WqCN+n740ER
	ES3vtYEdqgij6hFq8aOIyOgfuVE3vycTZZVTVurTlXL7+24THnlC+LeZl9XSFWkPZ50/6XiYk+fKj
	s+uhrKpC4Es9frQMD/aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQTHV-005ztE-SS; Tue, 23 Aug 2022 12:45:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQT9Y-005vpQ-2A; Tue, 23 Aug 2022 12:37:09 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oQT9P-0004gV-Or; Tue, 23 Aug 2022 14:36:59 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Brian Norris <briannorris@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Douglas Anderson <dianders@chromium.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Pull up wlan wake# on Gru-Bob
Date: Tue, 23 Aug 2022 14:36:54 +0200
Message-Id: <166125820547.1301371.1322298142251886023.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220822164453.1.I75c57b48b0873766ec993bdfb7bc1e63da5a1637@changeid>
References: <20220822164453.1.I75c57b48b0873766ec993bdfb7bc1e63da5a1637@changeid>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220823_053708_166187_3C72237B 
X-CRM114-Status: GOOD (  12.33  )
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

On Mon, 22 Aug 2022 16:45:04 -0700, Brian Norris wrote:
> The Gru-Bob board does not have a pull-up resistor on its
> WLAN_HOST_WAKE# pin, but Kevin does. The production/vendor kernel
> specified the pin configuration correctly as a pull-up, but this didn't
> get ported correctly to upstream.
> 
> This means Bob's WLAN_HOST_WAKE# pin is floating, causing inconsistent
> wakeup behavior.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Pull up wlan wake# on Gru-Bob
      commit: e5467359a725de90b6b8d0dd865500f6373828ca

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
