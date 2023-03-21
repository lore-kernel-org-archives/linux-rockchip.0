Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88A67C74A5B
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Mar 2023 08:12:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8BWAqRrNyj03T2ougylMKjrZNfSq1ALogpVEDGLR7z0=; b=j7Tp/aQQsPREsrFzR7vDZkxa62
	7Miep8EZQni1afzC6wYofW9CC6OBCnTq2JtKju1sWDrUE8q7XcKNoaaUWYJxw7HM/lpQugLDDlXW2
	AS8MrWNBHmlkpF3+/TUT8aEE4BvFqyuqz09vIup0nWDIvKE9l+UwRbekQ4Ux1TDaENvsg6k/WAasJ
	FfDH1CdzFe8hpvoBTRbLiclWnj7AxfFSOyVYoXmnnNmVAphv8xdGCqcA/WJB024dycD5LkpKZ9Ft0
	4PtBWUtqHTjHCyT6f0JOQgAO7NpqnEAB19QNqmMKMMTiYqKvTL45ZIjgCgoPRD7DoK73JhnHxnlzt
	vNdBOaEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peX6S-00BdRJ-13;
	Tue, 21 Mar 2023 08:12:20 +0000
Received: from wnew1-smtp.messagingengine.com ([64.147.123.26])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peX6L-00BdOV-3C;
	Tue, 21 Mar 2023 08:12:15 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailnew.west.internal (Postfix) with ESMTP id 052262B0769F;
	Tue, 21 Mar 2023 04:12:03 -0400 (EDT)
Received: from imap51 ([10.202.2.101])
  by compute6.internal (MEProxy); Tue, 21 Mar 2023 04:12:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
	:content-transfer-encoding:content-type:content-type:date:date
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm1; t=
	1679386323; x=1679393523; bh=p6c5VTiMv6AfZVBMNz3DxVLxCSIdNaJFVMc
	Qk71zPTY=; b=uVCWvJx6nGWx/5u3VSJfVJjj/h5Ng2P2Yhqie0BJHMjvjzYTE1H
	S3000Ce0+mrEAYEo+fTrrkOwrGIyGM/RtSIJpIl+AMe3IaZe/M9yfHnG9yQfEsGB
	osDTshQUiWc3Ls9qw2Zw7uWeyKKv9pZtQgUyAYyK61kK6H6zm7ZRw1iyIFDATAh6
	bngnkf2pqjCtTHy18W2iC0jMSPclRhXy7pawiFxq3uFJa37/Dw0UOVfoCTYIxNid
	kVhGUwaRgeQY4B8o9mWH+SDBN77zX5XpwykUHuqV16i9fCmBftgO42riFzH6w1Ei
	GyD4hF/a4GlUL9X/bR9I68HXVhkZhUlJJ3w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1679386323; x=
	1679393523; bh=p6c5VTiMv6AfZVBMNz3DxVLxCSIdNaJFVMcQk71zPTY=; b=s
	1KchFhGt52dzXyN5O79HxuLj6FqmtaoRirc8tC8IgABafDJR6lWnVdeusmW3YgwN
	FJAf+yx/n1aoiR0A753RChyEfaoIpIQzkZeE9GElnDfGMGVe4oIkqtFw9qR7h1WP
	zxqQpmzCduK4QJMEm9wue/7sWeCfuf6P6YHLtFguSITKE6rIm8h05WV74PgknMBG
	2bAxDrbC+Le26NytxoV2l9iQeICkXFr8qbpiOdPcrl+yCtPjEeppm+ecm6oJOczI
	x/6d20UEibueIHsAvJp1EBg4CLfe3Tl1BSAVsdcOQAbqRbpMjYLiXHNTVklS4axM
	ckago2w0Vsl5TtYiY3MpQ==
X-ME-Sender: <xms:0GYZZJjZT4P_yV-Mx_Quzl7wy0YQtEhKnVKu2qt6FAe5g0Nu5umXIw>
    <xme:0GYZZOBRlFaFGXG_FQkcgQEutyw7RZhEAYkiTJLcbFTaKAx0oZHJTkyPwuMSM-9_n
    _kFQQURc5ACQt9CvsA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrvdefledguddugecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefofgggkfgjfhffhffvufgtgfesthhqredtreerjeenucfhrhhomhepfdet
    rhhnugcuuegvrhhgmhgrnhhnfdcuoegrrhhnugesrghrnhgusgdruggvqeenucggtffrrg
    htthgvrhhnpeffkedtffejkeeihedtffevtedvhfdvhfehfffgleekgffgveeftdefgeek
    vedvjeenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivg
    eptdenucfrrghrrghmpehmrghilhhfrhhomheprghrnhgusegrrhhnuggsrdguvg
X-ME-Proxy: <xmx:0GYZZJF0ltCZr-3PUVxWiK0aO1a98gJRJ1RIE6_3xBjMQmp3OqMi_Q>
    <xmx:0GYZZORTWXWGlKctJD6dpm53uhz2MzndLAhOFP-b7JCl5028QMmYHA>
    <xmx:0GYZZGxU24J2mJwqKURxfuq2oxh3zplPa2ump9UmR_oOSDgOlsWU1w>
    <xmx:02YZZGNbMwV1BEbfQ41yDSjvKrVTgq4nxJ1za-0qfoPrs4jKp0pJRPjrGNk>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id B3F8BB60086; Tue, 21 Mar 2023 04:12:00 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.9.0-alpha0-221-gec32977366-fm-20230306.001-gec329773
