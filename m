Return-Path: <SRS0=NyFe=KX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1BF7C2B9F7
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 18:10:38 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 762E8613C9
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 18:10:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 762E8613C9
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wtAo52t2FJPUTFxoaHNbTGosgJoNUHFyNu04hc8HCHk=; b=iG5Q4TuQgYfBfV
	RfM9V5uPqlhyazhyzp4uNSfGvFPGrGOnKEAh5JUJQh+qFmwgEolx5jOq8rOjr5bvdoLrAbbsbVy8l
	tIUeGe40ZBKeFD2aYD+7rizveWw9Tsd+q6sX0txvutb+jz6kAdsZhYY4t6Bz1EsXQJIOdT6Gs7C5E
	Cknt6h6HnqqD+l1KTByP30JmAYC+dfDZ7/rtzBbAoKGSbbPNnDZ0fS2vbLD/Qt4fkmFZ3KznOEDEz
	Vh5uENb99HMTkQMMwkWS0JI62pC+6Iil6wsNisQG8SdEHidfPujjkqGbPgf9DKEgvoIaLOkfMTn11
	wTr+cdV3wWpBiGbChqKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmgwN-00075O-EP; Fri, 28 May 2021 18:10:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmgvk-0006gD-PP; Fri, 28 May 2021 18:09:58 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lmgvd-0006Ve-LQ; Fri, 28 May 2021 20:09:49 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: hjc@rock-chips.com,
	Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
Cc: Heiko Stuebner <heiko@sntech.de>, airlied@linux.ie,
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] drm/rockchip: remove unused function
Date: Fri, 28 May 2021 20:09:41 +0200
Message-Id: <162222530163.2887132.15884573129584763057.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <1618476421-114429-1-git-send-email-jiapeng.chong@linux.alibaba.com>
References: <1618476421-114429-1-git-send-email-jiapeng.chong@linux.alibaba.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210528_110956_849919_0BA7D6C7 
X-CRM114-Status: UNSURE (   7.47  )
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

On Thu, 15 Apr 2021 16:47:01 +0800, Jiapeng Chong wrote:
> Fix the following clang warning:
> 
> drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c:320:20: warning: unused
> function 'dsi_set' [-Wunused-function].

Applied, thanks!

[1/1] drm/rockchip: remove unused function
      commit: 7455cedf7c4d4d5d808913e14d859705612c54ce

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
