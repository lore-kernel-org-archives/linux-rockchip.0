Return-Path: <SRS0=bvFq=GM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 30F6AC433DB
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Jan 2021 15:40:40 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A9F5523A04
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Jan 2021 15:40:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A9F5523A04
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HhPgpXEx0uxrUEuZ9n2/i7VIbA3mUVRpuxAsA91UOpo=; b=aX6/lNqqkTzHYi1lmQX2xNiJa
	iwFrzSDrlEKNBD3YexKirhfDOSHibLqRPchEiRTVjtnv/mLkB6XnZ58sYnpNRTSjf0lSeEBuLRqL0
	Wb5TkH8b77EeInB7MMDAXWcdylRjFEBuBZllM2vKs0u/k0iJX9zxqaJt3x3Atp3vmOX8ZxLKgrZNd
	xefnc5Fp7FQ1lU5UgeIJjd4aSnzCGNGNhKW9383ieQRRzjZ1WwVrbfZVC6/+2bgqcBEDbTK6adBXP
	B5XZz9KT7ew3huFXNaWmMiWCwAsATs/YLHHV0mhqjlMV1wkindleE4lfYbA7E/1iSbzTiRiDa5QGZ
	cCY5f2UNg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kyGLw-0000iQ-E7; Sat, 09 Jan 2021 15:40:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kyGLP-0000Ya-FL; Sat, 09 Jan 2021 15:40:02 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kyGLL-0000jX-PQ; Sat, 09 Jan 2021 16:39:55 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Demetris Ierokipides <ierokipides.dem@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: (subset) [PATCH 0/2] ARM: dts: rockchip: minor tweaks for
 rk3288-miqi.This series adds a missing mali GPU node and two additional CPU
 opp points
Date: Sat,  9 Jan 2021 16:39:46 +0100
Message-Id: <161020678303.3482489.15547780514120849790.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210108151036.36434-1-ierokipides.dem@gmail.com>
References: <20210108151036.36434-1-ierokipides.dem@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210109_103959_602883_13E61D1C 
X-CRM114-Status: GOOD (  10.07  )
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
Cc: Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, 8 Jan 2021 17:10:34 +0200, Demetris Ierokipides wrote:
> Demetris Ierokipides (2):
>   ARM: dts: rockchip: add gpu node to rk3288-miqi
>   ARM: dts: rockchip: add extra cpu opp points to rk3288-miqi
> 
>  arch/arm/boot/dts/rk3288-miqi.dts | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)

Applied, thanks!

[1/2] ARM: dts: rockchip: add gpu node to rk3288-miqi
      commit: 36948ec3d4d0d1b9260d87b550a56fab8d86d17d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
