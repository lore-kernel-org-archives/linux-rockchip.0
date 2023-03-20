Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD91CC6FD1D
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Mar 2023 21:30:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M2tbHIWE43SDLDLdhf+llmAbaJiOqv96qbLIpGWqsGo=; b=cF+hqRH11ZdIZm
	rBom6q8q/JRTflR+oHeamOr5Qby5zDwTAPPyKwGdzJvthokK9QHudYxo4+pxEpAup15Em1FbkVxzu
	bZwWBLFtgUsPuKH/cWPOsdDp0wGQTyG1ArzzrNgzYDIAGvMDqxrnK70DCmfmrf866vL8Zf7iO/iCz
	oT9T7+ziGNV3tRBJlHmgWpM91fxtBrk6HJWFOu5RanVV2z8NCiF13lRy3Dyw/gcWwZNkAAmJXN1QF
	Gna4hukHSqwEzE6a1JMqYQLz/C9XE5vpwUSAqeqyaQg6+c4yj/12p+MW94tQS2xm6DNyxFyTUq1ED
	HsVsIQ5ibVpCD/m5nRiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1peN5F-00AXo1-09;
	Mon, 20 Mar 2023 21:30:25 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1peM1l-00APXF-3A;
	Mon, 20 Mar 2023 20:22:47 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 90397B80D40;
	Mon, 20 Mar 2023 20:22:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D8F9C433A1;
	Mon, 20 Mar 2023 20:22:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679343763;
	bh=DsQcH8xwycCkHIQ8QfvnCvZGiwQiVzM3IGKlFw3c6vs=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=MLccj/RLSM98dlukhUc7AVMvtM6TNxo4TMAo84qD8ka/wn6JB3LqwSYY268Q6UPud
	 +g0BO14nCIrhwzk4PcKUeCeF6199gB6YzzwXV5rmCXuf/AJy81c59aH3HTDhAF8pF3
	 WUix2uGxBJ6EzDuFwdgKXGjiuj47JalNztMo0M4AM93Rbu6rXPtUH9eXGEnhunwEHA
	 IhDq1pWhPAHpV3JgWq3Xd1Jf6xM4w95kkogu8Xw40M/55Q+BC8DUVor3oPXiUV25o8
	 iYPno+at84ZG0UU6qHS8baVlXB2wwj9uQBZFEeXtv7pXyrptYa1Ust701v7xy3Kjwp
	 DCzpI9K6lpzTg==
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-5416b0ab0ecso244605487b3.6;
        Mon, 20 Mar 2023 13:22:43 -0700 (PDT)
X-Gm-Message-State: AO0yUKU0/onXV7fJQw7lcZAkeIwCH3iUoSJd/RwmCAN+I5W0blqzhl6b
	sXDYKfZFvA3k6BxURZQsMB/TjJti9PDX4mxs6g==
X-Google-Smtp-Source: AK7set9FJ+m1VwanpiAMfxA818L7HV/dPyhWg6DYQSadevXyKErLiGfJvZlidEnREDYwVbhCFXXRZvTZAhJh0VfOM4I=
X-Received: by 2002:a1f:28c4:0:b0:436:2fa4:e25d with SMTP id
 o187-20020a1f28c4000000b004362fa4e25dmr363729vko.3.1679343741554; Mon, 20 Mar
 2023 13:22:21 -0700 (PDT)
