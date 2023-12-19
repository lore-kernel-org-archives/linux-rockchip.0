Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F525C41535
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 15:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bAdtwkjgap51EZSKOk5U2vsSkeqfmaNtRAuSddRZgYU=; b=4nB3qX0cK+FUXw
	qUaL01VaAC11dwXf7oiyeizCZb2CAFBJd1xB6t5BYKIUaapqmoWKvrn0VuBzFp9OxmCxmz1TRVX4V
	Li8SBP1N++Doev2Sz/kL2tHsH2jitPJZ1O3GJfGHdu7uwZESHHIJcxaQei0Jk0AMdmtjWEdIdP/en
	HHJOCVoxrR/i8PnBjsbo+lZN8lrGB0pcsP64CtSLycJdHyzVOD2e/wHnmVWs3mddr1FYAegHUexmB
	26t+9yeFnPGlq1tHPwtAcRW7vGka5FUMCBhcqwbJ9xOpEkE4PmcFCywQ/mOKn51PxlNhqoR/yWiG1
	18VA0hoj/SHwTWJqzZwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFcCk-00EZjL-03;
	Tue, 19 Dec 2023 15:40:22 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFcCf-00EZgh-32;
	Tue, 19 Dec 2023 15:40:19 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-a235e394758so269844066b.1;
        Tue, 19 Dec 2023 07:40:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703000414; x=1703605214; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z28CWlKNnNm8FLZVai7/EGWCqrY9/wHM89gG+Y7cx2Y=;
        b=efhqJDjW7E431E16PRxLewjs+clJnB5Gghzg0A75Vw+2WYFsa35qG6Gn6LJmtGWJlh
         N+UlpLVr+BUqcKHqD8PJYE7HnaiOiOb/LyesXQl+OVDBS//McgVx2a8xOikCg2JHOLJY
         Qnx4K3XAk04aDc4Kxzru/Ox6+spV4PErZtZ+2WcEZwdbsEZJWOSf4pE5Ep1+WOHEiR+p
         aH4WaaMUuRasQMos8XE9y+TVVENdRsc5LqEYDDr1gekwwQUnW2QXJJQXk080tF5mimnr
         hP4toNJvl8orvy1yxq+KbUyup1RRrzf328ScrcTt9UqxGiE7q+2dZOsJNEm3W8AHhdod
         +5sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703000414; x=1703605214;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z28CWlKNnNm8FLZVai7/EGWCqrY9/wHM89gG+Y7cx2Y=;
        b=Ao8LvTo9rvC3qodenK4KLjxgGjaVHmo+LfG9PDSgUd4DPg3tuNvP2mzvNCP3Y7FI3y
         M4gbflEtXWzT2fR4Qv6y1JbJsKqcQm7Vuk9Wab07E3PcBqLrjXCUqO7IF2jRmZm/U5Pi
         df9E1MUyQnUZ4LNAybfqb21uNwqBdjd24MoB12A7kXd6+sc9kESWH+AHpy62Z6NruyIk
         FCAxFMzopeF6E1EoK7Kv9NIgMztYUsh0N7Th2yEFhtmCwlX4Dm/JTN1Yd3aXYWLR3NWm
         Nq36OsnV5iikcX1vXsiB3sip0Q6Dtyly6Ll8jBCa3eyVw/6VXuJy5ii+oKUXStRJRfVD
         YA9w==
X-Gm-Message-State: AOJu0YxhDToYMOxGUEZoq0Zgf7NZC2A57JX7zjR4Tr3sm+81N4XI/WVh
	ye11zUAaS+emHISyEAs4FCI=
X-Google-Smtp-Source: AGHT+IHMdPQ2QtW5yU2b2dt9f2R5tCBBY9cZcDjn3kOiBkH32eq4Hro3OHpjk2HifsZJuPKZ+LswRw==
X-Received: by 2002:a17:907:6194:b0:a23:8918:2399 with SMTP id mt20-20020a170907619400b00a2389182399mr608683ejc.130.1703000413674;
        Tue, 19 Dec 2023 07:40:13 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id wg13-20020a1709078f0d00b00a2687065e28sm307346ejc.45.2023.12.19.07.40.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Dec 2023 07:40:13 -0800 (PST)
