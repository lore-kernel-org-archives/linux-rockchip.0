Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DB2BF4BB64
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Feb 2026 17:29:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Mb1h+oBf/0g/sqeRXIzI7YkcDYqsBBsyfO8KgV9bW1A=; b=j3V1wRINrNRD342SK6wiNeINaf
	7ENsLJ6TwKHz9OvEfIguB91Uo5lyS1Wv1N5M2WG7RbhrzIiH9KD7vaUSa74+FeGvn9CoCZAgmwMX9
	Eu4uQNigG3jkgKZDeX1pcXAUXKzA6Nlh0UwOUuEB572MMekjn9Uf+Zxx0XsFANAacbOf9XUhBzqCL
	WgTNMneAjbpHrM/YCPPQ2POQ2f2wjiHNXGHL52XdS8G27tnACflWqSpf8tcRq+PPF4poiZps7bqU1
	c7DwHTcDiSxlPBg9gMunY8M8UAhH9VVek7ExFyO1g1Iv5fuy6VRGzL3FXkQkEi/OloEoZnSjF7Z8v
	g0WQvRuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuwDh-00000002UXe-2EnT;
	Tue, 24 Feb 2026 17:29:13 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuwDf-00000002UXU-3PFF
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Feb 2026 17:29:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D2157600AD;
	Tue, 24 Feb 2026 17:29:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 60BE9C116D0;
	Tue, 24 Feb 2026 17:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771954150;
	bh=pSGqZebvO3+aycQMfeI64m0G/5UvaBKl7jRANx8yJ/I=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=jZM9d1J8DoyrvyLJ0oc1B+mv3rXFoGSMx0ZL3qxSurA0IMb1iCGNbasMU7Ihcpbf7
	 Gh0NfjeXVW5Jh0doKiPA2bpKQV3MlKSYZ+Ak3ta/zu7Y79pw/dUzkLSzem6ZLidtB7
	 yOtCLmuDeMaPv1/ahTuGAyGo/1vM6dOC3Pq2cbDZxqal5eljxbwQ7USfRrA35Geo/t
	 qql40er/LOfMqZv3KhZa556pFWxmtAW6UxzGfbfeGWcOSQDqs+RAzeCDCea1D4C1IA
	 gZ2CYXex1uiADBx42P/ZwoIZYNXRdTcMh+6UT9kGQy+RuXDbdqfBGhmAdVUr8Eoj2Z
	 MMM5rAjOUks8A==
Date: Tue, 24 Feb 2026 11:29:09 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-rockchip@lists.infradead.org, krzk+dt@kernel.org, 
 linux-iio@vger.kernel.org, jic23@kernel.org, 
 Chris Morgan <macromorgan@hotmail.com>, devicetree@vger.kernel.org, 
 dlechner@baylibre.com, conor+dt@kernel.org, nuno.sa@analog.com, 
 jean-baptiste.maneyrol@tdk.com, heiko@sntech.de, andy@kernel.org
To: Chris Morgan <macroalpha82@gmail.com>
In-Reply-To: <20260224163109.370930-2-macroalpha82@gmail.com>
References: <20260224163109.370930-1-macroalpha82@gmail.com>
 <20260224163109.370930-2-macroalpha82@gmail.com>
Message-Id: <177195414948.3145595.4265112692565898282.robh@kernel.org>
Subject: Re: [PATCH 1/3] dt-bindings: iio: imu: icm42607: Add devicetree
 binding
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


On Tue, 24 Feb 2026 10:31:03 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add devicetree binding for the Invensense ICM42607 and Invensense
> ICM42607P inertial measurement unit. This unit is a combined
> accelerometer, gyroscope, and thermometer available via I2C or SPI.
> 
> This device is functionally very similar to the icm42600 series with a
> very different register layout.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../bindings/iio/imu/invensense,icm42607.yaml | 92 +++++++++++++++++++
>  1 file changed, 92 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/imu/invensense,icm42607.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/iio/imu/invensense,icm42607.yaml: 'maintainers' is a required property
	hint: Metaschema for devicetree binding documentation
	from schema $id: http://devicetree.org/meta-schemas/base.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260224163109.370930-2-macroalpha82@gmail.com

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
