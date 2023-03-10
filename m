Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 330B8C6FD19
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Mar 2023 23:32:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fLcDXMO/2ACSWgOTXwqCkzpMbpacbWxJvKnXyRzLPJE=; b=W/5+f/rEvHvAPq
	Yz/4+DMCfLP8Xn77LQ7DQqMgLlQR2ezFDupVd8Y2O4auKZhGaqt+1Kd1DGn5BeO0DM6ZwT6VW+owe
	JPQ+4XesKqnKW9QspoB1HLvp5hz8XKalv9P6YcxRegkorvlF/1NM/h13/j5WFdokECZorPLHhMtWs
	VfA+t7XOB+bxa6Akx/5hWd5ndNCTYeMM1rlDrf7t0w/IrUGh7BF5JK/76ItmmswlTYtjzw6FIYLdS
	gHxSXhePmY6buIN3ewT0hGBEehLGBJ30FU1c73aSPAVSCgF3h9LbPaejA9nl8vGDlnRkTodZ3AR3l
	P/DwG3YB+h7LjTduGZ3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pamDi-00Gd9V-DW; Fri, 10 Mar 2023 23:32:18 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1palEa-00GNi0-5X
	for linux-rockchip@lists.infradead.org; Fri, 10 Mar 2023 22:29:11 +0000
Received: by mail-ed1-x534.google.com with SMTP id cy23so26355408edb.12
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Mar 2023 14:29:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678487347;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b4aKAo6MFb3QMb21J3aoV2riVolfD7kZUTP9+kgcCSU=;
        b=RZ3qkTbRBfZNiA0cqYlVVp21HmjVtY20XaGBwrmGNBazyP6QOIQ0QQeeiMkL7MUPJz
         X7C/0rDhWN32MdR45MbZNH2J+UJZgUl6YA2jF1RnkLqBWV5zT8h0JcGqbLJkYQHJcBap
         S0dnyle/sIgSi32MaROVKLa5wvqJ5gvHk8RJz3hldiuC+82cjq7IpInFb/frDBMPszfJ
         7DJ/vCeaRAhX6wQYox60fKxT9TUKzvESrlhC4kWCfK+0Tj+1dNSd259NjGnwOrpfuWzT
         GvPzpcatvo59dJWBtopFntOFKv4E48mBMqf/6T9rg8W2ymkjI1gSdguO9gia/RG4pRBz
         4Fvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678487347;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b4aKAo6MFb3QMb21J3aoV2riVolfD7kZUTP9+kgcCSU=;
        b=0TvbsxjJNVi0FIXOHoWb2cnpvi77gM1NR7RJBBI/mvNM1f+kF31GJd0QlkziupUnQn
         Z4BAFXdf2nHR/HUoU31vRoUFhFxb1VK0DtiRBXutxQ6YwppHIlxXldXjJ1zxrMX9Ch4q
         io81g4Se48EkWBp/Pp5yYa3VhQlZvFJS6UDTZiCumwQbq219D1T9rGA9xceN+1jDVaRj
         qHk4253L0Md5+iiX0BbjOSGo71I0WpYDWdJittnReLzPCXCj2pwDbTDMn0S4ifX4yA50
         SMQxhAByLHvalNLO7X2t0WNY+ur1JcWxlv9SNHbPpjZMkbRTZM+U/B6dNO6uoOQocrMO
         ojwg==
X-Gm-Message-State: AO0yUKWEH0zBrbd231ny1Ey97fbMmcUX0WSTNMqfYPZJ0zUli6inE4/w
	KEZDfN8cF5vyzP6z4vVChxrtUg==
X-Google-Smtp-Source: AK7set/W0kTwiGlItblh7tf5JTPG4Jzj41fZ0/kDRrZaCweil86ynzpBOA1iUGvgXuT1rUSP46ReMw==
X-Received: by 2002:aa7:d60b:0:b0:4be:d5b8:c007 with SMTP id c11-20020aa7d60b000000b004bed5b8c007mr23483407edr.25.1678487347617;
        Fri, 10 Mar 2023 14:29:07 -0800 (PST)
