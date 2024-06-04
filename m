Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F6DEC27C52
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Jun 2024 19:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TtPwbArsTWSstNPW7bS/4xzc+EluR/DwhEr2Cx4OsCI=; b=lYmT9QQdx+bdzi
	Bh/Oif6H9Wxz81gFXEC+wixYlbwIAYiVSHnESXf6eNKoFQHfvF3fcIl8e44tjl/y8jfqCbcASkO6D
	RbAtGAIi1rhvgZXs2v6AWcgdbNbu7tHSwyEYY5394xs5UGI0UTpruUHuAgE0q4jOu7QVFxykNzXHi
	jY78Bufj8omtCYLjxAxjThlkSYtIf75sJK3LXpXJ4ejzU/XuJMeSuEEJzvKmd2T2kOlRNbJWUmpBV
	TZ6rmmvA/LRsPbq2A4em9IKJ1w3DjqNEyPnPZQkzqB+zTfbKj6cEGS7vq/LsJEPbAklT7fPkmUPJ+
	k/kdllp7VBhsqsLr4zcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEZtI-00000003bu2-2HAF;
	Tue, 04 Jun 2024 19:32:16 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEZtE-00000003btM-3N7S;
	Tue, 04 Jun 2024 19:32:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1717529528;
	bh=M1Gdn4asSpZpMWSj1SJTHfA7FUsIrefzLkYIEaSuPWc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=TD10HMw/KC+Zeelk+t0a2mjwUXPzb3Hczj8F6WJBiKw0COfBZeFkF6EjH/qUi48qL
	 Oz9zz7uaYcFmKTLwBXh3XcgXxt1v4yBKJUYlHnXUWCjFRzo7dw+5/ivuKYGENSwMLJ
	 LvmenoFOnasGe9G3cgE4XwgWopGAd8Md2SRq71K7ijBmpjow3omaEht4KKbarw28ED
	 7H9raw9xn5TOhFMBmU/sLHCDNzg2KVLlll+mZxajs0X372UDLle9lEnVM2sQFZgwhG
	 5l7Olu+lbU/ZioZKr9kHyJk90sbdSWmxRprtzSCEwqySgumM/wxv/5/lO4SzBiDufs
	 eYIBVVVhmwMOA==
Received: from [100.115.223.179] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 989343782172;
	Tue,  4 Jun 2024 19:32:06 +0000 (UTC)
Message-ID: <59519381-2729-4839-9882-65a981a0c551@collabora.com>
Date: Tue, 4 Jun 2024 22:32:04 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 13/14] drm/bridge: synopsys: Add DW HDMI QP TX controller
 driver
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@collabora.com,
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>,
 Algea Cao <algea.cao@rock-chips.com>
References: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
 <20240601-b4-rk3588-bridge-upstream-v1-13-f6203753232b@collabora.com>
 <20240601143226.GA2003970@ravnborg.org>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Content-Language: en-US
In-Reply-To: <20240601143226.GA2003970@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240604_123213_044481_C51C7598 
X-CRM114-Status: GOOD (  14.29  )
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

Hi Sam,

On 6/1/24 5:32 PM, Sam Ravnborg wrote:
> Hi Cristian,
> 
> a few drive-by comments below.
> 
> 	Sam
> 
> 
>> +
>> +static const struct drm_connector_funcs dw_hdmi_qp_connector_funcs = {
>> +	.fill_modes = drm_helper_probe_single_connector_modes,
>> +	.detect = dw_hdmi_connector_detect,
>> +	.destroy = drm_connector_cleanup,
>> +	.force = dw_hdmi_qp_connector_force,
>> +	.reset = drm_atomic_helper_connector_reset,
>> +	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
>> +	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
>> +};
>> +
>> +static int dw_hdmi_qp_bridge_attach(struct drm_bridge *bridge,
>> +				    enum drm_bridge_attach_flags flags)
>> +{
>> +	struct dw_hdmi *hdmi = bridge->driver_private;
>> +
>> +	if (flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR)
>> +		return drm_bridge_attach(bridge->encoder, hdmi->next_bridge,
>> +					 bridge, flags);
>> +
>> +	return dw_hdmi_connector_create(hdmi, &dw_hdmi_qp_connector_funcs);
>> +}
> 
> Are there any users left that requires the display driver to create the
> connector?
> In other words - could this driver fail if DRM_BRIDGE_ATTACH_NO_CONNECTOR
> is not passed and drop dw_hdmi_connector_create()?
> 
> I did not try to verify this - just a naive question.

I've just tested this and it doesn't work - dw_hdmi_connector_create()
is still needed.

Regards,
Cristian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
