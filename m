Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA2E5C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Apr 2022 10:36:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BMsAtaRsR5knhjhhvfVeXxvTAqVWMdSeC2MJuE+5u3g=; b=CIWFYKjfrQPVeW
	oolEozj4tYyRJxOkfMskTDaVTYizF1VSxFhGqSYCaGlXAiwPtWw/uEgO1g1Xo1f2hwLy64nYF8IG3
	c7yNRN+efYRg9wzHx9FBivDIrewyY7Vqz0vMGelnjfRA7cYZGCaTcGsba7OK8SZeSgJziTflrQE+e
	s7QQwT1NStqUSDQZ4LOiV+JtZI4MXX7VOuRGHDBOV0wIi7UT4nptlVd2PDEJDP3DvGYqioSQej3RT
	w0Ihgk9AYnwfMTeapuoXYxpoqKEc7rcS1lw20SEzRs+1CByUdb4tc5BZSxKZmEZre0NNdvwd1HGON
	HItaZgzvVSL3urhp53lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhqdv-0002dI-1O; Fri, 22 Apr 2022 10:36:03 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhqdi-0002ZP-Hw; Fri, 22 Apr 2022 10:35:52 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 34867580055;
 Fri, 22 Apr 2022 06:35:44 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Fri, 22 Apr 2022 06:35:44 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
 :cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm3; t=1650623744; x=
 1650630944; bh=sialgZLQyO92Jzz731mhx4P39e8kWtOeqoXhw0cCtXY=; b=W
 xTSy59TGhUVrDTR5ZZ9AihUZQI4ztc0COij2niyKHFseYaXY1k1iijFElgMlbzjj
 IgW79/RwLv6Fp4X6u1RNldYGUTYXAc3mckrXYDpkxLD8Z0+bSam6DaOQn6RH8JJV
 Qurrb/7pXjRhV6hrBlyosxRCFXsVsKBzWSBUFBCKC76wZdJrkGNy/PnPSeGc6ESL
 uS9PQ4Df7oGGULaYujEqbEX0gkpBXi38nCiC253MjtXIcEU+DlXgHhcSk5SLyWR8
 DMCfpqY0+5d3saPZJOXn8wIeAiyRKjBJE3kBwqEP2fTi0gJ5AUl4LXi/x+9R7+KU
 HwyrBchREXwkM8JuhkQ5w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm1; t=1650623744; x=1650630944; bh=sialgZLQyO92J
 zz731mhx4P39e8kWtOeqoXhw0cCtXY=; b=xCGQhbzjwFiulmF6LlwEI2cPB3bBF
 0ZqiYsKEqcIu5ZJxYH0mF7KEYuIof1NLNHoW4TtCBHWDqwK+z2RZi+HgbfH1FOpb
 5nEg/us+9DLek/Br6MvB1IWNoskzsjdYAysFTHU1OckKOZaOQbqHZyDf//HLon6T
 d7mcQhAcY1FFLvkEiygt802ZKh7zDfaBMBxNldjoO4kRqUQb6whLZwd8ZmEBlIhp
 ctpWULiSYUe0CMhkaloAbV6hB/Gu4jw3+6LjXHWnZntyvDNrP/WiB1ZJOf9x6Xwc
 3WHrccx3rtfbAlPOI3TziqtZIPUOpSkUOAhqS5u+rspah0ghgnBo8a+Ew==
X-ME-Sender: <xms:_oRiYlIPkSce9J_iB2dx7YVzLXKxS60W4-Vyw3zmLO4U1aLiaFmmbg>
 <xme:_oRiYhJOFbCsPLyYHVGGL4uD5HM-gey6IrG0BNy0SHfJOB4Q2dzZGy0EfuD4xixYV
 3YhQ9CUuNJWy7-W19Q>
