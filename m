Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2110CA0EEB
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Aug 2025 01:55:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qf86WmT1sMYVmiB3zWIiQXSDWJ4YrGZy9WSwHOD0LHI=; b=qiQayVrHzuKqK4
	ui2u4ZaOPA2sRRsbRh7F+0fHxOU7sUSYkj3IGwj2++/LkuylbRMhVUbSB4DoFXioB1YqM7OT1iWdh
	HPOPVuRot0YTAGyjPtCUK6qgG7OP9wnUeSQ5acxtFjfLMlASd0pD/jiYNzF8WnIfYn62VxyGtwZkw
	88y0HL9XQrrM03FwP9Hbr7T3dXhMVPK5qdB3SNzYSXLl3s7d4HUapVBH7TLd0RsUSxgwYuRT1wpAF
	0uGGq7VZPU4DwLQrNxlY3BtnsqJP3uWwc0NVanDR0jm5QO2U30xEQdcK6AWKbS7O/plzpx3ry8kA3
	aDWrmaJV2RVVnetwrh9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upGzw-00000001BeO-0LZl;
	Fri, 22 Aug 2025 01:55:20 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upBx5-00000000U4P-3cAd;
	Thu, 21 Aug 2025 20:32:04 +0000
Received: by mail-pg1-x536.google.com with SMTP id 41be03b00d2f7-b4716fa7706so940403a12.0;
        Thu, 21 Aug 2025 13:32:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1755808323; x=1756413123; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xzt1SP3iQ6Mi6cPK5jzb7ybF2HUvqkuc1RDuKVXJJow=;
        b=kEAqmQuDLTyfFc/uYVlSPFq+30+Ra6yOSfliNii/eTSvTTLFcOCAsLizHMo4GOoFrC
         p+o48SvwOuTS3MSlZHFTvlNSW63pw9d9AjULqUZjpLTS9Sr1+EQSMzX2dPBds8gGPwaS
         I5zbyVAWKdTAN5Y4zkdTSsZMkItp1Gwi7UYkvBAjyItmXcxp+yysMv1Os5/ysrbI+P7x
         TZiUst5RpYmwYkCZdQ5gyew/KzUHqBBD/hRlb4sRAvi2vSC+JmoT4Sty5MiQ+pO4ASo8
         RW9Ae6OkDeYZChiX+dsNzMUUiDt0R0QDhaXni22uDisCRDp3d448BNZ1RyquIt+XDkp5
         kT2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755808323; x=1756413123;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xzt1SP3iQ6Mi6cPK5jzb7ybF2HUvqkuc1RDuKVXJJow=;
        b=VNcbRv7+RFNOLwdgFy4N/OleaKELhG62M8gYvAojIRkoHJVykyk7BpLiZyG9j5I8Zr
         VPLKOlvtZuqzeJAX8oqUE1iEMoNnfLltdWVN/q0Ajo0/8va44QgRmueDiwt++CReDLNE
         OWZ49xvFlZz5njUUhpcwEXbOEdPqj4ToPBPgH8wfwsQNS9GgSPVt6DYRJ3fIKxypvmgg
         FgJ+c7GmsCkAplHYX78MEMZESOwq75cy8aDPG7sQt+cUKE0bCU5IEdBArfGAbTDz3PuG
         f/1R3moXueJiLX+Hk/fcjOMI5YAnIGz4kLaZERimZkQRA/RrhmgbejpEjDcAHLAXHYEP
         wUqg==
X-Forwarded-Encrypted: i=1; AJvYcCVEAdhS71sYESgtn+mfKVTnm/7dlv8h/HcKYEV+6DVJYyEoj2/iF5UQbig/P1pmxGiZL4ZPIdN86genaZkBi90=@lists.infradead.org, AJvYcCVdcNFHvW/TllFnvQiGDm3OLc4iq2gG1zOdNWO3jmb/EUZpc+ffamE0yWfDwUu1PdTZsTa/qDcxPvzuQE18@lists.infradead.org, AJvYcCWv3L7z+4nUzrcCX9qP3qVoRt8IZDTT7tTO9Q/gpIeQFiNJRWn2PsilqCL2Il0/Y8uzhB/A3l8BVnkx6/sjtBf2Fw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwP27EmX+yeEikZt8ghxpITykQVkc0/YNlAGBTIgMF5+aAynWWk
	oWCV4BHiSac8/gR5Cqziuow8k1m2DV6uCrc/Gma5jF+ug9dlgmmB75C/NdcEC19Eq49fyovj6lc
	p5B4I+HFiCyiUM/14yNSajA7PK7n4gK4=
