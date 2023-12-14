Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66AFBC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Dec 2023 22:21:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QO/2smT1wbkt2M6GGM9oA3JFUSUqcllefa3SaSqSX9A=; b=ZZNCw3c254M/KF
	P3I7wsxYpft40NWKBRjNhoNbDdTcnTM9DT5hSxOfI8SmAGpw6s2dqgs97/oVvaPpRZ1ovfDoWIe07
	9+DejDbN0dRQi/Voma21dB+1cMKGFcEZe4xDbiR8jeaJ+fu1uB7OKTM+2zgLW9Sj7Nl0qWrGaFIxO
	6NYis/FHkfioJjLwhNLf+b3Ha6aqsnFCps1eZw2K0Eie/WBIax3eqjXgwJDSU6plToKSaQWbc0jS2
	EIseZ4SuQei7LNxxw0nk9uCol5wNOKc0xXKgxLQqRRf3wWBIauRSS5fhp265aoZUmDG/D86FN45h3
	78euLmXv9iAZXrttvb4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDu4W-001Qk7-2r;
	Thu, 14 Dec 2023 22:20:48 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDu4S-001Qio-1l;
	Thu, 14 Dec 2023 22:20:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id EBB3260ED4;
	Thu, 14 Dec 2023 22:20:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3CD2C433AD;
	Thu, 14 Dec 2023 22:20:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702592442;
	bh=DLrciHpGY/Tr+KDhmgFsHpodGdAyv9347IqpzcQxN0E=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=QuHgemc/eGs8haslapsQfMlcL+SJKh/2Xkj9g3QjaPcNuqzC8IWQRs/V6rEVsZiIv
	 LnzLfQTFWKNWM+7/ZObc+6o4ZRqg4NTZJhX60pJ5mHsQMn3EG04kGRZy1ccnAiux4M
	 BbBVLJeJrNzckEWKZv3yiatDKAG428GX/bkOp6W9Yb9+qY0DStkTuHKYBOrVF6ZPTc
	 IX6dRKutdX5tij9PkNcXKB4PMeV8xfy2B0zgG3rzr3dwjvoOnOkZ7JWbPHqVmUEJxY
	 3S17UtGir9Baa0Jpj3ZSPIIf9oppe7Yc3bS5+VJoneicorjDh+YiyKfdCq47JMIc1v
	 1Y1/grdMFxhXQ==
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-50bffb64178so10204630e87.2;
        Thu, 14 Dec 2023 14:20:42 -0800 (PST)
X-Gm-Message-State: AOJu0Yzi647Hs3rwnnlK5JT5tV7i399Am7rqRnCZcEgAn2VcUFW6LUj+
	ziwR2WUOYW8PWDttPZuE7voQl1fxkbTUcM6zYw==
X-Google-Smtp-Source: AGHT+IGv5JFi0lNuAs8VuSZYhhQ038anhXHkFFHu9EfV9TuthpQBAyp6VCuGwuNxaswRwh/ZuAYrqL6Y8WdKhTnUgEM=
X-Received: by 2002:a05:6512:4847:b0:50a:a5f7:47fb with SMTP id
 ep7-20020a056512484700b0050aa5f747fbmr4457434lfb.49.1702592440674; Thu, 14
 Dec 2023 14:20:40 -0800 (PST)
MIME-Version: 1.0
References: <20231213110009.v1.1.Ifd0903f1c351e84376d71dbdadbd43931197f5ea@changeid>
 <20231213110009.v1.2.I274b2d2255eb539cc9d251c9d65a385cc4014c79@changeid>
 <20231213221124.GB2115075-robh@kernel.org> <CANg-bXCG61HFW7JFuAd3k+OrCG_F9F3e8brjM-pmBauS53aobQ@mail.gmail.com>
In-Reply-To: <CANg-bXCG61HFW7JFuAd3k+OrCG_F9F3e8brjM-pmBauS53aobQ@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 14 Dec 2023 16:20:27 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+MYwOG40X26cYmO9EkZ9xqWrXDi03MaRfxnV-+VGkXWQ@mail.gmail.com>
Message-ID: <CAL_Jsq+MYwOG40X26cYmO9EkZ9xqWrXDi03MaRfxnV-+VGkXWQ@mail.gmail.com>
Subject: Re: [PATCH v1 2/6] arm: arm64: dts: Enable cros-ec-spi as wake source
To: Mark Hasemeyer <markhas@chromium.org>
Cc: LKML <linux-kernel@vger.kernel.org>, Raul Rangel <rrangel@chromium.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Andre Przywara <andre.przywara@arm.com>, 
	Andy Gross <agross@kernel.org>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Baruch Siach <baruch@tkos.co.il>, 
	Bjorn Andersson <andersson@kernel.org>, Claudiu Beznea <claudiu.beznea@microchip.com>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Jesper Nilsson <jesper.nilsson@axis.com>, Jisheng Zhang <jszhang@kernel.org>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Michal Simek <michal.simek@amd.com>, 
	Paul Barker <paul.barker@sancloud.com>, Sudeep Holla <sudeep.holla@arm.com>, 
	Thierry Reding <thierry.reding@gmail.com>, cros-qcom-dts-watchers@chromium.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-tegra@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_142044_680902_4006D3D5 
