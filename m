Return-Path: <SRS0=QbJo=OL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986E8C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Sep 2021 10:07:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E493160F9D
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Sep 2021 10:07:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E493160F9D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qM6DFg90JzuVH6RoNT9MnKCWhXpHoSNvk+Uf+ocHkr0=; b=sta7KCXA3IMFQj
	grK90KzosmiJSWz5a6pQ3hEUhBRwb2AJIjfUaInRkoId7DWmTSWpgXhalsvkv55w+tuoiU3Z/YSxE
	JY0DDqAy+EvXpzDSK6708QgPSDhM7tuiTMJH8L6OORnrSweFnspsmmjGM3TV8L+i9QIemQGgFEx5D
	4ewgmitTX3PsdSNtSpBAvgA+wKQiX2gxA6tEssCqHIpl7v4Ofyf4sxErBOzPhtix2lBgliuR2oBot
	nMbaZ3dFBKQMBSXtw2NvVgbeU26fhHz5XBJbQIgFAgdUsLJO9BJTXEmoQ9ceSEN951M2mdybX4ewh
	A1oqy4tm5pkTP/TL5UOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mScgH-004BK8-BI; Tue, 21 Sep 2021 10:07:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mScdI-0049bI-8W; Tue, 21 Sep 2021 10:04:13 +0000
Received: from ip5f5a6e92.dynamic.kabel-deutschland.de ([95.90.110.146]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mScdD-0001rd-Gy; Tue, 21 Sep 2021 12:04:07 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: hjc@rock-chips.com, daniel@ffwll.ch,
 Souptick Joarder <jrdr.linux@gmail.com>, airlied@linux.ie
Cc: Heiko Stuebner <heiko@sntech.de>, kernel test robot <lkp@intel.com>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] drm/rockchip: remove of_match_ptr() from
 vop_driver_dt_match
Date: Tue, 21 Sep 2021 12:03:35 +0200
Message-Id: <163221857585.2031971.3046018534177866323.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210607190800.3992-1-jrdr.linux@gmail.com>
References: <20210607190800.3992-1-jrdr.linux@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210921_030412_355023_1FA56F80 
X-CRM114-Status: UNSURE (   9.27  )
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

On Tue, 8 Jun 2021 00:38:00 +0530, Souptick Joarder wrote:
> kernel test robot throws warning when CONFIG_OF not set.
> 
> >> drivers/gpu/drm/rockchip/rockchip_vop_reg.c:1038:34:
> warning: unused variable 'vop_driver_dt_match' [-Wunused-const-variable]
>    static const struct of_device_id vop_driver_dt_match[] = {
> 
> Fixed it by removing of_match_ptr().

Applied, thanks!

[1/1] drm/rockchip: remove of_match_ptr() from vop_driver_dt_match
      commit: 87185cc823693933308bd33a190032e9c262c75f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
