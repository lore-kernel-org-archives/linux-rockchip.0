Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 522C0C3DA59
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jul 2024 21:13:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=v1eZpNoK0INbY1pMCRdnjuH84kGx8kkHsFeUSrPICoM=; b=GuU8CTa6h+IO7DScGtzIkwhgur
	esu1Hx+bqKvY+At+XlYRFxoXFv5qJVyphkPuI4jmvvM1EFS/viG/+AVT+YB2rrpB059Uoc5kQ0Xfz
	yc1bwMSEkWTrXWHtkNesSoZdYOJxti3HO2DAigkDtUI0iezlc765luuUgG5umK71UwVgwxIwLEvLm
	Pv5mvXZLczvjcySUAfK60RLJtHjeKqAJpSS0iLcw8s9+P+WMFHqK/EmbuIfdjNNzuSLL1p5BLTWuK
	ZA5OhgQYhUjXgDFHPT1sBvcRFmst1QT9NHVvCvT1IElxtiVjmLjRd7R60+BaoDR/nwH+WBW/OtDTW
	33JoT/Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTpUL-0000000BmW1-0n0l;
	Tue, 16 Jul 2024 21:13:33 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTpTU-0000000BmFe-07dz;
	Tue, 16 Jul 2024 21:12:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 90F4661447;
	Tue, 16 Jul 2024 21:12:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 287C9C4AF0C;
	Tue, 16 Jul 2024 21:12:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721164359;
	bh=pWFMDcCWc4JALdENxjGdvjOkgU/ZmXdU2cvvVS1rfFc=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=OaOJSXamy5NMWjbjfBO4xslat/mENqg7iYoo4Hg3+zlD9t5ISds9Iji1Z6HyZQRXj
	 hBZRlt5/Eepx2iNKInWXvVn6QmvABOnR1qy1hEQC5BkY4maitGY+qS1Qt/M48dn0pv
	 mxvPrzAt8fi1by5y8tJ+40i+cTJch5IJmP9HJG8666NWyjEjAB0XI/fKHfAHnQ8VL3
	 laHLuGSkQ45mcc8pNK3IhvExeJcvFgYJkT4l5ltgsBHGsROLpBpL9SQdg44vCpe8IN
	 6NqaW4ip+w2+deSrhUVUaMQQaM2+YGSZbCd93rAprlY5lIvLC6xBb0Bmp5vYheLH4D
	 DiHjIC2hWtUFw==
Date: Tue, 16 Jul 2024 15:12:37 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Christopher Obbard <chris.obbard@collabora.com>
Cc: Conor Dooley <conor+dt@kernel.org>, linux-rockchip@lists.infradead.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org, 
 Kever Yang <kever.yang@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20240716-rockchip-px30-firefly-v1-0-60cdad3023a3@collabora.com>
References: <20240716-rockchip-px30-firefly-v1-0-60cdad3023a3@collabora.com>
Message-Id: <172116301355.347311.14376396477445638438.robh@kernel.org>
Subject: Re: [PATCH 0/2] Add support for Firefly CORE PX30 JD4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_141240_134599_5C3B0965 
X-CRM114-Status: GOOD (  14.79  )
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


On Tue, 16 Jul 2024 16:51:03 +0100, Christopher Obbard wrote:
> The Firefly CORE PX30 JD4 board is a SOM and motherboard bundle from
> Firefly containing the Rockchip PX30 SOC. This series adds support for it.
> 
> 
> ---
> Christopher Obbard (2):
>       dt-bindings: arm: rockchip: add Firefly CORE PX30 JD4
>       arm64: dts: rockchip: add Firefly CORE PX30 JD4
> 
>  .../devicetree/bindings/arm/rockchip.yaml          |   5 +
>  arch/arm64/boot/dts/rockchip/Makefile              |   1 +
>  .../dts/rockchip/px30-firefly-core-px30-jd4.dts    | 562 +++++++++++++++++++++
>  3 files changed, 568 insertions(+)
> ---
> base-commit: d67978318827d06f1c0fa4c31343a279e9df6fde
> change-id: 20240716-rockchip-px30-firefly-59efc93d6784
> 
> Best regards,
> --
> Christopher Obbard <chris.obbard@collabora.com>
> 
> 
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


New warnings running 'make CHECK_DTBS=y rockchip/px30-firefly-core-px30-jd4.dtb' for 20240716-rockchip-px30-firefly-v1-0-60cdad3023a3@collabora.com:

arch/arm64/boot/dts/rockchip/px30-firefly-core-px30-jd4.dtb: /dsi@ff450000/panel@0: failed to match any schema with compatible: ['sitronix,st7703']






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
