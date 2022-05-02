Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23315C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 May 2022 22:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p0fVpYzAq7lp++kuxgAZu9XlFImsQl+v86wUErI9gVo=; b=CyLEo4iL7EhAkQ
	5k+Vt6bM2cdESNiv5eef9BynM1d7hJeQsxASHyIRQcjyQieLVF//GEnEkdAxmiP6pHlP38DCPOOKr
	C73wmUZKoSRX1sEWj2bQhhC7l1UdXygyF5eDul4zquZo18Nd8UgtTmLFtn+Etf7hd5DepbZYEK5yE
	gLoFFmg4RYF2Dt1KenUUNwp/vS0ZT4wc3WygFvktFeNzh6KDlKLmR5BhhgiWCjRupHbtem2K0XLb+
	rfTXjdxEwG4uXtKV77Hf6ZhnhWVrk5fVwoOJEirjmMPe3bQWcfnUFlXi8IZMlUDRueNOplSErEHIc
	4WAs73ozBzVijRJiwUNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nleTK-002uOV-Li; Mon, 02 May 2022 22:24:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nleSp-002u94-9I; Mon, 02 May 2022 22:24:21 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nleSg-0005bu-0w; Tue, 03 May 2022 00:24:10 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, Yang Yingliang <yangyingliang@huawei.com>,
 linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>, markyao0591@gmail.com,
 hjc@rock-chips.com, daniel@ffwll.ch
Subject: Re: [PATCH] drm/rockchip: vop: fix possible null-ptr-deref in
 vop_bind()
Date: Tue,  3 May 2022 00:24:06 +0200
Message-Id: <165153020898.255051.10275204034959482615.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220422032854.2995175-1-yangyingliang@huawei.com>
References: <20220422032854.2995175-1-yangyingliang@huawei.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220502_152419_356859_3EE6272E 
X-CRM114-Status: UNSURE (   8.35  )
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

On Fri, 22 Apr 2022 11:28:54 +0800, Yang Yingliang wrote:
> It will cause null-ptr-deref in resource_size(), if platform_get_resource()
> returns NULL, move calling resource_size() after devm_ioremap_resource() that
> will check 'res' to avoid null-ptr-deref.

Applied, thanks!

[1/1] drm/rockchip: vop: fix possible null-ptr-deref in vop_bind()
      commit: f8c242908ad15bbd604d3bcb54961b7d454c43f8

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
