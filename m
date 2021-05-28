Return-Path: <SRS0=NyFe=KX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF330C2B9F7
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 18:10:18 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6B305613B5
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 18:10:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6B305613B5
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6UeCdegXJAH80MlHcPkLzZPbyPGa6EetyUAz6TAJlUo=; b=kwZRP9UB8PRPmd
	BJu5S2JqlEUOEvGwYB2188tNUPFJNZDDQWXQyvCHqDLmUktXDQRki8dU/ziGNbNO3AB7Sxo6uQXCk
	CRqDHhYXWE4MJG7OHGW45TDNFldyNBj7SqXGVXnu70YVpruOrqk4pSxZEhsGqgzRaT2flm6Thsa12
	FH7fhUXbUKmQurT2eCb2j8E3EpghoakNbWTxcmjym4wqi8czrh+Oq4JV6HvyqC1+nRFzx0DJQbwpr
	C3WRw/8hT4kSvxwDO1HGKG0z4R7HTgFOeMf84nWjTjEuX5VBWbqQqru2sZ1eXHW/GnL38at6wfSWW
	qTGJ/OomDrgJu2RldN6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmgw2-0006sw-UO; Fri, 28 May 2021 18:10:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmgvj-0006fb-SJ; Fri, 28 May 2021 18:09:56 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lmgve-0006Ve-C9; Fri, 28 May 2021 20:09:50 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Daniel Vetter <daniel@ffwll.ch>, Peter Robinson <pbrobinson@gmail.com>,
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] drm/rockchip: cdn-dp-core: add MODULE_FIRMWARE macro
Date: Fri, 28 May 2021 20:09:43 +0200
Message-Id: <162222530163.2887132.13441633389546243024.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210506092951.515813-1-pbrobinson@gmail.com>
References: <20210506092951.515813-1-pbrobinson@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210528_110955_932215_A732E1EF 
X-CRM114-Status: UNSURE (   8.88  )
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

On Thu, 6 May 2021 10:29:51 +0100, Peter Robinson wrote:
> The CDP DP component of the rockchip GPU driver requires firmware
> so define MODULE_FIRMWARE for rockchip/dptx.bin so the details
> are available in the module info.

Applied, thanks!

[1/1] drm/rockchip: cdn-dp-core: add MODULE_FIRMWARE macro
      commit: c0677e41a47fbb37c4ed7200e5c7f610a2ffbd4b

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
