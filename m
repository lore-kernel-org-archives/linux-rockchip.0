Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC108D3B7E5
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Dec 2025 06:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q/aQe2XND0WgrS4hHdEX83haS8OMssntntVJCLjfz0I=; b=nuWcyXuOJdgCfR
	HeOV5iDKSzrGqj8/bjY7ednZYHT/1iukbjXbKdIWrH0+WSMw//yzAS4adu9gg5M/4H3h9/EV1iWnV
	Y6fwBhBuXn+MfeayoLkES8HO9JLw2fpegWzbOKyBnGksbMoaa2UHMpGZITkMrj2RHdZDef+L/pQVv
	IbMSZX5WTB9o16CH/wTePS+YBrth/Nqea4zCtOdidWre//K7UBRxy7GWGwIBXuHmfRHVCvwdXo3zJ
	PMA+7cOFZioKrisue88fnTP2f9Wayxt1bo0c727d5B0PxyMpvdm/84KWAXtXOjTTSrAcbccrEbLBU
	YHz5slj7CS6qVAYuRguw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1va6fT-00000003Nnr-1US0;
	Mon, 29 Dec 2025 06:23:47 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1va6fQ-00000003NnU-3uil
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Dec 2025 06:23:46 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-64b791b5584so12641339a12.0
        for <linux-rockchip@lists.infradead.org>; Sun, 28 Dec 2025 22:23:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766989422; x=1767594222; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aVL5o9etEvDEw4GCw782FCEjMjzJiOjORVzywYUp33Q=;
        b=gPa6MrpLAt0BKxV/cz1FHCrQkeed0WhP0iEV1gzDG+DtlYaVG+34Oev6A5VVYZD/IP
         aicPCh/KDTmVRsVUN5vfFUUReHPtg3q24rZ77rGRED+Ohko7y7zHu5zGAHfwpjIq9hEE
         n3Y2Ng3B3y3YwdEuMCY9b7SJ/CttOK9nXkTPnLqn5Tsyzz+3HhsWds8sBCA++Fwu/vb/
         OJkgzmsvXDn6gpf11Nej+JaDCRIalJ7f4ikVbVkxvqLlsB8yWLewahMdA8RoS1rnrCOT
         xyNo8j3WdcaWaAX8JP2t8K6TKqlKUl3mRns5sc2WbCQosx0yozR98VsYR5r8hP9IEgyC
         lcLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766989422; x=1767594222;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aVL5o9etEvDEw4GCw782FCEjMjzJiOjORVzywYUp33Q=;
        b=FJSn8RWAW8+y+6wWxZODRI/t1DGqxddoyFWO7sih6tX3T7GOU9/PDWaeZ+5TrTxFWa
         dSOnnQd0n4rwWlS3QHI+hMmeNf7033yI1ggP/E3oNpxBXzEIHbgkLBecgaHq8tyaux07
         pZK7ehaaVEoJlgR/e2d0yKeR5wYFd7FZSXoEqXizwm7vmGLe5xZXle0V0Nzo5hEHyepH
         xrF6UpESpTvcrucwK/JAO9hkTkPar359k+lOXUQ3NOSu/9rplhVwUtfRD/VDhndkG94D
         d96Y/ctAiBZOQOdZj7ufLnjlTnz5TTjfHTVgioGcT9mg5l5MmVm2NoktkBLc+Mp/NmWK
         c2lg==
X-Gm-Message-State: AOJu0YwMI2HiHzYNW2GADk2MjbVHyu2Lcdox88B2kypjaWjcdBVJrNlE
	KYCjFbGK6ssl85tEfZbO39WuVhQDgWYbkTYcC3Bg0+/yXdfWGlGz8cZlxtuInNU2yIBYPlkHihp
	WXLhBYVKTXfhKv5KPPguonKor+O9nT88=
X-Gm-Gg: AY/fxX6IKic9prbq/hrOLpyKxP60zaqPPE1z6zpubJAeOJ9VN+RrIT1Fr6CaXbW2I4S
	Jr6gBZa4VQvL3pRIDuXvGRyf7tL2FsIT05RCh1JnQ+FihDGoASrcTqWysut3dotm7hT3CTLCFyl
	T5WWcpWM2oOAl8cRQEb170NWVjXLMvEc+JJqK6JVSEeutBzBVUh2fUCIdivocP1jcyG+onY0SkN
	3vcxtH9rpfdj3Rohf49olFuSL2OhLM3JBUJ8dWGA7249VRCoFezZNsfj2Rul7KGYprBFrFUCT56
	doece9cAQUReefjvzz5Ng2/VhwjEWnMOsk9/zUBJzFRuTFmLvAJs4ZupU1GOws2ve9C5U4dPZym
	2WIcVYhZAfnP1hccwcAdlUNlzN1mrYp7t1GRu
