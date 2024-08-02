Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB5BBC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Aug 2024 15:39:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=coCNBd+KdNvsZe0crhbyXqEhnS72teTKHIq1IwbUkuE=; b=R5HyYFi5P5tCCb
	UIhm43WOOvjeMS0fBqlWSw3prE13Lwvmcuf4BvxBOlN/I4THs2zfNbEfR343/LaCRsNr0MULsk9a4
	dgH7zpwQ2cyJ5QkGRtbCpjoONwSDYL0yACjOlpZv6zpJ42NbkPSsIJqtt0Y6qaAYI5Hh0AC3wkopk
	nTCJgTiEk+vd4ZgcTnTrist/qxvTeojE8omYheJddtjn+0dqsyXt4lu8wLGexldYNGlHcqLem+ec7
	wSluKL2bjCyANUtT5k+21mMpwQ8u7ntxx0SJUBZPOxWQAShVpcEZdKR/kGVH6sY9fqotBBxkqGC1S
	MX6GMbchtqUSQ9IJy+xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZuMt-00000009JOa-1ppn;
	Fri, 02 Aug 2024 15:38:59 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZuMN-00000009JHi-0lWP;
	Fri, 02 Aug 2024 15:38:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1722613105;
	bh=9U34Es3zsGrdFdeUdrkf1ROpI97+/+LYAK8kb5fRee0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=vIRKx4V1Aus8wOQmwDGZFBFHfO3eOxc1GMQMLiQdeCFevkGrxMBnrYLoD6fJpa+Up
	 qOX2OL1y4klIyt5B8b37Z/6E4onF7xJkwyteFuXseoVJTm2oMpqUJPWOC03Tm0TlMh
	 rMGPvVaaFnDU/1z3+3JlYbcsaJn08/WD3lrk3NwackJrnszzR2nwMjaceHJ6cu60pY
	 ZOQp54QL+Z6s2dyxLDbYjPD4Sy1UetG0pbt0VPIuT0tgHYUwhdQjNysWnHf1NrB8J7
	 3hQ6y1tbmJtdU7Q6/snh6vO2Xy02Vd3Blqm3S+4auDjXFyAB+8g0llBVrHKzYcSbyq
	 S/4W/0J6yBRpw==
Received: from trenzalore.localnet (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 594423782212;
	Fri,  2 Aug 2024 15:38:24 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Jaehoon Chung <jh80.chung@samsung.com>,
 linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/3] dt-bindings: pinctrl: Add rk3576 dw-mshc bindings
Date: Fri, 02 Aug 2024 11:39:32 -0400
Message-ID: <6067992.lOV4Wx5bFT@trenzalore>
In-Reply-To: <20240802153609.296197-2-detlev.casanova@collabora.com>
References: <20240802153609.296197-1-detlev.casanova@collabora.com>
 <20240802153609.296197-2-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240802_083827_386511_9E335E55 
X-CRM114-Status: GOOD (  19.85  )
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

> [PATCH 1/3] dt-bindings: pinctrl: Add rk3576 dw-mshc bindings

s/pinctrl/mmc

On Friday, 2 August 2024 11:31:27 EDT Detlev Casanova wrote:
> Add the compatible string for rockchip,rk3576-dw-mshc and add support
> for the rockchip,use-v2-tuning flag, a new feature of this core.
> 
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> ---
>  .../devicetree/bindings/mmc/rockchip-dw-mshc.yaml     | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml index
> 211cd0b0bc5f3..dd8d1e773bb38 100644
> --- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> @@ -39,6 +39,7 @@ properties:
>                - rockchip,rk3368-dw-mshc
>                - rockchip,rk3399-dw-mshc
>                - rockchip,rk3568-dw-mshc
> +              - rockchip,rk3576-dw-mshc
>                - rockchip,rk3588-dw-mshc
>                - rockchip,rv1108-dw-mshc
>                - rockchip,rv1126-dw-mshc
> @@ -95,6 +96,16 @@ properties:
>        If not specified, the host will do tuning for 360 times,
>        namely tuning for each degree.
> 
> +  rockchip,use-v2-tuning:
> +    $ref: /schemas/types.yaml#/definitions/flag
> +    description:
> +      If present, use tuning version 2.
> +      v2 tuning will inherit pre-stage loader's phase settings for the
> first +      time, and do re-tune if necessary.
> +      Re-tune will still try the rough degrees, for instance, 90, 180, 270,
> +      360 but continue to do the fine tuning if sample window isn't good +
>      enough.
> +
>  required:
>    - compatible
>    - reg





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
