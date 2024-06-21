Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B2EDC27C4F
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jun 2024 14:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y3+KvX/bcePRVbG8oDBAC4ZGeKvnqHnfgh1/40hrLGI=; b=qAqVafjHQuPdd8
	RQJonWebF8S85DuGiWCMYjRbszgpXi52l4HtFJMOoGXNVBOl2d0+ZHzeHAclxuMB3VSgnqFO478e5
	fWYTNLojyTotKPf0V9sTPu45S8UTLQCiL/Ziz0dmllGX/uzWfjljnapkk3aruNIDtWsUtObxwbITU
	yfERRCYtOfS3FSStOplz+Of3o3quZsof+v/aIW/SniITDJMi952+8yqok8UDuLVhx0FcciO9yRm0k
	2K7lEcTCxRMiOT+yrhukzOYNCccJjMuYsXspHd5OV3Nl48enfxLvyP1Lko7BnIA2GWpdZj6+5jCNX
	xf2Y68qLpkKImQ41MbVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKfXS-00000009Zm4-456S;
	Fri, 21 Jun 2024 14:46:54 +0000
Received: from mail-lf1-f41.google.com ([209.85.167.41])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKfXO-00000009ZkZ-2mDY;
	Fri, 21 Jun 2024 14:46:51 +0000
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-52c8c0d73d3so2342875e87.1;
        Fri, 21 Jun 2024 07:46:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718981208; x=1719586008;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yQVb2DeThksBLy1v6heanX+uAjJHYjLCnQz2w0NHRqc=;
        b=SONWxMCY0CpPtd/53XI8fggROq7G97SP/CtIThwfSjuwCM3HAJiiPDuYTudyiaeMWB
         EZTeq6s+BaJpGqN3et8d67TPNFr54yyfKebP/1m1DSFtnnr105UPnTjceorD9z/u2Qx4
         +nIR7PH1CHqNYspvSlH8P55/t7T0O+3/tfkmdiumHR/gr8nldSuFKm71n8RHR5x+MCy1
         +s/EVfHoMyFUp49MRtWU17+n8efvx53fBCLSprgcGQXNvkEc8Kz6DIsTgh07TdGdYcN3
         l2G0fGYtjKdV90atDhbWrZGenNQ4vH3XbBl1HzrUi+VA8VH2DxK52NvLpWFEuaLd5OgW
         NiNw==
X-Forwarded-Encrypted: i=1; AJvYcCW7qGF+RGd+fLC84UOP/X7GP7XIq2IklMK7Y5rtw33qXOyXLLiajxAXgKayJ/BLUVOcpB2Nxt0Tomxhi09YJnCVaoq5Fd+U3O5AMitsapLCKw8dFJfYKgvXSgpBjfFQSpdXVzToSxkgZEwDD/jQXJt4W0XX/uJKkJ/xF2hhT5rXFXASLrTd22FPmt+3Rbs+F2puaFpI6aV8FN4eY7TpSV/Aj4hxEmgnKkY12qOKI0b8EvJ19mfsY3l4LDdo20EwK+4McjwlQVjgO2sDutynQMdPudKrlcrwbA3giv8BkBQ/mOTKgWhm
X-Gm-Message-State: AOJu0YzBaaWZrxwWKdHssY86ZApritK1koxRrwJjOFYUpQlaF/CXxeEw
	vyiOVstzGoEc5RIGse2n7cKAm+G0C7NFRhFAQu9SK+dgcCdwyjamoziTDjCTcR4=