Message-ID: <4aeef6df-2616-0741-00a3-6e45ec63f920@gmail.com>
Date: Tue, 19 Dec 2023 16:40:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2 2/2] drm/rockchip: rk3066_hdmi: drop custom fill_modes
 hook
To: Maxime Ripard <mripard@kernel.org>
Cc: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com,
 maarten.lankhorst@linux.intel.com, tzimmermann@suse.de, airlied@gmail.com,
 daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <f86ec29f-194a-800d-0aaf-9e16e551b37d@gmail.com>
 <410b116b-cb63-7ba7-3689-4f0832ab5796@gmail.com>
 <evaq3yfbqf4gchsps2qoojemtii7tmcss24aruiuze5kkzlnhy@mih7rky7viqz>
Content-Language: en-US
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <evaq3yfbqf4gchsps2qoojemtii7tmcss24aruiuze5kkzlnhy@mih7rky7viqz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_074017_975466_AC50C712 
X-CRM114-Status: GOOD (  15.11  )
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



On 12/19/23 13:55, Maxime Ripard wrote:
> Hi,
> 
> On Mon, Dec 18, 2023 at 04:49:06PM +0100, Johan Jonker wrote:
>> CRTC size validation for the display controller has been added with
>> Commit 8e140cb60270 ("drm/rockchip: vop: limit maximum resolution to
>> hardware capabilities"), so we can drop the custom fill_modes hook.
>>
>> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> 

> I'm not sure those two are equivalent. CRTC and connectors usually have
> different requirements and capabilities, and thus different,
> supplementary, mode_valid/atomic_check implementations.

Rockchip RK3066 CRTC and connector resolution max_output are equivalent.

From Rockchip PX2 TRM V1.0.pdf page 17:
- Video Encoder
  Maximum frame rate is up to 30fps@1920x1080

- Display Interface
  Support LCD or TFT interfaces up to 1920x1080

- HDMI TX Interface
   HDMI version 1.4a, HDCP revision 1.4 and DVI version 1.0 compliant transmitter
   Supports DTV from 480i to 1080i/p HD resolution, and PC from VGA to UXGA by LCDC0 or LCDC1 in RK PX2


Compared to the drm_helper_probe_single_connector_modes() this function added an extra max_output

Checked in rockchip_drm_vop.c is:
https://lore.kernel.org/linux-rockchip/20230216102447.582905-2-s.hauer@pengutronix.de/

+	if (vop->data->max_output.width && mode->hdisplay > vop->data->max_output.width)
+		return MODE_BAD_HVALUE;
+
+	if (vop->data->max_output.height && mode->vdisplay > vop->data->max_output.height)
+		return MODE_BAD_VVALUE;

For RK3066 VOP max_output:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/gpu/drm/rockchip/rockchip_vop_reg.c#n506

This patch was made with HDMI in mind.

	.max_output = { 1920, 1080 },

This first part was added by Heiko, but not was not part my patch that I submitted:
-	if (maxX > 1920)
-		maxX = 1920;
-	if (maxY > 1080)
-		maxY = 1080;
-
-	return drm_helper_probe_single_connector_modes(connector, maxX, maxY);
-}

Original patch:
https://patchwork.freedesktop.org/patch/msgid/20190330095639.14626-2-jbx6244@gmail.com

+static int
+rk3066_hdmi_probe_single_connector_modes(struct drm_connector *connector,
+					 uint32_t maxX, uint32_t maxY)
+{
+	return drm_helper_probe_single_connector_modes(connector, 1920, 1080);
+}

Rockchip RK3066 CRTC and connector resolution max_output are equivalent.

Johan

> 
> Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
