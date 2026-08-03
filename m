Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 915A4C55184
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Aug 2026 14:10:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d3MVS4p0RgpiETB/rTknjYupqR1YptjGNwS4zTcs33w=; b=w0ITFT7q9vUL2i
	F+oZwwtNj6+Uo4G8sr7dJECUu8PxUuNl41fwLrQ0Ikt6IySLAW7ywziFTFrKTNl5ryxjEgx87MoOp
	zZP8NLx8kqN0Q/p6oQZIzkePKQvy8fzREmOKVCH91M+Ci/RjjGyOScOHtZXiIyHFluShb6PU5+Gbb
	cLtN51g/CwqfUdjh9q8At6xIjU519bdZt3pMg8hqcD/A0Zr1f3AS7/q7Oig+wewmdsLP76vrM4d0c
	szCKky5ttFqr1H7RxKer0XgUILHY0c9xwRTvXHlEzmybaiQO05QSXglSDpHhJWTW6taDQotY5y4cM
	K2HKqvy6N6iOyAndQkkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqtNR-0000000HIoc-0mO4;
	Mon, 03 Aug 2026 14:10:49 +0000
Received: from mail-oo1-xc34.google.com ([2607:f8b0:4864:20::c34])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqtNO-0000000HImB-1D3s
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Aug 2026 14:10:47 +0000
Received: by mail-oo1-xc34.google.com with SMTP id 006d021491bc7-6a168dc590cso1963390eaf.0
        for <linux-rockchip@lists.infradead.org>; Mon, 03 Aug 2026 07:10:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1785766245; x=1786371045; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=JVxxd59a0doljp4cj9wSApSMEwIu5WK0T7ewILpCQ84=;
        b=dELYlEIZiugHpiOBWUFBMuF/AjTfi3X1dTEIf24RyrK2l9fpN7jGj3aE9pvr7/uofJ
         VQroPQaz9NBpz6BTB5lXgwDdZFd4xKRRzHGioJF1wcTxCBpMFveCEub1Npoveu4Rpv5j
         F8Uy/N5IEeTBiq/924pwt6zRyIgEs8q1OH1VY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785766245; x=1786371045;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=JVxxd59a0doljp4cj9wSApSMEwIu5WK0T7ewILpCQ84=;
        b=nk2cBdFf0cs5Dgixk467vlNnZtStU4o5DHPapnQAlFJeLHrFjm/yc9+AJZiFada+4l
         HYE1DihtnERjrdrD9I9mmBkdTDdiE+UVCllpbJE+QJ+RnNoaeRgYYay7PaQpzGPuBUF0
         /iz5AF20BcoNPuYuytJ3xTWoAqEMZQ0MwquWw+1zX8ULIcUNliJ06JH2XIBQ+cgnclkF
         aysCHNQSMW2RK/HD9+itcGyyuXoNBdFs3puHuoG07Z7yO7LLtrHkT6EB8DQBKZVzVj2X
         4gbAIngPgv+V9e1gnOOzMd9ttifb6XuEJO3u+QwVWjUz9/z/Z7VFYzzC47m8M8SP+L3f
         KLWg==
X-Forwarded-Encrypted: i=1; AHgh+RoTiLbZJMgiHn2i2UYK3SuTvOp9JhmqVwxCvxtMEHmpWE8PxfTl9KPwI8gWn9tCo7ORIiX63nMgoCNmN6oz0Q==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy2ZD1wVzcGNw8N5TGKlLZSMOfd09/mPLCfYxbfZrRfs3ZsqaU2
	NwizTkuA/HNajYLj9PqTiSGHVXDpgG2j2GWcYGJdA+iX72KZZULkQN0qin2sdN6avA==
