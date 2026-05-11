Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 104F5C44513
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:53:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MY8an5ye7t/Y6k+R4KHu2T8EERvrSmmx/GGM6zm1qyk=; b=CLmONzR2nO3K0I
	dO2dXLdALCd8gXv8Hc+e4y0SxOTy3CqY2vqS+jenVCmXtvSiEyInPKTKblrwL4MwtYWS28Pwog7vR
	+h4wKvcbRTpvBSyU0yJkYdQtJURuP5zcsffIldkgwFvloJIUE5bfAArGYcjvHN/70xqwIagP6KBXX
	9pF5vW6zlZsDj4N4FQSBvfd4wQd8IW3DsRhXc2KnlZ7i199A2VmemeO6RKfXwZ+tgc4B+Q9jVR9XY
	iXQAtPF09JnIczca7voWUTcvnoy2JD0htIO+Cp02xB0i6+nKLYQW3i/V8qiKqBbxqPv/mlUsRXNCF
	JAGv417T/kBlpNhw89cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkVc-00000001bDr-1Sl7;
	Thu, 09 Jul 2026 08:53:28 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMVnN-0000000EY0z-2DUJ
	for linux-rockchip@lists.infradead.org;
	Mon, 11 May 2026 18:56:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 834BC4452C
	for <linux-rockchip@lists.infradead.org>; Mon, 11 May 2026 18:56:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 627DFC2BD00
	for <linux-rockchip@lists.infradead.org>; Mon, 11 May 2026 18:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778525760;
	bh=zIB79Xk6boPPhMmzQH/JqpB68ofRCBiWIY7ln6Jka+I=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=gsXWUjbyow7NEAQM0X0NALFGmQpalpbS9xBt2Q8RvtDLJbAfXJJkychRH7mExvXH3
	 wLvWHyJefAS26wLfKstTSKg4fpYzXUzP9z8dBvpeunIG7OR8L+kw39IhzmarZrdw/h
	 btm81FfGDWtRy7mD9/ufgpqgi4b5BojlFQrrwerXbOl2YVC1Ogd4soD3R18nrQrEhG
	 nDr0emt/gHeMqaLpCF0fBYUdU7KS4/fQWh/w8yFK16D23lmWQHLQ/HbuI5h5SUrqtG
	 w7slVsBwfjrHsBXY80jeoLoXsCFsndGoqWJdNItHUlKljlND4E3ff8s1IBMBD4kXtw
	 okmwUrKGPyRTw==
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5a74ac8b40aso4309140e87.1
        for <linux-rockchip@lists.infradead.org>; Mon, 11 May 2026 11:56:00 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ8uMsZUVQUOs1yFMfSZfrb3QsUAwfWkwVw+vntmthUIanRYnQewBGGDXMdxpAOh3hElPcdNYNoUPdGCqV10xQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz68vcVmaMlSwmVFUxYXoxQj5/P7MgmsBIPYGEbh5YQGXK8D6yY
	/5rf4kzMULDCdQQ1Jtgp9dOE5Gkcsq1DhBRFRbBf8+UvB9YvaZ7oEsSG5bX34CVenhPCPVpMlmJ
	JO2n3TCgBof4Lb4lI37J/5KVGPPC1hIg=
X-Received: by 2002:a05:6512:3ba4:b0:5a8:63e0:cd92 with SMTP id
 2adb3069b0e04-5a8b709be01mr3083162e87.33.1778525758018; Mon, 11 May 2026
 11:55:58 -0700 (PDT)
