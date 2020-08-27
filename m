Return-Path: <SRS0=CWnh=CF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2CDE1C433DF
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Aug 2020 10:57:19 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id ED15122CB1
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Aug 2020 10:57:18 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="YCdFFfJm"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org ED15122CB1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=M44O7jj476876GBY2SLd9+8LvQvlhWlHLzWkGjdglIY=; b=YCdFFfJmgJaAgLV6iyEtv9T6h
	0vtDasEJ3jmFi3eXCSyl/Xg2/irjrj2QZNH2HmXKo/PDPJCZhrmnvKUYN/yNXn/BLKMDr+lkPtfhD
	GUOM+jZo5k/dKWHz5JJQibTV+NCU0xl1+DoqtdRYC8B6bKX8dJBE+SR37BgqoIYz2Y7W0RUSlQGLp
	kBZgXCNGQdYhmcJj3+81pZ1ONwkGJ4RLo3uso1L92WiDgoc5SqutWC+O9fxOgJa5KPv5mE6aljsln
	ar9MDGugMIiT9jqxIIz+Nb2CavxvzWJqLFiQSMMjUCwmHXgyxEeCV9xh/82OkaetU4YSDRETzW+5v
	ibyPa2tMg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kBFak-0002Po-UJ; Thu, 27 Aug 2020 10:57:15 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kBFag-0002MD-DC
 for linux-rockchip@lists.infradead.org; Thu, 27 Aug 2020 10:57:12 +0000
IronPort-SDR: rJLVHLLLI+ezaxA8pNl2l95A4xbRb33q6Bs+1KFgZ224lxNVbkY7guyciCZ0UPDmOBTUYHGxLy
 8+TJDS3GzR2A==
X-IronPort-AV: E=McAfee;i="6000,8403,9725"; a="144216023"
X-IronPort-AV: E=Sophos;i="5.76,359,1592895600"; d="scan'208";a="144216023"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2020 03:57:05 -0700
IronPort-SDR: 5VR6ccig7DZlLiO+sMhEo+Emle4xy6LXWOE2nLy+9HD06TFwaDF3kjkmYll9QnidBP84HuExZ0
 bWSumeroZ0Jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,359,1592895600"; d="scan'208";a="299810019"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 27 Aug 2020 03:57:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 27 Aug 2020 13:57:01 +0300
Date: Thu, 27 Aug 2020 13:57:01 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Algea Cao <algea.cao@rock-chips.com>
Subject: Re: [PATCH] drm: Parse Colorimetry data block from EDID
Message-ID: <20200827105701.GS6112@intel.com>
References: <20200826142328.131144-1-algea.cao@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200826142328.131144-1-algea.cao@rock-chips.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200827_065710_597415_4E264F7E 
X-CRM114-Status: GOOD (  24.75  )
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
Cc: daniel@ffwll.ch, airlied@linux.ie, maarten.lankhorst@linux.intel.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, mripard@kernel.org, tzimmermann@suse.de
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Aug 26, 2020 at 10:23:28PM +0800, Algea Cao wrote:
> CEA 861.3 spec adds colorimetry data block for HDMI.
> Parsing the block to get the colorimetry data from
> panel.

And what exactly do you want to do with that data?

> =

> Signed-off-by: Algea Cao <algea.cao@rock-chips.com>
> ---
> =

>  drivers/gpu/drm/drm_edid.c  | 45 +++++++++++++++++++++++++++++++++++++
>  include/drm/drm_connector.h |  3 +++
>  include/drm/drm_edid.h      | 14 ++++++++++++
>  3 files changed, 62 insertions(+)
> =

> diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
> index 31496b6cfc56..67e607c04492 100644
> --- a/drivers/gpu/drm/drm_edid.c
> +++ b/drivers/gpu/drm/drm_edid.c
> @@ -3223,6 +3223,7 @@ add_detailed_modes(struct drm_connector *connector,=
 struct edid *edid,
>  #define VIDEO_BLOCK     0x02
>  #define VENDOR_BLOCK    0x03
>  #define SPEAKER_BLOCK	0x04
> +#define COLORIMETRY_DATA_BLOCK		0x5
>  #define HDR_STATIC_METADATA_BLOCK	0x6
>  #define USE_EXTENDED_TAG 0x07
>  #define EXT_VIDEO_CAPABILITY_BLOCK 0x00
> @@ -4309,6 +4310,48 @@ static void fixup_detailed_cea_mode_clock(struct d=
rm_display_mode *mode)
>  	mode->clock =3D clock;
>  }
>  =

