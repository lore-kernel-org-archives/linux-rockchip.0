Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE181C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 May 2022 15:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UMRqKYEmGpEqqHRdkz76ADuUMRrimHqxAKp83a+dAWo=; b=taiofTIQgfAM5y
	o99smdZx0T9X9d11RofbjdFlonDIGTlXUIpxuBt9WCDq3TfLT2fm9no9Z6vJPeoBa0USNc9yG/8N1
	mJoRC/J5IWBp3MqMByVAhlflwvDQ8NtkcdgGAE/ZHyB/Si0FzNJzkkHwLtMFXuSXj0RxmvvdP5yNQ
	HHWRZK8BcB/+/CmUETU5RRxohNCtSf/0wMZP5YaelAVkmgTHkrZQfFPgv+wyLQPn/IGq/1xIGoqtk
	ISTzbpE+E6oMhE24CSHEH/1IsuDkQoECKidx1g0H2jSe0VWaJRcVZT9BKmL/tyRBTcWC2Hup/uZDD
	LVjQfQs3MKMW019lI0kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nniQ3-00AQrI-A0; Sun, 08 May 2022 15:01:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nniPt-00AQkG-2x; Sun, 08 May 2022 15:01:50 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nniPh-0000sz-2i; Sun, 08 May 2022 17:01:37 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: daniel@ffwll.ch, hjc@rock-chips.com, lyude@redhat.com, tzimmermann@suse.de,
 airlied@linux.ie, Ren Zhijie <renzhijie2@huawei.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 -next] drm/rockchip: Fix Kconfig dependencies
Date: Sun,  8 May 2022 17:01:34 +0200
Message-Id: <165202207401.1750960.18152793741312373410.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220507100910.93705-1-renzhijie2@huawei.com>
References: <20220507100910.93705-1-renzhijie2@huawei.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_080149_182793_782F2B55 
X-CRM114-Status: UNSURE (   8.38  )
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

On Sat, 7 May 2022 18:09:10 +0800, Ren Zhijie wrote:
> The DP-helper module has been replaced by the display-helper module.
> So the driver have to select it.

Applied, thanks!

[1/1] drm/rockchip: Fix Kconfig dependencies
      commit: 0b752df77633cc4c3606a6187e3ad37ad6925c15

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
