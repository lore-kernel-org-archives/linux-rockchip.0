Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 185B4C79F82
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Sep 2026 13:09:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=exl9yC/4HqJZR1kEae3zfjui59zpNTrQVJo0/xOUEXw=; b=0odWP4zdlOtnmw
	My0je9J8vVyLiWWeAAUAYH9ydkDXTfRNqRKb034F0yW/dS/DO9TAkTAJ6EnaX1EGl0Zu37po3uske
	XBAqpPKUOg3PSrbAP3rJoyHOXzdRkdVr+4YUnpqjo974rfnT5VejTDojFYWsOqLBeLMH1liuDqhOk
	qgszFN+2lja+7UGXX3zIdTEvruf34xqK8qz0bLcylLZaILm+77wB94nGQVwW1AM4y92fiy3031v1Y
	uQa97aakqCYCSVpQnIcJ/Pm9X/XszIJcuBF5dQv6JrOjLyCciRoHdsNLV/SvGA3mh4CHwwmESqrNp
	nimuWtrKBKljpg3+dC3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2Tfo-000000026n3-3kqO;
	Fri, 04 Sep 2026 13:09:40 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2Tfj-000000026fu-2IMh
	for linux-rockchip@lists.infradead.org;
	Fri, 04 Sep 2026 13:09:37 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4956d1d9fb2so929975e9.0
        for <linux-rockchip@lists.infradead.org>; Fri, 04 Sep 2026 06:09:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788527374; x=1789132174; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=G+f52AKxDAlw/HpKk7FcOocDLK6B8oOeUPjxL8dkr0A=;
        b=ScZ7NehGjpUAHewUN+qAQGQq0WRa80p8/ly9y8b0HjvwjYZEx0DmKPR7FdV/thbpc+
         9fYEeHDd8CxIp7OOw+9wzU+UivdN5HLYsXni09Vg5q6Zd2kTkxRyftmIijXaU7x+rWit
         /UvuonnFUjUxJaULqy5yd86zFfjqWDe/Vq2vrhlFT2FOAcL0SGwzueib/B7pAGO++uHE
         9k5ZCo/s9GVklaf3NAWKH96PVqjWx98BRE9MmFT9smUivflsop/CKkuzphRf/FMhcNN9
         ATQrGoP1FI1+Cw4Tx7KfQFt3usbdgM9pkm3RpVLTpQ1BMWE9vlND9LIG57YY4laMSj9+
         Rbxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788527374; x=1789132174;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=G+f52AKxDAlw/HpKk7FcOocDLK6B8oOeUPjxL8dkr0A=;
        b=D3xMRSD+Ibpq+Cya4y3kbFTCLScTNg+GH3/nVvlH1AiynYhMsCaD6+gTTAOQFgaCz0
         4sX6TvCo7x9595WJqK5rkl49ObFpDqJL3N9IbZxu5c45HFaHmVA+UlS3JlWZfV0Op8dp
         meH4IZxGDnlDBtKto9aUAtNOUkTbixwsT08BEOv9FRQFkP9TF6Z2uPQkaUfyKBYYsA/O
         NMulahKwGd56rT25FGfKy1iDsEe8hsPb7XodqntoHyYJCpJrp/h7+Xhz/PIpKegz9C9F
         2SO5F3uGAw6eLZc2wmJYWG6dDqnszhH4DZgiMF6gHWxozRRJgPcy8t+6Dm2pm/5r0H3T
         ddiQ==
X-Forwarded-Encrypted: i=1; AKwUvBwrLpdiRTg7YkpKHeySb9wKepF9vkRwe7UpsVs1Ch8llD5JK0V0zsAdYAMVuW5DM19d5q+91XnF6OF4WDK8CQ==@lists.infradead.org
X-Gm-Message-State: AFuF++mGn2emdYk8TLO1V39O2sQpIJhGEK/Mvbn6sXOvibC6S1frbVka
	wqczuBvoJjDTs4IEjacB5mKdsdStZc4m1Fg2InlPIvajo9ZW/freBZdmTdYWxA==
X-Gm-Gg: AYBFou2N+wjMGqbto4aDul8/iW4mKbCikgWZDh2Zdxq9OarDK4NJZ8GvSW6SmvV2U5R
	m60YOuWjWuN/qO4yeARhA3iODWmWpDD0iI02FE7eAJCM5dYJbDDGxj5CG/AexFNE0vl1w3lbrii
	EFwiQRp+vBuwB4aoYhXijtVwX59aqyfaEiaySReFtUVNGItmGJyA9pItASFt5uIsH9+XMdqEwvc
	RKX4ZJO9J+x1nebRs0yDC2GEac7de7enXFmTxIL1nlxbUZyrWUlrMOhWtregM3IIc0eDiXJPO4A
	XKYMtjLn2UZ/+XwAbzmk9atJqfKYd41+/ORYFqcHa9MwH6Or53DGD++/HXzLHEhmatg49xIegiU
	jLwppCq4I7vVhlhYXnxc7OLfU8S0YXK7tyxjbsB/v9vcg06XIwW5PeccAoc95M5k66CRcLly7v+
	+Yc79qxP9HXa/1frV6JjH4+lNw2ygTgwCYovVggZiMy7O6KghQOcj4JVKYqkcQWCRwtcr5lhmsv
	p+aV0BuCMbw1o1NG+mgsh3FlcOgjtwmADou2lI/oH3Rh9NFzCXwvglAjgXzYPN/UlEKct8+hQks
	5f5r
