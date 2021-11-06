Return-Path: <SRS0=5KZ+=PZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27713C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Nov 2021 07:50:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E5E95611EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Nov 2021 07:50:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E5E95611EF
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=perches.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SAET16a2zhTHPmTTMDBHeNHN+LIwE0xn3lTm7z4KV/Y=; b=vZ25vbYYNGTayB
	50WTz7ITYdbJ/yy1kMRu0pkm1LGXah5GHmUO+Vg5ywXNwcM0/5Zr1FBlibab3dQmXqT/0I0C2CIS9
	OF8r0UTbnTFsygbKxAeIb5tuDMnEbWdxIBR8AHCB3acBcDbCYx/8eZQ8uU9xEd0FdgG8fRG3HI4Td
	K63REEFg7uhROIYfssfnZuPv+ZxzxUVms7Qi1ZnCDdfL+hDs39FBC3s9WuQ0//I8MqpibOgWi5fA9
	GpuXWrBY9rpqSrzidbz3N06YRazbHpiXdd3j7ftWe/gBmeGBuVfyo5OBkfa1MqJmiJ6+FuumkP02D
	jWW/7/ZkWYYdbSnLd5Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mjGTP-00ClR4-Fc; Sat, 06 Nov 2021 07:50:47 +0000
Received: from smtprelay0152.hostedemail.com ([216.40.44.152]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mjGTC-00ClOj-Kj; Sat, 06 Nov 2021 07:50:36 +0000
Received: from omf12.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id B860018223268;
 Sat,  6 Nov 2021 07:50:28 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by
 omf12.hostedemail.com (Postfix) with ESMTPA id EA9E7240237; 
 Sat,  6 Nov 2021 07:50:24 +0000 (UTC)
Message-ID: <4b3f1ee1179dd6d4b010cb110b38d26e7d91c19f.camel@perches.com>
Subject: Re: [PATCH v1 14/19] pinctrl: st: Use temporary variable for struct
 device
From: Joe Perches <joe@perches.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Bartosz Golaszewski
 <brgl@bgdev.pl>, Jianqun Xu <jay.xu@rock-chips.com>, Linus Walleij
 <linus.walleij@linaro.org>, Sai Krishna Potthuri
 <lakshmi.sai.krishna.potthuri@xilinx.com>, Andrew Morton
 <akpm@linux-foundation.org>, linux-gpio@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org
Cc: Bamvor Jian Zhang <bamv2005@gmail.com>, Andrew Lunn <andrew@lunn.ch>, 
 Gregory Clement <gregory.clement@bootlin.com>, Sebastian Hesselbarth
 <sebastian.hesselbarth@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Patrice Chotard <patrice.chotard@foss.st.com>, Michal Simek
 <michal.simek@xilinx.com>, Andy Shevchenko <andy@kernel.org>
Date: Sat, 06 Nov 2021 00:50:23 -0700
In-Reply-To: <20211105124242.27288-14-andriy.shevchenko@linux.intel.com>
References: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
 <20211105124242.27288-14-andriy.shevchenko@linux.intel.com>
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
X-Stat-Signature: jap6txt4towx51bf66y6cdqwxohz91c7
X-Rspamd-Server: rspamout02
X-Rspamd-Queue-Id: EA9E7240237
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX1+6DUZa/TtJProF7+rBll2LVmF0I4FX6+w=
X-HE-Tag: 1636185024-57322
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211106_005034_770369_6184B750 
X-CRM114-Status: UNSURE (   9.88  )
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

On Fri, 2021-11-05 at 14:42 +0200, Andy Shevchenko wrote:
> Use temporary variable for struct device to make code neater.
[]
> diff --git a/drivers/pinctrl/pinctrl-st.c b/drivers/pinctrl/pinctrl-st.c
[]
> @@ -814,26 +814,25 @@ static int st_pctl_dt_node_to_map(struct pinctrl_dev *pctldev,
>  {
>  	struct st_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);
>  	const struct st_pctl_group *grp;
> +	struct device *dev = info->dev;
[]
> -	new_map = devm_kcalloc(pctldev->dev,
> -				map_num, sizeof(*new_map), GFP_KERNEL);
> +	new_map = devm_kcalloc(dev, map_num, sizeof(*new_map), GFP_KERNEL);

Are pctldev->dev and dev the same pointer?
It seems they are not.
Why reassign the ownership?



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
