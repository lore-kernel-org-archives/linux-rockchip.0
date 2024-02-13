Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92CCAC48260
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Feb 2024 08:14:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QuPVGvdD0plwPfhbq8xeOI1jSEi/twR3opSTmMk6fPg=; b=j+1X9h+n8oQ1Kd
	vN/wN0W1CIQ/xalvLCbiNqRN4n3csOqQisJPKekUsuNVmviC9BIzNyBLK9ojPSevCO6LCbq0ui7xA
	r+RKcd11xTkZVQNVWjcPiBmlXFEsOJjPe+2Ry1POwwCc/fVdqO4Sq8i5nxXGc2z18H9SjYNWWjYz8
	89nTkeblhNr/6DSnrcTndoEQ9UJLSaqSdqtDCPL+XHPdzpQiF/WyCxk2E5SJybD54NYp0huXDw+U2
	S56nlSbStzs8bSBFpImsJuwuNualyVcwXANADzruYU4+Z8ZpqfnVop2qhdJ/EptyEA3eHiTRTp19t
	5UyEbowV/VrWyoW04mxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZnvY-00000008M9B-0cAO;
	Tue, 13 Feb 2024 08:14:04 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZnvV-00000008M8P-3SL5
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Feb 2024 08:14:03 +0000
Received: from localhost (localhost [127.0.0.1])
	by honk.sigxcpu.org (Postfix) with ESMTP id 7E9A5FB05;
	Tue, 13 Feb 2024 09:04:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=sigxcpu.org; s=2024;
	t=1707811459; bh=zYMtwDFNNdylEZibK4LgoVQSY1dI+zems8RvSMNHedo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Hr9M4xuhbFt5WPk0TctUss8hPKdE2JTNBi8yEZ5/6nGyx6TFzJtirB3BBNyJtKz/N
	 sxp7ZN8eWz4QJAzce2sG9eGP7YOXBuBfTKZTMhzkcFR3nVq1kmoWq9r+9lH6n9jvLN
	 3YGocieZrry3PYM5QoSjr0se6u36v+3v/sxcwzJswGZNMpaMXInlaJOJeO8Ji20a1j
	 e2hXm5z/X/v8SFQ8+1c81lnpKCO+W+etTHEy7PRC1rWJQUpZwBlPV7njFOMeV6aY8x
	 n9z+OHfg+7TW2zSxvKcP8sVX/ruqgNMPlQ1+i4OMe4BWuI/FmvhNQ/NkaxtzHlZ4rn
	 5Aed9mTO2AMeA==
Received: from honk.sigxcpu.org ([127.0.0.1])
	by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g3nQOoHFiO74; Tue, 13 Feb 2024 09:04:18 +0100 (CET)
Date: Tue, 13 Feb 2024 09:04:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=sigxcpu.org; s=2024;
	t=1707811458; bh=zYMtwDFNNdylEZibK4LgoVQSY1dI+zems8RvSMNHedo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ECbq23hUw64uiw8QnL4Cv6UxNpmvfpn9h6irH6Twx0XtAbAP9XVb4y8xz1txRUq/g
	 CCxhYweGrlouzyTCdqBY+9MtbsVBPDnW6f3cv39o9455+JeAHWpA/W/hkmLFN68YIt
	 BZUkGSgDYYodNLFFeOgCIAtuQhYF6HWj4Ljbymekwz13SEfAP8xtrrVZDAAH0jKLUs
	 3XX1eUtThIPoXYn0tFX2S1AHKZxP+Sa6YkUbFhuDtAEZdg7S3NXtPbQY4fTAzuGSwM
	 McpXOi1diBJKrQ7J8lPWfm+vDOHtcjZFCm6mGMWU7/5BjZB3+Nad2kwZ778CLu0o3+
	 QD4C+W2dWSF5A==
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org, tzimmermann@suse.de,
	mripard@kernel.org, maarten.lankhorst@linux.intel.com,
	daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
	quic_jesszhan@quicinc.com, neil.armstrong@linaro.org, megi@xff.cz,
	kernel@puri.sm, heiko@sntech.de, conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 3/7] dt-bindings: display: Document ST7703 panel rotation
Message-ID: <ZcsigBwmMoZeD1Vn@qwark.sigxcpu.org>
References: <20240212184950.52210-1-macroalpha82@gmail.com>
 <20240212184950.52210-4-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240212184950.52210-4-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_001402_024505_98ABD485 
X-CRM114-Status: GOOD (  12.03  )
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

Hi,
On Mon, Feb 12, 2024 at 12:49:46PM -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> =

> Document the rotation property for ST7703 based panels.
> =

> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../devicetree/bindings/display/panel/rocktech,jh057n00900.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> =

> diff --git a/Documentation/devicetree/bindings/display/panel/rocktech,jh0=
57n00900.yaml b/Documentation/devicetree/bindings/display/panel/rocktech,jh=
057n00900.yaml
> index 8dfe8951bf5b..97e0d14790e3 100644
> --- a/Documentation/devicetree/bindings/display/panel/rocktech,jh057n0090=
0.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/rocktech,jh057n0090=
0.yaml
> @@ -46,6 +46,8 @@ properties:
>  =

>    backlight: true
>  =

> +  rotation: true
> +

I'd avoid newlines here:

  backlight: true
  rotation: true

(which also seems to match what other panels do). With that

Reviewd-by: Guido G=FCnther <agx@sigxcpu.org>

Cheers,
 -- Guido


>  required:
>    - compatible
>    - reg
> -- =

> 2.34.1
> =


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
