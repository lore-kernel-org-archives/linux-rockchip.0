Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9B36C3600B
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Mar 2025 12:41:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p7zLdNy+AkJ7lNaAG1bYqvz/7EUqsh/gJVt9VHoRaF4=; b=AwENbEPJTDd5it
	giaGU0aF5nzhZUBh8958alBfwcCy6d5/RezRQQJKxs+IHFed2xj25H6ibMQ1+E46GzJvREDuTeAZ9
	o3dS0JM8Wb7e/udVOavmb60xDGxDpuYcO0x759H2DIwetQP3uB+bX+vBXxzGOdkNbBXLZUu41Eyo9
	LmJftr8klfWF/WY8Tzuofx8g9NVNvB9OqaNxuT1ZMzMPPVZj7QgOZa9DO/UUesf9KqKeZSQQnAly6
	rj8m2NK2sDSGAOaAuU5M8xplqQYZiS+Wjh6Ew5wzVm3Z/KN00h2ze8DLkg0Wl+ieyspXFeyAQpfq+
	LwLtnoCsAEPfmM7z33CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txmXj-0000000AxOH-2bdw;
	Thu, 27 Mar 2025 12:41:07 +0000
Received: from m16.mail.163.com ([220.197.31.2])
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txmWU-0000000AxGl-3nEN
	for linux-rockchip@lists.infradead.org;
	Thu, 27 Mar 2025 12:39:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=/T62cBBd0pDjBtvy1ZY090Q2whzh7b/Qe+q6nLlyZKA=; b=M
	+vprhAOZ6Y7Ao54I7WlIa8WFFNs198QIv+rL6J78N/4GR06qp6FjWaYtGjkgvS7m
	VDHhr5SriQAJZgmT6foqM8cT8PeuknOwsllGdkH+6aWyLtUZpCvDS8/zJ2D8dlUz
	9B0ICnGYJT5EzjPkkCZXb4kuRCUcXBxvAvQA+TMUWk=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-115 (Coremail) ; Thu, 27 Mar 2025 20:39:02 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Thu, 27 Mar 2025 20:39:02 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: lumag@kernel.org
Cc: mripard@kernel.org, neil.armstrong@linaro.org,
	dri-devel@lists.freedesktop.org, dianders@chromium.org,
	jani.nikula@intel.com, lyude@redhat.com, jonathanh@nvidia.com,
	thierry.reding@gmail.com, victor.liu@nxp.com, rfoss@kernel.org,
	linux-rockchip@lists.infradead.org, linux-tegra@vger.kernel.org,
	"Andy Yan" <andy.yan@rock-chips.com>,
	"Dmitry Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re:[PATCH v2 1/5] drm/dp: Pull drm_dp_link_power_up/down from Tegra
 to common drm_dp_helper
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2025 www.mailtech.cn 163com
In-Reply-To: <20250318063452.4983-1-andyshrk@163.com>
References: <20250318063452.4983-1-andyshrk@163.com>
X-NTES-SC: AL_Qu2fAfyctkkv5CKdbekfmkcVgOw9UcO5v/Qk3oZXOJF8jDzp/xADZW1jPVTtweeEIS+ujTi3dDVRxcBmeZlRU6Ugl2BHLaPoVMD7DZlp7dcIaA==
MIME-Version: 1.0
Message-ID: <76a55b32.acc9.195d79cf378.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: cygvCgD338bmRuVnGa+OAA--.62833W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0gEdXmflRdEM6AACsg
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_053951_258311_73601864 
X-CRM114-Status: GOOD (  10.90  )
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


Hello Dmitry,
     Could you take this series? If so, merging it earlier can avoid future conflicts from other patches. 
Besides, I can update my DP driver based on drm-misc-next.

