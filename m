Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 035BCC27C4F
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Jun 2024 10:20:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2ejRN+ooXHhZWBPRJz47XTNATAk/xzSIusCoVJPW75I=; b=wRxCSy5i1mkY1w
	HJixrte9yl+axHR80agx1zdW2vUOhrPvaSuGelfErTdZvFlBNW960HNpt55ho2+CKiS1P9qvCSE8x
	dDi4pXJhlEa6dOrb1xhw98u0Eyuc8XHkGcZMbJHZm/BIg17s7z1M//gfAXW17uwhrKdII3HHRKYoY
	7Vd5fSXCHqOcEO+wXBiX7wMfIYfraScDJjdfxQgZJkJGEThPqdnaPMJSyvWUo/M75MfRudfGokTVz
	b9GeTa/DZFVOrh4mKp5kPbQ8lzo18BmtE4WCbRBbHRP5GooCQs0hJUU2xzKkeabmP3ShHlijPhqve
	y08Dyi+v0pa6eeZYNa9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHhYy-0000000G7NF-12OC;
	Thu, 13 Jun 2024 10:20:12 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHhYu-0000000G7Lt-46Tf
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Jun 2024 10:20:10 +0000
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-7042a8ad9f5so1245436b3a.0
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Jun 2024 03:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1718274004; x=1718878804; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=j6xMy0PSx7RAK5KyLRoFGIY2S4TSiOFCk9JAjN+55oY=;
        b=GtAFkNWKd6ORPIi0RQs34NM6KiXSK+dYehB+riId6UzWjZGli6wIC/dX3BdCUZMBe1
         2yql+urOXA3ymL+yikxdw2T8oNIfokBAgVM5BORS3pWI+biRbQYTSf+KaCSrrF84Ov1d
         YpuUZDC6oYvPIKuEgA8es1LnqB6ALTFGlnK9k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718274004; x=1718878804;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j6xMy0PSx7RAK5KyLRoFGIY2S4TSiOFCk9JAjN+55oY=;
        b=lQtYQmemFYck8Kzl8BKoA/U9eCCGH2s1hOkbWJa2+8E5gt4OqHtBH3io4g5480NsHv
         oMGiVnHrWfqBRqJso0q9vwHJbzS4ZrwzVDOtKUVDAfyKck/C7fuJE2+L/NDVwDVlodmp
         aRCYw1i3X/1/PuuHvjY+5oEmNLEx7UZAlW3SMQBp7kPQB3o/ihyWQolmhxc2PrtS1pLQ
         bKfTbAhq4088fs76UxlElfeDgj23KUlNkcCUgH2GmDxb93D2SGNZ+5JZl49Xih33/9KW
         LBW1dCI0dmggXtrfCkOoJoiEGYNepr7lpKckuTmmbU0fRVXIkTeAtJE5kPnP/Asi5g3W
         w2eQ==
X-Forwarded-Encrypted: i=1; AJvYcCUl3GxiUsGK4z0rIpF0xapYMy36fVAz/dS5HROzqodJr2fUXx3DSA5pfWeEU6HySWe4a7DWI9kHpJsdOnhnz/bkxwRbYjps4Oo4VLJ/EpYynJQ0
X-Gm-Message-State: AOJu0Yz+Orw4zlP89cUw9Wi1iXGDRaNmalse1V6Yt3eK+scmPDGS0rYs
	gjn02YThUiD2FRvS/5sdatJf3goPQLPn5XiWtqBS8uEkEJQukrfE+3LZ0pj+zQ==
X-Google-Smtp-Source: AGHT+IGvGm28fk+okkNWjfFgYvPyFLTuWgmuTCIzXUdUG0qAQ/FS0ndUR84hPXLwOSrKkTwZkSzbEg==
X-Received: by 2002:a05:6a20:daa8:b0:1a9:d27c:3151 with SMTP id adf61e73a8af0-1b8bf0c4483mr3508458637.23.1718274003916;
        Thu, 13 Jun 2024 03:20:03 -0700 (PDT)
Received: from yuanhsinte.c.googlers.com (60.252.199.104.bc.googleusercontent.com. [104.199.252.60])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-6fedcf36b9esm817047a12.19.2024.06.13.03.20.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jun 2024 03:20:03 -0700 (PDT)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Thu, 13 Jun 2024 10:19:58 +0000
Subject: [PATCH] arm64: dts: Fix the value of `dlg,jack-det-rate` mismatch
MIME-Version: 1.0
Message-Id: <20240613-jack-rate-v1-1-62ee0259e204@chromium.org>
X-B4-Tracking: v=1; b=H4sIAM3HamYC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDM0Nj3azE5GzdosSSVN1kE3OLtERzs+RUQ0sloPqCotS0zAqwWdGxtbU
 An6aP6lsAAAA=
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Hsin-Te Yuan <yuanhsinte@chromium.org>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_032009_098936_1E722B78 
X-CRM114-Status: GOOD (  11.44  )
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

According to Documentation/devicetree/bindings/sound/dialog,da7219.yaml,
the value of `dlg,jack-det-rate` property should be '32_64' instead of
'32ms_64ms'.

Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui-audio-da7219.dtsi | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi                | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-audio-da7219.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui-audio-da7219.dtsi
index 8b57706ac814..586eee79c73c 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-audio-da7219.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-audio-da7219.dtsi
@@ -27,7 +27,7 @@ da7219_aad {
 			dlg,btn-cfg = <50>;
 			dlg,mic-det-thr = <500>;
 			dlg,jack-ins-deb = <20>;
-			dlg,jack-det-rate = "32ms_64ms";
+			dlg,jack-det-rate = "32_64";
 			dlg,jack-rem-deb = <1>;
 
 			dlg,a-d-btn-thr = <0xa>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
index 789fd0dcc88b..3cd63d1e8f15 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
@@ -450,7 +450,7 @@ da7219_aad {
 			dlg,btn-cfg = <50>;
 			dlg,mic-det-thr = <500>;
 			dlg,jack-ins-deb = <20>;
-			dlg,jack-det-rate = "32ms_64ms";
+			dlg,jack-det-rate = "32_64";
 			dlg,jack-rem-deb = <1>;
 
 			dlg,a-d-btn-thr = <0xa>;

---
base-commit: cea2a26553ace13ee36b56dc09ad548b5e6907df
change-id: 20240613-jack-rate-c478fa76ce19

Best regards,
-- 
Hsin-Te Yuan <yuanhsinte@chromium.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