MIME-Version: 1.0
References: <20230317233605.3967621-1-robh@kernel.org>
In-Reply-To: <20230317233605.3967621-1-robh@kernel.org>
From: Rob Herring <robh@kernel.org>
Date: Mon, 20 Mar 2023 15:22:10 -0500
X-Gmail-Original-Message-ID: <CAL_JsqK+Q5HS=0PqnA60gV43O7ymxhPH-WHKFJKpQMYe5KfEfg@mail.gmail.com>
Message-ID: <CAL_JsqK+Q5HS=0PqnA60gV43O7ymxhPH-WHKFJKpQMYe5KfEfg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: net: Drop unneeded quotes
To: "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>, 
	Manivannan Sadhasivam <mani@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
	Florian Fainelli <f.fainelli@gmail.com>, 
	Appana Durga Kedareswara rao <appana.durga.rao@xilinx.com>, 
	Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com>, Wolfgang Grandegger <wg@grandegger.com>, 
	Marc Kleine-Budde <mkl@pengutronix.de>, Michal Simek <michal.simek@xilinx.com>, 
	Andrew Lunn <andrew@lunn.ch>, Vladimir Oltean <olteanv@gmail.com>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	Tobias Waldekranz <tobias@waldekranz.com>, Lars Povlsen <lars.povlsen@microchip.com>, 
	Steen Hegelund <Steen.Hegelund@microchip.com>, Daniel Machon <daniel.machon@microchip.com>, 
	UNGLinuxDriver@microchip.com, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Heiko Stuebner <heiko@sntech.de>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-actions@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev, 
	linux-aspeed@lists.ozlabs.org, linux-can@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-mediatek@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230320_132246_355190_0546E332 
X-CRM114-Status: GOOD (  13.80  )
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

