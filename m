Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B22BC4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Apr 2024 15:32:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	Cc:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fuNIlLOediYMKe3GmfhvAOa7wHJLP5/0vbvcGjh5Q9I=; b=JSNEi5EAMZl/+x
	HD4eV6Egg1DO0Ljs/x/9kHn1aq6OVDyt2tQF/mTpmWwyjJ11cNJ56dK/9TlfRcXEYSl+SSKs359wZ
	b84whfZnpGzuy3BGhIFcsp32kFlocax2pcVn/yFjrJ11UUW+FYxiJgKkdgy+TSu65f+UbUI2mZQhb
	bi9h5gwzcgYThcxQLMUi9/y3sCAPaA5spGcJdFsayN7x7fDrVrIX332Ho7SoOze81vQ5ygBuCgjbS
	n9QXTyvgMImFCtbo+cHNzWxUDujkaHQXNSZu8qLDPJbYcEQ8OK595WoWRclSE95T5bxjBfiXFZT4R
	m0NXTNBbXgJ7+sDHPsLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwknO-0000000CmHl-3UMs;
	Tue, 16 Apr 2024 15:32:30 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwknK-0000000CmGu-37vz;
	Tue, 16 Apr 2024 15:32:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1713281544;
	bh=pCQddUsbxAtiC8zLHHeODiJu5DBwcyDLleAf8wrer+A=;
	h=Date:Cc:Subject:To:References:From:In-Reply-To:From;
	b=dYo3b07ajHZtpF6SCHir3WICVf5ITvgtoDKhxNPKc/WM1bdjHVRzgfoVnnM+pwLzj
	 3Sd8g0Z+EvKBcXMOjOgiwBMD5uPESRymbGAykbUxHljRfUQD6BT9E776l/doLKqocu
	 EYkOOe7FFUm1sfAaios/gSS8jnGb+Py3eAdkMMxpgdWbUgyiYwWpHw0Xl+DQQcVwUw
	 jiMyzijICAsP8wCQuB2p5yz9CNAdskrz66J9HBEOedcWVnpfrg26SASTee5qy6pdsF
	 KlWwr4fyXOzg3Kq2CDck/eDkcD2JVjxiqLAYSPk8Qzgr/JinShkmDmqme9tdtDJaxa
	 hIFCi62T0Kp1Q==
Received: from [10.193.1.1] (broslavsky.collaboradmins.com [68.183.210.73])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: usama.anjum)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 908AC37804B2;
	Tue, 16 Apr 2024 15:32:20 +0000 (UTC)
Message-ID: <86f0a3e1-c3d4-4122-88fb-0b225bc11feb@collabora.com>
Date: Tue, 16 Apr 2024 20:32:52 +0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: Muhammad Usama Anjum <usama.anjum@collabora.com>, kernel@collabora.com,
 kernel test robot <lkp@intel.com>
Subject: Re: [PATCH v1 1/1] phy: rockchip: usbdp: fix uninitialized variable
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org
References: <20240416145233.94687-1-sebastian.reichel@collabora.com>
Content-Language: en-US
From: Muhammad Usama Anjum <usama.anjum@collabora.com>
In-Reply-To: <20240416145233.94687-1-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_083226_954098_8FB901D9 
X-CRM114-Status: GOOD (  17.47  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 4/16/24 7:51 PM, Sebastian Reichel wrote:
> The ret variable may not be initialized in rk_udphy_usb3_phy_init(), if
> the PHY is not using USB3 mode.
> 
> Since the DisplayPort part is handled separately and the PHY does not
> support USB2 (which is routed to another PHY on Rockchip RK3588), the
> right exit code for this case is 0. Thus let's initialize the variable
> accordingly.
> 
> Fixes: 2f70bbddeb457 ("phy: rockchip: add usbdp combo phy driver")
> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202404141048.qFAYDctQ-lkp@intel.com/
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Reviewed-by: Muhammad Usama Anjum <usama.anjum@collabora.com>

> ---
>  drivers/phy/rockchip/phy-rockchip-usbdp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> index 32f306459182..2c51e5c62d3e 100644
> --- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
> +++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
> @@ -1285,7 +1285,7 @@ static const struct phy_ops rk_udphy_dp_phy_ops = {
>  static int rk_udphy_usb3_phy_init(struct phy *phy)
>  {
>  	struct rk_udphy *udphy = phy_get_drvdata(phy);
> -	int ret;
> +	int ret = 0;
>  
>  	mutex_lock(&udphy->mutex);
>  	/* DP only or high-speed, disable U3 port */

-- 
BR,
Muhammad Usama Anjum

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