X-Gm-Gg: AR+sD13X77HSUVsA/IjEcpHCfM1T4uuHjWEzYaqRAiTFETw/WPN1Q3PMaIy2q7V/oqX
	i5d7mEqczpk+tZAil62SiIk4Ujo/Eja1YvUFm/JQJewQwo1KLaEOfOStSBenbYgiFROwrA4ydJa
	OQPxDN6LB/dimeaZVdmha5bUc9fxs01EeIm2t/G98ylzyO3fs4b169xaP3aPyiG2FPPOTBsSqOo
	gjF0SYIgywWU13zHC1FfKMEIsq0xX5OW/VS88cElwQ6A/w6+eV0RJOeyq53wODKXGuu4mOmKR4n
	GVAFZUJISmR2//4pGwKm9gj3vGXI7Chy+UAEd3e7VX40rU3Bk51boTI0mAjt7CwsGWKtvyK0QUk
	Uuo+mRd/lueccOvzdc34sF6w2tsY3CxGiFSZQL1hySJSh54P90nVYoex+hEirlbFXpp+rdDmelq
	c3FxzUBTUa6I/v0ocl/JNw6VzSWg755yzLF7SUxxnTPMp57SHy212LkNY=
X-Received: by 2002:a05:6820:811b:b0:6a3:7ee4:11c7 with SMTP id 006d021491bc7-6ae4336d8c5mr15037985eaf.29.1785766240682;
        Mon, 03 Aug 2026 07:10:40 -0700 (PDT)
Received: from chromium.org ([174.51.25.52])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-6ae3a0c9162sm6526695eaf.11.2026.08.03.07.10.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Aug 2026 07:10:39 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: Linus Walleij <linusw@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-gpio@vger.kernel.org,
	Vladislav Leonov <vlad@zlab.su>,
	Jonas Karlman <jonas@kwiboo.se>,
	Simon Glass <sjg@chromium.org>,
	Fabio Estevam <festevam@nabladev.com>,
	Jeffy Chen <jeffy.chen@rock-chips.com>,
	huang lin <hl@rock-chips.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] pinctrl: rockchip: Restrict the RV1103B 2-bit drive type to bank 2
Date: Mon,  3 Aug 2026 08:10:24 -0600
Message-ID: <20260803081024.2.5ce19c438ee3bdfa91ee7d414bac5ff6b16eaba8@changeid>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260803141028.710706-1-sjg@chromium.org>
References: <20260803141028.710706-1-sjg@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_071046_335153_0248CBC3 
X-CRM114-Status: GOOD (  12.67  )
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

The RV1103B override in rockchip_get_drive_perpin() forces the 2-bit
level drive type for every pin above 11, but only bank 2 has the
2-bit fields; banks 0 and 1 use the 8-bit level type for all pins,
as the corresponding check in rockchip_set_drive_perpin() shows.

Today this is harmless, since neither level type is decoded in the
get function and both paths fail with -EINVAL. It becomes an active
problem once decoding is added, as the pins of banks 0 and 1 would
be truncated to 2-bit values. Add the missing bank check, matching
the set path.

Fixes: 6d3ea3120eaa ("pinctrl: rockchip: Add RV1103B pinctrl support")
Link: https://sashiko.dev/#/patchset/20260729132736.3807082-1-sjg@chromium.org?part=1
Assisted-by: Claude:claude-opus-5
Signed-off-by: Simon Glass <sjg@chromium.org>

---

 drivers/pinctrl/pinctrl-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 8bfc7ab5de15..08084ed2cf1b 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -3212,7 +3212,7 @@ static int rockchip_get_drive_perpin(struct rockchip_pin_bank *bank,
 	u8 bit;
 	int drv_type = bank->drv[pin_num / 8].drv_type;
 
-	if (ctrl->type == RV1103B && pin_num >= 12)
+	if (ctrl->type == RV1103B && bank->bank_num == 2 && pin_num >= 12)
 		drv_type = DRV_TYPE_IO_LEVEL_2_BIT;
 
 	ret = ctrl->drv_calc_reg(bank, pin_num, &regmap, &reg, &bit);
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
