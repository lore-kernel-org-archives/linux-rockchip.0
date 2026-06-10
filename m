Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0221DCD98C7
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jun 2026 08:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2NjM6+ARoqOrs9tefH9P4atDXcs1HGy3vgJdCod+55U=; b=SZnksAqoL2OiCn
	BB1AsmowNhduaQ8zYDu38vkOS0F1bH4IF83OieDAJiFHCnz+YWSiDT/mZ8Fv0KA/EpZNMtxjeBEvO
	KAic4fqdfMN7p4+7+d4xT82m4g+48Io7YhVxRK9zii+hmZWxlfEWIAeeiMucOAMjmEJCcspNtWSWl
	4ZBTE9XuuiNDY4uMuCs6y2nt3Fup1a54No7zDEejMfCqHl+Ind1q/xcwPN2z6oCoC6tKI7aWRcKHE
	zE4HvdDrGi77RRIOI4jH9oAPvElGZvdEvGH+XGLz375oVNvkUUtDPZUI2ScwCr6U0PIb5rjUXaNOj
	YcZquWrA8t2cQcsGIpNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXEaW-000000077Z3-0uAk;
	Wed, 10 Jun 2026 08:47:04 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXEaV-000000077Yq-156f
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Jun 2026 08:47:03 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B711841AF8;
	Wed, 10 Jun 2026 08:47:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26A0A1F00893;
	Wed, 10 Jun 2026 08:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781081222;
	bh=LUXfiLFW2MJjVB46SHo4DSHAUwVSUIOzn/pOwbSxPHA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Bp6v24J0pt9pE2zwgzeXDcHM2x5fzEraeSEBv2UA/WYrWS0HGT/YLu+oqcU4/ZLvO
	 Ec/oPJeV2PnyiEbOqtmDaxK6ZioccqUH0d4+UD37t0cXh2s+MFaOakikHJBAM70i8v
	 wfJGjwObcgcRT6NI+kOW2Rkp+aH08S1qs+dRdpVkfAtf/yl0Zi1ntMHuved62sgfnp
	 aNMuHruvVtISOqPcdMAw/nTGDPqtex6Phd53B7AWT1a/lDQKQkhV/a3lwcSA2+d7+E
	 b/jMEhSVxtFc8dq3Al4S+gVTKrvtTx2JfrRCFXq/nwmsZCP6D21Q7FGRKTVkdcmwpm
	 Wg4mIP8jeDVDw==
Date: Wed, 10 Jun 2026 10:46:57 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Diederik de Haas <diederik@cknow-tech.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Michael Zhang <zhangyi@everest-semi.com>, 
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] ASoC: dt-bindings: everest,es8389: Document audio graph
 port
Message-ID: <20260610-shiny-pronghorn-of-piety-8fa3ea@quoll>
References: <20260607105913.355966-1-diederik@cknow-tech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260607105913.355966-1-diederik@cknow-tech.com>
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

On Sun, Jun 07, 2026 at 12:58:49PM +0200, Diederik de Haas wrote:
> Provide an endpoint for binding with the other side of the audio link,
> which is achieved via the 'port' property.
> 
> Signed-off-by: Diederik de Haas <diederik@cknow-tech.com>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
