Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E03BBC61DA4
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Feb 2023 19:23:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+KuPJvQxb2DCt/gdresZ25r4uaSHyHOg1y+v7h61pT0=; b=gGc8WWuohGQCC5
	TJazDVQlc49gFlTVNBd3kFfi0x2Giv52lAMUGP5ILZ9opJd3/Jx57BUZVmJIeT1lyOHDU5+Lx0Oqt
	uRjsu0DxkIo1Aw8uL3nmbAfh2cCExEgEXFtUSiSr23AvCNMKkuzpHubWAuUDJjZq0lvv1h3I9/rdF
	Bt4H1sSwcdbJ2QYnOrg1Z0qLMcVHQst6wvypGNGGbW0BJnwz8GXfC4eqrUAZDnGcAY2VPUSwP0gsv
	5Y3CihjFymtfxiJ5LPjO1EAeMAtGueB0p5nathkEmFsLpE8rokAeu51Kcuf1NMbcFd68mgvjRH0Kt
	SdY5d7QeYVXow9132jkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUui4-00DpPV-EI; Wed, 22 Feb 2023 19:23:24 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUuhu-00DpNA-JW; Wed, 22 Feb 2023 19:23:15 +0000
Received: by mail-pl1-x634.google.com with SMTP id z2so10172089plf.12;
        Wed, 22 Feb 2023 11:23:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/+MihbsfqNGbC8V1xZOT+sAmGSmrwYI74wB0NYPcrY4=;
        b=fgYbRBRouct5e35X/XBZCKpGh+JCXlFLESgc2L0lObjuiPt48EkY+XTx8CEeZYGplk
         jPqiT77bsTikevGF8OG6yDpc5gghp6FrKp5tL3k+fA8aqqluCdTEyGSBCUVudJorCzcL
         CA/YjM0LPdaRA/sn1aFPEMYAW35RG1RXOJeQdAbu2R4kSXy9DwC5Rxv0xNycLmMB0jB/
         uz8dqanVZJ0Fd6FdlLbKlraLYGaW0HP1CWqIKn0nmiWzOklEJpMMWxlZnhkOkJy+PsR6
         14C5nf+RqD0XKBkY4qv9QPY/jpTRqGDlW2mbUKD0OG3ByJoVNB+MrEG37blWg36kCu3q
         9kUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/+MihbsfqNGbC8V1xZOT+sAmGSmrwYI74wB0NYPcrY4=;
        b=l7ZuHwuxkusUTGIS3fcBYAOImkPeCAeasq+WGGbo0kaiEiWBZAAprsA7iu0ftOHTK5
         6bQZK+orJCylGyeHMdcpNqddV+CHd30q3P0CAW8w6rImPmatiYoMPIX2KOKfyBUkYnl5
         cm2HflQ/RJZYBmVap8kGquGzdmeLRQT8yOH+5giwWeXrn6KHsZtCBGTdbPF6AWC8TduO
         RIq5RtQesCfqTklLojU4/Sl4AjUp7h6ZYdD+ui663hMTyajQd1oC6vweONzTiw5jTXlS
         1cT8xx9m6vtmOZviMNN/0NwzmroddNk0JRORo1YR0BdMiOvz+QVOqz6qhSxMFGWHofaj
         wfvw==
X-Gm-Message-State: AO0yUKVNRCvBN4zBLbJfSFA6GudDKhPEU97uQvmbYjzV7jPFs+R2EqzW
	0tXHVVkHmzv9etHXvgD5Pmo=
X-Google-Smtp-Source: AK7set/0gigFPfWa6WnvSP0ECmk5QxKjVdXFrdckGdG+TDf0jf0PALdCxm+gyHLawinpwHxOF+3Oyw==
X-Received: by 2002:a17:90b:164f:b0:234:6df2:3b4e with SMTP id il15-20020a17090b164f00b002346df23b4emr10335522pjb.6.1677093793145;
        Wed, 22 Feb 2023 11:23:13 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id i6-20020a17090a138600b0022be36be19asm4875234pja.53.2023.02.22.11.23.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Feb 2023 11:23:12 -0800 (PST)
Message-ID: <57d37b74-a295-373c-16d4-644c4fa14e86@gmail.com>
Date: Wed, 22 Feb 2023 11:23:06 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 03/16] thermal: Remove debug or error messages in
 get_temp() ops
Content-Language: en-US
To: Daniel Lezcano <daniel.lezcano@linaro.org>, rafael@kernel.org
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Miquel Raynal <miquel.raynal@bootlin.com>, Amit Kucheria <amitk@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, Markus Mayer <mmayer@broadcom.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Heiko Stuebner <heiko@sntech.de>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
References: <20230221180710.2781027-1-daniel.lezcano@linaro.org>
 <20230221180710.2781027-4-daniel.lezcano@linaro.org>
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20230221180710.2781027-4-daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230222_112314_669889_FDB2AA82 
X-CRM114-Status: GOOD (  16.54  )
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

On 2/21/23 10:06, Daniel Lezcano wrote:
> Some get_temp() ops implementation are showing an error or a debug
> message if the reading of the sensor fails.
> 
> The debug message is already displayed from the call site of this
> ops. So we can remove it.
> 
> On the other side, the error should not be displayed because in
> production that can raise tons of messages.
> 
> Finally, some drivers are showing a debug message with the
> temperature, this is also accessible through the trace from the core
> code in the temperature_update() function.
> 
> Another benefit is the dev_* messages are accessing the thermal zone
> device field from the structure, so we encapsulate even more the code
> by preventing these accesses.
> 
> Remove those messages.
> 
> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com> #Armada

Acked-by: Florian Fainelli <f.fainelli@gmail.com> #brcmstb_thermal.c
-- 
Florian


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
