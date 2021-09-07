Return-Path: <SRS0=zMH+=N5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12BC2C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Sep 2021 15:44:36 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A6B1B6108D
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Sep 2021 15:44:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A6B1B6108D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I/JBj+KsYrQe9sL7svf8DLoYLMHsK0USoxF+gUZm7jA=; b=MjmIpnGklXFQ47
	JbnIcpraXgBXa7r+pXPf3D0bbdsXWZoTXAdel/sSVpXFUhXRTnmt4HsyEIoDAhw21a1sIuhWtn5hP
	I0nr+7/6YiUZ79X/MQVwHsrjRLMHRsQh2q7HtTfPYOEqcQCtQ+Rp5kL/X+BMr1qEE9+3wgt/sCqwi
	HU9+ldRBYb+dmAQLGXlrnezszBfg0vQbgWF3M1vHQ4OxX6NsxKqLFI+xHl8KRrwDgQ2cVWUcB7QUX
	MlLVQnQhQzwRQgY6VazsDd8mo1P8F7fpbcWDTk3gT1+uAe7slmPLtPMclB05M83vOmoLb0Foh3j39
	eKxr+Q6Mgdv5W3gTEpBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNdGw-0046Xd-R9; Tue, 07 Sep 2021 15:44:30 +0000
Received: from mail-ot1-x32b.google.com ([2607:f8b0:4864:20::32b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNdGk-0046WS-Bv; Tue, 07 Sep 2021 15:44:19 +0000
Received: by mail-ot1-x32b.google.com with SMTP id
 c42-20020a05683034aa00b0051f4b99c40cso13326630otu.0; 
 Tue, 07 Sep 2021 08:44:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=H6L3JGLH5rzWIFpcToqlYPgU1lSCJF6lajc8EiNcH5s=;
 b=XnS4Cm7v8XR+aHGINA1uvkxFSWCkDw+oO+6bpdhlUo3MOWq1Vz59tYc6dWrZhb6QSb
 6hdIfSTPE9yMtXmXX7yjd2QNL+yg3bAn588y9RScXcUJiLY6kmpSSsYRKQOoRyVYSteg
 vwKM28ORF3knKfXn/rIffbOsLlBof8XKcMTmfuoofQK8QzYzzkKCM6d8hYe8FoebUw1Y
 x1E4seNlKq8cOD2l7RMe0ctODfe8D71BJH1Pze8SI2CNZe1DOUR1uTl6p34RAof2X8h2
 jS8qYLcSMm+A3dVd9HbDg8WrelPqhyTzIndgJbPugafc1jcm4hUarTbeW30o2fyh6+Bn
 B24w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=H6L3JGLH5rzWIFpcToqlYPgU1lSCJF6lajc8EiNcH5s=;
 b=SqBj1P/b7NkMQ8FmcvU66viKC/6BOoWCLBfyaXdAGKMqNsHTqyqmMGXouV4N5V7qpt
 /eXujV+XESC2Q/ku8XJhT3SjifoFkxlIOCU7IyaE/uyKlKPcSEh8q2j6zuh3hx9mDbqM
 oGucfdYneKxQrrtx/c5YVKw4XhPTQmNnp8vw7ygrFm8NiYKvlzDDCRCVOZne5dlMFb0+
 ay2XJCZcLZ1dfAidBJ9zTWwRE3FsMnAIMMh74Bf1jp+XrHIEkEE4Qy1VhsUSldrVTs8p
 1ZvwO3AxC8x/mIJVzBRtLcswo8vQIJXHhs/fPEYyrKC+1n42553z7kFsecWxwRS5in0p
 LXfg==
X-Gm-Message-State: AOAM533keSbn7/7KUcHnuYT4cdfdVnqXhUvnG5LfrTSTrHwgQHV7gkTL
 LGMfazRGv9i9bzpVTodoZlU=
X-Google-Smtp-Source: ABdhPJzQWrtZ5rNjyrci9hxGgUVQp8QtLOQj/fgldG88YmTsraBlmhtlI3LN4jj/zy5kYUqIwOjkOg==
X-Received: by 2002:a05:6830:614:: with SMTP id
 w20mr16027388oti.145.1631029456288; 
 Tue, 07 Sep 2021 08:44:16 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id k24sm2452777otp.31.2021.09.07.08.44.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Sep 2021 08:44:15 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: andriy.shevchenko@linux.intel.com
Cc: abel.vesa@nxp.com, festevam@gmail.com, heiko@sntech.de,
 kernel@pengutronix.de, lee.jones@linaro.org, lenb@kernel.org,
 linux-acpi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-imx@nxp.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, mturquette@baylibre.com,
 rafael.j.wysocki@intel.com, rjw@rjwysocki.net, s.hauer@pengutronix.de,
 sboyd@kernel.org, shawnguo@kernel.org, zhangqing@rock-chips.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v4 1/4] clk: fractional-divider: Export approximation
 algorithm to the CCF users
Date: Tue,  7 Sep 2021 10:44:00 -0500
Message-Id: <20210907154400.26656-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210812170025.67074-1-andriy.shevchenko@linux.intel.com>
References: <20210812170025.67074-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210907_084418_450821_0C19442B 
X-CRM114-Status: GOOD (  11.23  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Unfortunately, I can confirm this breaks the DSI panel on the Rockchip
PX30 (and possibly other SoCs). Tested on my Odroid Go Advance. When
I revert 4e7cf74fa3b2 "clk: fractional-divider: Export approximation
algorithm to the CCF users" and 928f9e268611 "clk: fractional-divider:
Hide clk_fractional_divider_ops from wide audience" the panel begins
working again as expected on the master branch.

It looks like an assumption is made in the vop_crtc_mode_fixup()
function in the rockchip_drm_vop.c that gets broken with this change.
Specifically, the function says in the comments "When DRM gives us a
mode, we should add 999 Hz to it.". I believe this is no longer true
after this clk change, and when I remove the + 999 from the function
the DSI panel works again. Note that I do not know the implications
of removing this 999 aside from that it fixes the DSI panel on my
PX30 after this change, so I don't know if it's a positive change
or not.

Thank you.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
