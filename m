Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6348EC27C52
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 17:56:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0knpRAS8zpeet6KInu62lc9bwtuJWRk78UQWrbgD7AM=; b=hxyqejBuzQfm+XbGh6ahg6QNTK
	bBa3a7O0MvmUOoLw/E36P5e5zY3FPuMf2Zkhs5GNgfOcymwyMX/1ReoE7SJW9bs/RhmYnQ+KEQieV
	yNb9YGPnQjV+Yplos2ansJ5qIWjkqGwDXnNLKHl2NEY382Y31VpsoyJ5L9kIu3gDBTlru3EzTewId
	67eZ0JDxn6h2WOYWoqhIWMes/5zAzOeF/nyFkjodibWI670ZL95DpeRVr8Z/SnsLnVvh0vrgleKbI
	yYPd2gq2wtKXcofXkAlqODCeJZHwZR+yKlH2ffgQRqKXbUA53Ghqi/fWyPoLATulApDVSQ5BP0t5Z
	77bNQUHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEusG-000000072Cv-2thq;
	Wed, 05 Jun 2024 17:56:36 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEusC-000000072Ah-1rf7;
	Wed, 05 Jun 2024 17:56:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 79A46CE18BE;
	Wed,  5 Jun 2024 17:56:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1473BC2BD11;
	Wed,  5 Jun 2024 17:56:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717610189;
	bh=SNzE0F9enywAXpbx37sfhGTyuSO2Iy8uiW1YPcMF1Dc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UEz/nDoH7s82EQnTwVzzeG15BOpK5GJlr9WAW3VNhJXcoL19pKBtCAea+URGa6Avw
	 F/MDrcZe8922kwzTJ2yUQhCSZv2DoyQgJn/PdA/wWzSAjivbG164pcspqFPMpkmB8/
	 8pLXCvAOt5cHKS/LnU/L4vmTx9ut0i6FuyGJP8HHZ7/nhlKAn4088tYwvgIPFUKfqq
	 dIJTtteJKT/kX8//XAqJ4VxSvxeTk44TyhUWIHPGE6ldpCawXhzhKc6W5KIyw5OwMa
	 3H7qUe9GdOrMaD9svpkhwlH+lBksHM+tnS3ISRftFKgF2YZDV8or0PPgkRMD4UeDlG
	 MlzQbiAEuHl7w==
Date: Wed, 5 Jun 2024 18:56:24 +0100
From: Conor Dooley <conor@kernel.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: clock: rk3128: Add HCLK_SFC
Message-ID: <20240605-proponent-ion-d78e863ca7b5@spud>
References: <20240605172154.193047-1-knaerzche@gmail.com>
 <20240605172154.193047-2-knaerzche@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240605172154.193047-2-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_105633_017001_C1340692 
X-CRM114-Status: UNSURE (   9.39  )
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
Content-Type: multipart/mixed; boundary="===============5174994690206208845=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5174994690206208845==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="IkMWFnV2LSveQRFT"
Content-Disposition: inline


--IkMWFnV2LSveQRFT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jun 05, 2024 at 07:21:52PM +0200, Alex Bee wrote:
> Add a clock id for SFC's AHB clock.

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

--IkMWFnV2LSveQRFT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZmCmyAAKCRB4tDGHoIJi
0kr2AP9CcJSE0xRZszok5aIlAw4wAVI+sOpC9KTCCLbELcfxoAEAjH2YTfqU+eA7
7Cbv3vSQO00bE61flXDiiId5PhMPBgs=
=3UhK
-----END PGP SIGNATURE-----

--IkMWFnV2LSveQRFT--


--===============5174994690206208845==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5174994690206208845==--

