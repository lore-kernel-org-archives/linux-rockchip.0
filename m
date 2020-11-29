Return-Path: <SRS0=xO8Q=FD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50433C64E7B
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Nov 2020 16:50:08 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 74A5120738
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Nov 2020 16:50:07 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="vU3qhwGN"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 74A5120738
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=krJafysU9QDlJTMSDx94T4QKa165QHdrqiGH7jhJUFY=; b=vU3qhwGNAhcVfS09Jb4C643nQ
	f71VpkRyaBhiIWx4sssTfgsEyhbNzSrNUu1PsqErDJyVPRfJTIuYi7Glhmf81+4tCp4DsMhZfRWJU
	gkN7bt+VGXGGOcpKdh1sTbG7YUGQshYuwcrEfVnZfpG926fin6N82CssfWTWcQT9tuy02blQ4RalQ
	RkGnSxTqL2LN25wmFDh7Tn4OHCEZKfl1QtzQqiT06n+IhQwR32gT/bs0OswKPu1SYFuYJFq2XPbaA
	SgaKasHI0KBUZY6yfYi/1lVsy9DvQkKMLo7QKsQVC7eAaoBNTAr/RIOOQn/0aH/zLzF41Jz6URJCW
	l1qZlMUDw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kjPth-0002EL-Ln; Sun, 29 Nov 2020 16:50:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kjPtd-0002DS-7z; Sun, 29 Nov 2020 16:49:58 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kjPta-0004yQ-3z; Sun, 29 Nov 2020 17:49:54 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Jonathan Liu <net147@gmail.com>
Subject: Re: [PATCH] drm/rockchip: dw_hdmi: fix incorrect clock in vpll clock
 error message
Date: Sun, 29 Nov 2020 17:49:53 +0100
Message-ID: <2205756.JbxMgk7veO@diego>
In-Reply-To: <20201024035321.4898-1-net147@gmail.com>
References: <20201024035321.4898-1-net147@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201129_114957_440423_8AA0CE57 
X-CRM114-Status: GOOD (  10.23  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-rockchip@lists.infradead.org, Jonathan Liu <net147@gmail.com>,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Samstag, 24. Oktober 2020, 05:53:21 CET schrieb Jonathan Liu:
> Error message incorrectly refers to grf clock instead of vpll clock.
> 
> Signed-off-by: Jonathan Liu <net147@gmail.com>

applied to drm-misc-next

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
