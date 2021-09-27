Return-Path: <SRS0=jpTb=OR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDFC9C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Sep 2021 21:47:55 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5A93060240
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Sep 2021 21:47:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5A93060240
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XkoZorVX/m28rBLOh4UiecdO/qNNmQo3RqQFQWgWKjU=; b=H6EG3Ce2T3dK+i
	xjQ9QeAwLfQkic7PRF0Elmhxlh4j6w0BX4mpXLz+vEjK40rAf0Uu+s+wfrTAXNTviGsBHxJaS9ju7
	yfMaXHDhb+av7QWpJDJGzgCaY4sgSPbGsUWeZ9WtXobbq1igEZVlrQuYRu4NFIbQIAx4ABZYIL9vu
	Aj1bJCoOaxIHBJ0NsU22VYl3wEyOdQmp0TJst88fdOKgf89tVAYIgP2Ux9vGT/hGJkq4FRb44TIW2
	ztz3BGDGhS4qi/WJUxUlVKy5mVL8jW+y+gsfulXjamqAUSZerrd6tfdzk/hsLQytLkotArbOZkYp0
	fj/mCmLR1h8c2sSRJNHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mUyTV-004QyY-EC; Mon, 27 Sep 2021 21:47:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mUyTS-004Qxh-Jw; Mon, 27 Sep 2021 21:47:47 +0000
Received: from user91-192-32-221.grape.cz ([91.192.32.221] helo=phil.sntech)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mUyTM-0005J1-DX; Mon, 27 Sep 2021 23:47:40 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>, lee.jones@linaro.org,
 thierry.reding@gmail.com
Cc: xxm@rock-chips.com, u.kleine-koenig@pengutronix.de, robh+dt@kernel.org,
 devicetree@vger.kernel.org, cl@rock-chips.com,
 linux-rockchip@lists.infradead.org, linux-pwm@vger.kernel.org,
 pgwipeout@gmail.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH 1/2] dt-bindings: pwm: rockchip: add description
 for rk3568
Date: Mon, 27 Sep 2021 23:47:38 +0200
Message-Id: <163277924886.2667343.9517363084260699018.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210726090355.1548483-1-heiko@sntech.de>
References: <20210726090355.1548483-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210927_144746_679857_309C2C05 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Mon, 26 Jul 2021 11:03:54 +0200, Heiko Stuebner wrote:
> add "rockchip,rk3568-pwm", "rockchip,rk3328-pwm" for pwm nodes on
> a rk3568 platform to pwm-rockchip.yaml.

Applied, thanks!

[2/2] arm64: dts: rockchip: add pwm nodes for rk3568
      commit: 98419a39d1dc276ac395c230ba2e6cf435a624b9

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