Received: from krzk-bin.. ([2a02:810d:15c0:828:34:52e3:a77e:cac5])
        by smtp.gmail.com with ESMTPSA id x101-20020a50baee000000b004aeeb476c5bsm525467ede.24.2023.03.10.14.29.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Mar 2023 14:29:07 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Mark Brown <broonie@kernel.org>,
	Kamal Dasu <kdasu.kdev@gmail.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Daniel Mack <daniel@zonque.org>,
	Haojian Zhuang <haojian.zhuang@gmail.com>,
	Robert Jarzmik <robert.jarzmik@free.fr>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Andi Shyti <andi@etezian.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-spi@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 06/16] spi: rockchip: Drop of_match_ptr for ID table
Date: Fri, 10 Mar 2023 23:28:47 +0100
Message-Id: <20230310222857.315629-6-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230310222857.315629-1-krzysztof.kozlowski@linaro.org>
References: <20230310222857.315629-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230310_142908_275997_E6782509 
X-CRM114-Status: GOOD (  15.63  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

VGhlIGRyaXZlciBjYW4gbWF0Y2ggb25seSB2aWEgdGhlIERUIHRhYmxlIHNvIHRoZSB0YWJsZSBz
aG91bGQgYmUgYWx3YXlzCnVzZWQgYW5kIHRoZSBvZl9tYXRjaF9wdHIgZG9lcyBub3QgaGF2ZSBh
bnkgc2Vuc2UgKHRoaXMgYWxzbyBhbGxvd3MgQUNQSQptYXRjaGluZyB2aWEgUFJQMDAwMSwgZXZl
biB0aG91Z2ggaXQgaXMgbm90IHJlbGV2YW50IGhlcmUpLgoKICBkcml2ZXJzL3NwaS9zcGktcm9j
a2NoaXAuYzoxMDUxOjM0OiBlcnJvcjog4oCYcm9ja2NoaXBfc3BpX2R0X21hdGNo4oCZIGRlZmlu
ZWQgYnV0IG5vdCB1c2VkIFstV2Vycm9yPXVudXNlZC1jb25zdC12YXJpYWJsZT1dCgpTaWduZWQt
b2ZmLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5v
cmc+Ci0tLQogZHJpdmVycy9zcGkvc3BpLXJvY2tjaGlwLmMgfCAyICstCiAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3Nw
aS9zcGktcm9ja2NoaXAuYyBiL2RyaXZlcnMvc3BpL3NwaS1yb2NrY2hpcC5jCmluZGV4IGE2NmZm
ZjBlZTIwZS4uNTdhZTU4YmY3YTYyIDEwMDY0NAotLS0gYS9kcml2ZXJzL3NwaS9zcGktcm9ja2No
aXAuYworKysgYi9kcml2ZXJzL3NwaS9zcGktcm9ja2NoaXAuYwpAQCAtMTA2OSw3ICsxMDY5LDcg
QEAgc3RhdGljIHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgcm9ja2NoaXBfc3BpX2RyaXZlciA9IHsK
IAkuZHJpdmVyID0gewogCQkubmFtZQk9IERSSVZFUl9OQU1FLAogCQkucG0gPSAmcm9ja2NoaXBf
c3BpX3BtLAotCQkub2ZfbWF0Y2hfdGFibGUgPSBvZl9tYXRjaF9wdHIocm9ja2NoaXBfc3BpX2R0
X21hdGNoKSwKKwkJLm9mX21hdGNoX3RhYmxlID0gcm9ja2NoaXBfc3BpX2R0X21hdGNoLAogCX0s
CiAJLnByb2JlID0gcm9ja2NoaXBfc3BpX3Byb2JlLAogCS5yZW1vdmVfbmV3ID0gcm9ja2NoaXBf
c3BpX3JlbW92ZSwKLS0gCjIuMzQuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
