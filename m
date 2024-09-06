Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93BDDCE7AA6
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 01:26:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7vkMapXJtXRsyok58sDNZPRO258EE948o8jK0LHUFb0=; b=me2o1Y1Ki089ly
	lGD6zPFzV+nr1VRyZ0jKbS+eRkgKcrYqySYZikyeTIgThTW1FocfzKoiDTV8vUuw4jFBz7bMTzTqd
	o2hw0QZtwPdYPYY+50auYPiTz0Y4Tqidr1vt78qE0T/GjB9pLHLePEVQw/UQcVrJ23cwZuZ5/H9li
	uGKtNrPhdUcvpvqci+KgxGvuYh5PajgyNQCHhWs8siqKX4Uu996PpRwyropLP48ONqI1CllLUZc/z
	EfXRhLFm6DsPweoFk07MzQFUNxnC22LW9uQgIiNrWbrPLs7qDtgyIY25ktoPensfQpt/vq4Ij0Ooz
	YC0QwktjZIoWmkiKI6cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smNkS-0000000AHtx-3akv;
	Fri, 06 Sep 2024 01:26:53 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smNjT-0000000AHn2-1KzA;
	Fri, 06 Sep 2024 01:25:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1725585949;
	bh=twD2+guI6vGmeVSCxuwshV4bdnrlz1eKgsdVK6G0nz8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=I0z8MhFot0zBmV2E1zZE4VX6eHdN1ywxA7go0CGWS0kueNouEbeZyAX5hE4S4RRwy
	 VHnrMk8pkVCJBWWcqh4HHkmujEfYaLP60JVpF4pBCTBl4w42FpMRpdVxlcWwmkeC1E
	 sS0Klb/CKczuQqsfnlFk2KI+87zMeCCk97kAUzU0dROm+UjmZhMM5TOLgE8fy5+Nwx
	 RlIIHyxnnS+jszl+f0krWB9vCk1ys3/RR8FGDEkb+bIZOKQSn3G1TFEhfpRt/Rym8g
	 aNCmk5lGJQIVL4KwAlvNNMqmC1khf4uDATgN3bqDOxkZN1PRjBkvvGelHKzgu6sS6f
	 xjYnqt815ISjQ==
Received: from [192.168.1.90] (unknown [188.27.55.48])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9289417E0E95;
	Fri,  6 Sep 2024 03:25:48 +0200 (CEST)
Message-ID: <fa265088-5bf4-420f-9456-44051f913164@collabora.com>
Date: Fri, 6 Sep 2024 04:25:48 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/4] drm/bridge: synopsys: Add DW HDMI QP TX Controller
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
References: <20240819-b4-rk3588-bridge-upstream-v4-0-6417c72a2749@collabora.com>
 <20240819-b4-rk3588-bridge-upstream-v4-2-6417c72a2749@collabora.com>
 <20240827-armored-magnificent-badger-ffb025@houat>
 <34422b7a-ce70-445d-a574-60ac36322119@collabora.com>
 <20240902-turtle-of-major-glory-efb4e8@houat>
 <6e20410a-a24d-4454-8577-2cff65319a2a@collabora.com>
 <20240903-archetypal-soft-wildebeest-b5ea68@houat>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Content-Language: en-US
In-Reply-To: <20240903-archetypal-soft-wildebeest-b5ea68@houat>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240905_182551_549964_C139090C 
X-CRM114-Status: GOOD (  22.14  )
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