X-Received: by 2002:a05:600c:a40e:b0:49c:f9b8:bae0 with SMTP id 5b1f17b1804b1-49cf9b8baffmr34000785e9.2.1788527373810;
        Fri, 04 Sep 2026 06:09:33 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B871500CB6EF488A18F9C42.dsl.pool.telekom.hu. [2001:4c4e:1b87:1500:cb6e:f488:a18f:9c42])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49ce554d52esm135575435e9.3.2026.09.04.06.09.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Sep 2026 06:09:33 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Oded Gabbay <ogabbay@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sidong Yang <sidong.yang@furiosa.ai>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	Nicolas Dufresne <nicolas@ndufresne.ca>,
	Jonas Karlman <jonas@kwiboo.se>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Igor Paunovic <royalnet026@gmail.com>
Subject: [PATCH 6/7] accel/rocket: register a devfreq cooling device
Date: Fri,  4 Sep 2026 15:08:57 +0200
Message-ID: <20260904130858.27803-7-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260904130858.27803-1-royalnet026@gmail.com>
References: <20260904130858.27803-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_060935_865882_F85C324B 
X-CRM114-Status: GOOD (  18.25  )
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

With devfreq driving the NPU clock, a thermal zone can now throttle the NPU
by capping that clock. Register the cooling device so a devicetree can bind
it to a zone.

The _em variant is used, not because there is an energy model today but so
that there will be one the day a power coefficient for this NPU is
measured. There is none now: the NPU node carries no
dynamic-power-coefficient, Rockchip does not publish one, and a made-up
number would be worse than no number. devfreq_cooling_em_register() logs
the missing model at debug level and registers the cooling device anyway,
so what this gets today is step-wise throttling with no power model for the
IPA governor to use. Measuring the coefficient is follow-up work.

Registration is allowed to fail. A kernel built without DEVFREQ_THERMAL
gets a stub that returns an error, and losing throttling is not a reason to
refuse to drive the NPU at all, so the failure is logged and probe carries
on. The cooling device is unregistered by hand before the devfreq device it
is attached to goes away.

Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
Assisted-by: LLM sparse checkpatch
---
 drivers/accel/rocket/rocket_devfreq.c | 24 ++++++++++++++++++++++++
 drivers/accel/rocket/rocket_devfreq.h |  2 ++
 2 files changed, 26 insertions(+)

diff --git a/drivers/accel/rocket/rocket_devfreq.c b/drivers/accel/rocket/rocket_devfreq.c
index 9d923a0b6ea30..86bc34819a187 100644
--- a/drivers/accel/rocket/rocket_devfreq.c
+++ b/drivers/accel/rocket/rocket_devfreq.c
@@ -3,6 +3,7 @@
 
 #include <linux/clk.h>
 #include <linux/devfreq.h>
+#include <linux/devfreq_cooling.h>
 #include <linux/ktime.h>
 #include <linux/minmax.h>
 #include <linux/of.h>
@@ -404,6 +405,24 @@ int rocket_devfreq_init(struct rocket_device *rdev)
 		goto err_remove_table;
 	}
 
+	/*
+	 * Thermal throttling is optional, so a kernel built without
+	 * DEVFREQ_THERMAL keeps a working NPU rather than a failed probe.
+	 *
+	 * The _em variant is used so that the driver is ready for an energy
+	 * model the day a power coefficient for this NPU is measured. There is
+	 * none today: the NPU node has no dynamic-power-coefficient, the vendor
+	 * does not publish one, and inventing a number would be worse than
+	 * having none. Without it the EM registration inside is skipped and
+	 * throttling is step-wise, with no power model for IPA to use.
+	 */
+	rdevfreq->cooling = devfreq_cooling_em_register(rdevfreq->devfreq, NULL);
+	if (IS_ERR(rdevfreq->cooling)) {
+		dev_info(dev, "no devfreq cooling device (%pe), NPU will not be throttled\n",
+			 rdevfreq->cooling);
+		rdevfreq->cooling = NULL;
+	}
+
 	return 0;
 
 err_remove_table:
@@ -426,6 +445,11 @@ void rocket_devfreq_fini(struct rocket_device *rdev)
 
 	dev = rdevfreq->owner->dev;
 
+	if (rdevfreq->cooling) {
+		devfreq_cooling_unregister(rdevfreq->cooling);
+		rdevfreq->cooling = NULL;
+	}
+
 	devfreq_remove_device(rdevfreq->devfreq);
 	rdevfreq->devfreq = NULL;
 
diff --git a/drivers/accel/rocket/rocket_devfreq.h b/drivers/accel/rocket/rocket_devfreq.h
index bdf8e89ed3761..d5876d62a0b7c 100644
--- a/drivers/accel/rocket/rocket_devfreq.h
+++ b/drivers/accel/rocket/rocket_devfreq.h
@@ -10,9 +10,11 @@
 
 struct rocket_core;
 struct rocket_device;
+struct thermal_cooling_device;
 
 struct rocket_devfreq {
 	struct devfreq *devfreq;
+	struct thermal_cooling_device *cooling;
 	struct devfreq_simple_ondemand_data gov_data;
 
 	/*
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
