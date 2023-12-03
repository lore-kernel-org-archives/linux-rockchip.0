Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3368FC4167B
	for <linux-rockchip@archiver.kernel.org>; Sun,  3 Dec 2023 20:26:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gAlrKanIm5jVJ6cZ139SwcOo1aOWTQb2IWxxZR8ZhzA=; b=r69D89YFWjkb8vjsLOOEfWugXN
	xj1EO3RGlHItf6zFMtXPe12LihvPzrD26Sl0YrDoJET/X/3EV0bmKVJOtFjMmP090EnRbj9mzkY76
	U/bds/fPT0Zse0wIdC6A3ypsxQHcwXrhmj9DvQ/thYEj5PlXj+OLIswkrI8fhPCtoCx6SO2x3JQKU
	iTw2j7W1X8GfRYCulGokd/obSxyGLniRndGfniKwmvTJLACHQfp8+DNY43NyHew1Oujt720SVwfeK
	vGd5pwhEiLSA8kPD++cTk9bVJ58N9wnGSROKG4ZJHGbOgW0kNvPzfm/MEg5M1o8nmWOydh+aUL7p0
	M5Sfpr5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9t2P-002Yvu-2J;
	Sun, 03 Dec 2023 20:26:01 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9t2K-002Yuz-3B;
	Sun, 03 Dec 2023 20:25:58 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1701635155;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=mWJ+aNdDgla6aB8RfWwYvr7B5kGqGCRxqh6xKbSq2wc=;
	b=PVR0CCV1WRc971ftwf+fTnXvVPx9DB7HXgFoRLGzcnfa4K5fnch4TEMseMxptkpcKSEKZN
	wGstlWhvUlT0yKzlPJG/ytbfQIzn+nkyRAmIpRK+Mo7YCMKn3LaVElBpqW01N+iZWreVlo
	U6F0t1DevvvJBTYe7uvafeYl8ebUbFjeJXzBik1Y4gCgqz/dnIpa9RsATQIMWRgV6gpfOr
	e87Fq2YjDXArbOJscUyA6s4lZc9lGsqUlK8V4amOLod0sYbJpE3OYL3uszJpVI9tSqBTux
	yChagRYXgjU2tWdJSaXom91KIuRMtnVDJD1L6KBb8IV1Xi3gcvuEciJ1WM7Z8w==
Date: Sun, 03 Dec 2023 21:25:54 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, Andrew Davis <afd@ti.com>, Andrew Lunn
 <andrew@lunn.ch>, Arnd Bergmann <arnd@arndb.de>, Bjorn Andersson
 <andersson@kernel.org>, Chen-Yu Tsai <wens@kernel.org>, Dmitry Baryshkov
 <dmitry.baryshkov@linaro.org>, Jonathan Corbet <corbet@lwn.net>, Michal
 Simek <michal.simek@amd.com>, Neil Armstrong <neil.armstrong@linaro.org>,
 Nishanth Menon <nm@ti.com>, Olof Johansson <olof@lixom.net>,
 =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>, Heiko Stuebner
 <heiko@sntech.de>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Konrad Dybcio <konradybcio@kernel.org>, Geert Uytterhoeven
 <geert+renesas@glider.be>, linux-rockchip@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, workflows@vger.kernel.org,
 linux-doc@vger.kernel.org
Subject: Re: [PATCH v4] docs: dt-bindings: add DTS Coding Style document
In-Reply-To: <20231203174622.18402-1-krzysztof.kozlowski@linaro.org>
References: <20231203174622.18402-1-krzysztof.kozlowski@linaro.org>
Message-ID: <2223b302fc43959a61578aae9cc3a15a@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231203_122557_222282_F4B8D416 
X-CRM114-Status: UNSURE (   9.49  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

> +Order of Properties in Device Node
> +----------------------------------
> +
> +The following order of properties in device nodes is preferred:
> +
> +1. compatible
> +2. reg
> +3. ranges
> +4. Standard/common properties (defined by common bindings, e.g. 
> without
> +   vendor-prefixes)
> +5. Vendor-specific properties
> +6. status (if applicable)
> +7. Child nodes, where each node is preceded with a blank line

Another small suggestion...  It would be good to put the property names 
found in the list items, such as "compatible" and "status", into 
quotation marks, to make it obvious what they are.  That way, the list 
would also be more consistent with the property names mentioned in the 
sentence right below.

> +
> +The "status" property is by default "okay", thus it can be omitted.
> +
> +The above-described ordering follows this approach:
> +
> +1. Most important properties start the node: compatible then bus 
> addressing to
> +   match unit address.
> +2. Each node will have common properties in similar place.
> +3. Status is the last information to annotate that device node is or 
> is not
> +   finished (board resources are needed).

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
