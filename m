Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0B9BC44508
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JDolwt8kpN783nYn5fEmvTr48Kfy5Go6RJmFCJKyDHw=; b=BHPF2aiuTZP/b1
	AaKewMBDw1yFRpXNCKeZ6H7xcrciHIaROxz6rR1z4GuSAeMPGiAM442xraBvdo2IuQXXqX0MyUeMD
	A6Wwv5yaQT4QfJ5IrJy4+UJkZIpF1DR1uqPVvhXoaqgretZWKvxxbOsCsjnxdGo0SkJfGaY7pOVhq
	v7cgRek7zc+VF1aBK/b+zw4WcyMgums0F8fxAfyJxLAoIY3OneBSnV1h6mPQ8Dl2I4pEsfhD/KgA+
	zqzbGQ5XnS2g9N3OLBpgrNo2hO36UbPHR519+tH3KctfffggwhfeQ7sbvng+8wHGSXBW1la4BVu0r
	tXqN9Qhn/1u8hSuJCBaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkQs-00000001V2v-1mC0;
	Thu, 09 Jul 2026 08:48:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUQhm-0000000DFm3-28iv;
	Tue, 02 Jun 2026 15:07:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=SyKeADglYifMiI6F4hlQZaZznG56rgK87qRVDUFez+k=; b=RF/AKV5Nuk8kbmxxrF/5v0BAzf
	3fIFNiH8UJ4tVY9qCQaTCTNjLmG/D+oF5lgFVgiMeK2lo8m+p2Q/ENvD4HZH7/kIrIHN2sBi9raOE
	zFk7FBTWTihpRJa6dzsbNKtPgVRae642OgNKDhVGG3d6DcaR54YXUomCT5DBT6DYc5fTCx9swObwT
	ukP1Nmh6O7H2t2rJkNGtcH9XsrV5CjWjvAQDXQ2c3SmFpz7rAXugQ2uonqzyNibjucqKNgFt2sQif
	FLnwcmEd3IVBc6OOWCbfAgkwmg5EZbBgOWnZB9hEHgO4EHTginZ9OxJp1BbRz9zzkNtBZxdPuCzoE
	ZLuEW47g==;
From: Heiko Stuebner <heiko@sntech.de>
To: Liu Ying <victor.liu@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Rob Clark <robin.clark@oss.qualcomm.com>,
 Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>,
 Akhil P Oommen <akhilpo@oss.qualcomm.com>,
 Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>,
 Jessica Zhang <jesszhan0024@gmail.com>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Vinod Koul <vkoul@kernel.org>, Nas Chung <nas.chung@chipsnmedia.com>,
 Jackson Lee <jackson.lee@chipsnmedia.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Mirela Rabulea <mirela.rabulea@nxp.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Hugues Fruchet <hugues.fruchet@foss.st.com>,
 Alain Volmat <alain.volmat@foss.st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, MD Danish Anwar <danishanwar@ti.com>,
 Roger Quadros <rogerq@kernel.org>, Parvathi Pudi <parvathi@couthit.com>,
 Mohan Reddy Putluru <pmohan@couthit.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Michal Simek <michal.simek@amd.com>, Mark Brown <broonie@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Linus Walleij <linusw@kernel.org>, Lorenzo Bianconi <lorenzo@kernel.org>,
 Felix Fietkau <nbd@nbd.name>, "Andrew F. Davis" <afd@ti.com>,
 Hussain Khaja <basharath@couthit.com>, Suman Anna <s-anna@ti.com>,
 Ben Levinsky <ben.levinsky@amd.com>, Tanmay Shah <tanmay.shah@amd.com>,
 Erwan Leray <erwan.leray@foss.st.com>,
 Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
 "Rob Herring (Arm)" <robh@kernel.org>
Cc: Roger Quadros <rogerq@ti.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 dmaengine@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 netdev@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-spi@vger.kernel.org,
 linux-mediatek@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: Consolidate "sram" property definition
Date: Tue, 02 Jun 2026 17:06:05 +0200
Message-ID: <7044489.a9HWlOh95j@phil>
In-Reply-To: <20260511165942.2774868-1-robh@kernel.org>
References: <20260511165942.2774868-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_080658_549480_AD9D693E 
X-CRM114-Status: UNSURE (   8.13  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Thu, 09 Jul 2026 01:48:23 -0700
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

QW0gTW9udGFnLCAxMS4gTWFpIDIwMjYsIDE4OjU5OjM2IE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21t
ZXJ6ZWl0IHNjaHJpZWIgUm9iIEhlcnJpbmcgKEFybSk6Cj4gVGhlICJzcmFtIiBwcm9wZXJ0eSBo
YXMgYmVjb21lIGEgZGUgZmFjdG8gc3RhbmRhcmQgcHJvcGVydHksIHNvIGNyZWF0ZSBhCj4gY29t
bW9uIHNjaGVtYSBmb3IgaXQgYW5kIGRyb3AgYWxsIHRoZSBkdXBsaWNhdGVkIGRlZmluaXRpb25z
Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IFJvYiBIZXJyaW5nIChBcm0pIDxyb2JoQGtlcm5lbC5vcmc+
Cj4gLS0tCgo+ICAuLi4vYmluZGluZ3MvbWVkaWEvcm9ja2NoaXAsdmRlYy55YW1sICAgICAgICAg
fCAgNSArKy0tCkFja2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
