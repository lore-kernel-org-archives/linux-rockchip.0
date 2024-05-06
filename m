Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96CC0C10F16
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 May 2024 12:29:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=226f01HTSGRV1SDafuqvXqhJJtJh6FifyUnHLOOcNmM=; b=iNRDtuppkbSLqXOH/9SbANwLqQ
	qnk9I3RgO8KyV5z0A4B8qIRIvWy5kwHMqtVStw7dC1JPP2HmOEIpwe0HCAAPdJVCt4wq/26hHZD+C
	qNun/yQvTVAGYsfxlCFMBGJ7PzysFobkwvFhcfv15hFzcvaldp9XaYjqAAA4F7NHnNl0KiXL+SsLn
	4yEJY5+Ms0F2StEd3qjI/itpo3uT2DW4fyHHa5hip8B/xit/V3za5gbEQaFwr1db0iNPt1goCr5fC
	gTtWhzHNEnyeattCccmPjl+WoUcpeMzvnvpoRjbAsrX9tdWY0nUMdcaSF+z2evB4Xe2pazKCi596H
	GQZBxaNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3xSt-00000007HiW-0egR;
	Mon, 06 May 2024 12:29:07 +0000
Received: from out-180.mta1.migadu.com ([95.215.58.180])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3xSq-00000007HeI-0pkY
	for linux-rockchip@lists.infradead.org;
	Mon, 06 May 2024 12:29:06 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1714998540;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=adS52XGOjAf9NFDpaofMTlIleiOLUvYtp7jAKoj1FWE=;
	b=SWUc0BpIni3DNRfn8cUmU/S7IH9xdi7XJ4z+ZZRH7gm/RTzYlhrYmjj2zDCQx466aMGh1F
	eI503oK8ijiOQj72yq1YfIfqmbSol0BmH+lfpAZr8bt2+SBH3XYmo1MMN7Lw4duS+eObGF
	rF0+s7RsflXzGqVGP70xnWc57uULqOQX4R2EN0PUEvpCoyvsFTIbgU0qPnah7koyOc4wpI
	aMWIqWYjKMU1X/hoTMTbpUlS0q47KGEi9iqZM/9Nv3Z698c7nV26ZhCUiVbZ/OiaAnwDKg
	jFbJa3U3eiF3K6rxcQpD/g8H4VvaqaXoGRu8anaYWVJvzAyRV1CGq0NYyAphrA==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Alexey Charkov <alchark@gmail.com>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Dragan Simic <dsimic@manjaro.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 Chen-Yu Tsai <wens@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Alexey Charkov <alchark@gmail.com>
Subject: Re: [PATCH v4 2/6] arm64: dts: rockchip: enable thermal management on all
 RK3588 boards
Date: Mon, 06 May 2024 14:28:50 +0200
Message-ID: <2543817.5xW6y1K4kI@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240506-rk-dts-additions-v4-2-271023ddfd40@gmail.com>
References: <20240506-rk-dts-additions-v4-0-271023ddfd40@gmail.com>
 <20240506-rk-dts-additions-v4-2-271023ddfd40@gmail.com>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_052904_757584_E89150BF 
X-CRM114-Status: GOOD (  17.85  )
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
Content-Type: multipart/mixed; boundary="===============3008118852591620993=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============3008118852591620993==
Content-Type: multipart/signed; boundary="nextPart3764040.TKpFhyqhbS";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart3764040.TKpFhyqhbS
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Date: Mon, 06 May 2024 14:28:50 +0200
Message-ID: <2543817.5xW6y1K4kI@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20240506-rk-dts-additions-v4-2-271023ddfd40@gmail.com>
MIME-Version: 1.0

Hi,

On Monday, 6 May 2024 11:36:33 CEST Alexey Charkov wrote:
> This enables the on-chip thermal monitoring sensor (TSADC) on all
> RK3588(s) boards that don't have it enabled yet. It provides temperature
> monitoring for the SoC and emergency thermal shutdowns, and is thus
> important to have in place before CPU DVFS is enabled, as high CPU
> operating performance points can overheat the chip quickly in the
> absence of thermal management.
> 
> Signed-off-by: Alexey Charkov <alchark@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts               | 4 ++++
>  8 files changed, 32 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts index
> b8e15b76a8a6..21e96c212dd8 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -742,6 +742,10 @@ regulator-state-mem {
>  	};
>  };
> 
> +&tsadc {
> +	status = "okay";
> +};
> +
>  &uart2 {
>  	pinctrl-0 = <&uart2m0_xfer>;
>  	status = "okay";

I built a kernel with v3 of your patch set and someone tested it on a ROCK 5B 
'for me' and it had the following line in dmesg:

rockchip-thermal fec00000.tsadc: Missing rockchip,grf property

I'm guessing that turned up due to enabling tsadc, but (also) in v4 I didn't 
see a change wrt "rockchip,grf".
Should that be done? (asking; I don't know)

Cheers,
  Diederik
--nextPart3764040.TKpFhyqhbS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZjjNAgAKCRDXblvOeH7b
bqzGAQD1bM1bOXBrGILEfvogB5p+W1FcHVZbgNHh5ucp7mH02QEAqaUP/WdxYNiG
IwPC/uXaAjTKHHAb6H06K4aElQrtvwI=
=Nb8T
-----END PGP SIGNATURE-----

--nextPart3764040.TKpFhyqhbS--





--===============3008118852591620993==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3008118852591620993==--