MIME-Version: 1.0
References: <20260511165942.2774868-1-robh@kernel.org>
In-Reply-To: <20260511165942.2774868-1-robh@kernel.org>
From: Linus Walleij <linusw@kernel.org>
Date: Mon, 11 May 2026 20:55:46 +0200
X-Gmail-Original-Message-ID: <CAD++jLkmoN3iY=d5TgkLswgEt4Dgx_j3BAJPX-ASL+VnF_EzHw@mail.gmail.com>
X-Gm-Features: AVHnY4LWa20oUaE1F0JxYrIcNTXFA3pQESxY2XotgaPrY2W88xHdQsN2xv93t9I
Message-ID: <CAD++jLkmoN3iY=d5TgkLswgEt4Dgx_j3BAJPX-ASL+VnF_EzHw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: Consolidate "sram" property definition
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Liu Ying <victor.liu@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Rob Clark <robin.clark@oss.qualcomm.com>, 
	Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>, 
	Akhil P Oommen <akhilpo@oss.qualcomm.com>, Dmitry Baryshkov <lumag@kernel.org>, 
	Abhinav Kumar <abhinav.kumar@linux.dev>, Jessica Zhang <jesszhan0024@gmail.com>, 
	Marijn Suijten <marijn.suijten@somainline.org>, Vinod Koul <vkoul@kernel.org>, 
	Nas Chung <nas.chung@chipsnmedia.com>, Jackson Lee <jackson.lee@chipsnmedia.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Mirela Rabulea <mirela.rabulea@nxp.com>, 
	Detlev Casanova <detlev.casanova@collabora.com>, 
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Heiko Stuebner <heiko@sntech.de>, 
	Hugues Fruchet <hugues.fruchet@foss.st.com>, Alain Volmat <alain.volmat@foss.st.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	MD Danish Anwar <danishanwar@ti.com>, Roger Quadros <rogerq@kernel.org>, 
	Parvathi Pudi <parvathi@couthit.com>, Mohan Reddy Putluru <pmohan@couthit.com>, 
	Bjorn Andersson <andersson@kernel.org>, Mathieu Poirier <mathieu.poirier@linaro.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Michal Simek <michal.simek@amd.com>, 
	Mark Brown <broonie@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Lorenzo Bianconi <lorenzo@kernel.org>, Felix Fietkau <nbd@nbd.name>, "Andrew F. Davis" <afd@ti.com>, 
	Hussain Khaja <basharath@couthit.com>, Suman Anna <s-anna@ti.com>, 
	Ben Levinsky <ben.levinsky@amd.com>, Tanmay Shah <tanmay.shah@amd.com>, 
	Erwan Leray <erwan.leray@foss.st.com>, Fabrice Gasnier <fabrice.gasnier@foss.st.com>, 
	Roger Quadros <rogerq@ti.com>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	freedreno@lists.freedesktop.org, dmaengine@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com, netdev@vger.kernel.org, 
	linux-remoteproc@vger.kernel.org, linux-amlogic@lists.infradead.org, 
	linux-spi@vger.kernel.org, linux-mediatek@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_115601_607611_EF0AD210 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Thu, 09 Jul 2026 01:48:24 -0700
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

T24gTW9uLCBNYXkgMTEsIDIwMjYgYXQgNjo1OeKAr1BNIFJvYiBIZXJyaW5nIChBcm0pIDxyb2Jo
QGtlcm5lbC5vcmc+IHdyb3RlOgoKPiBUaGUgInNyYW0iIHByb3BlcnR5IGhhcyBiZWNvbWUgYSBk
ZSBmYWN0byBzdGFuZGFyZCBwcm9wZXJ0eSwgc28gY3JlYXRlIGEKPiBjb21tb24gc2NoZW1hIGZv
ciBpdCBhbmQgZHJvcCBhbGwgdGhlIGR1cGxpY2F0ZWQgZGVmaW5pdGlvbnMuCj4KPiBTaWduZWQt
b2ZmLWJ5OiBSb2IgSGVycmluZyAoQXJtKSA8cm9iaEBrZXJuZWwub3JnPgoKSSBsaWtlIGl0LgpS
ZXZpZXdlZC1ieTogTGludXMgV2FsbGVpaiA8bGludXN3QGtlcm5lbC5vcmc+CgpZb3VycywKTGlu
dXMgV2FsbGVpagoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
