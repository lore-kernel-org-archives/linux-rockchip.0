Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 460A1F30295
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Mar 2026 02:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rqm6276VY1phOYoXG0x9Lq1fwnKig2jVr1IY0TSOZaE=; b=QjM/ogm7CDM5Jr
	IqDwf9JAecKQ3a4ReHNyA9kr1M9cJoZfB69TldLg61sGkxKiU9v5agMeDYG55EaLRrVgHp6ZP11FT
	BEZAjSj9xU6G82k8phM+4kBYoGZEZOAkNYcHzN0o+KGiIvTGrIlOk4aGtE4Xc/jcxrvWaKzw5mgJK
	uaE3vU5rU6mqxJ4RFoYx7uWWi5ARSn+adPjy0G7nzl82bEl7UErKLsSHGjTX48p14Rbpmf7Mj1Psg
	80xOrXscYgxiWduF/Ogw2JAii0IU2MLdslJ5f736Jk1fFm2vH+H3mSBoHFnm1qOSb66um3KEFMXbC
	ia8sqCju1kSAFcSM4byQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1xyF-00000003ERg-0W5a;
	Mon, 16 Mar 2026 02:46:19 +0000
Received: from mail-m1973195.qiye.163.com ([220.197.31.95])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1xyB-00000003EQJ-2FDH;
	Mon, 16 Mar 2026 02:46:17 +0000
Received: from [172.16.12.43] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 37099b5a3;
	Mon, 16 Mar 2026 10:45:51 +0800 (GMT+08:00)
Message-ID: <a60a6435-ee62-4788-8dbe-85cce13f2d69@rock-chips.com>
Date: Mon, 16 Mar 2026 10:45:50 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 12/18] drm/bridge: analogix_dp: Remove unnecessary
 &analogix_dp_device.connector
To: Luca Ceresoli <luca.ceresoli@bootlin.com>, andrzej.hajda@intel.com,
 neil.armstrong@linaro.org, rfoss@kernel.org
Cc: Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, inki.dae@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, krzk@kernel.org, alim.akhtar@samsung.com,
 jingoohan1@gmail.com, p.zabel@pengutronix.de, hjc@rock-chips.com,
 heiko@sntech.de, andy.yan@rock-chips.com, dmitry.baryshkov@oss.qualcomm.com,
 dianders@chromium.org, m.szyprowski@samsung.com, jani.nikula@intel.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20260310012458.169272-1-damon.ding@rock-chips.com>
 <20260310012458.169272-13-damon.ding@rock-chips.com>
 <DH1TLZT5696T.2XAQIND6F9YS3@bootlin.com>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <DH1TLZT5696T.2XAQIND6F9YS3@bootlin.com>
X-HM-Tid: 0a9cf489172b03a3kunmea86f0cd190659
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQx1JH1YaGUNDSEJCTk0eGBhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=Cy9WSrpN8R7G3q+DpLjNtJcxR9Rfmh/Uw9G/ysOtP84TmMj/x6CzlL9UeA6hPyGqz/TzXs6Y4L32fWY23llQHRqZ9CIz7GHJSV2gfREmMNFDEkOgCZmGwbsqBld4AEmsv24+Wk+fnoEsY5oPxYEI21QfSNHI4bNxhYPZeLCtxdg=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=hG5rWW1tvZoHBRwfgexg2zqSAF2tcsPwI8XnBrBCp6Y=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260315_194616_189833_00614BFD 
X-CRM114-Status: UNSURE (   5.72  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Luca,

On 3/14/2026 1:12 AM, Luca Ceresoli wrote:
> On Tue Mar 10, 2026 at 2:24 AM CET, Damon Ding wrote:
>> After adapting to the bridge connector framework, the private
>> drm_connector is no longer required.
>>
>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> This should be folded in the previous patch, where all usages of this field
> are removed.
> 

Will fix in v11.

Best regards,
Damon


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