X-CRM114-Status: GOOD (  15.35  )
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

T24gVGh1LCBEZWMgMTQsIDIwMjMgYXQgMzowNOKAr1BNIE1hcmsgSGFzZW1leWVyIDxtYXJraGFz
QGNocm9taXVtLm9yZz4gd3JvdGU6Cj4KPiA+IElmIGEgZGV2aWNlIGtub3dzIGl0IGlzIHdha2V1
cCBjYXBhYmxlLCB3aHkgZG8geW91IG5lZWQgYSBwcm9wZXJ0eSB0b28/Cj4KPiBJJ20gcmVmZXJl
bmNpbmc6Cj4gaHR0cHM6Ly93d3cua2VybmVsLm9yZy9kb2MvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL3Bvd2VyL3dha2V1cC1zb3VyY2UudHh0Cj4gIk5vZGVzIHRoYXQgZGVzY3Jp
YmUgZGV2aWNlcyB3aGljaCBoYXMgd2FrZXVwIGNhcGFiaWxpdHkgbXVzdCBjb250YWluCj4gYW4g
Indha2V1cC1zb3VyY2UiIGJvb2xlYW4gcHJvcGVydHkuIgoKVGhhdCdzIHByb2JhYmx5IHRvbyBz
dHJvbmdseSB3b3JkZWQgYmVjYXVzZSB3YWtldXAgY2FwYWJsZSBkZXZpY2VzCmV4aXN0ZWQgKGFu
ZCBzdGlsbCBleGlzdCkgYmVmb3JlIHRoaXMgYmluZGluZyB3YXMgY3JlYXRlZC4gUG93ZXJwYyBm
b3IKZXhhbXBsZSBkb2Vzbid0IHVzZSBpdC4KCj4gQ3VycmVudGx5IHRoZSBkcml2ZXIgYXNzdW1l
cyB0aGUgZGV2aWNlIGlzIHdha2UgY2FwYWJsZSB3aXRob3V0Cj4gcGFyc2luZyB0aGUgZGV2aWNl
IHRyZWUsIHdoaWNoIGlzIGFuIGluY29ycmVjdCBhc3N1bXB0aW9uIGFzIHdha2UKPiBjYXBhYmls
aXR5IHNob3VsZCBub3QgYmUgZW5hYmxlZCBvbiBzb21lIGNyb3NfZWMgc3lzdGVtcy4KPgo+ID4g
SSBoYXZlbid0IGxvb2tlZCBjbG9zZWx5IGVub3VnaCwgYnV0IGl0IHNtZWxscyBsaWtlIGFmdGVy
IHBhdGNoIDYsIHRoZXNlCj4gPiBwcm9wZXJ0aWVzIHdvdWxkIGJlIHJlcXVpcmVkIGZvciB3YWtl
dXA/IFRoYXQgd291bGQgYmUgYW4gQUJJIGJyZWFrLgo+Cj4gQWdyZWVkLiBJbiB0aGlzIGNhc2Us
IHRoZSBkcml2ZXIgaXMgYSBDaHJvbWVPUyByZWxhdGVkIGRyaXZlciBhbmQgRFRTCj4gaXMgYnVp
bHQgZnJvbSBzb3VyY2UgZm9yIGVhY2ggT1MgdXBkYXRlLgo+IEZvciBtb3JlIGNvbnRleHQsIEkg
d2lsbCBtYWtlIHN1cmUgdG8gQ0MgeW91IChhbmQgZXZlcnlvbmUgZWxzZSkgYW5kCj4gaW5jbHVk
ZSBhIGNvdmVyIGxldHRlciBpbiB0aGUgbmV4dCBzZXJpZXMgdmVyc2lvbi4KClBsZWFzZSBleHBs
YWluIGluIHRoZSBwYXRjaGVzIHdpdGggYW4gQUJJIGJyZWFrIHdoeSBpdCBkb2Vzbid0IG1hdHRl
ci4KClJvYgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
