Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42D53C25B5C
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 May 2024 01:33:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W48JI2oGBULET0Ow1GQCFTkp7RSoWTIhBS6nKJcEKs0=; b=pcQBZcFY5g2y1P
	+vM84gIlaoJ6seaxtD3yqEzbH7S3wp8fAXF8fzSbmjxEI1NXyAqvd6LO7wCY4f5Ijdubl8+owOs/G
	CWXwhL6NJyr2dRSZBEekgBCq6VqCEJR14nIbm1tnLuA0B+OqqSO61hYdDeDMe7ZqryvN+kxN7x6d1
	OpYeBLi9FThy2/qBKNJ3PtENl72WKxzGFL8CQuWGPykAYEM01aiUFR58T510DCcVJzr1kwDGJDz8w
	NRH3R39Pcic8raB90wwEgU0SAWyByrix5b+plvWAW051JjTegkYmtqBEL92CMWiooVjB6pUCix6dG
	GfKmfWCUe2+BPWFOMy3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s49iH-00000009FUa-3E18;
	Tue, 07 May 2024 01:33:49 +0000
Received: from mail-m49208.qiye.163.com ([45.254.49.208])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s49iD-00000009FTE-0JcN;
	Tue, 07 May 2024 01:33:48 +0000
DKIM-Signature: a=rsa-sha256;
	b=QD7wbqQEud+fYkWN/Q7FNR38iFCkbtRNXWfbUQA1u9rbZv3g9C98+Wzdl3+GV215VkPYS6py3dmniAu6pIJctsBM81fUogbc5cjAt7i1ME65s2FeYSU/Ufljs3Vjd/rMOc+TwXoH+7cXFdwVG3Q8lZEcWSVgCH7IfjHZ4AFko/c=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=HAJvQdLYmyL3qiXfsvwfss35CTvFlv7T9/m66zcsIFU=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id B408A8401F9;
	Tue,  7 May 2024 09:32:16 +0800 (CST)
Message-ID: <d1f29354-c187-46b9-a167-7a54762ecfa0@rock-chips.com>
Date: Tue, 7 May 2024 09:32:16 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v12 27/28] drm/rockchip: inno_hdmi: Switch to HDMI
 connector
To: Maxime Ripard <mripard@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 Sebastian Wick <sebastian.wick@redhat.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-sunxi@lists.linux.dev
References: <20240423-kms-hdmi-connector-state-v12-0-3338e4c0b189@kernel.org>
 <20240423-kms-hdmi-connector-state-v12-27-3338e4c0b189@kernel.org>
 <68eba0ec-bf9c-4d76-a362-5304a4cb61d5@rock-chips.com>
 <20240506-eccentric-wren-of-peace-819aad@houat>
Content-Language: en-US
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20240506-eccentric-wren-of-peace-819aad@houat>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUpDQ1ZPGkJITk1NTB1OSxlVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5IVUpLS1VKQk
	tLWQY+
X-HM-Tid: 0a8f50ae181203a4kunmb408a8401f9
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Pxg6GSo6MTMDCBVKDi8yNTQW
	OC8KFE9VSlVKTEpOS09OTkhDSU9MVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBTU1JSzcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_183345_749601_03512B7D 
X-CRM114-Status: GOOD (  16.45  )
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

Hi Maxime,

On 5/6/24 15:59, Maxime Ripard wrote:
> Hi Andy,
> 
> Thanks a lot for giving it a try
> 
> All the issues you raised in your review are fixed.
> 
> On Sat, Apr 27, 2024 at 06:44:54PM GMT, Andy Yan wrote:
>> And after this whole series applied on linux 6.9-rc4, the display on rk3036 kylin is lost, I get
>> the following error:
>> [  178.999421] rockchip-drm display-subsystem: [drm:drm_atomic_check_only] checking 87b7fbde
>> [  178.999471] rockchip-drm display-subsystem: [drm:drm_atomic_helper_check_modeset] [CRTC:35:crtc-0] mode changed
>> [  178.999498] rockchip-drm display-subsystem: [drm:drm_atomic_helper_check_modeset] [CRTC:35:crtc-0] enable changed
>> [  178.999521] rockchip-drm display-subsystem: [drm:drm_atomic_helper_check_modeset] [CRTC:35:crtc-0] active changed
>> [  178.999547] rockchip-drm display-subsystem: [drm:drm_atomic_helper_check_modeset] Updating routing for [CONNECTOR:37:HDMI-A-1]
>> [  178.999575] rockchip-drm display-subsystem: [drm:drm_atomic_helper_check_modeset] [CONNECTOR:37:HDMI-A-1] using [ENCODER:36:TMDS-36] on [CRTC:35:crtc-0]
>> [  178.999604] rockchip-drm display-subsystem: [drm:drm_atomic_helper_connector_hdmi_check] Trying with a 8 bpc output
>> [  178.999636] rockchip-drm display-subsystem: [drm:drm_atomic_helper_connector_hdmi_check] Trying RGB output format
>> [  178.999730] rockchip-drm display-subsystem: [drm:drm_atomic_helper_connector_hdmi_check] RGB Format, checking the constraints.
>> [  178.999757] rockchip-drm display-subsystem: [drm:drm_atomic_helper_connector_hdmi_check] RGB output format not supported with 8 bpc
>> [  178.999783] rockchip-drm display-subsystem: [drm:drm_atomic_helper_connector_hdmi_check] Failed. No Format Supported for that bpc count.
>> [  178.999810] rockchip-drm display-subsystem: [drm:drm_atomic_helper_check_modeset] [CONNECTOR:37:HDMI-A-1] driver check failed
>> [  178.999836] rockchip-drm display-subsystem: [drm:drm_atomic_check_only] atomic driver check for 87b7fbde failed: -22
>> [  178.999868] rockchip-drm display-subsystem: [drm:drm_atomic_state_default_clear] Clearing atomic state 87b7fbde
>> [  178.999898] [drm:drm_mode_object_put] OBJ ID: 37 (4)
>> [  178.999922] [drm:drm_mode_object_put] OBJ ID: 37 (3)
>> [  178.999944] [drm:drm_mode_object_put] OBJ ID: 40 (1)
>> [  178.999971] [drm:drm_mode_object_put] OBJ ID: 39 (2)
> 
> Which kind of display are you testing with? The only reason it could do
> so is if the display claim it doesn't support RGB in its EDID which is
> contradicting the HDMI spec. Are you using an Analog display by any
> chance? or the built-in EDIDs through the drm.edid_firmware mechanism?
> 

It is because there is something wrong(I still don't know why) with the DDC on my board.
It always failed to read edid when it first bootup, that means inno_hdmi_connector_get_modes
will return 0.

and in function

drm_helper_probe_single_connector_modes:

         count = drm_helper_probe_get_modes(connector);

         if (count == 0 && (connector->status == connector_status_connected ||
                            connector->status == connector_status_unknown)) {
                 count = drm_add_modes_noedid(connector, 1024, 768);

                 /*
                  * Section 4.2.2.6 (EDID Corruption Detection) of the DP 1.4a
                  * Link CTS specifies that 640x480 (the official "failsafe"
                  * mode) needs to be the default if there's no EDID.
                  */
                 if (connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort)
                         drm_set_preferred_mode(connector, 640, 480);
         }
drm_add_modes_noedid will not initialize display_info.

> Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
