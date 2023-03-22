Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9895C6FD1C
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Mar 2023 20:10:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6b9uZqMQutU3YzDLUXW+7xGMt2PS63iDf4PKyi1ATN8=; b=Uci7++O9QBFMih
	CkhdscgU+HvryUxH3pcL5AK7SQdL3oSeQihXtTdAC5pVOxDzCXDYCcn/i7c3s6gNV+S6LfqquNaJe
	n8QViHwRpfeZBP2/v4JZpxCTZVpwNZMfEqeH2LkhzEIudQ9hxL30N9gqtOsN8urLLgemKfA1nYaz6
	5ToPOKqjXbcOqR7xykbkHpucrkzhvnpujGlHmkwaVJcNqfHgMe0n5s9huZo4EXkG2+8J6496UYH6o
	CFGWSws7pXL/UTHshboTeocAho7H/J4auQTqohhBn5sCg+/oMexB7KXF9Fb6D9w1jH9ZgiEWqfi6o
	7XJ9LVc/yPQb5j/jktcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pf4md-00HIkD-1H;
	Wed, 22 Mar 2023 20:10:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pf4mV-00HIiw-3B;
	Wed, 22 Mar 2023 20:10:05 +0000
Received: from p508fd58e.dip0.t-ipconnect.de ([80.143.213.142] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pf4mJ-0004Ps-T8; Wed, 22 Mar 2023 21:09:47 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: daniel@ffwll.ch,
	Tom Rix <trix@redhat.com>,
	hjc@rock-chips.com,
	nathan@kernel.org,
	s.hauer@pengutronix.de,
	airlied@gmail.com,
	ndesaulniers@google.com,
	michael.riesch@wolfvision.net
Cc: Heiko Stuebner <heiko@sntech.de>,
	llvm@lists.linux.dev,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] drm/rockchip: vop2: fix uninitialized variable possible_crtcs
Date: Wed, 22 Mar 2023 21:09:45 +0100
Message-Id: <167951576826.1541042.11962083782525897631.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230316132302.531724-1-trix@redhat.com>
References: <20230316132302.531724-1-trix@redhat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230322_131002_284459_21BEA6A2 
X-CRM114-Status: UNSURE (   9.35  )
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

On Thu, 16 Mar 2023 09:23:02 -0400, Tom Rix wrote:
> clang reportes this error
> drivers/gpu/drm/rockchip/rockchip_drm_vop2.c:2322:8: error:
>   variable 'possible_crtcs' is used uninitialized whenever 'if'
>   condition is false [-Werror,-Wsometimes-uninitialized]
>                         if (vp) {
>                             ^~
> drivers/gpu/drm/rockchip/rockchip_drm_vop2.c:2336:36: note:
>   uninitialized use occurs here
>                 ret = vop2_plane_init(vop2, win, possible_crtcs);
>                                                  ^~~~~~~~~~~~~~
> drivers/gpu/drm/rockchip/rockchip_drm_vop2.c:2322:4:
>   note: remove the 'if' if its condition is always true
>                         if (vp) {
>                         ^~~~~~~~
> 
> [...]

Applied, thanks!

[1/1] drm/rockchip: vop2: fix uninitialized variable possible_crtcs
      commit: e88adb4ac27a37de4167150b8a6a736d40cf7018

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
