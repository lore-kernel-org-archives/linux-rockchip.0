Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06F54E6FE49
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Sep 2024 09:15:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Subject:References:Cc:
	To:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6I0PGXFcJtv17L4hw4+ULLUrMUjXMTD+t8C83lI4Y/w=; b=yR7HBzJfE5J5/e
	GwhHuGP3ypA+Bnkgv30mPgATyVhwTaLyyIYmnUNx3IhRorIxdAJIPPGT1tlztlC3AUel4A8b3McIb
	+lU/dQWf4aUYvh5vFzLyTV+VUblQpcn4+VA96Nb3+k5ECt4HryuS15Tk3d4GBXOIovbmqacY2zfwB
	MdrZ3pXr+s3Yu1QV170G29hzjju8QbObSBh8oS6AO2ZyMxFet7Cr9yZ1Rmc+CEvxszW+aIaiC/FnT
	CllSju2hBzYaJgHOXybZ9ph2GJkJE5XlXwEsyYULlwD6ocW655kzWaxz7qa/RSM3UOGwTvRi1rEOE
	8mshJryuvO9Rk/RnfvJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snE0U-0000000GTIo-2u3C;
	Sun, 08 Sep 2024 09:14:54 +0000
Received: from mout.web.de ([212.227.17.11])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snDy8-0000000GSl4-1csw;
	Sun, 08 Sep 2024 09:12:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1725786702; x=1726391502; i=markus.elfring@web.de;
	bh=WCMJWEieh/sXV2CRivFT84rsK/t+kM3zpH1slTwVITk=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:References:
	 Subject:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:
	 cc:content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=GCj7k49Tx/Lbx9BOMox0uWwLn5BevksJ8proerqSJxEF6ETIuNFBL1hyXbXX+ouh
	 aQbtsnnttRHBarnvr0TNcVdsl0CAgCFLdNlNKHIiwlawR0yur6FWW08S2rKrjhnde
	 JAnPiL661yKYygz6Rn/Xst4cVb4suSX1FzZSTlTGf8/ZDsS6CwUIjDOKaqi/38WUl
	 BcyiqCI+BTCiOmjEa509/AHQmp1ZqUgu7tLtyZfyiSGexn5XPhff1Za5+2TZdZvlP
	 yWmmcdsiBWlsOBGjuVOZxKJ4LoW+Ww2hc0uDsv0HcJ6ovt0nKiDRUO70v30iL9Tif
	 StwdfmPS1INWbIgq/Q==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.80.95]) by smtp.web.de (mrweb106
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1Mf3uS-1s87a02mnC-00mEdG; Sun, 08
 Sep 2024 11:11:42 +0200
Message-ID: <ab8a17d0-9505-4e81-b5ec-4a3025c48245@web.de>
Date: Sun, 8 Sep 2024 11:11:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Algea Cao <algea.cao@rock-chips.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com, Andrzej Hajda <andrzej.hajda@intel.com>,
 Andy Yan <andy.yan@rock-chips.com>, Conor Dooley <conor+dt@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Jonas Karlman <jonas@kwiboo.se>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Mark Yao <markyao0591@gmail.com>, Maxime Ripard <mripard@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Robert Foss <rfoss@kernel.org>, Sandy Huang <hjc@rock-chips.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Thomas Zimmermann <tzimmermann@suse.de>
Cc: LKML <linux-kernel@vger.kernel.org>, Alexandre Arnoud <aarnoud@me.com>,
 Luis de Arquer <ldearquer@gmail.com>
References: <20240831-b4-rk3588-bridge-upstream-v5-2-9503bece0136@collabora.com>
Subject: Re: [PATCH v5 2/4] drm/bridge: synopsys: Add DW HDMI QP TX Controller
 support library
Content-Language: en-GB
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <20240831-b4-rk3588-bridge-upstream-v5-2-9503bece0136@collabora.com>
X-Provags-ID: V03:K1:PJluZpNkDXlZ3wkBX5/Gqh/OwUEU3EH/o63oMUDBKTJGS5rOy8l
 tLwTiwnKIsd0JwYJGqrZj40eP3l+rSCYh1XNNEcr3iyt0ouyCKinmqYbQhMRzBCstjxX4Hh
 CodzD4RfYB1DsHm1q1+vztQUEr8oK+KWPwJUzVHsCsEsRCcFyiq22MOdN8/XyNoeqbCxw09
 /7R1YQdoLWnNnrbOautug==
UI-OutboundReport: notjunk:1;M01:P0:RoHr7exywYI=;VDzCZb0+H1eula7sqILN1mFZDuw
 rzBqr//2R5GEMKkyiriv5zyZqUaS4/00MPyIZtZaMkHm+a2lDmymIwCLE2DbX2qd+5tBczgE8
 0BXJ1VpSKZhFwLLld6/yzGqWvmZ0wI5KGRTqyLd+AEcgn2aCEYePFeb51ACMkJFA3isHDBCzF
 pZG+jq8WWdMFEHop9PPBy/bQRzHqrXdMAjpIkzsPfSRg72vwQM0xQjItM1ePNPde0jbH/oDTd
 LflTRZxkbj4lZ0jc7tljIUwoPZOA4bRWPSEgXTubzuH3O9cLmN7TqBkP8Ar77kdnfBm3fdx5r
 WIE+uHxOq+DhETnKm4fFrlEPWtz1uvQ/K6a2t3LtvKM59ifQJZaQONxH3rSUS3sVSnt7/T6FS
 ldO0wJ0IhAlhP1ziHsqmmz8bv4laJ2jb/s42l0icSfIKr6rxc73SHfLy1pxFiRbknZjDXWIlg
 a2Lzdd0KP07/Rgq/E4/VFXCc2HgM6jEsTlvYxDZNXZZXuyECOetT/Ut9ms8Iatvi/vYAl6Dja
 y5BAqbzCh+clapxDa8Ek62E6cD6CK4e8u40h8L94gdIDrPBj7zfELurEC03KupzyMn2PTDae0
 6GSATlihwoboef7AvG1ExMmOYjBMkfK3uwscUD+u8037oMEMY0iWpOuQie20EswoN9rPzp5lz
 5Qjglihp0gwyi51kRHGbHoLX2tViqVCmwZ/agCygCpaU7O3KAXJoYZUrCZ3GL3PLBGMaUVogh
 ho8PJXJBeZGS8ltsLuAepk+W0+zRMaAxebaZsrjmcYx89pRbpRnVjmmeeoINdELpxtnpZX4Uo
 1yk6rGl8IIOCh1xgQ01u+2Sw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240908_021228_730436_B1D1166A 
X-CRM114-Status: UNSURE (   5.86  )
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

4oCmCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1pLXFwLmMK
PiBAQCAtMCwwICsxLDcwOCBAQArigKYKPiArc3RhdGljIGludCBkd19oZG1pX3FwX2kyY194ZmVy
KHN0cnVjdCBpMmNfYWRhcHRlciAqYWRhcCwKPiArCQkJICAgICAgIHN0cnVjdCBpMmNfbXNnICpt
c2dzLCBpbnQgbnVtKQo+ICt7CuKApgo+ICsJbXV0ZXhfbG9jaygmaTJjLT5sb2NrKTsK4oCmCj4g
Kwlkd19oZG1pX3FwX21vZChoZG1pLCAwLCBJMkNNX09QX0RPTkVfTUFTS19OIHwgSTJDTV9OQUNL
X1JDVkRfTUFTS19OLAo+ICsJCSAgICAgICBNQUlOVU5JVF8xX0lOVF9NQVNLX04pOwo+ICsKPiAr
CW11dGV4X3VubG9jaygmaTJjLT5sb2NrKTsKPiArCj4gKwlyZXR1cm4gcmV0Owo+ICt9CuKApgoK
VW5kZXIgd2hpY2ggY2lyY3Vtc3RhbmNlcyB3b3VsZCB5b3UgYmVjb21lIGludGVyZXN0ZWQgdG8g
YXBwbHkgYSBzdGF0ZW1lbnQKbGlrZSDigJxndWFyZChtdXRleCkoJmkyYy0+bG9jayk74oCdPwpo
dHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92Ni4xMS1yYzYvc291cmNlL2luY2x1ZGUv
bGludXgvbXV0ZXguaCNMMTk2CgpSZWdhcmRzLApNYXJrdXMKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
