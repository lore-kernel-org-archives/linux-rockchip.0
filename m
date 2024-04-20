Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02536C071FD
	for <linux-rockchip@archiver.kernel.org>; Sat, 20 Apr 2024 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=j6yMg0d0M2+8YoDRbtUmS8JYd+z/T4gyztDZ7bYIwSI=; b=WukEYzExrLByry
	9Ak/fI7rCfRL/BaKCJiwyp5kruswj0mmtlYt+G0RjjFoGgYe5nZ6OMmnM9d1BiNVZKt7KZ1bsDIiW
	iuwANIKYhmKkTiLqWzahkIWoCSSL7Ofj+9NOgRoSzcO0qzNzIfqS5oGeLBbJUzHgk3VTeyFbVCALd
	clJHAAoJG7a7X1+Hxu3gIf91IkUr8580PDOqtNJ+snnoDZ4BTvprp9fZsCPh/R+7nFvB4dzk6uYGO
	x9f8X6VNDURnJlLVOwr0qIIcUGvEjMMpOOP1LweLsJV4MkGXvWEzPRR/3V5t1nd7/Qzydx/uoKmSK
	XPUGtm6o4OyOXtCp6GFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ry1eb-00000007iII-2A4u;
	Sat, 20 Apr 2024 03:44:41 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ry1eW-00000007iGv-3qYN;
	Sat, 20 Apr 2024 03:44:38 +0000
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-6eff2be3b33so2598583b3a.2;
        Fri, 19 Apr 2024 20:44:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713584672; x=1714189472; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CXpX/g/hvBkXQRFrKFV+1cv3bBK+UaH54WwHfuszeFc=;
        b=dnC7isMGIDVTdBydhZpVtT3sIFjbJcGSVf+3wqkqA0piSmUAFdj/k1Kle3Q8KvG5ab
         R1urrt1zXt3wsjawFetDtD2blvEDu96Pmdgn4nHZbX7AP8uchAEynhy0dB7x7SgN8bnA
         +EotGZ5Zd+GKRVnDgTkXfCxc39oebxwY3jWom2HN4tSsPBe8OTVHAovRcvmF6rKdK9VD
         oB6q1I7l/1xrIsdv0foGpvkKiXsZ/S5w7agnCU/JnqPRCakPRxAh2gFAhkR18kwLVz39
         ckVQeDR+kVtgMsz1EOiyrUjzKphkUFE3s+SyK0IftKmohR6Jb2i/JL2a/EJrieW+otLE
         6RgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713584672; x=1714189472;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CXpX/g/hvBkXQRFrKFV+1cv3bBK+UaH54WwHfuszeFc=;
        b=quMTRuYxXoBKJ0ZB2VAvCnHJuIt+c4WD/3ihV2Ea8wh6YOaJ/hBUspReZDo1RsDKiR
         zLe6YRAKoRnzWLahQAx2otYal9e1thySOtcALV2+Wp/Afeelti0qOAkwk6c/RqtE6wya
         602LlvGO14fKEamia+iRNAxMIhWb77zz2JqbAbVx54iwb5ZsKBvUj55UuWByIyNOnzFy
         4662n7ncvaOoT7FoAiIKjrrntDBBWx9vFO7l9ebMYidzGnbaj897X7yHieJWElmgEc99
         793odx0oA3keK1m2d2qGFSt80YyM9m9SYOVBL0rYgwlB79TRNPWss1lNOnRoRo6fpfld
         1cMA==
X-Forwarded-Encrypted: i=1; AJvYcCWJtBzgBD02tWQE0SJljQsPg37aphsw67dBHQRHr2vgiAHpTVVxMVL5zsssSYibJ6FSekdo2mQjGw7BPdOvAtrcmGHvhlQvg5jFnBqkFgkocgVeFD7acI4Qa8lXtkuc3y21TMCtXwqVG+IpIgg2+Ss6+h8lAs1A2BQ=
X-Gm-Message-State: AOJu0YzcGlLyOC2uhSfYC2XvnwK3K/DcLiUMYBn4Iq7qjCtxow3y6KmI
	zT6ktLLzDj0FpGWrGAppppPqAL5k/W9dTu4MZD9rk07dPzsmOA/O
X-Google-Smtp-Source: AGHT+IHwdx/ijPvHS/ZWZzR2ZCzkPZP/eqQXUMbJcDIyn5nMaDUKKwY5Jd+0Qfvm0+77oiC8+5VWKg==
X-Received: by 2002:a05:6a00:92a7:b0:6ed:4a95:e3ce with SMTP id jw39-20020a056a0092a700b006ed4a95e3cemr5355445pfb.13.1713584671663;
        Fri, 19 Apr 2024 20:44:31 -0700 (PDT)
Received: from localhost.localdomain ([221.220.135.251])
        by smtp.gmail.com with ESMTPSA id b9-20020a056a00114900b006eaaaf5e0a8sm4005633pfm.71.2024.04.19.20.44.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Apr 2024 20:44:31 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	liujianfeng1994@gmail.com,
	sfr@canb.auug.org.au,
	weizhao.ouyang@arm.com
Subject: [PATCH v5 0/3] Add ArmSom Sige7 board
Date: Sat, 20 Apr 2024 11:42:57 +0800
Message-Id: <20240420034300.176920-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240419_204436_983770_D53A18ED 
X-CRM114-Status: UNSURE (   9.69  )
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

Changes in v5:
 - Rebase to next-20240419.
 - Add missing commit tags.
 - dts: armsom-sige7's led-0 is green, not blue, change "led_blue" to
   "led_green", "led_rgb_b" to "led_rgb_g". And Weizhao's reveiwed
   tag to devicetree is removed.
 - Link to v4: https://lore.kernel.org/all/20240416034626.317823-1-liujianfeng1994@gmail.com/

Changes in v4:
 - Fix dtb check error/warning with command
"make CHECK_DTBS=y rockchip/rk3588-armsom-sige7.dtb":
  - Change led lable name to fix duplicate label with pinctrl node.
  - Remove useless property "pinctrl-names" from "&pcie3x4".
  - Change red led trigger to "none".
 - Link to v3: https://lore.kernel.org/all/20240415170737.49350-1-liujianfeng1994@gmail.com/

Changes in v3:
 - Update vendor description in vendor-prefixes
 - Link to v2: https://lore.kernel.org/all/20240413153633.801759-1-liujianfeng1994@gmail.com/

Changes in v2:
 - Add ArmSoM to vendor-prefixes
 - Commit dt-bindings change first
 - Fix commit message for dt-bindings
 - Fix wrong devicetree node name "led_rgb_g" and "led_rgb_r"
 - Link to v1: https://lore.kernel.org/all/20240413032328.784142-1-liujianfeng1994@gmail.com/

Jianfeng Liu (3):
  dt-bindings: vendor-prefixes: add ArmSoM
  dt-bindings: arm: rockchip: Add ArmSoM Sige7
  arm64: dts: rockchip: Add ArmSom Sige7 board

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3588-armsom-sige7.dts | 724 ++++++++++++++++++
 4 files changed, 732 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dts


base-commit: a35e92ef04c07bd473404b9b73d489aea19a60a8
--
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
