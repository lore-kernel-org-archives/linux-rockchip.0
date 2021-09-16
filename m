Return-Path: <SRS0=2I9J=OG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F5D5C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Sep 2021 19:42:23 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 27B7061248
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Sep 2021 19:42:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 27B7061248
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eRSZtg5N//TlQxxS8j4scRZB6rwXQo4MYU8FH8EAgog=; b=elcN4+1e3GTN92
	sjDfoOtit7AoRMyd/Hzb2n2MF1l79/ZxCe3PwcCB5UOi58KN2Xkh144JTVBjxVSjHAs8BbVQ1M/X1
	XbAow9hMfERrDF6eRW6mXW7Z8e/jCkRGcVTvaVukbRXdNqmUGcDVgDL2tUgTozzWyfAZCZfT7g4N1
	AFyoEqiR5+UpxXCFoxGvNpb0aE/x5qnnXIy3q+HCXacXJ9tg6r4K5YIYm+mGg7scj4EZnFliLqI22
	roiSPFKTHoSWQqr5bAdnv8AOpIlUeIo+jvDAXQcbnY89kXC6g0dQJG5pYlsW1ppuUQ1EniLCLK9jv
	k2BgfRxobAkTG02wiMSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQxH1-00CGuZ-5O; Thu, 16 Sep 2021 19:42:19 +0000