> +static bool cea_db_is_hdmi_colorimetry_data_block(const u8 *db)
> +{
> +	if (cea_db_tag(db) !=3D USE_EXTENDED_TAG)
> +		return false;
> +
> +	if (db[1] !=3D COLORIMETRY_DATA_BLOCK)
> +		return false;
> +
> +	if (cea_db_payload_len(db) < 2)
> +		return false;
> +
> +	return true;
> +}
> +
> +static void
> +drm_parse_colorimetry_data_block(struct drm_connector *connector, const =
u8 *db)
> +{
> +	struct drm_hdmi_info *info =3D &connector->display_info.hdmi;
> +
> +	if (db[2] & DRM_EDID_CLRMETRY_xvYCC_601)
> +		info->colorimetry |=3D DRM_EDID_CLRMETRY_xvYCC_601;
> +	if (db[2] & DRM_EDID_CLRMETRY_xvYCC_709)
> +		info->colorimetry |=3D DRM_EDID_CLRMETRY_xvYCC_709;
> +	if (db[2] & DRM_EDID_CLRMETRY_sYCC_601)
> +		info->colorimetry |=3D DRM_EDID_CLRMETRY_sYCC_601;
> +	if (db[2] & DRM_EDID_CLRMETRY_ADBYCC_601)
> +		info->colorimetry |=3D DRM_EDID_CLRMETRY_ADBYCC_601;
> +	if (db[2] & DRM_EDID_CLRMETRY_ADB_RGB)
> +		info->colorimetry |=3D DRM_EDID_CLRMETRY_ADB_RGB;
> +	if (db[2] & DRM_EDID_CLRMETRY_BT2020_CYCC)
> +		info->colorimetry |=3D DRM_EDID_CLRMETRY_BT2020_CYCC;
> +	if (db[2] & DRM_EDID_CLRMETRY_BT2020_YCC)
> +		info->colorimetry |=3D DRM_EDID_CLRMETRY_BT2020_YCC;
> +	if (db[2] & DRM_EDID_CLRMETRY_BT2020_RGB)
> +		info->colorimetry |=3D DRM_EDID_CLRMETRY_BT2020_RGB;
> +	/* Byte 4 Bit 7: DCI-P3 */
> +	if (db[3] & BIT(7))
> +		info->colorimetry |=3D DRM_EDID_CLRMETRY_DCI_P3;
> +
> +	DRM_DEBUG_KMS("Supported Colorimetry 0x%x\n", info->colorimetry);
> +}
> +
>  static bool cea_db_is_hdmi_hdr_metadata_block(const u8 *db)
>  {
>  	if (cea_db_tag(db) !=3D USE_EXTENDED_TAG)
> @@ -4994,6 +5037,8 @@ static void drm_parse_cea_ext(struct drm_connector =
*connector,
>  			drm_parse_vcdb(connector, db);
>  		if (cea_db_is_hdmi_hdr_metadata_block(db))
>  			drm_parse_hdr_metadata_block(connector, db);
> +		if (cea_db_is_hdmi_colorimetry_data_block(db))
> +			drm_parse_colorimetry_data_block(connector, db);
>  	}
>  }
>  =

> diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
> index af145608b5ed..d599c3b9e881 100644
> --- a/include/drm/drm_connector.h
> +++ b/include/drm/drm_connector.h
> @@ -207,6 +207,9 @@ struct drm_hdmi_info {
>  =

>  	/** @y420_dc_modes: bitmap of deep color support index */
>  	u8 y420_dc_modes;
> +
> +	/* @colorimetry: bitmap of supported colorimetry modes */
> +	u16 colorimetry;
>  };
>  =

>  /**
> diff --git a/include/drm/drm_edid.h b/include/drm/drm_edid.h
> index cfa4f5af49af..98fa78c2f82d 100644
> --- a/include/drm/drm_edid.h
> +++ b/include/drm/drm_edid.h
> @@ -229,6 +229,20 @@ struct detailed_timing {
>  				    DRM_EDID_YCBCR420_DC_36 | \
>  				    DRM_EDID_YCBCR420_DC_30)
>  =

> +/*
> + * Supported Colorimetry from colorimetry data block
> + * as per CEA 861-G spec
> + */
> +#define DRM_EDID_CLRMETRY_xvYCC_601   (1 << 0)
> +#define DRM_EDID_CLRMETRY_xvYCC_709   (1 << 1)
> +#define DRM_EDID_CLRMETRY_sYCC_601    (1 << 2)
> +#define DRM_EDID_CLRMETRY_ADBYCC_601  (1 << 3)
> +#define DRM_EDID_CLRMETRY_ADB_RGB     (1 << 4)
> +#define DRM_EDID_CLRMETRY_BT2020_CYCC (1 << 5)
> +#define DRM_EDID_CLRMETRY_BT2020_YCC  (1 << 6)
> +#define DRM_EDID_CLRMETRY_BT2020_RGB  (1 << 7)
> +#define DRM_EDID_CLRMETRY_DCI_P3      (1 << 15)
> +
>  /* ELD Header Block */
>  #define DRM_ELD_HEADER_BLOCK_SIZE	4
>  =

> -- =

> 2.25.1
> =

> =

> =

> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- =

Ville Syrj=E4l=E4
Intel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