X-ME-Received: <xmr:_oRiYtvBLqnHwVb37WFesVwZ0PMShNb6BvWXvV8Vm7Y4HetLslo-SvwCRTZi3P3Uu5oZYU4g5GlpHVUV0fb323r_rgqp4WPTvpHVZpo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrtdeggddvkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvfevufffkffojghfgggtgfesthekredtredtjeenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
 htthgvrhhnpeeuieeggffhffffieefheduieeuvdetgeeufeffvefgtedvffehheekffev
 udefieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
 hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:_oRiYma42u8bFsyuaEoHigJkGAD8rHqS6b6IrkpHQB1N2nS1P6TckQ>
 <xmx:_oRiYsbrF1C3QRv8Y5kK58OXIM5reFvVFe9fVe3wBCRWdmYHf-Yu9g>
 <xmx:_oRiYqDjcSeHlAIkkqXF6PNc-gW-JT9Geogu1FY8mL5VO4njDgDJWQ>
 <xmx:AIViYlRpbFTOma7kkn3FGWD0v6WQLAHvvXHX_xxmOtMZ2RMdHubTSg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 22 Apr 2022 06:35:42 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: =?UTF-8?q?Jos=C3=A9=20Exp=C3=B3sito?= <jose.exposito89@gmail.com>,
 inki.dae@samsung.com
Cc: Maxime Ripard <maxime@cerno.tech>, daniel@ffwll.ch,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 laurent.pinchart@ideasonboard.com, linux-arm-kernel@lists.infradead.org,
 alain.volmat@foss.st.com, lgirdwood@gmail.com, broonie@kernel.org,
 samuel@sholland.org, linux-samsung-soc@vger.kernel.org,
 p.zabel@pengutronix.de, airlied@linux.ie, kyungmin.park@samsung.com,
 mripard@kernel.org, jernej.skrabec@gmail.com, jy0922.shim@samsung.com,
 alim.akhtar@samsung.com, krzk@kernel.org, heiko@sntech.de,
 linux-sunxi@lists.linux.dev, hjc@rock-chips.com, wens@csie.org,
 dri-devel@lists.freedesktop.org, sw0312.kim@samsung.com
Subject: Re: (subset) [PATCH 5/5] drm/sun4i: hdmi: Replace
 drm_detect_hdmi_monitor() with is_hdmi
Date: Fri, 22 Apr 2022 12:35:38 +0200
Message-Id: <165062373584.1462930.6032469942386231983.b4-ty@cerno.tech>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220421170725.903361-6-jose.exposito89@gmail.com>
References: <20220421170725.903361-1-jose.exposito89@gmail.com>
 <20220421170725.903361-6-jose.exposito89@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_033551_505352_E4BB44FF 
X-CRM114-Status: UNSURE (   6.75  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVGh1LCAyMSBBcHIgMjAyMiAxOTowNzoyNSArMDIwMCwgSm9zw6kgRXhww7NzaXRvIHdyb3Rl
Ogo+IE9uY2UgRURJRCBpcyBwYXJzZWQsIHRoZSBtb25pdG9yIEhETUkgc3VwcG9ydCBpbmZvcm1h
dGlvbiBpcyBhdmFpbGFibGUKPiB0aHJvdWdoIGRybV9kaXNwbGF5X2luZm8uaXNfaGRtaS4KPiAK
PiBUaGlzIGRyaXZlciBjYWxscyBkcm1fZGV0ZWN0X2hkbWlfbW9uaXRvcigpIHRvIHJlY2VpdmUg
dGhlIHNhbWUKPiBpbmZvcm1hdGlvbiBhbmQgc3RvcmVzIGl0cyBvd24gY2FjaGVkIHZhbHVlLCB3
aGljaCBpcyBsZXNzIGVmZmljaWVudC4KPiAKPiBBdm9pZCBjYWxsaW5nIGRybV9kZXRlY3RfaGRt
aV9tb25pdG9yKCkgYW5kIHVzZSBkcm1fZGlzcGxheV9pbmZvLmlzX2hkbWkKPiBpbnN0ZWFkIGFu
ZCBhbHNvIHJlbW92ZSBzdW40aV9oZG1pLmhkbWlfbW9uaXRvciBhcyBpdCBpcyBubyBsb25nZXIK
PiBuZWNlc3NhcnkuCj4gCj4gWy4uLl0KCkFwcGxpZWQgdG8gZHJtL2RybS1taXNjIChkcm0tbWlz
Yy1uZXh0KS4KClRoYW5rcyEKTWF4aW1lCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