At 2025-03-18 14:34:35, "Andy Yan" <andyshrk@163.com> wrote:
>From: Andy Yan <andy.yan@rock-chips.com>
>
>The helper functions drm_dp_link_power_up/down were moved to Tegra
>DRM in commit 9a42c7c647a9 ("drm/tegra: Move drm_dp_link helpers to Tegra DRM")".
>
>Now since more and more users are duplicating the same code in their
>own drivers, it's time to make them as DRM DP common helpers again.
>
>Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
>Acked-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>---
>
>Changes in v2:
>- Fix commit message as suggested by Dmitry
>
> drivers/gpu/drm/display/drm_dp_helper.c | 69 +++++++++++++++++++++++++
> drivers/gpu/drm/tegra/dp.c              | 67 ------------------------
> drivers/gpu/drm/tegra/dp.h              |  2 -
> drivers/gpu/drm/tegra/sor.c             |  4 +-
> include/drm/display/drm_dp_helper.h     |  2 +
> 5 files changed, 73 insertions(+), 71 deletions(-)
>
>diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/display/drm_dp_helper.c
>index dbce1c3f4969..e5dec67e5fca 100644
>--- a/drivers/gpu/drm/display/drm_dp_helper.c
>+++ b/drivers/gpu/drm/display/drm_dp_helper.c
>@@ -838,6 +838,75 @@ int drm_dp_dpcd_read_phy_link_status(struct drm_dp_aux *aux,
> }
> EXPORT_SYMBOL(drm_dp_dpcd_read_phy_link_status);
> 
>+/**
>+ * drm_dp_link_power_up() - power up a DisplayPort link
>+ * @aux: DisplayPort AUX channel
>+ * @revision: DPCD revision supported on the link
>+ *
>+ * Returns 0 on success or a negative error code on failure.
>+ */
>+int drm_dp_link_power_up(struct drm_dp_aux *aux, unsigned char revision)
>+{
>+	u8 value;
>+	int err;
>+
>+	/* DP_SET_POWER register is only available on DPCD v1.1 and later */
>+	if (revision < DP_DPCD_REV_11)
>+		return 0;
>+
>+	err = drm_dp_dpcd_readb(aux, DP_SET_POWER, &value);
>+	if (err < 0)
>+		return err;
>+
>+	value &= ~DP_SET_POWER_MASK;
>+	value |= DP_SET_POWER_D0;
>+
>+	err = drm_dp_dpcd_writeb(aux, DP_SET_POWER, value);
>+	if (err < 0)
>+		return err;
>+
>+	/*
>+	 * According to the DP 1.1 specification, a "Sink Device must exit the
>+	 * power saving state within 1 ms" (Section 2.5.3.1, Table 5-52, "Sink
>+	 * Control Field" (register 0x600).
>+	 */
>+	usleep_range(1000, 2000);
>+
>+	return 0;
>+}
>+EXPORT_SYMBOL(drm_dp_link_power_up);
>+
>+/**
>+ * drm_dp_link_power_down() - power down a DisplayPort link
>+ * @aux: DisplayPort AUX channel
>+ * @revision: DPCD revision supported on the link
>+ *
>+ * Returns 0 on success or a negative error code on failure.
>+ */
>+int drm_dp_link_power_down(struct drm_dp_aux *aux, unsigned char revision)
>+{
>+	u8 value;
>+	int err;
>+
>+	/* DP_SET_POWER register is only available on DPCD v1.1 and later */
>+	if (revision < DP_DPCD_REV_11)
>+		return 0;
>+
>+	err = drm_dp_dpcd_readb(aux, DP_SET_POWER, &value);
>+	if (err < 0)
>+		return err;
>+
>+	value &= ~DP_SET_POWER_MASK;
>+	value |= DP_SET_POWER_D3;
>+
>+	err = drm_dp_dpcd_writeb(aux, DP_SET_POWER, value);
>+	if (err < 0)
>+		return err;
>+
>+	return 0;
>+}
>+EXPORT_SYMBOL(drm_dp_link_power_down);
>+
> static int read_payload_update_status(struct drm_dp_aux *aux)
> {
> 	int ret;
>diff --git a/drivers/gpu/drm/tegra/dp.c b/drivers/gpu/drm/tegra/dp.c
>index 08fbd8f151a1..990e744b0923 100644
>--- a/drivers/gpu/drm/tegra/dp.c
>+++ b/drivers/gpu/drm/tegra/dp.c
>@@ -255,73 +255,6 @@ int drm_dp_link_probe(struct drm_dp_aux *aux, struct drm_dp_link *link)
> 	return 0;
> }
> 
>-/**
>- * drm_dp_link_power_up() - power up a DisplayPort link
>- * @aux: DisplayPort AUX channel
>- * @link: pointer to a structure containing the link configuration
>- *
>- * Returns 0 on success or a negative error code on failure.
>- */
>-int drm_dp_link_power_up(struct drm_dp_aux *aux, struct drm_dp_link *link)
>-{
>-	u8 value;
>-	int err;
>-
>-	/* DP_SET_POWER register is only available on DPCD v1.1 and later */
>-	if (link->revision < 0x11)
>-		return 0;
>-
>-	err = drm_dp_dpcd_readb(aux, DP_SET_POWER, &value);
>-	if (err < 0)
>-		return err;
>-
>-	value &= ~DP_SET_POWER_MASK;
>-	value |= DP_SET_POWER_D0;
>-
>-	err = drm_dp_dpcd_writeb(aux, DP_SET_POWER, value);
>-	if (err < 0)
>-		return err;
>-
>-	/*
>-	 * According to the DP 1.1 specification, a "Sink Device must exit the
>-	 * power saving state within 1 ms" (Section 2.5.3.1, Table 5-52, "Sink
>-	 * Control Field" (register 0x600).
>-	 */
>-	usleep_range(1000, 2000);
>-
>-	return 0;
>-}
>-
>-/**
>- * drm_dp_link_power_down() - power down a DisplayPort link
>- * @aux: DisplayPort AUX channel
>- * @link: pointer to a structure containing the link configuration
>- *
>- * Returns 0 on success or a negative error code on failure.
>- */
>-int drm_dp_link_power_down(struct drm_dp_aux *aux, struct drm_dp_link *link)
>-{
>-	u8 value;
>-	int err;
>-
>-	/* DP_SET_POWER register is only available on DPCD v1.1 and later */
>-	if (link->revision < 0x11)
>-		return 0;
>-
>-	err = drm_dp_dpcd_readb(aux, DP_SET_POWER, &value);
>-	if (err < 0)
>-		return err;
>-
>-	value &= ~DP_SET_POWER_MASK;
>-	value |= DP_SET_POWER_D3;
>-
>-	err = drm_dp_dpcd_writeb(aux, DP_SET_POWER, value);
>-	if (err < 0)
>-		return err;
>-
>-	return 0;
>-}
>-
> /**
>  * drm_dp_link_configure() - configure a DisplayPort link
>  * @aux: DisplayPort AUX channel
>diff --git a/drivers/gpu/drm/tegra/dp.h b/drivers/gpu/drm/tegra/dp.h
>index cb12ed0c54e7..695060cafac0 100644
>--- a/drivers/gpu/drm/tegra/dp.h
>+++ b/drivers/gpu/drm/tegra/dp.h
>@@ -164,8 +164,6 @@ int drm_dp_link_remove_rate(struct drm_dp_link *link, unsigned long rate);
> void drm_dp_link_update_rates(struct drm_dp_link *link);
> 
> int drm_dp_link_probe(struct drm_dp_aux *aux, struct drm_dp_link *link);
>-int drm_dp_link_power_up(struct drm_dp_aux *aux, struct drm_dp_link *link);
>-int drm_dp_link_power_down(struct drm_dp_aux *aux, struct drm_dp_link *link);
> int drm_dp_link_configure(struct drm_dp_aux *aux, struct drm_dp_link *link);
> int drm_dp_link_choose(struct drm_dp_link *link,
> 		       const struct drm_display_mode *mode,
>diff --git a/drivers/gpu/drm/tegra/sor.c b/drivers/gpu/drm/tegra/sor.c
>index f98f70eda906..21f3dfdcc5c9 100644
>--- a/drivers/gpu/drm/tegra/sor.c
>+++ b/drivers/gpu/drm/tegra/sor.c
>@@ -2666,7 +2666,7 @@ static void tegra_sor_dp_disable(struct drm_encoder *encoder)
> 	 * the AUX transactions would just be timing out.
> 	 */
> 	if (output->connector.status != connector_status_disconnected) {
>-		err = drm_dp_link_power_down(sor->aux, &sor->link);
>+		err = drm_dp_link_power_down(sor->aux, sor->link.revision);
> 		if (err < 0)
> 			dev_err(sor->dev, "failed to power down link: %d\n",
> 				err);
>@@ -2882,7 +2882,7 @@ static void tegra_sor_dp_enable(struct drm_encoder *encoder)
> 	else
> 		dev_dbg(sor->dev, "link training succeeded\n");
> 
>-	err = drm_dp_link_power_up(sor->aux, &sor->link);
>+	err = drm_dp_link_power_up(sor->aux, sor->link.revision);
> 	if (err < 0)
> 		dev_err(sor->dev, "failed to power up DP link: %d\n", err);
> 
>diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/drm_dp_helper.h
>index 5ae4241959f2..f9dabce484a7 100644
>--- a/include/drm/display/drm_dp_helper.h
>+++ b/include/drm/display/drm_dp_helper.h
>@@ -566,6 +566,8 @@ int drm_dp_dpcd_read_link_status(struct drm_dp_aux *aux,
> int drm_dp_dpcd_read_phy_link_status(struct drm_dp_aux *aux,
> 				     enum drm_dp_phy dp_phy,
> 				     u8 link_status[DP_LINK_STATUS_SIZE]);
>+int drm_dp_link_power_up(struct drm_dp_aux *aux, unsigned char revision);
>+int drm_dp_link_power_down(struct drm_dp_aux *aux, unsigned char revision);
> 
> int drm_dp_dpcd_write_payload(struct drm_dp_aux *aux,
> 			      int vcpid, u8 start_time_slot, u8 time_slot_count);
>-- 
>2.43.0
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
