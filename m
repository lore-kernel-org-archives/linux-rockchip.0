Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51D2DC2D0CD
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 May 2025 23:22:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=D5+e/Alp5NejJloImnrYBBXgVGGy1wtXmwxVJSqAZfQ=; b=AhYYHAz0O2nqMXHV4jqhozzAkw
	A1TaboNmHfKdEpmV8f4vKS0xIZX+jLIklVys33xuXyfz/OMjC0ug8Hq7QSaRYCE7Ych0QytNWFI+0
	P2SFiF5Ct88Aqq5ExJtTH75nuz3ZrUW/dlL4aSCSBniCuhjidvIw5W1TWfot+TN+4gcVuLAFelTR6
	JUpW85izcilGFtRCMI+hVinB3ySzczumzDiVyZtIC0Xz/7hgvrsGWbfNnMECEtM8YLZlS83DOIPCl
	cZeO2lHsch4qKEDXtw8rVGZ6inEySdQuBrA/zECE9Wd5KYJ38otbn9JbwHfC4ds92FQgGAzgxmYh8
	4d9mAPjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFhuY-000000023xU-3qPr;
	Thu, 15 May 2025 23:22:46 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFhuW-000000023x5-0bsJ
	for linux-rockchip@lists.infradead.org;
	Thu, 15 May 2025 23:22:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 798834A420;
	Thu, 15 May 2025 23:22:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19929C4CEE7;
	Thu, 15 May 2025 23:22:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747351363;
	bh=IS/K3Ek8GRgku52/v3bNvTifZFxoGH2TCxkymOy+OR8=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=Vtw+7EpzeULlJQMaVC3D74Msn/WNPF17N+9OmDHmN+6//Y++vF8enTvkoz2Gtx/EK
	 xPdOpxS/KYHghnQ9OEUmGnKjQqmKbwjJ1eDtBe1z9wxLhws3UeTzL/YXCSCblXPae7
	 iB7Z3E3R9xzO9Pv5m8gz0RmfVs6LmsmJAgMOCA6zWx/V53mtq/L2QR0H1NtK6Vh3WD
	 cRORGzU9UkUH4/dkQpMplBfeIUOvKW4U1Nj5wUNn5V6M5m2luEt8Ks1w/cb6Mo1e9k
	 9grWpfncWsRjQGqRQEKTSHbyEdPwPsrrBMiVwYesq9pOEF3qd7i6Eq+RIfQ05sxT5U
	 d9qLgJyEY02PQ==
Date: Thu, 15 May 2025 18:22:41 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: devicetree@vger.kernel.org, Steve deRosier <derosier@cal-sierra.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Conor Dooley <conor+dt@kernel.org>
To: Joseph Kogut <joseph.kogut@gmail.com>
In-Reply-To: <20250515220034.393303-1-joseph.kogut@gmail.com>
References: <20250515220034.393303-1-joseph.kogut@gmail.com>
Message-Id: <174735136138.1544989.11909422896170025756.robh@kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add Radxa CM5 IO
 board
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250515_162244_213532_658C9FBA 
X-CRM114-Status: GOOD (  10.83  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Thu, 15 May 2025 15:00:33 -0700, Joseph Kogut wrote:
> Add device tree binding for the Radxa CM5 IO board.
> 
> This board is based on the rk3588s.
> 
> Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:
./Documentation/devicetree/bindings/arm/rockchip.yaml:846:13: [warning] wrong indentation: expected 14 but found 12 (indentation)

dtschema/dtc warnings/errors:

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250515220034.393303-1-joseph.kogut@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
