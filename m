Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9BD6C4707B
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jan 2024 11:32:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bac0hlL5lTO8nIfoeJx/xsOB7I289Q22fX/pXUxTKcc=; b=0F/yozOcZ1yOtf
	mTxNORsMTBZY6lL0gWw+BLFoDDSdnzigMkSnJPhlqCOkyV9kC+VxsnXAR5Wd3A1azPbxA1LKVLeJ2
	pf9BY/tW6ljnTB/8FXQdwvZQXnD03ckRIyNdEZPzKB1Bkx87hIu6DiloTEK7Vep+4gA2T3cEgDk/o
	Ti5442HVIeP91NwzUknJgQjBD6ZuMcEvD8M2f/vV0cL0Kx10L7xNQ+ipfVvBmztdPx7Ik+jF1z21B
	NJiwSOznotFa20DJXBYqtuNa5tztb4ndvhukdPfSNEPn7W/b8eKLCkaIs4jC2vYQ9GHJ+UL6Ub6Lq
	+aKFuIPw41O8lnCHbeJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQQdA-002dVU-2G;
	Thu, 18 Jan 2024 11:32:20 +0000
Received: from mail-oi1-f172.google.com ([209.85.167.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQQd6-002dUU-1T;
	Thu, 18 Jan 2024 11:32:19 +0000
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-3bd9ba8286bso514511b6e.1;
        Thu, 18 Jan 2024 03:32:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705577475; x=1706182275; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/2dkV31yHAb+Qfdj4xcle6MF5whChIwDA5UIkWma74Q=;
        b=e0/t8mfIPbu8tmlrCm/+jwoR303qCsjSuE8MBcLdV5vcgi0Nb30aWVek8CyzhBcTDL
         DGe/3OLA0GFMhZfX2Mf4HUrUjw2DeI4pnDiK602h4zurIUCb5jL3CZ6Jd3swFAw/dou+
         q0CaXZx43866y/V6WoXKlQfYX7IeAyw/YOu8g+OvU7KYdd3WOjUUAd47Qu9r5RcF3NLu
         IKcH1nSgzOm3Z+6WxpXrIfU7qcVav+WGd28ZlpMgUhnMJGMRf7ZJD0RXTnqQptixGKB0
         3SOALKuzukQAQTrO/lq5Oz+V6Va/f9LdYe6Wou6szgu5UdVKeYRVClQvnQTqyFt98TzQ
         9/OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705577475; x=1706182275;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/2dkV31yHAb+Qfdj4xcle6MF5whChIwDA5UIkWma74Q=;
        b=s/NWxQMPYrDqtEVXLkFjFV3kwnICiiHr/Zd7OHNE5Ki+icX+vm3nf1L+VYsSSmOm0o
         xjXK0hqCVVoapsRoGYEjs7kTYheQZhXLLvUlvhg2iPzp8kw4EVORAbrP15yui83/owjL
         ENCZimeaxaDm8lfQJzufG78IsRF6JarW0z1nV9Yl9Ns+6Kvb3RU4bd8E5Fa6DuHIFmgO
         4JNnnO9S6r5P0z8aZT0UjWQmjYOShd8Q9PPxd188hxfPMycIw0dZ0/zAEbBwWw7+Qjnk
         jlBzs6ARMBRbO1nXfSNdaTJrLeelbWiHEwWMCuWaxQwU7fhrocX64xAkVSdnMij0q0Nt
         ZjBw==
X-Gm-Message-State: AOJu0Yyz2nwaVTwis/RM8/QYpQesUao1ar5mg4HUs25BZNW6QXQ6+WFZ
	zsxN/1GHJxMB3HGKC/Q2e8/cvgWE6hztZPiA5GKxShkPi1BVOF1v
X-Google-Smtp-Source: AGHT+IG7KytPhcCCGt0DJgflFsul/IGg9dbIsuDpZgqGurOYArTCDBoYnurv27JfOgVVV7C9JzB4IA==
X-Received: by 2002:a05:6359:689:b0:175:abbe:58b9 with SMTP id ei9-20020a056359068900b00175abbe58b9mr592825rwb.64.1705577474866;
        Thu, 18 Jan 2024 03:31:14 -0800 (PST)
Received: from toyko-2.5 ([45.32.55.39])
        by smtp.gmail.com with ESMTPSA id u22-20020aa78496000000b006d974d47a8csm3096710pfn.115.2024.01.18.03.31.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jan 2024 03:31:14 -0800 (PST)
From: amazingfate <liujianfeng1994@gmail.com>
To: nicolas@ndufresne.ca
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	elezegarcia@gmail.com,
	ezequiel@vanguardiasur.com.ar,
	heiko@sntech.de,
	knaerzche@gmail.com,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	liujianfeng1994@gmail.com,
	mchehab@kernel.org,
	p.zabel@pengutronix.de,
	robh+dt@kernel.org,
	sfr@canb.auug.org.au
Subject: Re: [PATCH v3 0/2] [v3]Add hantro g1 video decoder support for RK3588
Date: Thu, 18 Jan 2024 19:30:51 +0800
Message-Id: <20240118113051.10773-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <5490507acc121113e52a8cdddb155fddf6dbb374.camel@ndufresne.ca>
References: <5490507acc121113e52a8cdddb155fddf6dbb374.camel@ndufresne.ca>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240118_033216_494924_BC321EE5 
X-CRM114-Status: GOOD (  11.06  )
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

Hi Nicolas,

Wed, 17 Jan 2024 14:16:24 -0500, Nicolas Dufresne wrote:
>The only concern I have is that we rejected enabling this VPU on RK3399, since
>having two H.264 decoders was confusing userspace softwares at the time, causing
>the slow one to be picked sometimes. I know the selection is not fully
>implemented in GStreamer either, not sure for LibreELEC ffmpeg fork, Chromium or
>Cros-codec.

Only H264 decoder is disabled for RK3399 in driver code, and RK3399 does
have this VPU node in devicetree to support other codecs like MPEG or VP8.

>Of course, its not a problem now, but only when someone provides an rkvdec2
>driver that enables the much more capable HW decoder. Shall we hold on H.264
>mainline for now ?

RK356x also has the same situation. That is why this patch shares the same
compatible string with RK356X. Before rkvdec2 launching mainline, this
hantro g1 vpu is the only H264 decoder to use on these socs. We can keep
H.264 enabled, and disable it for RK356x and RK3588 just like what we did
to RK3399 when rkvdec2 launches.

Jianfeng

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
