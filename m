Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 199C1C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Apr 2022 19:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7oLDbhvnf5SSH4LhKyPtJnrgMqXQ+rbMJ0rd04bjulA=; b=v4ZUXz12GZ4fvF
	WYOItnLXOUEiFW5Z/5uJ2vN1U+4fWYYiwEU+DG1j2z6fJSkekLv+iQOhDkzwAxk7QgpSWdB9AK39Z
	mfTdXcDb9Cohf4MAOB5by1IazeyDCQOXIwh+R8cf6KJtbpx+G191kZEmYluCQklQzyk/zDyIIuIyi
	W+YhcwM8+br2XO/IBTU3wArSYcziTFYiPpXQ8HTKamZWb+ZNeGFGeQ51/OwBodxw+I9QVySZseN28
	ubkFJfzlCqNJmPpVRe9DAXooI4ycJ2iouFl8qCi5D4sML/ROuzOphlI3pxKuz25L3CW8clnhIj14s
	wCduPSlEJkkdI28lGjiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neiV4-002NEB-FR; Wed, 13 Apr 2022 19:17:58 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neiL7-002I8a-0S
 for linux-rockchip@lists.infradead.org; Wed, 13 Apr 2022 19:07:45 +0000
Received: by mail-wr1-x42d.google.com with SMTP id i20so3951560wrb.13
 for <linux-rockchip@lists.infradead.org>; Wed, 13 Apr 2022 12:07:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/EUIIfE60m4fjWffrZnRhJkHwQAH6pvzsFNjcyOjc+M=;
 b=OhXrjpQ7TkqgTzvU861G+Pk5dZhNtBHUkuXDGbH/m5gtuoYcPwFTR4OwwwHQTCSKnD
 rPUg/K6BusXVCrYS2aYITzkfnsnby/5ACm8IjqxOvp+N/WtQlZzLgtr+ERFpOuZAy7j6
 JTmNcjTrMIlelYCRL7+TiZ2qyNnWRVxPjoPu27CGJfbpn6TgSTYAsv3coIediTDo62Y9
 qxRqoonC/Mrw0nd2Oj6/4ZvTPgKdn+XVoXOkqZbWuvyANRDY9ph8dUjF0mAYCTL59Soi
 oa2+pkJhoxKe9lPo9VOtwZCvEs4niAxAe6+tepMftrJO6m2TmL995WBhKtSdLTumifXf
 0ojA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/EUIIfE60m4fjWffrZnRhJkHwQAH6pvzsFNjcyOjc+M=;
 b=et1aRYAG1TxJylUgC/EirTYTRUOdPmSs7A3Po8T/R43/CqG4QeUtETE8BflQa5Gzgd
 HaWqk856YJs+N2bZzf7/G8aVm4K9D1yhAI+y4prjGXU8jQvHcfRQxaljS7Wh093se0NN
 9Dnoo5YyIwbOm0LtrprEXRgn/VzjjuDfY6/DWgCx+N5cznlQA//SFD11kXmFA+ppQVw+
 qSioIW8zKeZ+xUL34G6noNwY8NVB2ZpK0/bSbcGryfu5wE+jOMT+dZPJ6ZH9bGWzJu41
 cVVzygEDlv6Kc6rGvmmdndchQV3JD8Ux6tl/3kVDAPC5F25VTHShgZb9dWblQIxHQ0Pw
 hOVQ==
X-Gm-Message-State: AOAM533U3WYP/wR6UdBXhigRFQdqFjt3x/jmIPH69pwDpuElZ2UwLqiG
 gMssrLSRYWJOJ/BCGQIy5WBtIg==
X-Google-Smtp-Source: ABdhPJyd7sC1T0PJCNTlLw2E2XQeYDeV+5s9CziMq9ZGLP70JZ+RghahoRyCVXcIK5APO0x4BRk/MQ==
X-Received: by 2002:a5d:558e:0:b0:206:f7e:4634 with SMTP id
 i14-20020a5d558e000000b002060f7e4634mr242269wrv.662.1649876858616; 
 Wed, 13 Apr 2022 12:07:38 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 o29-20020a05600c511d00b0038e3532b23csm3551852wms.15.2022.04.13.12.07.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 12:07:38 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v5 16/33] crypto: rockchip: add myself as maintainer
Date: Wed, 13 Apr 2022 19:06:56 +0000
Message-Id: <20220413190713.1427956-17-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220413190713.1427956-1-clabbe@baylibre.com>
References: <20220413190713.1427956-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_120741_136012_54222FB4 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
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

Nobody is set as maintainer of rockchip crypto, I propose to do it as I
have already reworked lot of this code.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 MAINTAINERS | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 1699bb7cc867..4df40a40bcdf 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -16966,6 +16966,13 @@ F:	Documentation/ABI/*/sysfs-driver-hid-roccat*
 F:	drivers/hid/hid-roccat*
 F:	include/linux/hid-roccat*
 
+ROCKCHIP CRYPTO DRIVERS
+M:	Corentin Labbe <clabbe@baylibre.com>
+L:	linux-crypto@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
+F:	drivers/crypto/rockchip/
+
 ROCKCHIP I2S TDM DRIVER
 M:	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
 L:	linux-rockchip@lists.infradead.org
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
