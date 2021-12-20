Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EC28C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Dec 2021 11:51:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oK6cinh0PnFS9gz9Q9jdmItcahqXak3t+aAC1T01lcg=; b=AAwOEv2zruke4u
	SRhqxHc17Z7MtDLR1U81JUc4SEOaO/GpDijR6oiGZxkylCpBVOnF6WYAYr2pNLovRziFVtudDpmTH
	EV2gewbYJJK3Q3FJ0VWR1nfkV2CKFHsrWUm72KSLHhd8exCppSsEn2nBlCuMeelkkm1s+PC/G7p9C
	OVOr5p4Wx5b3ejyBaZrde+Oa9QiULB8u8xsQ7l6HyaO84X6atBytb9HbplwwKWZiIOGQ3RO3dp9Kb
	dvUwtvQR+hhsmTTMphTm8rkGy7AxQHsoOfpfJFOnPWhCgdNo3cGXj7FzhuBiWPSzdW/E1IQU21uxD
	dQnwiS6/wSRyyTOSPwgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mzHCe-0026YO-TR; Mon, 20 Dec 2021 11:51:40 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzHCc-0026X6-W1; Mon, 20 Dec 2021 11:51:40 +0000
Received: by mail-wr1-x434.google.com with SMTP id s1so19592971wrg.1;
 Mon, 20 Dec 2021 03:51:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=p/P+q/gtXvYn5lTOzvGHLt9UuDdXRspn+md2NvaF8tc=;
 b=EExu677ukA0Kz6xU+BMGFfOVjUK1XpgZ67XUjgD1pnfUdQOPcgb4bF+ZDGJYTKZlXe
 sGj5vNYbwSWwybJ6uaWOATILN+GFMjUZBFq8Sz5bplGnLQwYf9DSTAs2eR+kJ8VQ5sPH
 gSnNL6o/fsVxZSxpHu+gFpnLNy/mNTtn887BXgjdTKsi8tizvuPg45r7NkNBFkJnXWeC
 RExUSanWNrtVLlnA1jqxP8uto/oG6DNHfG0v9rQ2U6S0jrgXzxRLBhSfNis/lKBeM0I6
 uAevSHDsPzzDcAGLSnaVpora0Vr7UzwcbxYRGga5g6pbMlQmusGzThrctAph0imI3rLE
 fc1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=p/P+q/gtXvYn5lTOzvGHLt9UuDdXRspn+md2NvaF8tc=;
 b=2uDnyk4FBkyCy/Ngaic6PjEhNGgakWOXsCe6pD/Nhf/M6yo2C9Ga5CTm61IG7Cy5sU
 E1LBapPh9+8mJ5xFOo/QudATANuEKYHq2PofgBthr+hKiBPcNApl5RNEWzISMfOV7ysI
 Dc44/Yqruu9UaIVUX/zbOdp2O8+gADnmLKdZJ/uzzRTUfA4HeVtaGvQnSV0JZ8m1auth
 22QWIXzIu8lIjn4xoWUJcOraySoxuTYpFb5rqLHohG+yQ0mcQ25IbUPtIhKS3uAX35I4
 tZ4LiFItYRxVZ/j75Y2byfRFb31zVGA1L7iMFasJx1+FHbgoZ3o4Bqy1SBBak3s80Rca
 +yhQ==
X-Gm-Message-State: AOAM530pzvmBYX5DyA42fZWRR+YSX1Bqt+sbwpV4Jl7mH0caL9FfUzsY
 fhFXTC+iw6b1wvLrWw1ZGzo=
X-Google-Smtp-Source: ABdhPJwoEInEeH88GH83sFShjd3YXynMJnKwtGetH4cdE8mCT0mf3TOgz0/oQKBwWWGkli1YraLIhA==
X-Received: by 2002:adf:cc83:: with SMTP id p3mr12618669wrj.680.1640001096488; 
 Mon, 20 Dec 2021 03:51:36 -0800 (PST)
Received: from archbook.localnet ([217.151.114.10])
 by smtp.gmail.com with ESMTPSA id o2sm14214116wru.109.2021.12.20.03.51.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Dec 2021 03:51:36 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH v3 00/22] drm/rockchip: RK356x VOP2 support
Date: Mon, 20 Dec 2021 12:51:34 +0100
Message-ID: <2075203.1SQL01OxuU@archbook>
In-Reply-To: <20211220110630.3521121-1-s.hauer@pengutronix.de>
References: <20211220110630.3521121-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211220_035139_069713_1908ADCD 
X-CRM114-Status: GOOD (  12.57  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Montag, 20. Dezember 2021 12:06:08 CET Sascha Hauer wrote:
> 
> Third round of patches and last one for this year. I hopefully integrated
> all review feedback. Additionally the driver is now fully converted to
> regmap, so no struct vop_reg necessary anymore.
> 
> Sascha
> 
> Changes since v2:
> - Add pin names to HDMI supply pin description
> - Add hclk support to HDMI driver
> - Dual license rockchip-vop2 binding, update binding
> - Add HDMI connector to board dts files
> - drop unnecessary gamma_lut registers from vop2
> - Update dclk_vop[012] clock handling, no longer hacks needed
> - Complete regmap conversion

Hi Sascha,

for future reference, you can add `-v 3` to your git format-patch
command line to mark the whole patch series as PATCH v3 and not
just the cover letter.

Thanks for your continued work on this,
Nicolas Frattaroli



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
