Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43158C7EE29
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Jun 2023 21:41:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4O5uv/BylVDg97ru8QEmR9cMKt6w+vuZnNusn7VEFBE=; b=HmrP+hok0EJvds020dETKhocGa
	ukK4ngMuwaJI2ADmmCa3K4OPJJcyDLPHkj0noPWQa5ZjADSHblCTqMzsIiS64Trk56ROL/nJeBWWO
	FQcCqXkUxivJIsVejP7LfIdG151C5zewT9Wkh2qzPisRC/oqa8bIrTAg2L2dWeUOm/KukTJpDz4zG
	Ym+HfkBiJTpNIQPCHakldQfqs4MizQbXbD29M3wUoZgPpN1pbjSpYBFP1Qjhg4zrVqVgHEyBhH9ar
	BE/C5EDXEahOrFKiRG79KaamcASztCEAx+tm0aA7gZTdVDXDz1ZxEq1MbzIrltW78qe0A3e8v8sxQ
	NVbeesyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q5CWZ-007y5t-1T;
	Fri, 02 Jun 2023 21:41:31 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q5CWV-007y4R-0m;
	Fri, 02 Jun 2023 21:41:28 +0000
X-GND-Sasl: didi.debian@cknow.org
X-GND-Sasl: didi.debian@cknow.org
X-GND-Sasl: didi.debian@cknow.org
X-GND-Sasl: didi.debian@cknow.org
X-GND-Sasl: didi.debian@cknow.org
X-GND-Sasl: didi.debian@cknow.org
X-GND-Sasl: didi.debian@cknow.org
X-GND-Sasl: didi.debian@cknow.org
X-GND-Sasl: didi.debian@cknow.org
X-GND-Sasl: didi.debian@cknow.org
X-GND-Sasl: didi.debian@cknow.org
X-GND-Sasl: didi.debian@cknow.org
X-GND-Sasl: didi.debian@cknow.org
X-GND-Sasl: didi.debian@cknow.org
X-GND-Sasl: didi.debian@cknow.org
Received: by mail.gandi.net (Postfix) with ESMTPSA id 4650A40004;
	Fri,  2 Jun 2023 21:41:17 +0000 (UTC)
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: Andrew Powers-Holmes <aholmes@omnom.net>, Ondrej Jirman <megi@xff.cz>,
 stable@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: rk356x: Fix PCIe register and range
 mappings
Date: Fri, 02 Jun 2023 23:41:16 +0200
Message-ID: <4805396.GXAFRqVoOG@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20230601132516.153934-1-frattaroli.nicolas@gmail.com>
References: <20230601132516.153934-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230602_144127_431300_A0F92FB4 
X-CRM114-Status: GOOD (  10.10  )
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
Content-Type: multipart/mixed; boundary="===============2659480088742951623=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============2659480088742951623==
Content-Type: multipart/signed; boundary="nextPart1853143.tdWV9SEqCh";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart1853143.tdWV9SEqCh
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Date: Fri, 02 Jun 2023 23:41:16 +0200
Message-ID: <4805396.GXAFRqVoOG@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20230601132516.153934-1-frattaroli.nicolas@gmail.com>
References: <20230601132516.153934-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0

On Thursday, 1 June 2023 15:25:16 CEST Nicolas Frattaroli wrote:
> The register and range mappings for the PCIe controller in Rockchip's
> RK356x SoCs are incorrect. Replace them with corrected values from the
> vendor BSP sources, updated to match current DT schema.

I have been using the exact same patch for a while now and without it my 
Quartz64 Model A with a USB3 adapter card either caused a boot failure, a 
fatal kernel crash or a non-fatal kernel crash (system seemed to work apart 
from the USB3 adapter card).
With the patch, everything worked. So

Tested-by: Diederik de Haas <didi.debian@cknow.org>
--nextPart1853143.tdWV9SEqCh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZHph/AAKCRDXblvOeH7b
bgsIAP49BoTE7Nu6A2Nw3wl1PJZ1DddFJ+6e2+chHwt8qgze8gD9Hvl3lz5bGkis
dP+y9LqkkMhJ7ftBWL9UsWH/QMtnvgg=
=eoxl
-----END PGP SIGNATURE-----

--nextPart1853143.tdWV9SEqCh--





--===============2659480088742951623==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2659480088742951623==--




