Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0869FCD6136
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Oct 2023 20:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3elzcazr6jm89YJlvOj9Y+/90AjkQdc3EUSMXWqrQzs=; b=qmJIBxAejv6wlo
	GNU7ovxPp9EkV0Z2G1Qj3Vn+mb/Ia/YvMaHd8TwiM2WttlT2wnlU2kgyryzZIEw+ULmsewQKkiJAc
	s1kpAR3qLGdjpItgZDqUmFfq9mZ6qIAqp+yzxrcb45lw4cYCCjUdHCVVWAoBrPbNK5+tIInVDC9H3
	CJpQ96UZlpzM0lHKE1uLvKbZgpbXGU83uJgix0MZ6wPt24b0OSemUWiwi+SQCxh/ZBYa6r5zQw8Am
	GV23k/YFPsvMY5+CX3RIkrUQTsqif5k+tegARjlEgGzjqjgJ9rv2Pek/yov76iXEu4ouIzYMd237i
	cWkso4/gz0fUZrrmpMWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpx0I-00BaQh-1y;
	Mon, 09 Oct 2023 20:37:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpx0D-00BaOo-1v;
	Mon, 09 Oct 2023 20:37:23 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qpx07-00058Z-Dy; Mon, 09 Oct 2023 22:37:15 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: David Airlie <airlied@gmail.com>,
	Sean Paul <seanpaul@chromium.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	Sandy Huang <hjc@rock-chips.com>,
	Jeffy Chen <jeffy.chen@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org
Subject: Re: [PATCH] drm/rockchip: cdn-dp: Fix some error handling paths in cdn_dp_probe()
Date: Mon,  9 Oct 2023 22:37:10 +0200
Message-Id: <169688381986.192795.11170132261049443621.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <8494a41602fadb7439630921a9779640698f2f9f.1693676045.git.christophe.jaillet@wanadoo.fr>
References: <8494a41602fadb7439630921a9779640698f2f9f.1693676045.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_133721_629357_4B1D7CC2 
X-CRM114-Status: UNSURE (   8.90  )
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

On Sat, 2 Sep 2023 19:34:31 +0200, Christophe JAILLET wrote:
> cdn_dp_audio_codec_init() can fail. So add some error handling.
> 
> If component_add() fails, the previous cdn_dp_audio_codec_init() call
> should be undone, as already done in the remove function.
> 
> 

Applied, thanks!

[1/1] drm/rockchip: cdn-dp: Fix some error handling paths in cdn_dp_probe()
      commit: 44b968d0d0868b7a9b7a5c64464ada464ff4d532

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