X-Google-Smtp-Source: AGHT+IG0BfDEc7YKGPEaZcNZxTmBtJ1n8edA/eYhUSzuJPh9Z53SyQMjn0HefRN16V9krce9gMdLXA==
X-Received: by 2002:ac2:489b:0:b0:52c:8c91:da8d with SMTP id 2adb3069b0e04-52ccaaa8d5cmr4466460e87.66.1718981207731;
        Fri, 21 Jun 2024 07:46:47 -0700 (PDT)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com. [209.85.167.43])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52cd9f8ffadsm131786e87.114.2024.06.21.07.46.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Jun 2024 07:46:47 -0700 (PDT)
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-52cccd44570so2468888e87.2;
        Fri, 21 Jun 2024 07:46:47 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWEiRpYshyMvnLOook5SmSHw7gm9QpNEtobK+kn2Zaaoossnm/VkmdbK5Gh3ad5b4xyvxJDspyg5YpCe9ICiH5VdTzAetGoyRQfA+U8vV4x9h6T/4WZzLjx6Tx7rw8q4MvKBFYXs9oYMOl9t+d4184StfTikbzQNwA92xEL8le5BO6Bg2J1fsZHgY8/bdCDwPxoxi/e8POUD1GKiHu2hxn8NC9tXlckbOsNXIbob3vfb9nAvTT6PL/tADt3y2wlBUatG97ikFLLwXrrzZp//tsgSHqCpQQhN4dmPHs2ZXgoYUyRLwEt
X-Received: by 2002:a05:651c:104c:b0:2ec:5073:5816 with SMTP id
 38308e7fff4ca-2ec507358edmr10687831fa.31.1718981186574; Fri, 21 Jun 2024
 07:46:26 -0700 (PDT)
MIME-Version: 1.0
References: <20240614-dt-bindings-thermal-allof-v1-0-30b25a6ae24e@linaro.org> <20240614-dt-bindings-thermal-allof-v1-3-30b25a6ae24e@linaro.org>
In-Reply-To: <20240614-dt-bindings-thermal-allof-v1-3-30b25a6ae24e@linaro.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Fri, 21 Jun 2024 22:46:13 +0800
X-Gmail-Original-Message-ID: <CAGb2v65T80TH9HUpny8vK2KNrE6aYQHf4x0CAUrxKWih34TdTA@mail.gmail.com>
Message-ID: <CAGb2v65T80TH9HUpny8vK2KNrE6aYQHf4x0CAUrxKWih34TdTA@mail.gmail.com>
Subject: Re: [PATCH 03/22] dt-bindings: thermal: allwinner,sun8i-a83t-ths:
 reference thermal-sensor schema
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
	Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Guillaume La Roque <glaroque@baylibre.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Vasily Khoruzhick <anarsoul@gmail.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Anson Huang <Anson.Huang@nxp.com>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Amit Kucheria <amitk@kernel.org>, 
	=?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>, 
	Heiko Stuebner <heiko@sntech.de>, Biju Das <biju.das.jz@bp.renesas.com>, 
	Orson Zhai <orsonzhai@gmail.com>, Baolin Wang <baolin.wang@linux.alibaba.com>, 
	Chunyan Zhang <zhang.lyra@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Pascal Paillet <p.paillet@foss.st.com>, Keerthy <j-keerthy@ti.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
	zhanghongchen <zhanghongchen@loongson.cn>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Bjorn Andersson <andersson@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, linux-pm@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-amlogic@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	imx@lists.linux.dev, linux-tegra@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, 
	Florian Fainelli <f.fainelli@gmail.com>, linux-rpi-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_074650_719434_A0BC0E7E 
X-CRM114-Status: UNSURE (   9.43  )
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
Reply-To: wens@csie.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gRnJpLCBKdW4gMTQsIDIwMjQgYXQgNTo0NuKAr1BNIEtyenlzenRvZiBLb3psb3dza2kKPGty
enlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBEZXZpY2UgaXMgYSB0aGVy
bWFsIHNlbnNvciBhbmQgaXQgcmVxdWlyZXMgJyN0aGVybWFsLXNlbnNvci1jZWxscycsIHNvCj4g
cmVmZXJlbmNlIHRoZSB0aGVybWFsLXNlbnNvci55YW1sIHRvIHNpbXBsaWZ5IGl0IGFuZCBicmlu
ZyB0aGUKPiBjb21tb24gZGVmaW5pdGlvbiBvZiAnI3RoZXJtYWwtc2Vuc29yLWNlbGxzJyBwcm9w
ZXJ0eS4KPgo+IFNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5r
b3psb3dza2lAbGluYXJvLm9yZz4KCkFja2VkLWJ5OiBDaGVuLVl1IFRzYWkgPHdlbnNAY3NpZS5v
cmc+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
