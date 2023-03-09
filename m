Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82A06C64EC4
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Mar 2023 01:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zVveLv5EwZqBNlEtNAvZecUVpXs5O3h3pkSBmTiU8Sw=; b=pjt6ve6STwE9T/
	Iu7C84wz9WrMO4s7ZTDv9o4gLyJgADym+oaKhd+Cenn23kGsyiOHiUrczlVRuOFoLDc2PWRdU5Qse
	vj99zZOCRseudZcATzzpN4iD6UYLol5FOwhsJFeU2Ns41NdRJTnIt2ZQppxhV7nv1VnQfexmASYSg
	pChlyBzntQppvFGYAh9n0k629n5CLTp95+MvcnOSsEVwF5Sjh/OW+tmeUu9NNuse1EeKWHCIS8kVA
	UYQvU1Al/REAkjE5NyJGHDnAUjTb7afLMa6xlFKr9enhaoYPr47smnzPmoMYH1mL4N5ZKcN5nRVbH
	g4tCUusbDNo7BQ6gUc0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pa4ky-007Mdb-TA; Thu, 09 Mar 2023 01:07:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pa4ko-007MYu-72; Thu, 09 Mar 2023 01:07:35 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pa4kd-00041d-LT; Thu, 09 Mar 2023 02:07:23 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	Gerald Loacker <gerald.loacker@wolfvision.net>
Cc: Heiko Stuebner <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Daniel Vetter <daniel@ffwll.ch>,
	Sandy Huang <hjc@rock-chips.com>
Subject: Re: [PATCH] drm/rockchip: vop2: add polarity flags to RGB output
Date: Thu,  9 Mar 2023 02:07:19 +0100
Message-Id: <167832398246.362678.16304848436685688668.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230302123949.957998-1-gerald.loacker@wolfvision.net>
References: <20230302123949.957998-1-gerald.loacker@wolfvision.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_170734_273267_23F44519 
X-CRM114-Status: UNSURE (   9.13  )
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

On Thu, 2 Mar 2023 13:39:49 +0100, Gerald Loacker wrote:
> Use h/v-sync and pixel clock polarity flags for RGB output. For all other
> outputs this is already implemented.
> 
> 

Applied, thanks!

[1/1] drm/rockchip: vop2: add polarity flags to RGB output
      commit: 66ab57574f2c8233550f641ecdc34fd0ef61341d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
