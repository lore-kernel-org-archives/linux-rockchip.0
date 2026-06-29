Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3344DC43458
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jun 2026 06:52:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cTDgD/heqG00t758EkE5rB+kevNkOVNGfpUuWnbiHTU=; b=DQQqfvbmfagoO/
	GQroB5VBD/Ps23ZCXpGhEaQYd/ybJBfI8fXq6c93eTABZPHTT533jDJxfutTm5/W0GkGLBDdP+2e5
	TMGgFz6JR0d4J9qxy/XbQZUIMGPiLpIar3DXbZFRw7xg3Cv0RO89t6uV5cb4KDKUt3QxWao1RtJDJ
	W71nDydaO4QOHxSw6WJkFt1/D2ZyjNVEQ2cc1QyrpzqzZt+MMlJrAVYHso+cGuvTpFbS7tidGs4gw
	IiG/5CAJdVT3W4fbCG2Z2jAU+0HgesX18PEZ6RG86cRtP14ojPW3ysmIp1M9CXg3+z5i/t/iJJEMH
	06jKXFD6CHMvblEtt7fQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we5r1-0000000DoJu-0Nvw;
	Mon, 29 Jun 2026 06:52:27 +0000
Received: from www537.your-server.de ([188.40.3.216])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we5qy-0000000DoHF-14SQ;
	Mon, 29 Jun 2026 06:52:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=rtnYJeteQp4s1E1MicQfJts/ZAxcW/7K90s6vct7pZE=; b=BkwvXFAQ6smfdrg/nXRoimRlhb
	q+XJB34lgmHXEC8Gc04TJb++TYjB5dpPnCgEjvkjZATQ7nKxqtAthdlz6+NwW+CiWh+gQsbkiNzkP
	EGtoTvfpqcFbQH76bolFuh845Qm7/6bRu9PO7FgwXPyCwYpUtkPrYeCjKMTMlHtcPvJM3QDFRjOlX
	LRz2BpOLtYOndWFxfD1aaEb/AdT4fMIeoWG8nTU3Z2Lm8Js1iK6Kc5sKh+V+WDG4H871/gc9dpTSa
	0Kn2N5bryTAu9rosMW5+PA0sRjn5aSD20u50kMfWVHh9LTx0osU3EMex6taYd6y4QhrzTgA/EjlR5
	32PgrGcA==;
Received: from sslproxy06.your-server.de ([78.46.172.3])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1we5ql-000KPh-1o;
	Mon, 29 Jun 2026 08:52:11 +0200
Received: from localhost ([127.0.0.1])
	by sslproxy06.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <alexander.stein@ew.tq-group.com>)
	id 1we5qk-000Dff-0L;
	Mon, 29 Jun 2026 08:52:10 +0200
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Jacopo Mondi <jacopo@jmondi.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Jimmy Su <jimmy.su@intel.com>,
 Matthias Fend <matthias.fend@emfend.at>,
 Mikhail Rudenko <mike.rudenko@gmail.com>,
 Daniel Scally <dan.scally@ideasonboard.com>,
 Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
 Michael Riesch <michael.riesch@collabora.com>,
 Benjamin Mugnier <benjamin.mugnier@foss.st.com>,
 Sylvain Petinot <sylvain.petinot@foss.st.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Paul Elder <paul.elder@ideasonboard.com>,
 Martin Kepplinger <martin.kepplinger@puri.sm>,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Tommaso Merciai <tomm.merciai@gmail.com>,
 Svyatoslav Ryhel <clamor95@gmail.com>,
 Richard Acayan <mailingradian@gmail.com>,
 Thierry Reding <thierry.reding@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Frank Li <Frank.Li@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux@ew.tq-group.com, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Kieran Bingham <kieran.bingham@ideasonboard.com>
Subject: Re: [PATCH v3 4/7] arm64: dts: freescale: Convert to new media orientation
 definitions
Date: Mon, 29 Jun 2026 08:52:08 +0200
Message-ID: <2840219.mvXUDI8C0e@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20260628-kbingham-orientation-v3-4-4ed92968aff8@ideasonboard.com>
References: <20260628-kbingham-orientation-v3-0-4ed92968aff8@ideasonboard.com>
 <20260628-kbingham-orientation-v3-4-4ed92968aff8@ideasonboard.com>
MIME-Version: 1.0
X-Virus-Scanned: Clear (ClamAV 1.4.3/28045/Sun Jun 28 08:26:16 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260628_235224_402944_3F286564 
X-CRM114-Status: GOOD (  13.82  )
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

Hi Kieran,

thanks for the patch.

Am Sonntag, 28. Juni 2026, 12:22:19 CEST schrieb Kieran Bingham:
> The orientation property for video interface devices now has definitions
> to prevent hardcoded integer values for the enum options.
> =

> Update the users throughout the freescale/NXP device trees to use the new
> definitions.
> =

> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Signed-off-by: Kieran Bingham <kieran.bingham@ideasonboard.com>

Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>

> ---
>  .../boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314-imx219.dtso      |=
 3 ++-
>  arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi                      |=
 3 ++-
>  2 files changed, 4 insertions(+), 2 deletions(-)
> =

> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314=
-imx219.dtso b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314=
-imx219.dtso
> index e5a2b3780215..7b44ae0f19b2 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314-imx219=
.dtso
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-tqma8mpql-mba8mp-ras314-imx219=
.dtso
> @@ -9,6 +9,7 @@
>  =

>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/media/video-interfaces.h>
> +#include <dt-bindings/media/video-interface-devices.h>
>  =

>  #include "imx8mp-pinfunc.h"
>  =

> @@ -47,7 +48,7 @@ camera@10 {
>  		VANA-supply =3D <&reg_cam>;
>  		VDIG-supply =3D <&reg_cam>;
>  		VDDL-supply =3D <&reg_cam>;
> -		orientation =3D <2>;
> +		orientation =3D <MEDIA_ORIENTATION_EXTERNAL>;
>  		rotation =3D <0>;
>  =

>  		port {
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi b/arch/arm=
64/boot/dts/freescale/imx8mq-librem5.dtsi
> index f5d529c5baf3..178cfad93483 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi
> @@ -8,6 +8,7 @@
>  #include "dt-bindings/input/input.h"
>  #include <dt-bindings/interrupt-controller/irq.h>
>  #include <dt-bindings/leds/common.h>
> +#include <dt-bindings/media/video-interface-devices.h>
>  #include "dt-bindings/pwm/pwm.h"
>  #include "dt-bindings/usb/pd.h"
>  #include "imx8mq.dtsi"
> @@ -1116,7 +1117,7 @@ camera_front: camera@20 {
>  		vddd-supply =3D <&reg_vcam_1v2>;
>  		vddio-supply =3D <&reg_csi_1v8>;
>  		rotation =3D <90>;
> -		orientation =3D <0>;
> +		orientation =3D <MEDIA_ORIENTATION_FRONT>;
>  =

>  		port {
>  			camera1_ep: endpoint {
> =

> =



-- =

TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
