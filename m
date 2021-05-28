Return-Path: <SRS0=NyFe=KX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66B2BC2B9F7
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 18:57:04 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E3865610FC
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 18:57:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E3865610FC
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9pwG0dCR7SHB5MJvdJj71E/8N16SYkgChKaeF1Id7bk=; b=l425E7KKBy/Aji
	VcGTyaAQvY8LUEUUGiIrbF0RYGztdoPikWAh3CLT7m/wtgcME+XgNo7eCwecycjISfJvEL2R0Ed6H
	c+CHEQQi1qklpSq9AG2xtMcuTRynYzb7VLtsa7+q/NyEs0io/GIQaKGWZfPljgR8IShze7EE06rKu
	Cn9aHCrrGFQcIFxgrSrJFK/9LkxHgVQO3fbWdaH2PiXhTtnDUCMYgEGPZov6016ukMarEOfsOMHDh
	XtB00NLUxd4j59nE7emXvDD2bUadr9XQQEu3yy7HH5Rq8l1A5geX1v64ykVx5FlccVjjvnsxqqvhy
	Usk0dvA2VHhVqBEQvg9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmhfI-000ShA-Bw; Fri, 28 May 2021 18:57:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmheK-000SDY-VU; Fri, 28 May 2021 18:56:03 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lmheG-0006hU-Lv; Fri, 28 May 2021 20:55:56 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Colin King <colin.king@canonical.com>, Chris Zhong <zyw@rock-chips.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sandy Huang <hjc@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org, Guenter Roeck <groeck@chromium.org>,
 Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] drm/rockchip: cdn-dp: fix sign extension on an int
 multiply for a u64 result
Date: Fri, 28 May 2021 20:55:53 +0200
Message-Id: <162222814865.2904787.9681017201633439176.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20200915162049.36434-1-colin.king@canonical.com>
References: <20200915162049.36434-1-colin.king@canonical.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210528_115601_091060_21A4CA54 
X-CRM114-Status: GOOD (  11.00  )
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

On Tue, 15 Sep 2020 17:20:49 +0100, Colin King wrote:
> The variable bit_per_pix is a u8 and is promoted in the multiplication
> to an int type and then sign extended to a u64. If the result of the
> int multiplication is greater than 0x7fffffff then the upper 32 bits will
> be set to 1 as a result of the sign extension. Avoid this by casting
> tu_size_reg to u64 to avoid sign extension and also a potential overflow.

Applied, thanks!

[1/1] drm/rockchip: cdn-dp: fix sign extension on an int multiply for a u64 result
      commit: ce0cb93a5adb283f577cd4661f511047b5e39028

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