T24gRnJpLCBNYXIgMTcsIDIwMjMgYXQgNjozNuKAr1BNIFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5l
bC5vcmc+IHdyb3RlOgo+Cj4gQ2xlYW51cCBiaW5kaW5ncyBkcm9wcGluZyB1bm5lZWRlZCBxdW90
ZXMuIE9uY2UgYWxsIHRoZXNlIGFyZSBmaXhlZCwKPiBjaGVja2luZyBmb3IgdGhpcyBjYW4gYmUg
ZW5hYmxlZCBpbiB5YW1sbGludC4KPgo+IFNpZ25lZC1vZmYtYnk6IFJvYiBIZXJyaW5nIDxyb2Jo
QGtlcm5lbC5vcmc+Cj4gLS0tCj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9hY3Rpb25z
LG93bC1lbWFjLnlhbWwgIHwgIDIgKy0KPiAgLi4uL2JpbmRpbmdzL25ldC9hbGx3aW5uZXIsc3Vu
NGktYTEwLWVtYWMueWFtbCAgICAgfCAgMiArLQo+ICAuLi4vYmluZGluZ3MvbmV0L2FsbHdpbm5l
cixzdW40aS1hMTAtbWRpby55YW1sICAgICB8ICAyICstCj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRp
bmdzL25ldC9hbHRyLHRzZS55YW1sICAgICAgICAgIHwgIDIgKy0KPiAgLi4uL2JpbmRpbmdzL25l
dC9hc3BlZWQsYXN0MjYwMC1tZGlvLnlhbWwgICAgICAgICAgfCAgMiArLQo+ICAuLi4vZGV2aWNl
dHJlZS9iaW5kaW5ncy9uZXQvYnJjbSxhbWFjLnlhbWwgICAgICAgICB8ICAyICstCj4gIC4uLi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9icmNtLHN5c3RlbXBvcnQueWFtbCAgIHwgIDIgKy0KPiAg
Li4uL2JpbmRpbmdzL25ldC9icm9hZGNvbS1ibHVldG9vdGgueWFtbCAgICAgICAgICAgfCAgMiAr
LQo+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvY2FuL3hpbGlueCxjYW4ueWFtbCAgICB8
ICA2ICsrKy0tLQo+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvZHNhL2JyY20sc2YyLnlh
bWwgICAgICB8ICAyICstCj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9kc2EvcWNhOGsu
eWFtbCAgICAgICAgIHwgIDIgKy0KPiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L2VuZ2xl
ZGVyLHRzbmVwLnlhbWwgICAgfCAgMiArLQo+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQv
ZXRoZXJuZXQtcGh5LnlhbWwgICAgICB8ICAyICstCj4gIC4uLi9iaW5kaW5ncy9uZXQvZnNsLHFv
cmlxLW1jLWRwbWFjLnlhbWwgICAgICAgICAgIHwgIDIgKy0KPiAgLi4uL2JpbmRpbmdzL25ldC9p
bnRlbCxpeHA0eHgtZXRoZXJuZXQueWFtbCAgICAgICAgfCAgOCArKysrLS0tLQo+ICAuLi4vZGV2
aWNldHJlZS9iaW5kaW5ncy9uZXQvaW50ZWwsaXhwNHh4LWhzcy55YW1sICB8IDE0ICsrKysrKyst
LS0tLS0tCj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9tYXJ2ZWxsLG12dXNiLnlhbWwg
ICAgIHwgIDIgKy0KPiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L21kaW8tZ3Bpby55YW1s
ICAgICAgICAgfCAgMiArLQo+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvbWVkaWF0ZWss
bmV0LnlhbWwgICAgICB8ICAyICstCj4gIC4uLi9iaW5kaW5ncy9uZXQvbWVkaWF0ZWssc3Rhci1l
bWFjLnlhbWwgICAgICAgICAgIHwgIDIgKy0KPiAgLi4uL2JpbmRpbmdzL25ldC9taWNyb2NoaXAs
bGFuOTY2eC1zd2l0Y2gueWFtbCAgICAgfCAgMiArLQo+ICAuLi4vYmluZGluZ3MvbmV0L21pY3Jv
Y2hpcCxzcGFyeDUtc3dpdGNoLnlhbWwgICAgICB8ICA0ICsrLS0KPiAgLi4uL2RldmljZXRyZWUv
YmluZGluZ3MvbmV0L21zY2MsbWlpbS55YW1sICAgICAgICAgfCAgMiArLQo+ICAuLi4vZGV2aWNl
dHJlZS9iaW5kaW5ncy9uZXQvbmZjL21hcnZlbGwsbmNpLnlhbWwgICB8ICAyICstCj4gIC4uLi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9uZmMvbnhwLHBuNTMyLnlhbWwgICAgIHwgIDIgKy0KPiAg
Li4uL2JpbmRpbmdzL25ldC9wc2UtcGQvcG9kbC1wc2UtcmVndWxhdG9yLnlhbWwgICAgfCAgMiAr
LQo+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvcWNvbSxpcHE0MDE5LW1kaW8ueWFtbCB8
ICAyICstCj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9xY29tLGlwcTgwNjQtbWRpby55
YW1sIHwgIDIgKy0KPiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3JvY2tjaGlwLGVtYWMu
eWFtbCAgICAgfCAgMiArLQo+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvc25wcyxkd21h
Yy55YW1sICAgICAgICB8ICAyICstCj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9zdG0z
Mi1kd21hYy55YW1sICAgICAgIHwgIDQgKystLQo+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9u
ZXQvdGksY3Bzdy1zd2l0Y2gueWFtbCAgICB8IDEwICsrKysrLS0tLS0KPiAgLi4uL2RldmljZXRy
ZWUvYmluZGluZ3MvbmV0L3RpLGRhdmluY2ktbWRpby55YW1sICAgfCAgMiArLQo+ICAuLi4vZGV2
aWNldHJlZS9iaW5kaW5ncy9uZXQvdGksZHA4MzgyMi55YW1sICAgICAgICB8ICAyICstCj4gIC4u
Li9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC90aSxkcDgzODY3LnlhbWwgICAgICAgIHwgIDIgKy0K
PiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3RpLGRwODM4NjkueWFtbCAgICAgICAgfCAg
MiArLQo+ICAzNiBmaWxlcyBjaGFuZ2VkLCA1MyBpbnNlcnRpb25zKCspLCA1MyBkZWxldGlvbnMo
LSkKClNlbmRpbmcgYSB2MiBhcyB0aGVyZSBhcmUgYSBmZXcgbW9yZSBjYXNlcyB3aXRoICRpZCBh
bmQgJHNjaGVtYSBxdW90ZWQuCgpSb2IKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