X-Google-Smtp-Source: AGHT+IHGXgFAPy7tVkgnwA41s4AgldQYo0aFCH9VwT9EvkGa9nCQXrDP5r3FMHnuWkn0I5+yBFW3JKI/pxyzqI31OxM=
X-Received: by 2002:a05:6402:520c:b0:64d:46f:343 with SMTP id
 4fb4d7f45d1cf-64d046f075bmr24640582a12.12.1766989422180; Sun, 28 Dec 2025
 22:23:42 -0800 (PST)
MIME-Version: 1.0
References: <aUKOlj-RvTYlrpiS@rock.grzadka>
In-Reply-To: <aUKOlj-RvTYlrpiS@rock.grzadka>
From: Peter Robinson <pbrobinson@gmail.com>
Date: Mon, 29 Dec 2025 06:23:30 +0000
X-Gm-Features: AQt7F2pl8ovOP2mKwlewPdztkW7R3HoZhXPXXEstOkK3A_3P2xbr7lX2E5qFy1k
Message-ID: <CALeDE9OzCzbhKmc61Kgbmzr67oJnjZMjsO6yYbkXujzA-OuO+A@mail.gmail.com>
Subject: Re: [REGRESSION][BISECTED] wifi broken on pinebook pro
To: Jan Palus <jpalus@fastmail.com>
Cc: linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, 
	regressions@lists.linux.dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251228_222345_016020_E887D710 
X-CRM114-Status: GOOD (  19.08  )
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

On Wed, 17 Dec 2025 at 11:26, Jan Palus <jpalus@fastmail.com> wrote:
>
> WiFi no longer works on Pinebook Pro after upgrade to kernel 6.18. It
> appears firmware fails to load:
>
> ...
> mmc_host mmc0: card is non-removable.
> mmc_host mmc0: Bus speed (slot 0) = 400000Hz (slot req 400000Hz, actual 400000HZ div = 0)
> Bluetooth: hci0: BCM: features 0x0f
> Bluetooth: hci0: BCM4345C5 Ampak_CL1 UART 37.4 MHz BT 5.0 [Version: Version: 0039.0089]
> Bluetooth: hci0: BCM4345C5 (003.006.006) build 0089
> mmc_host mmc0: Bus speed (slot 0) = 148500000Hz (slot req 150000000Hz, actual 148500000HZ div = 0)
> dwmmc_rockchip fe310000.mmc: Successfully tuned phase to 55
> mmc0: new UHS-I speed SDR104 SDIO card at address 0001
> brcmfmac: brcmf_fw_alloc_request: using brcm/brcmfmac43456-sdio for chip BCM4345/9
> usbcore: registered new interface driver brcmfmac
> brcmfmac mmc0:0001:1: Direct firmware load for brcm/brcmfmac43456-sdio.pine64,pinebook-pro.bin failed with error -2
> brcmfmac: brcmf_sdio_bus_rxctl: resumed on timeout
> ieee80211 phy0: brcmf_bus_started: failed: -110
> ieee80211 phy0: brcmf_attach: dongle is not responding: err=-110
> brcmfmac: brcmf_sdio_firmware_callback: brcmf_attach failed
>
> compared to 6.17 instead of last 4 lines with errors there's single one
> with info about loaded firmware:
>
> brcmfmac: brcmf_c_preinit_dcmds: Firmware: BCM4345/9 wl0: May 14 2020 17:26:08 version 7.84.17.1 (r871554) FWID 01-3d9e1d87
>
> Bisected to:
>
> 6d54d935062e2d4a7d3f779ceb9eeff108d0535d is the first new commit
> commit 6d54d935062e2d4a7d3f779ceb9eeff108d0535d (HEAD)
> Author: Peter Robinson <pbrobinson@gmail.com>
> Date:   Wed Aug 27 16:30:37 2025
>
>     arm64: dts: rockchip: Further describe the WiFi for the Pinebook Pro
>
>     Update the wake-up pin and associated interupt details for the
>     Pinebook Pro WiFi module.
>
>     Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
>     Link: https://lore.kernel.org/r/20250827143040.1644867-1-pbrobinson@gmail.com
>     Signed-off-by: Heiko Stuebner <heiko@sntech.de>
>
>  arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>
>
> With this commit reverted on top of 6.18.1 wireless connection works
> fine.
>
> Not sure what could be relevant but:
> - it's an early model, I think second batch, delivered end of 2019

Is it the Synoptics or the Cypress/Infineon module? What firmware are you using?

> - mainline uboot 2025.10 is used
>
>
> #regzbot introduced: 6d54d93506

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
