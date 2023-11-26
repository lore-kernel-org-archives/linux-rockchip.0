Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F013AC4167B
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Nov 2023 17:49:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=crVlwXqeTRlDNF96ZFv2k+vy0x6/Xhi78irxC5gnqpU=; b=GFw1nJvjS9GI8f
	HA6Ggjtv0iFJj5sYnEPIOkA1eyyFXnrRHMqI2gCXIzNtRknOWJV6QoUO3bd+6Mgmp+ffYlGOynQXz
	69Ws/PyfqjE4f9oIcQSiwEz5n9S9/GalfmZXCD7jEmu+OwU5/6Xmn5XtX5swii3ZZC19vfyeYCUFG
	xYM6UoL4rAhdUs0FuU5xG0G+tsnvRhqdjAjMwUbgwSKDDEdeQVde3TvcSfrj/z7/CMbDyb0nzjVTt
	5S8SY+mE4PYkwtld4vB/MBDBjNNuSNJEoFaXh1LcaFBDWsr7ESHmhmdcgNfuxI2+JOFsFP6HkhhVl
	KO/xPEo1cOUQbxwA8pTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7JFR-00DZrc-2G;
	Sun, 26 Nov 2023 17:48:49 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7JFK-00DZds-2Q;
	Sun, 26 Nov 2023 17:48:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=P+MMY/H9HFvWRq/TZPXfzpfMq3RLmEgdkEE9wrSqusE=; b=ZK1Xn+aVbP+grqplmNoNPl/JFs
	tdqVCS3ZE4Jt1ffDtrPn4OMhzm4zhF1OO/YzWxla+LZx6dFXZPsIuvOEz/1WMe8lk47VLg12prwn2
	Tl1HVsDqUmWdr6SlgvLkVUkqNY0LGcaMsQis5uj6R/afxgJMm+a5uq60ZNlRtVNdWnaU=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1r7JEr-001GJ7-Ig; Sun, 26 Nov 2023 18:48:13 +0100
Date: Sun, 26 Nov 2023 18:48:13 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, Andrew Davis <afd@ti.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Bjorn Andersson <andersson@kernel.org>,
	Chen-Yu Tsai <wens@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Heiko Stuebner <heiko@sntech.de>, Jonathan Corbet <corbet@lwn.net>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Michal Simek <michal.simek@amd.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Nishanth Menon <nm@ti.com>, Olof Johansson <olof@lixom.net>,
	=?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
	linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-amlogic@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	workflows@vger.kernel.org, linux-doc@vger.kernel.org
Subject: Re: [PATCH v3] docs: dt-bindings: add DTS Coding Style document
Message-ID: <4fa1e860-48bd-456b-ab0b-88215c2b8d1b@lunn.ch>
References: <20231125184422.12315-1-krzysztof.kozlowski@linaro.org>
 <a3b65c90-afc9-4caf-8744-112369a838d2@lunn.ch>
 <15292222-39b3-4e9e-a6c1-26fba8f5efcd@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <15292222-39b3-4e9e-a6c1-26fba8f5efcd@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231126_094842_913336_3FA720DA 
X-CRM114-Status: GOOD (  22.47  )
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

On Sun, Nov 26, 2023 at 11:38:38AM +0100, Krzysztof Kozlowski wrote:
> On 25/11/2023 20:47, Andrew Lunn wrote:
> >> +=====================================
> >> +Devicetree Sources (DTS) Coding Style
> >> +=====================================
> >> +
> >> +When writing Devicetree Sources (DTS) please observe below guidelines.  They
> >> +should be considered complementary to any rules expressed already in Devicetree
> >> +Specification and dtc compiler (including W=1 and W=2 builds).
> >> +
> >> +Individual architectures and sub-architectures can add additional rules, making
> >> +the style stricter.
> > 
> > It would be nice to add a pointer where such rules are documented.
> 
> Subsystem profile or any other place. The generic doc should not point
> to specific ones.

That is not so friendly for a developer. A reviewer points out that a
file is not consistent with the coding style. So they go away and fix
it, as described here. They then get a second review which say, no,
you to do X, Y and Z, despite them actually following the coding
style.

Maybe add to the paragraph above:

These further restrictions are voluntary, until added to this
document.

This should encourage those architectures to document their coding
style.

> The root node is a bit special, but other than that mixing nodes with
> and without unit address is discouraged practice.

If the root node is special, maybe it needs a few rules of its own?
All properties without an address come first, then properties with
addresses. Sorting within these classes follow the normal rules
already stated?

> >> +Indentation
> >> +-----------
> >> +
> >> +1. Use indentation according to :ref:`codingstyle`.
> >> +2. For arrays spanning across lines, it is preferred to align the continued
> >> +   entries with opening < from the first line.
> >> +3. Each entry in arrays with multiple cells (e.g. "reg" with two IO addresses)
> >> +   shall be enclosed in <>.
> >> +
> >> +Example::
> >> +
> >> +	thermal-sensor@c271000 {
> >> +		compatible = "qcom,sm8550-tsens", "qcom,tsens-v2";
> >> +		reg = <0x0 0x0c271000 0x0 0x1000>,
> >> +		      <0x0 0x0c222000 0x0 0x1000>;
> >> +	};
> > 
> > I'm not sure i understand this. Is this example correct?
> > 
> >                 gpio-fan,speed-map = <0    0
> >                                       3000 1
> >                                       6000 2>;
> > 
> > It exists a lot in todays files.
> 
> Depends on the binidng. Is it matrix? If yes, then it is not correct.

It seems to me, rules 2 and 3 should be swapped. You can only align
the <, if you have <. So logically, the rule about having < should
come first.

     Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