On 9/3/24 11:09 AM, Maxime Ripard wrote:
> On Tue, Sep 03, 2024 at 12:12:02AM GMT, Cristian Ciocaltea wrote:
>> On 9/2/24 10:36 AM, Maxime Ripard wrote:
>>> On Sat, Aug 31, 2024 at 01:21:48AM GMT, Cristian Ciocaltea wrote:
>>>> On 8/27/24 11:58 AM, Maxime Ripard wrote:
>>>>> On Mon, Aug 19, 2024 at 01:29:29AM GMT, Cristian Ciocaltea wrote:
>>>>>> +static irqreturn_t dw_hdmi_qp_main_hardirq(int irq, void *dev_id)
>>>>>> +{
>>>>>> +	struct dw_hdmi_qp *hdmi = dev_id;
>>>>>> +	struct dw_hdmi_qp_i2c *i2c = hdmi->i2c;
>>>>>> +	u32 stat;
>>>>>> +
>>>>>> +	stat = dw_hdmi_qp_read(hdmi, MAINUNIT_1_INT_STATUS);
>>>>>> +
>>>>>> +	i2c->stat = stat & (I2CM_OP_DONE_IRQ | I2CM_READ_REQUEST_IRQ |
>>>>>> +			    I2CM_NACK_RCVD_IRQ);
>>>>>> +
>>>>>> +	if (i2c->stat) {
>>>>>> +		dw_hdmi_qp_write(hdmi, i2c->stat, MAINUNIT_1_INT_CLEAR);
>>>>>> +		complete(&i2c->cmp);
>>>>>> +	}
>>>>>> +
>>>>>> +	if (stat)
>>>>>> +		return IRQ_HANDLED;
>>>>>> +
>>>>>> +	return IRQ_NONE;
>>>>>> +}
>>>>>
>>>>> If the scrambler is enabled, you need to deal with hotplug. On hotplug,
>>>>> the monitor will drop its TMDS ratio and scrambling status, but the
>>>>> driver will keep assuming it's been programmed.
>>>>>
>>>>> If you don't have a way to deal with hotplug yet, then I'd suggest to
>>>>> just drop the scrambler setup for now.
>>>>
>>>> Thanks for the heads up!
>>>>
>>>> HPD is partially handled by the RK platform driver, which makes use of
>>>> drm_helper_hpd_irq_event(). Since the bridge sets DRM_BRIDGE_OP_DETECT
>>>> flag, the dw_hdmi_qp_bridge_detect() callback gets executed, which in turn
>>>> verifies the PHY status via ->read_hpd() implemented as
>>>> dw_hdmi_qp_rk3588_read_hpd() in the platform driver.
>>>
>>> It's not only about hotplug detection, it's also about what happens
>>> after you've detected a disconnection / reconnection.
>>>
>>> The framework expects to keep the current mode as is, despite the
>>> monitor not being setup to use the scrambler anymore, and the display
>>> remains black.
>>
>> AFAICS, the ->atomic_enable() callback is always invoked upon
>> reconnection, hence the scrambler gets properly (re)enabled via
>> dw_hdmi_qp_setup().
> 
> No, it's not.
> 
>>>> During my testing so far it worked reliably when switching displays with
>>>> different capabilities.  I don't have a 4K@60Hz display at the moment, but
>>>> used the HDMI RX port on the Rock 5B board in a loopback connection to
>>>> verify this mode, which triggered the high TMDS clock ratio and scrambling
>>>> setup as well.
>>>
>>> How did you test exactly?
>>
>> I initially tested with Sway/wlroots having an app running
>> (eglgears_wayland) while unplugging/replugging the HDMI connectors in
>> every possible sequence I could think of (e.g. several times per
>> display, switching to a different one, repeating, switching again, etc).
>>
>> I've just retested the whole stuff with Weston and confirm it works as
>> expected, i.e. no black screen (or bad capture stream for the 4K@60Hz
>> case) after any of the reconnections.
> 
> Then I guess both sway and weston handle uevent and will change the
> connector mode on reconnection.
> 
> It's not mandatory, and others will just not bother and still expect the
> output to work.
> 
> I guess the easier you can test this with is modetest.

Indeed, modetest doesn't trigger a mode change on reconnection.
This is handled now in v6:

https://lore.kernel.org/all/20240906-b4-rk3588-bridge-upstream-v6-0-a3128fb103eb@collabora.com/

Thanks,
Cristian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