X-Gm-Gg: ASbGncv9TXMuFoidCc6VoZvmvoY56/XHw00/NDfIklvwrn0+Jm/x//ZYa4Hgjq/8TOU
	kQ95iTyty+s0Ob92o6hcj1muHIXFrCqx7y3nlWo7fiJcABbTsCGGikEz+FsjNdhwDj25EAt2Wdy
	REpR6AR+Dkeqz80H8S1gM0kgrs2CVnxwXobp9ojJjGyDQAWK00Yp/L7H4Kjg2hw9CP6bKs00Mbd
	TUR+ibuTInP/PkI8ELShdndPMN02BVVNYkt5SrT
X-Google-Smtp-Source: AGHT+IFMJWQfSak742OMRIUVPAmUKPCtjTTxsMGlopsj+ykj2AINC9Rf8YaWuAZsX0Tjk/DC56u1mBE4PhmXtNwtDIk=
X-Received: by 2002:a17:902:ce02:b0:23f:f68b:fa1d with SMTP id
 d9443c01a7336-2462ef4fd9dmr7514195ad.39.1755808322840; Thu, 21 Aug 2025
 13:32:02 -0700 (PDT)
MIME-Version: 1.0
References: <20250821080723.525379-1-zhao.xichao@vivo.com> <20250821080723.525379-3-zhao.xichao@vivo.com>
In-Reply-To: <20250821080723.525379-3-zhao.xichao@vivo.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 21 Aug 2025 22:31:51 +0200
X-Gm-Features: Ac12FXxvviABKwS3Jk0G8ABxqYSzrQsOIcnTQmwdAPckvZYFYDz7726qKXLaDEA
Message-ID: <CAFBinCDDMo2Dm1UAoB4QKyf-KKoRUTNNg4i7Qh_vgZh71trMNg@mail.gmail.com>
Subject: Re: [PATCH 2/7] iio: adc: Remove dev_err_probe() if error is -ENOMEM
To: Xichao Zhao <zhao.xichao@vivo.com>
Cc: Andreas Klinger <ak@it-klinger.de>, Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Haibo Chen <haibo.chen@nxp.com>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Marius Cristea <marius.cristea@microchip.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, Heiko Stuebner <heiko@sntech.de>, 
	Francesco Dolcini <francesco@dolcini.it>, 
	=?UTF-8?Q?Jo=C3=A3o_Paulo_Gon=C3=A7alves?= <jpaulo.silvagoncalves@gmail.com>, 
	Hugo Villeneuve <hvilleneuve@dimonoff.com>, 
	"open list:AVIA HX711 ANALOG DIGITAL CONVERTER IIO DRIVER" <linux-iio@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	"open list:NXP i.MX 7D/6SX/6UL/93 AND VF610 ADC DRIVER" <imx@lists.linux.dev>, 
	"moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Amlogic Meson SoC support" <linux-amlogic@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_133203_898135_FB875395 
X-CRM114-Status: UNSURE (   9.89  )
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

T24gVGh1LCBBdWcgMjEsIDIwMjUgYXQgMTA6MDfigK9BTSBYaWNoYW8gWmhhbyA8emhhby54aWNo
YW9Adml2by5jb20+IHdyb3RlOgo+Cj4gVGhlIGRldl9lcnJfcHJvYmUoKSBkb2Vzbid0IGRvIGFu
eXRoaW5nIHdoZW4gZXJyb3IgaXMgJy1FTk9NRU0nLgo+IFRoZXJlZm9yZSwgcmVtb3ZlIHRoZSB1
c2VsZXNzIGNhbGwgdG8gZGV2X2Vycl9wcm9iZSgpLCBhbmQganVzdAo+IHJldHVybiB0aGUgdmFs
dWUgaW5zdGVhZC4KPgo+IFNpZ25lZC1vZmYtYnk6IFhpY2hhbyBaaGFvIDx6aGFvLnhpY2hhb0B2
aXZvLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9paW8vYWRjL2h4NzExLmMgICAgICAgICAgIHwgMiAr
LQo+ICBkcml2ZXJzL2lpby9hZGMvaW14OTNfYWRjLmMgICAgICAgfCAzICstLQo+ICBkcml2ZXJz
L2lpby9hZGMvbWNwMzU2NC5jICAgICAgICAgfCAyICstCj4gIGRyaXZlcnMvaWlvL2FkYy9tZXNv
bl9zYXJhZGMuYyAgICB8IDIgKy0KRm9yIG1lc29uX3NhcmFkYzoKUmV2aWV3ZWQtYnk6IE1hcnRp
biBCbHVtZW5zdGluZ2wgPG1hcnRpbi5ibHVtZW5zdGluZ2xAZ29vZ2xlbWFpbC5jb20+CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
