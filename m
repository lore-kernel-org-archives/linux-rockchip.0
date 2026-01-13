Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC6E0D2D100
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 20:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+yYrkkK2WcnMRn7MsResJki0OZz59u5B6aE5F2Q/NRU=; b=ZPy6ZMRuBwklcM
	4kwXQQeSYPEPq3um+G7aVFsPSjomn5rln2PdK0ACrgJgD/+8C2jCUP+xcRX1+SrN1j79cNOrpA3MI
	gz2X168po9mYUnI6MPqAcTXljnoadGWQfqSuOzbT8eSvU0bqV92a8BFCuAV3HyJ3GwplG0Ge/fAEj
	40EEvFgiaW+GRkaPX7/5uDHUtWEyE4vDlp85zas1ZSVp8xG8xIZLnrOqlvP6qKgt8psE3dOuQTAlT
	fS8RJ61iYdAnWc326wHZjOa+HYUjxHEN8QxSsnAngYXWMI9mRknZBeRTFNI18SrA4e8BKsfqKuxh+
	Rvtsv3DOZ7EQ0ajk1wRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfkYS-00000007eYs-24Yb;
	Tue, 13 Jan 2026 19:59:52 +0000
Received: from mail-ot1-x32b.google.com ([2607:f8b0:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfkYP-00000007eXc-2Wed
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Jan 2026 19:59:50 +0000
Received: by mail-ot1-x32b.google.com with SMTP id 46e09a7af769-7c7613db390so4854417a34.2
        for <linux-rockchip@lists.infradead.org>; Tue, 13 Jan 2026 11:59:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768334387; x=1768939187; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=H8g5bJc3pUYOOH+Mh3z0UWCzPpBzWdqcnl8TWmpkj5A=;
        b=etC04nbrjrnhC+glVPWSgBNCclbkBqFGyDYveU1vYJ3GwHDq9Q/aKxmsVtAGc2MC0z
         PiK8o917YLVgipne9zP1Eu0kgPYETBWqhrShlekc6zyN5su7cpS4ir46FdbbkpgfnrPU
         7MhIooaupo6ct/ePr6e+rux0EvfdRrzTcpb8En57tyml/xvdGldGy6BnjlLtRcjgSsp1
         x7aZxuXCdmT2YagpTaH+cXweRWuOk4xhFroqVy6ChKVSjfYGyPP19n/7U3T6Iyn5ZSkz
         Gj2ocUv/KkXjp2/kBDAYh9KV/eRecgRlzl+MoYhqV+3pnvplHhEa3BchTwochry0qaC3
         MHgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768334387; x=1768939187;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H8g5bJc3pUYOOH+Mh3z0UWCzPpBzWdqcnl8TWmpkj5A=;
        b=acoNjDxY0CiW/EiCVUF6KYdK7HDQY43glwOO8Qb5wb5JqnjrEw8mAQpTp6qJYvLy1q
         9OJEfucXjoNtIWCPtCGbxNEe0ROUSWGPdZA6lr+hexvk0Sew+e7oHqGM0rZFdshEzSjt
         r7dmJA0DgMqsna+Lpnd7muOeOAiwiBcW3ylIG1iJ+y1hee6XEAMVW+8y1iAGLfY9riPn
         VBRygOkB6gcNe/tBr8cmGp1ITZRFE9WPhgyKv5gUjqTajql21nozNnyPZKrdFbj086Vv
         lnYO0osiVWFfs3CTZPNQvGWltobOukz6Qu+oR45pDqYjd400ySdEvSgRom0h7OAAgqM6
         riVg==
X-Gm-Message-State: AOJu0YymRVO7zZE+4MqbYFMlmwruO+xO9hFizn4dRNByssVDBWiYi46Y
	+1purWkIi709xWyHOS2PAlBH4jiv4IC9XTq9aFrZb9vD8Mptt1/ZXgoCzyH14w==
X-Gm-Gg: AY/fxX7s+gKu7R0I8Zgqjmu19A0c5XMg1/YqD5Kxcp/Pqw1dqGK1TgjzqhRE0Djfttj
	pw4EHcyZ+PIH8hlE1skGIW0dwXxlDvX69TMIwCq1112LoX1fM+B5WGb+XfQfZeO4VXRReT7wS2j
	jOs3rwmpPqjMXqsj5fYsitPZOZuUssLJ3NMBTAaxH2VuSvYmE7LlMXtzgjoo+kzYpjoiUrtvxsG
	TI+tF/334pqWm/tt/d6ehOH8oaUJH2+jDCA4VWTmx+AM0e0mvJKdkUKOjRe1ovcT7od+Uqv/xD6
	jmnHJeny4GTJ2rUJYbiYVSPiEys9Gvj9jJ2uvYeMc/SyOMW5e2taQPepG4E3Z7SBLYSBMbaL1rS
	ogCQ7CG53KzK5O9/Z/SdkBYLU8IDacLxefO/0VWzkNgE2SbTQaNwyeS0DYnMgA9EI14to1oLjEX
	xlriAlY4Cj
X-Received: by 2002:a9d:6c18:0:b0:7c7:1c91:1258 with SMTP id 46e09a7af769-7cfc8b3a696mr126207a34.26.1768334386967;
        Tue, 13 Jan 2026 11:59:46 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7ce47801d4dsm16221119a34.5.2026.01.13.11.59.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 11:59:46 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	dmitry.torokhov@gmail.com,
	simona@ffwll.ch,
	airlied@gmail.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	jesszhan0024@gmail.com,
	neil.armstrong@linaro.org,
	jagan@edgeble.ai,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	aweinzerl13@yahoo.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/6] Add Anbernic RG-DS
Date: Tue, 13 Jan 2026 13:57:15 -0600
Message-ID: <20260113195721.151205-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_115949_649172_822BB24D 
X-CRM114-Status: UNSURE (   7.56  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Anbernic RG-DS. The Anbernic RG-DS is a dual-screen
handheld from Anbernic powered by the Rockchip RK3568 SoC. It has
dual DSI displays with touchscreens, multiple face buttons, and is in
a foldable clamshell form-factor.

https://anbernic.com/products/rgds

Chris Morgan (6):
  drm: panel: jd9365da: Use gpiod_set_value_cansleep()
  dt-bindings: display: panel: Add compatible for Anbernic RG-DS
  drm/panel: jd9365da: Support for Anbernic RG-DS Panel
  dt-bindings: arm: rockchip: Add Anbernic RG-DS
  dt-bindings: input: touchscreen: goodix: Add "panel" property
  arm64: dts: rockchip: Add Anbernic RG-DS

 .../devicetree/bindings/arm/rockchip.yaml     |    6 +
 .../display/panel/jadard,jd9365da-h3.yaml     |    2 +
 .../bindings/input/touchscreen/goodix.yaml    |    2 +
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../dts/rockchip/rk3568-anbernic-rg-ds.dts    | 1237 +++++++++++++++++
 .../gpu/drm/panel/panel-jadard-jd9365da-h3.c  |  281 +++-
 6 files changed, 1522 insertions(+), 7 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