Mime-Version: 1.0
Message-Id: <86431868-488b-4a72-944b-231b6d0382b0@app.fastmail.com>
In-Reply-To: <20230312131318.351173-20-krzysztof.kozlowski@linaro.org>
References: <20230312131318.351173-1-krzysztof.kozlowski@linaro.org>
 <20230312131318.351173-20-krzysztof.kozlowski@linaro.org>
Date: Tue, 21 Mar 2023 09:11:36 +0100
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>,
 "Joe Tessler" <jrt@google.com>,
 "Hans Verkuil" <hverkuil-cisco@xs4all.nl>,
 "Mauro Carvalho Chehab" <mchehab@kernel.org>,
 "Neil Armstrong" <neil.armstrong@linaro.org>,
 "Kevin Hilman" <khilman@baylibre.com>,
 "Jerome Brunet" <jbrunet@baylibre.com>,
 "Martin Blumenstingl" <martin.blumenstingl@googlemail.com>,
 "Thierry Reding" <thierry.reding@gmail.com>,
 "Jon Hunter" <jonathanh@nvidia.com>,
 "Manivannan Sadhasivam" <mani@kernel.org>,
 "Michael Tretter" <m.tretter@pengutronix.de>,
 "Pengutronix Kernel Team" <kernel@pengutronix.de>,
 "Jacopo Mondi" <jacopo+renesas@jmondi.org>,
 "Kieran Bingham" <kieran.bingham+renesas@ideasonboard.com>,
 "Laurent Pinchart" <laurent.pinchart+renesas@ideasonboard.com>,
 =?UTF-8?Q?Niklas_S=C3=B6derlund?=
 <niklas.soderlund+renesas@ragnatech.se>,
 "Rui Miguel Silva" <rmfrfs@gmail.com>,
 "Wenyou Yang" <wenyou.yang@microchip.com>,
 "Bin Liu" <bin.liu@mediatek.com>,
 "Matthias Brugger" <matthias.bgg@gmail.com>,
 "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>,
 "Minghsiu Tsai" <minghsiu.tsai@mediatek.com>,
 "Houlong Wei" <houlong.wei@mediatek.com>,
 "Andrew-CT Chen" <andrew-ct.chen@mediatek.com>,
 "Andrzej Pietrasiewicz" <andrzejtp2010@gmail.com>,
 "Jacek Anaszewski" <jacek.anaszewski@gmail.com>,
 "Sylwester Nawrocki" <s.nawrocki@samsung.com>,
 "Patrice Chotard" <patrice.chotard@foss.st.com>,
 "Yong Deng" <yong.deng@magewell.com>,
 "Paul Kocialkowski" <paul.kocialkowski@bootlin.com>,
 "Chen-Yu Tsai" <wens@csie.org>,
 "Jernej Skrabec" <jernej.skrabec@gmail.com>,
 "Samuel Holland" <samuel@sholland.org>,
 Prabhakar <prabhakar.csengg@gmail.com>,
 "Ezequiel Garcia" <ezequiel@vanguardiasur.com.ar>,
 "Philipp Zabel" <p.zabel@pengutronix.de>, "Sean Young" <sean@mess.org>,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-tegra@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-rockchip@lists.infradead.org,
 oushixiong <oushixiong@kylinos.cn>
Subject: Re: [PATCH 20/28] media: platform: jpeg: always reference OF data
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_011214_359423_96E3BDC5 
X-CRM114-Status: UNSURE (   8.66  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gU3VuLCBNYXIgMTIsIDIwMjMsIGF0IDE0OjEzLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3Rl
Ogo+IFRoZSBkcml2ZXIgY2FuIG1hdGNoIG9ubHkgdmlhIHRoZSBEVCB0YWJsZSBzbyB0aGUgdGFi
bGUgc2hvdWxkIGJlIGFsd2F5cwo+IHVzZWQgYW5kIHRoZSBvZl9tYXRjaF9wdHIgZG9lcyBub3Qg
aGF2ZSBhbnkgc2Vuc2UgKHRoaXMgYWxzbyBhbGxvd3MgQUNQSQo+IG1hdGNoaW5nIHZpYSBQUlAw
MDAxLCBldmVuIHRob3VnaCBpdCBtaWdodCBub3QgYmUgcmVsZXZhbnQgaGVyZSkuICBUaGlzCj4g
YWxzbyBmaXhlcyAhQ09ORklHX09GIGVycm9yOgo+Cj4gICBkcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L21lZGlhdGVrL2pwZWcvbXRrX2pwZWdfY29yZS5jOjE4OTA6Mzg6IGVycm9yOiAKPiDigJhtdGs4
MTk1X2pwZWdkZWNfZHJ2ZGF0YeKAmSBkZWZpbmVkIGJ1dCBub3QgdXNlZCAKPiBbLVdlcnJvcj11
bnVzZWQtY29uc3QtdmFyaWFibGU9XQo+Cj4gU2lnbmVkLW9mZi1ieTogS3J6eXN6dG9mIEtvemxv
d3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPgoKSSBzZWUgbm93IHRoYXQgd2Ug
Ym90aCBzdWJtaXR0ZWQgdGhlIHNhbWUgcGF0Y2gsIGJ1dCBub3cgSGFucwptZXJnZWQgYSB3b3Jz
ZSBmaXggWzFdIHdpdGhvdXQgYSBjaGFuZ2Vsb2cgdGV4dC4KCiAgICBBcm5kCgpodHRwczovL2dp
dC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9uZXh0L2xpbnV4LW5leHQuZ2l0
L2NvbW1pdC8/aD00YWU0Nzc3MGQ1N2JmZjAxCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
