Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5193FC6FD19
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Mar 2023 13:50:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zwi9Jyz660028L9NrFCnenGTGMldSO6Mxr/HiWMajYo=; b=qFQNjArrUkSga2
	S6CX23NF29HnOOGQ7wA6Mvsd2jBjh0qE7y+ah9yR290utO6OAxLadha7VK20MTv6GopzRqoUSY/Rx
	gvkXTQdY/FjqBjkhOkjfXPa8kQodUhRfVzjzz6fq50XQTwctskZHVFR/CKEIfh+YNPKEd4urk8Oil
	+9IOlp0ErCVZS6jUzbZul1g2MvVqi8S/jUuJw3Vg12bcBDts28h1+iFT8xFeWhTQTEg3urPs62Emr
	WbWjMP4csG9tUxkfm4Og/Usw40u39hC8/fZdZNKaSw8MSHT3/eqV3K7e8X+QcLA+9AtPTuDjYLIXL
	bw1/d5zPwNHo6FNTEuPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbM5o-002Yu4-2X; Sun, 12 Mar 2023 13:50:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbM1K-002WTg-4a
	for linux-rockchip@bombadil.infradead.org; Sun, 12 Mar 2023 13:45:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=hGcITVAy31UtuDH6LhnS9qeMquB4EE88f+CeXXPHp2U=; b=kZYgJhtTOmUP9X60ZRiL1XH1xd
	OQCAgWiaObB6PIfPKOQV+6Eoj0ByGoy8XHB3FIpa1lMoqngeyxOBo7o3ijddbnOyb/hjBeyEd6UgM
	P2pzvEqyyd4ab3Zu7oe4r3Mxlw/XSCJ1gKoWgOdanRh3nJBCPbpume+7aQWPsnauaZ5gCylzn+3Fp
	hshpHWwVFkMieQIIX++lqg6JlGOkOciTzjJxjQYDVkjIWI1sR2TE6VPg7XCqIUGA3iHyFVZ9K3vmZ
	y9xoK09sdlTvrrsLnR9I+z/ob8lzgLlND9Wi58MFPyC89Jd10XH/7PKB2A0GBBKiFd7WqdwAMvFAi
	bkJzlrUg==;
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pbLWO-0011Gr-1d
	for linux-rockchip@lists.infradead.org;
	Sun, 12 Mar 2023 13:14:09 +0000
Received: by mail-ed1-x535.google.com with SMTP id er25so10370498edb.5
        for <linux-rockchip@lists.infradead.org>; Sun, 12 Mar 2023 06:13:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678626835;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hGcITVAy31UtuDH6LhnS9qeMquB4EE88f+CeXXPHp2U=;
        b=YkVf8PAZp1sjrWnpH/Du7l6KUolVfDrkiaYMszEc3PTGHc7Ipup3dDat3y6CTjWSPV
         ETjJlT78KfnQGOAf6MGNU+mOmPzuuxdMNRmlOdRXk4Hh25EaqGkuHgJn46FjE9ICHpMo
         7V+UVeVxiiXoAy3ZRT86gz6gnIRO7iPtSxI+cfDq1MEGhpzhtsPB6SS8I+i2QnJxByzS
         uUKomqVb1xWi/oYuHGL4pv+q/LGkQ88cq7n9QwVXNiYDoFyM1wGXCFuvUNF2LSDpOPrD
         QIP9fxEouE6Wi8b5wrPTL3FN+A5VP1IFQN0fwJnlBGvCFrGa9Re4rcFPt+1znXjsG5zv
         cFuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678626835;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hGcITVAy31UtuDH6LhnS9qeMquB4EE88f+CeXXPHp2U=;
        b=NVWM6owQx3MBG1LIYBMtSiEhY025LOOLnz6k0nItVOn3yq0oRMUemgv/j17zj3V9FB
         GrDPS/eQ6tlBup+xqCCg5OlyK6wCkG8kQqfYPWv+rOGGo8i9eSNmD8s5z+YLuTrmkhNu
         7lm9QvnF/sqmHQzR4SCTzNfpIcBoAFp7bvjpzCw8hAsSjmJhLlkC1UYDPMbccfv6/OI2
         jo2elCY4YNVbppuVJkf8/6hf09c6pG32rvjGYprMhtRykbhQLySeKPwg9EObBgth2n5y
         a+TEx9b4/xZCsK1nFwqL49CHO/ddh/15C/ROisH69U6Kd3xPPIwtKV5HaAQPjp+9MlCK
         PFWg==
