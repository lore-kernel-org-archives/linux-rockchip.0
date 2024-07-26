Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98A3EC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jul 2024 19:52:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HAvhAMGeliUfxvCcijFnvHKWnvoQ/iIJahsZfYTl56M=; b=wyQG0djz9LlknU
	3EDVu3n6/TJ8gsFti3FaQ9JJH5vwR42efv/Lsmk3D7ycSazBShVY/3xXIQxT3KxxS/qJhT4zdYjVk
	dwdbQrMVL974Qj3LkMTnVJKmA1ls7wq/F55+AyAZLiGdWy/GHY2cFvWrqzDzOm34w6f0H2mT7Scx/
	A/es1Mo2MUdlG8lzbv9yoaYB66y3hjAXQ6WbHFzAkEg9GdgyZ24ykGgza+BecgdmewryuzrGDdQXB
	sM7OpRlladGnffTN4Az1dgBNr8g1xmfHAwkwhmlpgLoSI0rhFgKwSF3PKah/sAwnzRyicb8JeXlM3
	TD4UokXV8raDvWTxQB5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXQzK-00000004pEC-1GUi;
	Fri, 26 Jul 2024 19:52:26 +0000
Received: from mail-ot1-x32b.google.com ([2607:f8b0:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXQzD-00000004pAr-3Us8
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jul 2024 19:52:21 +0000
Received: by mail-ot1-x32b.google.com with SMTP id 46e09a7af769-709340bd54dso675318a34.1
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Jul 2024 12:52:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722023538; x=1722628338; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U65j//PVGPMnXq7lvPNajRb5WEczobVRzKngFXWVkqo=;
        b=NXcKZ8edrCSOmLkw8V0kOqBG26YAgrCnY5+PPC/IVwcrjlmZqv7QaL9+fEfHlFNpK6
         TAt5a18JjkJWAapPUF5vYgwXqFb+BzWrsp3nugtsAi8iUJWYA8sbSaUyl4z7A2wQVAL8
         D9WpSbtz/nYwuwqMBc+4FJyzq3FHkgs0DKHiB3OG/c86tcspe+9dsYrggAPBqBaV69xz
         Wa8V2kp59FkGBCEaDCIeUxr8TkhYscCLND3az/Qb/aQdbsRHmbFkzXzAm7bLeZz84TQd
         kvoLlvBmYJzcX+zvf22ayElUC+95UxrqgYgC7j3AFy1xHLhEYDbMyCubZlYqdv2ZshGi
         bsTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722023538; x=1722628338;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U65j//PVGPMnXq7lvPNajRb5WEczobVRzKngFXWVkqo=;
        b=cx06vZSuUJVCm3/cGupQKkUJumNskrg9xsMgMre0n05LrluL5dm4hffW0TCwF0/yub
         YixLCqdhM0C/QPUlm/7RwCVfe4AIzXzt/xd6YF4ze/cKImEBUgKcFLi3dkZx6eCwMhKR
         FRcHhoO9nkzwnu60uCce5AVH9gnDaApp+CRqC85N4Kf0HCYvwnWh3t+SirMBi26wC5Nx
         mamUGQNsueqRPCtybFOFFycHuGp6y+TJL0O5pWZvAICz6OP2I7dWjvd/Y9vWwekMXkmt
         Pk6o5IZPP7v3aG6QkrCtW1MWGMkdB/K1YEmzvs0AD5ulOFIEXV7emxK0XsJRRLKEpcVB
         MfIg==
X-Gm-Message-State: AOJu0YzeP1suSplySxZycaxtwsNSU+kWSSWBFXJ1ub23xrpBRrsksFSd
	RMkpgXA3zqIe1W2KxjDrjD5UUfd/ML1/dOzNyEfTI+KFd6B/KTr3KStpuw==
X-Google-Smtp-Source: AGHT+IGqDKOZrQG0lnORBUuq0nhr1WbgwJ0MZK5eJDcDyNunTGSy0TUpdkpY3iH5A8Zl9p/Gr/nj+A==
X-Received: by 2002:a05:6830:6817:b0:703:6cde:1cb9 with SMTP id 46e09a7af769-70940c93075mr242842a34.13.1722023538443;
        Fri, 26 Jul 2024 12:52:18 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:c1f3:7caa:bc8b:ab10])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-70930778069sm889972a34.59.2024.07.26.12.52.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jul 2024 12:52:18 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	jagan@edgeble.ai,
	andyshrk@163.com,
	jonas@kwiboo.se,
	sre@kernel.org,
	t.schramm@manjaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/5] power: supply: cw2015: Add support for dual-cell configurations
Date: Fri, 26 Jul 2024 14:49:45 -0500
Message-Id: <20240726194948.109326-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240726194948.109326-1-macroalpha82@gmail.com>
References: <20240726194948.109326-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240726_125219_902883_246656C5 
X-CRM114-Status: GOOD (  11.14  )
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

From: Chris Morgan <macromorgan@hotmail.com>

The Cellwise cw2015 datasheet reports that it can handle two cells
in a series configuration. Allow a device tree parameter to note
this condition so that the driver reports the correct voltage values
to userspace.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/power/supply/cw2015_battery.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/power/supply/cw2015_battery.c b/drivers/power/supply/cw2015_battery.c
index f63c3c410451..b23a6d4fa4fa 100644
--- a/drivers/power/supply/cw2015_battery.c
+++ b/drivers/power/supply/cw2015_battery.c
@@ -77,6 +77,8 @@ struct cw_battery {
 	u32 poll_interval_ms;
 	u8 alert_level;
 
+	bool dual_cell;
+
 	unsigned int read_errors;
 	unsigned int charge_stuck_cnt;
 };
@@ -325,6 +327,9 @@ static int cw_get_voltage(struct cw_battery *cw_bat)
 	 */
 	voltage_mv = avg * 312 / 1024;
 
+	if (cw_bat->dual_cell)
+		voltage_mv *= 2;
+
 	dev_dbg(cw_bat->dev, "Read voltage: %d mV, raw=0x%04x\n",
 		voltage_mv, reg_val);
 	return voltage_mv;
@@ -587,6 +592,8 @@ static int cw2015_parse_properties(struct cw_battery *cw_bat)
 			return ret;
 	}
 
+	cw_bat->dual_cell = device_property_read_bool(dev, "cellwise,dual-cell");
+
 	ret = device_property_read_u32(dev, "cellwise,monitor-interval-ms",
 				       &cw_bat->poll_interval_ms);
 	if (ret) {
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
