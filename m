Return-Path: <SRS0=p67a=ND=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A18EC4338F
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Aug 2021 09:49:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2731561038
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Aug 2021 09:49:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2731561038
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/+nqviEk8iaXVj3pH0xRIWgEdG3lst4yZW0nu+4wuT0=; b=k6FLG8QQ2CQARI
	TvNppK3Q7WanB31mV/MMysgqUF+aId2ZV80tTuboX28ts/ZLcNR3vephDHnMRf5gikzwearqo7RXG
	6PwcamaNey+tpLffAAcD/qzza/t0SgdzAtqHY6KbAWTzJ+eXQyTIBeyiqUZaGQNCATtjJDdsIOgxW
	XcqVxvhh6aE+vZ1B9MITijhZDIIgSAhaeKjFnZxXtlpagA/jBuV+9z8ZVnCyqSdxz6AapLL8K/3Va
	hW+JM+MVyIxQ7Yc/Pbzeb8bthF9KcETFQC80OfomwtP7/TkXZYpcnUitY4STcWFYuRQtIsKSvHjAT
	NEMXg3phN59KD63w55Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mE7LK-009XWd-VB; Thu, 12 Aug 2021 09:49:43 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mE7Jg-009WbO-4Z
 for linux-rockchip@lists.infradead.org; Thu, 12 Aug 2021 09:48:07 +0000
Received: by mail-pl1-x62c.google.com with SMTP id f3so6568966plg.3
 for <linux-rockchip@lists.infradead.org>; Thu, 12 Aug 2021 02:47:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WQt6omXqa2oMiTW4NtJHxtEf8KiSaWrelVyAUYsK0bE=;
 b=DCQ6/e3ESBmlVdY/Y4C4tfY7g3iWQ3QuvgjMWMSgr+m0vjeWvcbdfYkd04aEslLLlo
 sk548mxLczLt+EBDC75wn5YABFuHH5k6E863TYDAEz0CrJ+18xgpxCUnGS8faAGTIy1h
 oetMlmrBwYPw/5V/DFnPtlXyHOTtdWDuaX5MQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WQt6omXqa2oMiTW4NtJHxtEf8KiSaWrelVyAUYsK0bE=;
 b=VcYa9oAlYPhRTcwRXMPSoIK8dp4PoU3xVMxHvVHD0uUfYj5AfZPZLXch/wCrXCDPJ0
 gcug643vOdDTGaai0aVSBZ6fhNSYmxWE2ZZzU0Cv00dCrJWtnKW+x1+eWFjf9gtlYhC9
 rLu3tTM9+UQ0EAkSUyWxdCMRpekZQLfMnD21CT5VeD8GHtmcjo5KM5Vyu+0kwKOgFZ/v
 I2RXRCGlE6XlTaYb+3mSAWXCLUZu1jAkG++TKiaXEB4MJTg9hD/gD2d0bTQRzkBwqLJf
 ZWpqvfYovujZ6NbA0CiKM+N4KYtz8e1mavHUf0J4JMjkEBAQsXNMuMBdi+qlsA72JA9v
 XhIA==
X-Gm-Message-State: AOAM531yP2AVJUAZLP3XyqFIY1DHg43js7PgCg660KE6lpJu6ZnR8eIO
 hndottYvo4J9+hylwJpfVkedsA==
X-Google-Smtp-Source: ABdhPJwLjPIA/C80CXiFfNeei/Oz9PgE+tkr6Gb7fPvYHFHZY7lYKXLplkn4Z8Kpjr8xni3u0v9zgQ==
X-Received: by 2002:a17:90a:4894:: with SMTP id
 b20mr3583040pjh.13.1628761678473; 
 Thu, 12 Aug 2021 02:47:58 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com
 ([2401:fa00:1:10:8e0d:8032:9364:612c])
 by smtp.gmail.com with ESMTPSA id z15sm2991052pgc.13.2021.08.12.02.47.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Aug 2021 02:47:58 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Chen-Yu Tsai <wenst@chromium.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] arm64: dts: rockchip: Add Scarlet Dumo Variant
Date: Thu, 12 Aug 2021 17:47:51 +0800
Message-Id: <20210812094753.2359087-1-wenst@chromium.org>
X-Mailer: git-send-email 2.32.0.605.g8dce9f2422-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210812_024800_196593_106822BB 
X-CRM114-Status: GOOD (  11.92  )
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

Hi,

A variant of the Chrome OS Gru-Scarlet device is missing in upstream.
This variant, dumo, is the same as the Innolux display panel variant,
but requires a specific calibration variant for its WiFi module.

I'm not sure if it's better to inherit from gru-scarlet-innolux. I kept
them separate from now, like in downstream ChromeOS kernel v4.4.

The series is based on linux-next-20210812. Please have a look.


Regards
ChenYu


Chen-Yu Tsai (2):
  dt-bindings: arm: rockchip: Add gru-scarlet-dumo board
  arm64: dts: rockchip: rk3399: Add gru-scarlet-dumo board

 .../devicetree/bindings/arm/rockchip.yaml     | 28 +++++++++++++
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../dts/rockchip/rk3399-gru-scarlet-dumo.dts  | 41 +++++++++++++++++++
 3 files changed, 70 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-dumo.dts

-- 
2.32.0.605.g8dce9f2422-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
