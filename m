Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A0BAC5CFC1
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Aug 2026 12:22:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NqCbNvEP/qY3TbuScc3HdD3DlrKv3HLs0my4xMmfE3Q=; b=SXR5zf7/Cr83sZ
	TA04GHJ+lvVoxftY1VhraDzgRQvT34RSLITIzldqxfFekg0u75Px83NpKPCONhU9dUFQhFwF8BHAM
	JfMlEBErCgKa60bgPV7l7FQM0RrH7Ts25fIeko75zAbyCUFkCL9J9rVaZpX83XK5Odr0Vi0wHKLll
	3zOHqdssOWpydRcZ+ODRd86W4xl9ew07tmNA7h4BltEf8qNjazj0sBHWUt7XFkjnP6mjUKZa/YByK
	NYv85My0rqXjdOTvKgvu+OgimSXqkTkCeT/ZZNJVBFVJMD+uMCWsorISO4DPGa+U+g66ogpyeGYqf
	kZz9rpZ1AlpUsp+MoNHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvDPX-00000003oSu-3Tdn;
	Sat, 15 Aug 2026 12:22:51 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvDPW-00000003oS0-02mm
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Aug 2026 12:22:51 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-47f611b3af9so206861f8f.3
        for <linux-rockchip@lists.infradead.org>; Sat, 15 Aug 2026 05:22:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786796568; x=1787401368; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=uWaFMfECfAcNnDKgk6qhf+kNcK9LJeRhrar57dzq77s=;
        b=I/WlMcSBnSbZ9FCqQHpxeYhwldsweLXA0EE4nCt4++ZEN1AoWT3wlclmR6ogz6H768
         Rx1JkDX2QBC8Exk/LdX6GrhsR8fx0/DmW3TwaUetMYDecR3clyvV9/POJ4IF7O9Z5igR
         gZXWrdoswZCLkryiLbEMANKPMrje5IXkfQDPT3DsDsmCp969P1w/ev1culBjzegYdOp+
         FsRkbVMLZGgdm3eOKSvawApXBwxEBhvzdk0fcr9F6tx58sBCgEX5QwYNC2ShmlLTF6r2
         Bl2b/trKiufhfPNCDuHrSXXwd1nHBXfDrBhvjB7lJYxBJFxSqduK0WkXJfE7fmImnE3Y
         JHRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786796568; x=1787401368;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=uWaFMfECfAcNnDKgk6qhf+kNcK9LJeRhrar57dzq77s=;
        b=XzQDsQx3lnjFD2vcffHxHIblkviU9wNzRJvIbsIFMZkK4NV4aa9IJe1HiFc0fvpuLt
         Tvkt3I+UC285iFitlTmezgP9I8QEMbNknEinp7gCBNo6PGkCEarZypW3+ol6AF7qvqfi
         okun/qdVj2Dd314Z9RHiEsaig6Zr+Cht4d/Km5QaWVaqqsmzwQFmZppfRUAOpux74d3M
         mnJMscEaoQnj5b//DQNqKmsyy1BBzzvlguFKRwVOefNdE3JjZoBts6Hjyz/kUvO01XCV
         SlR+uF/+8O3Q04T0bNVIWfBs8db1Nh3NMtq7Js2VMuDyChkf6LfS+tOihZxS3AzW/usk
         KdNg==
X-Forwarded-Encrypted: i=1; AHgh+RosDykWYl/MgEVN2YDBLaIwVpprIUOPwdlXMZNQLPfPDtC6bU7cTaLf3l+zW53prlxQnMWRyEYTUSui2WpgWw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzQliEdyeZnEJWKx+NsnCrOLYJmcKmkyvI5+aZHsef+FmUCKQio
	C6BscoeVpSyg61bZmb663CIIFf7y6WhLBuT1ljNNAY2tP8N5vvZbCxh+
X-Gm-Gg: AR+sD10OEVTL/SXuSdzvn5B1fpli6sWvBbAvSqhB5nVVAr9K6eT6KQXNqNsLEwiLOay
	IrFoe4zx2JPHlzOyu4bZc1ZQmS1sUwRU2fch4+qsHR0Q5h2UOCVfF8lXBelOHACt1w8S7XFhnyd
	jI+A6Py5S3+GwGQ4wcRWM/zsAdPVWEsJNlwxslVQ+49YpGIok3OMbgrWhwPAXPeqyaRmsCVN2AE
	H53i5zM1EqXZJggzQUGd4abyLnvttDEgXpmEpdiAt2EQyuD4SbVqu3N4sDuJ2gePHvNyn42mAo9
	8jda2ZZCIssO8tA3zwULmHuTl70ZbvpU3jpslRIz/inwLOH0X+SUNAlRhat2IrHVlmSEGdnMqK9
	Wl2RMxv6tWKSitMYt3Ceoz+QrIkMg/ENIMrKiNUS0gi41dbBmYw2CGJsPHQcdDVMtYxfmj05Vv5
	w47B8St5xijIOjUQAyS57gpuraQkq8lCDelW2kU6b4fC8D8jhmKWH1J5u690/FjSC7N0e97FMU5
	HnBgzoaMmoxEH3/pbaPdTkuG+a/TIQFKho39lU70ogScJfG4J8Muhg39WpdfIOga72I
X-Received: by 2002:a05:6000:2603:b0:47f:9256:52c0 with SMTP id ffacd0b85a97d-4816075e57emr8437144f8f.3.1786796568008;
        Sat, 15 Aug 2026 05:22:48 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B932600BF05B505F15B0ECC.dsl.pool.telekom.hu. [2001:4c4e:1b93:2600:bf05:b505:f15b:ecc])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4815f1fff25sm26930649f8f.3.2026.08.15.05.22.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Aug 2026 05:22:47 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
	Vinod Koul <vkoul@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Wang <frank.wang@rock-chips.com>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Yubing Zhang <yubing.zhang@rock-chips.com>,
	Alexey Charkov <alchark@flipper.net>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH v14 28/38] phy: core: add notifier infrastructure
Date: Sat, 15 Aug 2026 14:22:31 +0200
Message-ID: <20260815122239.65405-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260813-rockchip-usbdp-cleanup-v14-28-b5ad9c68fa11@collabora.com>
References: <20260813-rockchip-usbdp-cleanup-v14-0-b5ad9c68fa11@collabora.com> <20260813-rockchip-usbdp-cleanup-v14-28-b5ad9c68fa11@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260815_052250_055346_12227C59 
X-CRM114-Status: UNSURE (   4.50  )
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

Tested on Orange Pi 5 Plus (RK3588), 7.2.0-rc7 from rockchip-devel at
ea51774c5c42; details in my reply to the cover letter.

Tested-by: Igor Paunovic <royalnet026@gmail.com> # Orange Pi 5 Plus

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
