Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B62B7C27C53
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 02:36:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DnF9BTrrXytx5xI/TnrBTZJ4oC/wkeukyDLqi55ojow=; b=SWUok3ycsYw19/
	igXvZwq0ntBy2KXWn4WEhV19acN1KLKdqgmYBL9MlyeV5pMZGOFT/BHOAhyB1rWadW4C644/iNgTU
	Wk3obhdEfkQOZ8PiDtCKzmrX9Xx+rjeG1atsyryfRL/C4BVL/rHGPsKl22Fgqpfa812j7d2UP2OL7
	8vDH/rxKCAVyOWDf8HCd5sYYvf87LS1x7RvbmlQf5ckAHuVOEAGkf0EU5ga4ov/QzCX+2OoSCRdtg
	46Rhi3i2WbYFyckH4fm6ZS2c16IKFS3WYeRXlumN4DAysAFHzNUj3/mtOvnRQUVElLm6DPGsCNfja
	R9lR/lOsDpoFO//7k7fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJ2Ed-00000008sPs-2kF5;
	Mon, 17 Jun 2024 02:36:43 +0000
Received: from mail-oa1-x2e.google.com ([2001:4860:4864:20::2e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJ2EY-00000008sMu-3y8K;
	Mon, 17 Jun 2024 02:36:40 +0000
Received: by mail-oa1-x2e.google.com with SMTP id 586e51a60fabf-25075f3f472so544978fac.2;
        Sun, 16 Jun 2024 19:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718591794; x=1719196594; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3S2YurUrl5MC+fkMuKFY0ClzSCLEfz1Oc40ER8vtAUk=;
        b=FgNBqMeY5EbDHhsTnWmHDnzACdfagYkzAhQiDYkDt/AxnxsPGLd2tp5TgPI4/WBfOh
         8prk0eOmTqJyuSc5UZHJ3nB6Y1oQU0B3hknzMfWJURy0Gd8tU5ExtyCfwPRtDjIlDjk7
         ecSapJ0zJRRtoJNtfy5KMZ2SXlqJFYmQ+/uvzPIdJN73+zW+mJutc4s07v3bVRJmfIg3
         DZW305TYSZy5Wm0n/hha0nO9AqoOGcIejU7Z+5ZicwrMch6iueYCvJPveDnrRbE/Ur+x
         OaPqPE41TWe098XBsvjunOSc+pfCAXHbHdNJGWwq31lhMSEmNyInrvIhcn0OVScrvTHz
         SC3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718591794; x=1719196594;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3S2YurUrl5MC+fkMuKFY0ClzSCLEfz1Oc40ER8vtAUk=;
        b=bN2Fj/2O9lki3NWa++iR9CzOSUqB0rLQ5nTOfM4DEUKY4BSRmF4hKAf3rL3069AlfP
         Abc1MUCKfWRB/KlODHtyDhFwZCciWBntoOjhmCaj2W61o1cklRVxGcUCSr1Or1frGJN4
         UrsNZyMs9qO4Em9OwViIwPQTSksuPjA5pPiZm3PMz3Uwyx5THxgDV8CsGunhLwkw1uhJ
         LfRh2Pckzwbpe6wE+2v5IoctRunrwLvYKUAZup2lsQUSW3wM2mJ1WLUm0ZVuYinGqZgN
         Mf7yIxnFU6bg0Zvm9ZSSs3Y4r3zaGRvCl9tyBg4pcMvk47WXGKmqARcjgsEr+hM0xfIz
         0vHg==
X-Forwarded-Encrypted: i=1; AJvYcCXbg5dv5iiyLpoQxbRcOPO86UwfuK11QnUrku/E0khjBRM+kbjbEd19WV2WOvMak525N0/KRwCEi8In5OfwgE2L+2Rzftyij9fJwgL05fcUDVBTTaqdBWmtwKjYnaG49Coi3lGD3/LCCUZGYMVUkX753L+wqxhN1jsdE+0+VOBNv0AUgA9GIMnwi0P+04FR5GuNbt0qaokrx7GusLqXw5q80fX1FSvuDbBmlxTWWzbBX5/dA4LcrbE7c8cmVxdA6rBQBXZPe/+QFfBlWptSa4pkGmZYXpA4p8suJ9HopaYQKHb+k/5H
X-Gm-Message-State: AOJu0YyWYHPynoapw09nVosEEiy7hadkOO3lGF3Z0GsnSTllAZPBmWa/
	th3CtaDrMLcjbr5bzofnBVC6bChITV811u5Dn5Q7x8qjkcj87zKAsgY5FEvoNBok3tcgAu20rsp
	1G48uehICmFWprCBapBDsI4HN9GJbpRlu
X-Google-Smtp-Source: AGHT+IGltFa0bQ5GCz9R8Qfp8q4AWMyO+O31iG05ayKCR1g5p5BB0jiP/wIlvjmzI8GEc+sBuDPZkWfe/0K++X8dom4=
X-Received: by 2002:a05:6870:469f:b0:254:d417:351f with SMTP id
 586e51a60fabf-258429511admr9266807fac.1.1718591794255; Sun, 16 Jun 2024
 19:36:34 -0700 (PDT)
MIME-Version: 1.0
References: <20240614-dt-bindings-thermal-allof-v1-0-30b25a6ae24e@linaro.org> <20240614-dt-bindings-thermal-allof-v1-3-30b25a6ae24e@linaro.org>
In-Reply-To: <20240614-dt-bindings-thermal-allof-v1-3-30b25a6ae24e@linaro.org>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Sun, 16 Jun 2024 19:36:08 -0700
Message-ID: <CA+E=qVdpw5dMSdZiBkX5i6y18vHzfG2JnBSmd2Rq=y4kkgZLQw@mail.gmail.com>
Subject: Re: [PATCH 03/22] dt-bindings: thermal: allwinner,sun8i-a83t-ths:
 reference thermal-sensor schema
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
	Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Guillaume La Roque <glaroque@baylibre.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Anson Huang <Anson.Huang@nxp.com>, Thierry Reding <thierry.reding@gmail.com>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
	Amit Kucheria <amitk@kernel.org>, =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>, 
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
X-CRM114-CacheID: sfid-20240616_193639_087492_F16938DC 
X-CRM114-Status: GOOD (  15.11  )
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

T24gRnJpLCBKdW4gMTQsIDIwMjQgYXQgMjo0NuKAr0FNIEtyenlzenRvZiBLb3psb3dza2kKPGty
enlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBEZXZpY2UgaXMgYSB0aGVy
bWFsIHNlbnNvciBhbmQgaXQgcmVxdWlyZXMgJyN0aGVybWFsLXNlbnNvci1jZWxscycsIHNvCj4g
cmVmZXJlbmNlIHRoZSB0aGVybWFsLXNlbnNvci55YW1sIHRvIHNpbXBsaWZ5IGl0IGFuZCBicmlu
ZyB0aGUKPiBjb21tb24gZGVmaW5pdGlvbiBvZiAnI3RoZXJtYWwtc2Vuc29yLWNlbGxzJyBwcm9w
ZXJ0eS4KPgo+IFNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5r
b3psb3dza2lAbGluYXJvLm9yZz4KUmV2aWV3ZWQtYnk6IFZhc2lseSBLaG9ydXpoaWNrIDxhbmFy
c291bEBnbWFpbC5jb20+Cgo+IC0tLQo+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy90aGVybWFs
L2FsbHdpbm5lcixzdW44aS1hODN0LXRocy55YW1sICAgICAgIHwgNiArKystLS0KPiAgMSBmaWxl
IGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQg
YS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdGhlcm1hbC9hbGx3aW5uZXIsc3Vu
OGktYTgzdC10aHMueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy90aGVy
bWFsL2FsbHdpbm5lcixzdW44aS1hODN0LXRocy55YW1sCj4gaW5kZXggNmIzYWVhNmQ3M2IwLi5k
YWQ4ZGU5MDA0OTUgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3RoZXJtYWwvYWxsd2lubmVyLHN1bjhpLWE4M3QtdGhzLnlhbWwKPiArKysgYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdGhlcm1hbC9hbGx3aW5uZXIsc3VuOGktYTgzdC10
aHMueWFtbAo+IEBAIC0xMCw2ICsxMCw4IEBAIG1haW50YWluZXJzOgo+ICAgIC0gVmFzaWx5IEto
b3J1emhpY2sgPGFuYXJzb3VsQGdtYWlsLmNvbT4KPiAgICAtIFlhbmd0YW8gTGkgPHRpbnkud2lu
ZHp6QGdtYWlsLmNvbT4KPgo+ICskcmVmOiB0aGVybWFsLXNlbnNvci55YW1sIwo+ICsKPiAgcHJv
cGVydGllczoKPiAgICBjb21wYXRpYmxlOgo+ICAgICAgZW51bToKPiBAQCAtNTUsNyArNTcsNiBA
QCBwcm9wZXJ0aWVzOgo+ICAgICAgbWF4SXRlbXM6IDEKPiAgICAgIGRlc2NyaXB0aW9uOiBwaGFu
ZGxlIHRvIGRldmljZSBjb250cm9sbGluZyB0ZW1wZXJhdGUgb2Zmc2V0IFNZU19DRkcgcmVnaXN0
ZXIKPgo+IC0gICMgU2VlIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy90aGVybWFs
L3RoZXJtYWwtc2Vuc29yLnlhbWwgZm9yIGRldGFpbHMKPiAgICAiI3RoZXJtYWwtc2Vuc29yLWNl
bGxzIjoKPiAgICAgIGVudW06Cj4gICAgICAgIC0gMAo+IEBAIC0xMzUsOSArMTM2LDggQEAgcmVx
dWlyZWQ6Cj4gICAgLSBjb21wYXRpYmxlCj4gICAgLSByZWcKPiAgICAtIGludGVycnVwdHMKPiAt
ICAtICcjdGhlcm1hbC1zZW5zb3ItY2VsbHMnCj4KPiAtYWRkaXRpb25hbFByb3BlcnRpZXM6IGZh
bHNlCj4gK3VuZXZhbHVhdGVkUHJvcGVydGllczogZmFsc2UKPgo+ICBleGFtcGxlczoKPiAgICAt
IHwKPgo+IC0tCj4gMi40My4wCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
