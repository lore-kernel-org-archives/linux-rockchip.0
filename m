Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4045BC021AA
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Sep 2024 19:13:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nW276QYN1H/wkm5tZwyP54gxYx2dKVkDzPYsh18ghLI=; b=NxiCGD1oXp+WvC
	Mx3YFEuNtZkprsJIe+BriHcRpxxYiMNWSx09BnevHdBNxFR1yVB4nUm9M2cx7CAVse5/qHaAlSSPw
	T/AOZqm3vWjApCzgoOZZ+lZllN3+CXLCr8kImYbwYDagnGQVRptj8lmzJvPt8Ib7Kn75Hqhmm8Ngu
	sjnVvxc69qEHI3kMvePsIF9CLbrxBZ0mFel2NB3iDVF8AbFYrNO0T3yDP3s9pkSu5JUUwnF1MEyp0
	T4WwiZDmNp/39KzKhmCp4nX39YZcrF7cOG6FCAg3HkoVxk5dWGEVv5/uG8hDIXQ8WPZzdVPs+VHZq
	w3+u+jcE+DZaR3GJGyeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1spYDG-000000019ZW-0bjE;
	Sat, 14 Sep 2024 19:13:42 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1spYCA-000000019S1-1J6u;
	Sat, 14 Sep 2024 19:12:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1726341150;
	bh=PHZHrVw10h99rYEQdEFbDtMypLDFs11UWr5JxLxSJxc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ZsfJFGSYVsRNIwiMZkbPX4u3316vZoyqdoN5oaoIHurdx8PORAWYwKCaI2Ya8Eq7j
	 ZjUPDFuoAbXYO5f0MqVNQv9EbaBriNnVCJGKtLRoTSnqokcQtdczHiTVDdYaON+JBn
	 xXTjY/+IzgYlZ4Au5t9dzm/XMV5E1YiowMkGvd0eNkOR3RksqGoTPmIB3ArhvC6qSN
	 ml4C7jyy2TVNCU8VQ6+Ab45XU8dGK+JRHbl1K9NB0djtMIe6YxB+zg532IXMId9oyL
	 KtEVWAMO8FHw1ahJg2fILKtgdSFo/Gx63i4FEjrKaqA6FNmDAtTFjPVBSWpcdoBJFv
	 CBvYulvUh0Ycw==
Received: from [192.168.1.90] (unknown [188.27.55.48])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 1122E17E3612;
	Sat, 14 Sep 2024 21:12:30 +0200 (CEST)
Message-ID: <f8b17995-ce53-45ab-8e68-c7087dbc9786@collabora.com>
Date: Sat, 14 Sep 2024 22:12:29 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/3] drm/bridge: synopsys: Add DW HDMI QP TX Controller
 support library
To: Maxime Ripard <mripard@kernel.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@collabora.com, Alexandre ARNOUD <aarnoud@me.com>,
 Luis de Arquer <ldearquer@gmail.com>, Algea Cao <algea.cao@rock-chips.com>
References: <20240906-b4-rk3588-bridge-upstream-v6-0-a3128fb103eb@collabora.com>
 <20240906-b4-rk3588-bridge-upstream-v6-1-a3128fb103eb@collabora.com>
 <20240909-horned-congenial-curassow-ebc5fa@houat>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <20240909-horned-congenial-curassow-ebc5fa@houat>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240914_121234_562049_CB79F16E 
X-CRM114-Status: GOOD (  17.28  )
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

Hi Maxime,

On 9/9/24 6:13 PM, Maxime Ripard wrote:
> Hi,
> 
> On Fri, Sep 06, 2024 at 04:17:40AM GMT, Cristian Ciocaltea wrote:
>> +static enum drm_connector_status
>> +dw_hdmi_qp_bridge_detect(struct drm_bridge *bridge)
>> +{
>> +	struct dw_hdmi_qp *hdmi = bridge->driver_private;
>> +	enum drm_connector_status status;
>> +
>> +	status = hdmi->phy.ops->read_hpd(hdmi, hdmi->phy.data);
>> +
>> +	dev_dbg(hdmi->dev, "%s conn=%d scramb=%d\n", __func__,
>> +		status == connector_status_connected, hdmi->scramb_enabled);
>> +
>> +	if (hdmi->scramb_enabled) {
>> +		cancel_delayed_work_sync(&hdmi->scramb_work);
>> +
>> +		if (status == connector_status_connected)
>> +			dw_hdmi_qp_check_and_set_scramb(hdmi);
>> +	}
>> +
>> +	return status;
>> +}
> 
> Unfortunately, that won't work. The HDMI Spec has (HDMI 2.0, Section
> 6.1.3.1 - Scrambling Control):
> 
> The minimum time period between the write to the Scrambling_Enable bit,
> and the transmission of a scrambled video signal is not specified;
> however the Source shall not begin transmission of a scrambled video
> signal before writing a 1 to the Scrambling_Enable bit. The maximum time
> period between the write to the Scrambling_Enable bit and the
> transmission of a scrambled video signal shall be 100 ms.
> 
> So you need to disable the output and enable it again.
> 
> vc4 does just that, you can have a look here:
> https://elixir.bootlin.com/linux/v6.10.9/source/drivers/gpu/drm/vc4/vc4_hdmi.c#L410

Thanks for all the details and references!

Unfortunately I had to drop the scrambling setup for now [1], as I
encountered some issues while attempting to get this implemented as
suggested.  Will get back to this and submit it separately when done.

Regards,
Cristian

[1] https://lore.kernel.org/lkml/20240914-b4-rk3588-bridge-upstream-v7-0-2b1348137123@collabora.com/


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
