Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52DE1C5478C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Feb 2024 13:48:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jXij/OODZwqUbZiGOaK/f9j9GKe2lP0hh7ai2yqcT7I=; b=W9xgDPSjWf8l5/
	ieHE9ouE4QqZMe7YQjN2E+65g4ZyP1T0VtgJh3qVTDtLhGTH+RZXYrnfzfdkkYoaBCKIK28aRO+LQ
	/l5NIln1jZa3Gr0WA8aMg5K95gCQuAb7M50AJBw55D5iRZ9LtuFadaRwSJLuwaBkUJ7SIfQz9jlqi
	Emw9klYX+UHlKsTTjNcUHcBxfwbG91Poi4/RjiRHaqi5mO8B7MMDsWrbokZ2kBmTod7Qg4jeZKwas
	KlTamUlRxqzf+ntHjxHvakE9F/qw4EDtNnlauo7Q18iyXMss6hIJRuMQqva1sls46G8HomM5VHyW6
	YUHgGK5DlrYIcA7ZRxVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdVua-00000009dtO-1mR9;
	Fri, 23 Feb 2024 13:48:24 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdVuU-00000009drs-3ebx;
	Fri, 23 Feb 2024 13:48:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id DF6A5634AC;
	Fri, 23 Feb 2024 13:48:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85CD5C433C7;
	Fri, 23 Feb 2024 13:48:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708696097;
	bh=Dkmut1aY9L+BcdJ4rpNL1JAvxJpVtlBFbV/vIEyFtrQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hPRzz/XLograqBje6REd30q2onNAyizTFJC/OFxDqrznJjIHogcNK6qYWBczm68O3
	 1T1xkAPJHcdMllBEDIhTSaZSj1PzylEmwsOyct5QoTJjdvnuG4LW+dcRyZn6cPUOOY
	 G+ONL/GqqCFZFQz/ixs8fqmwxO6cqm3sdYdb0oS+t1QKQoWFE079K9focrljujjcYo
	 CetPc/KjI2dSMRzAG2iaGRO3uFIbl9bSKzzhBMCYfjD5VCj8hg4TmyE4SAJy0Z0HFs
	 7nYNciZOqAOH/wvAhD1KbNPWQNkibMRFosTTsb6W2HshQLkBsgYxfnJDuS+juGfvvF
	 Mvmtfk5vN+P7A==
Date: Fri, 23 Feb 2024 06:48:15 -0700
From: Rob Herring <robh@kernel.org>
To: Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	linux-arm-kernel@lists.infradead.org, linux-sound@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	Jaroslav Kysela <perex@perex.cz>, Mark Brown <broonie@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-rockchip@lists.infradead.org, Takashi Iwai <tiwai@suse.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	devicetree@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH v3 2/7] ASoC: dt-bindings: Add Rockchip RK3308 internal
 audio codec
Message-ID: <170869609254.1763035.9305540137750026528.robh@kernel.org>
References: <20240221-rk3308-audio-codec-v3-0-dfa34abfcef6@bootlin.com>
 <20240221-rk3308-audio-codec-v3-2-dfa34abfcef6@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240221-rk3308-audio-codec-v3-2-dfa34abfcef6@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240223_054818_995704_2A426276 
X-CRM114-Status: GOOD (  12.53  )
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


On Wed, 21 Feb 2024 11:22:46 +0100, Luca Ceresoli wrote:
> Add device tree bindings document for the internal audio codec of the
> Rockchip RK3308 SoC.
> 
> Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
> 
> ---
> 
> Changed in v3:
>  - fix underscore in DT label
> 
> Changed in v2:
>  - reword commit title
>  - add maxItems to resets
>  - remove quotes from reset-names
>  - use percent values for rockchip,micbias-avdd-multiplier
>  - use name compliant to the docs in the example
> ---
>  .../bindings/sound/rockchip,rk3308-codec.yaml      | 98 ++++++++++++++++++++++
>  MAINTAINERS                                        |  5 ++
>  2 files changed, 103 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
