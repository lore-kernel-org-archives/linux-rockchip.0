Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69710E7717D
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Dec 2024 13:03:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lMc+R9HzF9YKI9s0dt+EXkWatvTaaUPWCH27l+hF/2c=; b=mtY9WZysMDirB/
	oXwogZIYJXTiZ48o9I7KOwtkqskMxRWPR+z/JRZigZh8o/0Ydr1MVe3ZJynGkMIxULTX4TAfoQ36m
	UTXcawnv/cHWxE1v+gigkHpTjLCW9QbR1+iMvOsmDIXlgnmim21u4uUK4nBIPunzSeO7D6yFyKl7Y
	DDthe8D97cPOrqnDjSDBmJV89MtEwrDLO7s4XhEoOjisTTnbYo5BdbGXucAvIrvrSfX+nEAezDNWQ
	ctjCM+wjVLOMCmB4GRSbAzmzkKKqpOvnqNN/48wVzseT2WNF4lpEJg9igKGQsgWsBak2i46sTyEMX
	R4ZbZc/kOa+5EePVPVzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLMMt-0000000Ev2p-1lwH;
	Wed, 11 Dec 2024 13:03:07 +0000
Received: from mail-qt1-x82b.google.com ([2607:f8b0:4864:20::82b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLMFG-0000000Etb1-0tPk
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Dec 2024 12:55:15 +0000
Received: by mail-qt1-x82b.google.com with SMTP id d75a77b69052e-46772a0f8fbso22371811cf.3
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Dec 2024 04:55:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733921713; x=1734526513; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=zHoDt/h8ui80UnaqOsX85MLqzjHOW1E0Add4KVcBBwg=;
        b=dpxC7JfGfrELiwiZb3bl0GrggtyuviEAJyriPHIz23shcIZbsuNHIls6mfyq2aMAIo
         7yvb08XZ22ODFOVaiR6LjnKmZtLc0/y/xazN/7kHdZqQrt7cxDR8TW1KLLwzyPCEyKU3
         bOM8hXjdbwPvumE6ZsmFO9zL4vsFS1i2Ln8Rx6ZTlaTqnOGl2WBfEaD7gIWUJTXIoEg7
         KqQToj586Ol9CUO9XkDC3Ru568aKUaQ8SQXZ9kUwRp42KbcIIPqqfUWSkG9/T87aiZ6u
         IfTWhG2Pmo6X3K44wfsLRZ5gKiIMJY6qGReymsOsQ39jyKeK5ypPTeTvQzOIIInb8RVZ
         l02g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733921713; x=1734526513;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zHoDt/h8ui80UnaqOsX85MLqzjHOW1E0Add4KVcBBwg=;
        b=SdpZZFB57oQqTVwEU4LyXViFQcfzTKd3WDjBMvWeE0V4eeXmpwudvv3PiCxTmE9HFi
         ui1JofRY5S2UKt1a2o2ktsf8vCUB/S+qppPWwg13LfElqRdIJCJ4pdZhiWHtd4NrOavH
         eUH1Anr4UJIk5kwdz8Eq2Vp0H8GUan35IRkeaHOGK5lF0dvLWdKG1PcXjlezvMrsQgSi
         xcj8aP2a2IneRqfdEyphj//0OW2ipH3yNSaPng7LBRPyHHDVX+6q6BnjnuE7ggFsnR4X
         1iC7M8oarXeAiT5ePSq3WNqMHXqxFtrr0k8XxmGYF7pmoxrWCeMppN6Xj6WlvGK3XNs7
         zCQQ==
X-Gm-Message-State: AOJu0YxWE1eMc/woJM0MDzvlzkaJRJ22sYjTwomZz2F8+Z65WX27DO3c
	e7LgocBOWBiqxK5G2GsN7tmSHTFbSxa+Vm7vPOo6km1ePhEHfczCnMsUBvEb7aiUAYsf+rwQUTW
	NqN4ebDIYV3dpS+cbr7thPodV7s2gSx+Q
X-Gm-Gg: ASbGncslwQPI95RrPxoQ6kVh9xy9uELiWALZ0+d1+w0URwq9xuRbE2vmv9Butu93XWm
	pm91P9W9PFg/26c4g32Va7HzJBKNTP3wvSNs=
X-Google-Smtp-Source: AGHT+IFqh6uACAwYwKtj/nn2LiYYfGBttFZYC8vViteqXGqgH5QHfuJqTGxVJdSsy9F3jVWbIB1dYDgyznzlHPAf9/g=
X-Received: by 2002:a05:622a:1648:b0:467:5014:8bd9 with SMTP id
 d75a77b69052e-467892d706emr51720591cf.23.1733921713017; Wed, 11 Dec 2024
 04:55:13 -0800 (PST)
MIME-Version: 1.0
From: Vicente Bergas <vicencb@gmail.com>
Date: Wed, 11 Dec 2024 13:55:01 +0100
Message-ID: <CAAMcf8DL27-PYdEJ4eX1-PJnQDWB0osgHR0gbHAcr_oRniWOOg@mail.gmail.com>
Subject: PCIe missing on RK3399
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_045514_252522_A6BF48D2 
X-CRM114-Status: UNSURE (   6.03  )
X-CRM114-Notice: Please train this message.
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

Hi,
i've tested the Linux kernel 6.13-rc1 and rc2 and in both cases PCIe
is not detected on the RK3399 platform (rk3399-gru-kevin), whereas the
kernel version 6.12.3 works fine.

6.13 configuration is based on the same one as 6.12 and there aren't
any significant PCI-related differences.

The messages from dmesg on 6.13 don't show any PCI-related errors.

Does somebody know what is going on?

Regards,
  Vicente.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
