Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A48FC6FD1F
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Mar 2024 19:29:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n6zVOpjwySGzvChH39DTeDO0Ii/WKjXfGp6SRk8ZYD8=; b=TgRT7FeszcHpVW
	y/x/zYWPaSMfDKnL9vh/uzS95ARdgfB4wGIY1UGJf9Pboxeo/f+TS/rLIzaAKUikLfnq1gwB9bRiM
	iVp8ywLpxI06yh4VOasSpz4tHmJ4N7hgItAMfCIPZV43jhLhdEyL+ZtsyK2fq1pDh5OsoX0nceYYn
	9G3Aw+QW/3/uJyPM1D2KbE7YXLskox9OZgUK87Uguk68i4ute+JDPCiMrIpBr93IQC5Ga3mODnbzI
	S9W9n1zvi0jqCtVnyREHD2uH39AOuXCBqax1cZ+Fqe4OtMWj6C9JyMz7FVh8qjXDqdQjrZvx8D/ON
	rmWGpEEDqsHJlkoSYU7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpCUa-000000069te-3dGm;
	Tue, 26 Mar 2024 19:29:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpCUW-000000069qh-3YtI;
	Tue, 26 Mar 2024 19:29:50 +0000
Received: from i53875aaf.versanet.de ([83.135.90.175] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rpCUM-00073Q-7n; Tue, 26 Mar 2024 20:29:38 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: hjc@rock-chips.com, andy.yan@rock-chips.com, robh@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: display: rockchip: add missing #sound-dai-cells to
 dw-hdmi
Date: Tue, 26 Mar 2024 20:29:37 +0100
Message-ID: <1994969.8hb0ThOEGa@diego>
In-Reply-To: <5fb55234-4afd-4e6a-9763-4d2e344e0ce6@linaro.org>
References: <20240326172801.1163200-1-heiko@sntech.de>
 <edc0bfa2-7984-4d9d-ba25-4805ee0be679@linaro.org>
 <5fb55234-4afd-4e6a-9763-4d2e344e0ce6@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_122948_932037_219BA2D6 
X-CRM114-Status: GOOD (  17.24  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Dienstag, 26. M=E4rz 2024, 18:50:37 CET schrieb Krzysztof Kozlowski:
> On 26/03/2024 18:50, Krzysztof Kozlowski wrote:
> > On 26/03/2024 18:28, Heiko Stuebner wrote:
> >> The #sound-dai-cells DT property is required to describe link between
> >> the HDMI IP block and the SoC's audio subsystem.
> >>
> >> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> >> ---
> >>  .../devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml | 3 +++
> >>  1 file changed, 3 insertions(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockch=
ip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockch=
ip,dw-hdmi.yaml
> >> index af638b6c0d21..3768df80ca7a 100644
> >> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-h=
dmi.yaml
> >> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-h=
dmi.yaml
> >> @@ -124,6 +124,9 @@ properties:
> >>      description:
> >>        phandle to the GRF to mux vopl/vopb.
> >>  =

> >> +  "#sound-dai-cells":
> >> +    const: 0
> >> +
> > =

> > Then you miss $ref in allOf to /schemas/sound/dai-common.yaml
> =

> I meant, except your change you should add also above $ref.

sorry about that, will fix that.

Thanks for the pointer
Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
