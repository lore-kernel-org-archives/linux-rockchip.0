Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E317C43217
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Nov 2022 04:15:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3+6p1UTm0lU4ntMKJrTLqZWUFmNPobK/OskbrvzOhdc=; b=e2ldnbzSDFEwjB
	9VS8tR96HE+3m/j3koIxaOya5sPfCWGGIOHfAq0hnUV5xQAksdZt7uTcTrEkWrPgKc1W+yMELa0g5
	YDEoYyQNOR9VVCxG7Bg+1LSqMSe4LNimvgp4ybxSnDjq9IDc0EY4CI3wRSa2UA8KiS+bcJdZ5XCVp
	6agzPRQvnq1m6bNKWMku9QRhyKJihEqiNvPxPmdfZSdB3Gckf4prT5o97GvLaD6+Kf/MfRXpfLiHX
	tXAHNheFJBPlW2LyXr2xPOLRPxh7k5Ga6g6/NBuSECD1eKaxZk6GUwcFukYmuU0o1Kold5AmXQeWU
	Lu2f3xRMgbd9ZQemE36A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osG1D-002ahJ-6C; Tue, 08 Nov 2022 04:15:23 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osG0b-002aKx-01
	for linux-rockchip@lists.infradead.org; Tue, 08 Nov 2022 04:14:46 +0000
Received: by mail-pl1-x62c.google.com with SMTP id b21so13091141plc.9
        for <linux-rockchip@lists.infradead.org>; Mon, 07 Nov 2022 20:14:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DeXjuqYbv+Cb2PzWLDv8ZdQcHNUBRbHrV9FuI04HiFk=;
        b=xrvPoM2tveDNMWjBFoOnZxZ9+swsBuT1Qj7K9yL1aecAL25mUzlcdaRunjKd9PsgvH
         PK6UGjKuUkb6ZbHelumE+CriPl9dIVBYX+BMpHEzIHQDA21UdTN5nAflmQaMn2zBvlwK
         4AOsYgqHTyVa1MOu3exEkIbqI82w89Ays+JQUXFZfXSzUk5I1SNfjFg0qFfe6WAobrJ9
         WUHyVaOZ4WJv1UU/RwqO4W3NSYT8R3PcwrO7eUiRySJKzfd0nTozZ4CkmwuzcK3ovt7K
         75TR3SWzehXXNtHYAAK7rkEVkyiL+ALXWBMSjZbalJOeXvB7rN8jkHKyHSl2YTxPrsGN
         c6DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DeXjuqYbv+Cb2PzWLDv8ZdQcHNUBRbHrV9FuI04HiFk=;
        b=NPBjxv9YiNMgYUux9UAaijYk3syP5/aIAqj0dxyHypvoHR3CsGb1/GoYT44q7mOOWp
         oNgGUVS2p3IeLDFRAAykqpV3mX4zA6cNu7csCcfwtSyGMAYDlUT2BRRzgQz+dl1/FCXz
         sAeD22jQLlXA+AQJ/9pf6jSYAORnhuINJXbkriS9AHp3SxSTs58XhJQZMoSDuhH+VKi8
         CcGxl4idwEy3nS5Gi/nRq6hqBrTbriupgpRygcZok3IVyBgfvb0N4LNmEhgbSIsOuf9o
         Sf70JTuw8XfGpHK3RFGWm12ILgwh9mCc3geaziAOTxjaENxRs611FjrdtAGPqf+1enLv
         3Bxw==
X-Gm-Message-State: ACrzQf3/ycwrCSxAt05vv9kAqYPkElSTolt+g12rWywp7A6zd4OrAcSv
	fPdiGghZ1+i9qscBTg6c8IY0AA==
X-Google-Smtp-Source: AMsMyM49Cy0rzn7lDtrz7hhhWGHfpSa9jMSze1nNUDTy+W0egtDAsPT0pLjV0pdA5Le49S279Alv2Q==
X-Received: by 2002:a17:90a:3c8a:b0:213:8043:4b7f with SMTP id g10-20020a17090a3c8a00b0021380434b7fmr63212085pjc.99.1667880883405;
        Mon, 07 Nov 2022 20:14:43 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:63d1:2564:ea55:4e97])
        by smtp.gmail.com with ESMTPSA id e5-20020a170902b78500b00186ac812ab0sm5799783pls.83.2022.11.07.20.14.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Nov 2022 20:14:43 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Johan Jonker <jbx6244@gmail.com>,
	Jagan Teki <jagan@edgeble.ai>,
	linux-iio@vger.kernel.org,
	Jonathan Cameron <jic23@kernel.org>
Subject: [PATCH v7 03/10] dt-bindings: iio: adc: rockchip-saradc: Add saradc for rv1126
Date: Tue,  8 Nov 2022 09:43:53 +0530
Message-Id: <20221108041400.157052-4-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221108041400.157052-1-jagan@edgeble.ai>
References: <20221108041400.157052-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_201445_085372_797116FE 
X-CRM114-Status: UNSURE (   8.93  )
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

Add saradc compatible string for rockchip rv1126.

Cc: linux-iio@vger.kernel.org
Cc: Jonathan Cameron <jic23@kernel.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v7:
- new patch

 Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
index e512a14e41b4..da50b529c157 100644
--- a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
@@ -22,6 +22,7 @@ properties:
               - rockchip,rk3328-saradc
               - rockchip,rk3568-saradc
               - rockchip,rv1108-saradc
+              - rockchip,rv1126-saradc
           - const: rockchip,rk3399-saradc
 
   reg:
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