X-Gm-Message-State: AO0yUKXToQHxokkQErTrmUZa8O7BJF8Iv8lsJtoLlmwmQCRz5bVyWJxG
	dlGBjBUKAMeU2h1XJcrvui4S3A==
X-Google-Smtp-Source: AK7set/xivJKH0hcau66sU8fJqKK2GNHVix/5Dk94HStfVumSSriO/XOviLFoDjpZUHmFVs9JDdUDg==
X-Received: by 2002:a17:907:6d08:b0:887:dea8:b029 with SMTP id sa8-20020a1709076d0800b00887dea8b029mr36591244ejc.1.1678626835335;
        Sun, 12 Mar 2023 06:13:55 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:d9f6:3e61:beeb:295a])
        by smtp.gmail.com with ESMTPSA id r19-20020a1709067fd300b008eddbd46d7esm2213279ejs.31.2023.03.12.06.13.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 06:13:55 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Joe Tessler <jrt@google.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Michael Tretter <m.tretter@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Jacopo Mondi <jacopo+renesas@jmondi.org>,
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	=?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
	Rui Miguel Silva <rmfrfs@gmail.com>,
	Wenyou Yang <wenyou.yang@microchip.com>,
	Bin Liu <bin.liu@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
	Houlong Wei <houlong.wei@mediatek.com>,
	Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
	Andrzej Pietrasiewicz <andrzejtp2010@gmail.com>,
	Jacek Anaszewski <jacek.anaszewski@gmail.com>,
	Sylwester Nawrocki <s.nawrocki@samsung.com>,
	Patrice Chotard <patrice.chotard@foss.st.com>,
	Yong Deng <yong.deng@magewell.com>,
	Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	"Lad, Prabhakar" <prabhakar.csengg@gmail.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Sean Young <sean@mess.org>,
	linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-amlogic@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-tegra@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-rockchip@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 16/28] media: platform: sun6i-csi: drop of_match_ptr for ID table
Date: Sun, 12 Mar 2023 14:13:06 +0100
Message-Id: <20230312131318.351173-16-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
References: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230312_131405_488530_5CF2BFBC 
X-CRM114-Status: GOOD (  15.02  )
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
biB0aG91Z2ggaXQgbWlnaHQgbm90IGJlIHJlbGV2YW50IGhlcmUpLiAgVGhpcwphbHNvIGZpeGVz
ICFDT05GSUdfT0YgZXJyb3I6CgogIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3VueGkvc3VuNmkt
Y3NpL3N1bjZpX2NzaS5jOjQwMTozNDogZXJyb3I6IOKAmHN1bjZpX2NzaV9vZl9tYXRjaOKAmSBk
ZWZpbmVkIGJ1dCBub3QgdXNlZCBbLVdlcnJvcj11bnVzZWQtY29uc3QtdmFyaWFibGU9XQoKU2ln
bmVkLW9mZi1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5h
cm8ub3JnPgotLS0KIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc3VueGkvc3VuNmktY3NpL3N1bjZp
X2NzaS5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9u
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zdW54aS9zdW42aS1jc2kv
c3VuNmlfY3NpLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3N1bnhpL3N1bjZpLWNzaS9zdW42
aV9jc2kuYwppbmRleCBlM2U2NjUwMTgxYzguLjE4N2EyNDE5ZGE5NiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9tZWRpYS9wbGF0Zm9ybS9zdW54aS9zdW42aS1jc2kvc3VuNmlfY3NpLmMKKysrIGIvZHJp
dmVycy9tZWRpYS9wbGF0Zm9ybS9zdW54aS9zdW42aS1jc2kvc3VuNmlfY3NpLmMKQEAgLTQyOSw3
ICs0MjksNyBAQCBzdGF0aWMgc3RydWN0IHBsYXRmb3JtX2RyaXZlciBzdW42aV9jc2lfcGxhdGZv
cm1fZHJpdmVyID0gewogCS5yZW1vdmUJPSBzdW42aV9jc2lfcmVtb3ZlLAogCS5kcml2ZXIJPSB7
CiAJCS5uYW1lCQk9IFNVTjZJX0NTSV9OQU1FLAotCQkub2ZfbWF0Y2hfdGFibGUJPSBvZl9tYXRj
aF9wdHIoc3VuNmlfY3NpX29mX21hdGNoKSwKKwkJLm9mX21hdGNoX3RhYmxlCT0gc3VuNmlfY3Np
X29mX21hdGNoLAogCQkucG0JCT0gJnN1bjZpX2NzaV9wbV9vcHMsCiAJfSwKIH07Ci0tIAoyLjM0
LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
