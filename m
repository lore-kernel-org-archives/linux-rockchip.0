Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86DCAC3DA6E
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Dec 2023 09:09:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0L7t9x6ZoZZ7o9XaaS2L+Mif5KEjRuE+JhZlchhDwSA=; b=p1uEIQWN+YNUDB
	CfhzXkWsLm0ByJHT4Mn4x1VTAlkYOCQipqiq/KCVJBIhrhap8hKg4tGp6OAQc/z6t5K5kzzQIqwWd
	1xbV1W4gGqLUxP6d25BNYTEoVetH267Vk0MO23Gba0+V3dweH1Cgxi1jKnFzaPLYXCIllS11+cxYF
	aSynjqSyEUhjjaz8fKT2w0sujFqFPUjkFbKusCD878bqtpeD40JyHpwX44FHWYLE74oaOk29ezzhC
	LVXyMjT3qqAJP0Ds3DaA2Kgh+GyDReHhFgSHkCbD8slPbD08gLpkZoa+sRHTGYwDYj7DIeVF+rmhH
	lobe1xYs1iAjqryLVnHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHgxZ-00ARXm-1U;
	Mon, 25 Dec 2023 09:09:17 +0000
Received: from mail-qk1-x736.google.com ([2607:f8b0:4864:20::736])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rHgxW-00ARX3-07
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Dec 2023 09:09:15 +0000
Received: by mail-qk1-x736.google.com with SMTP id af79cd13be357-781045f1d23so344140685a.1
        for <linux-rockchip@lists.infradead.org>; Mon, 25 Dec 2023 01:09:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703495351; x=1704100151; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3oz8B+ODOfcK2MygCUEJM1W+TN6+ZG30xtm2d6Qg6x4=;
        b=hMKk0nHE4sWUUOLwUpe6jLpJgEB+5wZpG78IcQaeIUSR6XU4hRPhL35jsRa7vIkSrH
         J60vkvb15zFLhugTEd/KAdE6qB6cOd3LszRLNtMKSrqituaqsFsMF6Kqh656UnTwNy2d
         MKGzALbS+wqjMpDBV+i6gN8spbnlKujoHYjrFpVzBdiSiwXTSqT/DvuRjyyc+m+4Bm2X
         lUA2VMoNjRNGZH5HG6lgtiR0BYzkvcpzCrrLXO3R0708MMWd7YHinUvSblwk+8eM4c1u
         979120BB1ZnrPPhISLiMjkHHnOCsKkHbDkUV6Vmef8G/ajT18HhJ13VDwm9diQqA32P9
         g/TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703495351; x=1704100151;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3oz8B+ODOfcK2MygCUEJM1W+TN6+ZG30xtm2d6Qg6x4=;
        b=hfUKjy0f4vbMsMyaS0Kj8WzTg4wZFQfxWSFH+OI268z4it/jNYu6p5AG4PyuzGWDGj
         XlXdb8ZXKTKRptrnRTeEq1u6D38EclxnbqPtTkwyS4K6X8xTzYtxdCfoGcsO2T1+Mk/s
         M+SLJl5XVl9AXsZW3KItAgbIl/m5kAUAhgo9tEUXBd7pjk2yjgi5oatWuoTVODiLRYCw
         SAHONOPZkawyWvH/3KIzDMAhcvd5gP+oayORiUlQzhhIsXXM8BDWICh8bPrDWf0X/TxN
         6iTZVxk6K/BvF9byMRlYCmpuyQhMl5Gciig2Ss67egRLvBb5Z+dQSYgfm2NPx7CggNSQ
         8VwA==
X-Gm-Message-State: AOJu0YwUF1VhUfokX9rkKwtDjLf/YPN7bti1lohHcwSTtv+t6GUAcqgw
	bhO92hjRxws+mJLLdrhJzmQ=
X-Google-Smtp-Source: AGHT+IH9j/9eOcKvYUnw+zxUmu2Be+wccW+FOoz+RDzC+fLLQUuNnwCMTK3jHa1Iui6kXK6Daa5WPg==
X-Received: by 2002:a05:620a:8806:b0:77f:8f32:ffaf with SMTP id qj6-20020a05620a880600b0077f8f32ffafmr6781974qkn.155.1703495351130;
        Mon, 25 Dec 2023 01:09:11 -0800 (PST)
Received: from localhost.localdomain (107-015-241-140.res.spectrum.com. [107.15.241.140])
        by smtp.gmail.com with ESMTPSA id c23-20020a05620a0cf700b00780fd53405esm3488798qkj.0.2023.12.25.01.09.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Dec 2023 01:09:10 -0800 (PST)
From: John Clark <inindev@gmail.com>
To: "Rob Herring" <robh+dt@kernel.org>,
	"Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
	"Conor Dooley" <conor+dt@kernel.org>,
	"Heiko Stuebner" <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: John Clark <inindev@gmail.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: correct gpio_pwrctrl1 typo
Date: Mon, 25 Dec 2023 09:08:56 +0000
Message-ID: <20231225090856.3890-2-inindev@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231225090856.3890-1-inindev@gmail.com>
References: <20231225090856.3890-1-inindev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231225_010914_098998_E24EF3A6 
X-CRM114-Status: UNSURE (   9.91  )
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

Signed-off-by: John Clark <inindev@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index dc7b88f29172..a0e303c3a1dc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -448,7 +448,7 @@ pmic@0 {
 		#gpio-cells = <2>;
 
 		rk806_dvs1_null: dvs1-null-pins {
-			pins = "gpio_pwrctrl2";
+			pins = "gpio_pwrctrl1";
 			function = "pin_fun0";
 		};
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
