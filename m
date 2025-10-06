Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB8C1CCA471
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Oct 2025 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q9R/F8RF5k0Yih8K41fTjRySZqotIPms1EX0TBpshj4=; b=D2Y32/EwrVX5zp
	sHD/V4ooZraw/DbZLX5ZaKHBERRxGby/A9IIxw9O3AU46Yr10QFMWvro0TULhJJzP5qcXZX5RBFO9
	1yRLD/qGnFXaQ2HYCKxpJgt0AsDcfQiAFWejreO2B+ncex95NkvkIAKVq5eDaIRHZUVR9K/J6YR7i
	M1yvacmKEaIIw9LpDvHWfIApvfWa0bGljItGevm+a+0dLajlydVEN+X4qQUeK1iBe1Wzpm+omoefg
	F4ENR8GTtT2LUVgx0C01vCkgtB3u/e8NiOpePiwhhtLqZcoDQSE6Ew/om/R9f7DfW0THQrFv3Cxua
	aZVnTHbbDV1q8FgLC0Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5nAh-00000000Hnw-2ch2;
	Mon, 06 Oct 2025 15:30:43 +0000
Received: from out-185.mta0.migadu.com ([91.218.175.185])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5nAe-00000000Hm1-22PR
	for linux-rockchip@lists.infradead.org;
	Mon, 06 Oct 2025 15:30:42 +0000
Message-ID: <ff21cbd1-dc77-43ae-85a8-dc6a56a1cefa@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1759764625;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nXyoKN4j7tjDil/ht3RE4A/98xpfn+XOg18nSC63YxI=;
	b=Fe/cNu0rr623OU3+9Ti9ilVTCZn9uAu/4R9seUwKi1wiqTULHwiFAtmOQfNqBi/s98yzjN
	GERZwA4JTt8odBfVuDE6VeHz2PmiluWbhv/obSptS1gcMUx/ZcQ3Us/dAVtmGn5r5OyVHg
	0z4dog6KEnfJc3NI3xAgiS/dd3DYNyA=
Date: Mon, 6 Oct 2025 16:30:19 +0100
MIME-Version: 1.0
Subject: Re: [PATCH v13 3/4] drm/atomic-helper: Re-order bridge chain
 pre-enable and post-disable
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Aradhya Bhatia <aradhya.bhatia@linux.dev>
To: Vicente Bergas <vicencb@gmail.com>
Cc: Laurent.pinchart@ideasonboard.com, airlied@gmail.com,
 alexander.sverdlin@siemens.com, andrzej.hajda@intel.com, devarsht@ti.com,
 dri-devel <dri-devel@lists.freedesktop.org>, jernej.skrabec@gmail.com,
 Jonas Karlman <jonas@kwiboo.se>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, lumag@kernel.org,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 neil.armstrong@linaro.org, nm@ti.com, rfoss@kernel.org, simona@ffwll.ch,
 tomi.valkeinen@ideasonboard.com, tzimmermann@suse.de, vigneshr@ti.com,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Douglas Anderson <dianders@chromium.org>,
 Damon Ding <damon.ding@rock-chips.com>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>,
 Linux Rockchip Support List <linux-rockchip@lists.infradead.org>,
 Devarsh Thakkar <devarsht@ti.com>
References: <CAAMcf8BfxMJx+5ttEXx0kONP2OYWSLFqEYF6rfVBKoRg5TKZzQ@mail.gmail.com>
 <bea50d14-2311-46ad-bb30-9d60a4c5e3a2@linux.dev>
Content-Language: en-US
In-Reply-To: <bea50d14-2311-46ad-bb30-9d60a4c5e3a2@linux.dev>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_083040_679507_DBC7D021 
X-CRM114-Status: GOOD (  18.98  )
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

+rockchip maintainers

Hi Vicente, all,


I went through the drivers and the affected areas in the gru-kevin
chromebook pipeline last week, but nothing has stood out.


Pipeline:

rockchip,display-subsystem / rk3399-vop (Big/Lite) (CRTC) ->
rk3399-edp (Encoder) -> analogix_dp_core (Bridge) ->
sharp,lq123p (edp-panel)

I am unable to debug this further since I do not have the hardware.

I could use some help, especially from folks who understand the hardware
requirements better.


On 11/09/25 09:01, Aradhya Bhatia wrote:
> Hi Vicente,
> 
> Thank you for the bisection and reporting the issue.
> 
> On 10/09/25 16:17, Vicente Bergas wrote:
>> Hi,
>> this patch causes a regression. It has been reported in
>> https://bugzilla.kernel.org/show_bug.cgi?id=220554
>>
>> It affects the gru/kevin platform (arm64,RK3399) with the Panfrost DRM driver.
> 
> I believe the Panfrost DRM driver may only be for the GPU.
> 
> Based on the dts files in arm64/rockchip/, this is the pipeline of the
> gru-kevin setup that I understand.
> 
> 	rk3399-vop (Big/Lite) -> rk3399-edp -> sharp,lq123p (edp-panel)
> 
> The setup seems to be using the drm/rockchip drivers for the display
> controller and for the bridge.
> 
>>
>> When it boots in console mode, the blinking of the cursor keeps the display on.
>> If it is turned off via /sys/class/graphics/fbcon/cursor_blink, then
>> the display briefly shows each key press presented on screen for less
>> than one second and then powers off.
>>
>> When starting the graphical mode (wayland), if there are no
>> applications drawing on the screen, the only way to keep the display
>> on is by continuously moving the mouse.
>>
> 
> Okay!
> 
> I will have a look through the drivers. In the meanwhile, please do
> report back if you find any other observations.
> 
> 

-- 
Regards
Aradhya


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