Received: from mail-oi1-x234.google.com ([2607:f8b0:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQxGx-00CGso-Se
 for linux-rockchip@lists.infradead.org; Thu, 16 Sep 2021 19:42:17 +0000
Received: by mail-oi1-x234.google.com with SMTP id o66so7912712oib.11
 for <linux-rockchip@lists.infradead.org>; Thu, 16 Sep 2021 12:42:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=S7nWRCZmwjD+iwvzS4vZhsQdwavMwcQaNBQdnSbFlKY=;
 b=aq65laZEGaBneTeUAWeK0cRoJPs0aDXNFaqH9ALmB2M8PE0PG1LXTkb6YJ1Or6F9v6
 Zk8bWregqLPA9FTfO8PCbzy70/MnjEK8Y+Fn5qfqOfLzooP3l6NXDlHGSN+gy9vAQkEE
 X2LVnBIYv+FQ6VulRW/swQUSPLtn3e9u3CEoPfxD5xyoQOWjD2OgtpeJ6lxZT1HaTKXY
 sAvtyO/TgGjgxujfgVXSXexcWvxDZ4FK8F33W3FLxGfCtJx4b/s7YACqApptgjlx+Wxg
 V0epJG695HpLElIkfH0EhIEj1yJXqaSQ3LtZgDZkUhi+fIDFeLggAP0iC9/r5rnX+b4E
 pBjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=S7nWRCZmwjD+iwvzS4vZhsQdwavMwcQaNBQdnSbFlKY=;
 b=sJLgOj3EvEIltkPCKX6xFnjAVsiAGkQTSHjop28fqYGpIIEeGiCW4OpnS8t8KDE8Ya
 VT1gtP9PsPVGEFt157k7MOQ7gq6QGmSECAUhZTkVoqL+Hsh+Obors6GL8F584n6kiv/6
 gMrScKNKTOTZxDGNpY5XDYkXxKFxmZfKCSE7al8H3iHzEtqDm6jfE9t9XqOzB/sx76hR
 8AH6VJNJZB1d9pwwT11g7IlNLgo38KPHZrYTzpC+kSC8JJLTudGBKvbtf6UBvwjvZsSg
 3sf3ogFPhnublQlZEfqZ6u1wwDSUDnxc5Hio1DQgLmClc3Na2yYO5mrpFci3dRaQ7rXP
 RwgA==
X-Gm-Message-State: AOAM5323yxqZpcZyVr3hAsfdhczWTk7Q4otbwp+sKn/A9Lq6ioH8kQ57
 6A8+32cLW86cA4RiKe50tIYoxtt2TiY=
X-Google-Smtp-Source: ABdhPJwm5s/uqFNpTdZIvJyXMFkPPjyG0uo/lKViHNAMfiQiuNeY79omrgLK6DLyUtu1D7Dn6/2glQ==
X-Received: by 2002:a05:6808:8e3:: with SMTP id
 d3mr1194590oic.92.1631821334367; 
 Thu, 16 Sep 2021 12:42:14 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id c10sm963359ooi.11.2021.09.16.12.42.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Sep 2021 12:42:13 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: lee.jones@linaro.org, robh+dt@kernel.org, heiko@sntech.de, sre@kernel.org,
 maccraft123mc@gmail.com, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v4 RESEND 1/4] dt-bindings: Add Rockchip rk817 battery charger
 support
Date: Thu, 16 Sep 2021 14:42:05 -0500
Message-Id: <20210916194208.10387-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210916194208.10387-1-macroalpha82@gmail.com>
References: <20210916194208.10387-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210916_124215_972406_91C8903D 
X-CRM114-Status: GOOD (  14.48  )
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

Create dt-binding documentation to document rk817 battery and charger
usage. New device-tree properties have been added.

- rockchip,resistor-sense-micro-ohms: The value in microohms of the
                                      sample resistor.
- rockchip,sleep-enter-current-microamp: The value in microamps of the
                                         sleep enter current.
- rockchip,sleep-filter-current: The value in microamps of the sleep
                                 filter current.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
---
 .../devicetree/bindings/mfd/rk808.txt         | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/rk808.txt b/Documentation/devicetree/bindings/mfd/rk808.txt
index 23a17a6663ec..6e1b9fb1f64a 100644
--- a/Documentation/devicetree/bindings/mfd/rk808.txt
+++ b/Documentation/devicetree/bindings/mfd/rk808.txt
@@ -77,6 +77,37 @@ Optional RK817 properties:
 - rockchip,mic-in-differential: Telling if the microphone uses differential
 				mode. Should be under the codec child node.
 
+- battery:	The child node for the charger to hold additional properties.
+		If a battery is not in use, this node can be omitted. If a
+		battery node is used, the following values are required in the
+		battery node itself:
+		rockchip,resistor-sense-micro-ohms,
+		rockchip,sleep-enter-current-microamp,
+		rockchip,sleep-filter-current-microamp,
+		Additionally, a phandle to a monitored-battery node that
+		contains the following is also required:
+		charge-full-design-microamp-hours,
+		charge-term-current-microamp,
+		constant-charge-current-max-microamp,
+		constant-charge-voltage-max-microvolt,
+		voltage-max-design-microvolt,
+		voltage-min-design-microvolt,
+		and a valid ocv-capacity table.
+- rockchip,resistor-sense-micro-ohms: Value in microohms of the battery sense
+				      resistor. The PMIC only supports values
+				      of either 10000 or 20000. This value is
+				      used by the driver to set the correct
+				      divisor value to translate ADC readings
+				      into the proper units of measure.
+- rockchip,sleep-enter-current-microamp: Value in microamps of the sleep enter
+					 current for the charger. Value is used
+					 by the driver to calibrate the relax
+					 threshold.
+- rockchip,sleep-filter-current-microamp: Value in microamps of the sleep
+					  filter current for the charger.
+					  Value is used by the driver to derive
+					  the sleep sample current.
+
 Optional RK818 properties:
 - vcc1-supply:  The input supply for DCDC_REG1
 - vcc2-supply:  The input supply for DCDC_REG2
@@ -459,6 +490,13 @@ Example:
 			};
 		};
 
+		rk817_battery: battery {
+			monitored-battery = <&battery_cell>;
+			rockchip,resistor-sense-micro-ohms = <10000>;
+			rockchip,sleep-enter-current-microamp = <300000>;
+			rockchip,sleep-filter-current-microamp = <100000>;
+		};
+
 		rk817_codec: codec {
 			rockchip,mic-in-differential;
 		};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
