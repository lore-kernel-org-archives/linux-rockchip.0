Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8F06C282C6
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Feb 2025 18:02:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EqME++zi6DcbZYjW9xEexMNJniMd2PvR4Y4KGXcN1f4=; b=jK6+ipln3h/q18
	GH6v1XOIuV1fVfSviTw+bEFXhD40Anw8eba51z0fQcZPnFTuUf7NGF2/lZjcmr3Gn7isIHAQAonBG
	2tcSBSKodiIhpnSMJnq8C3n/L96kNlogF/K3lW/7qc82gvdusQoFL/6CL0sLqBaz5q9Ojg3+/ssau
	DvQP8WVjdzBLQEdPUPgYVyWj4/ncSLYL7ajGl37VSC+qsugaVISqgM5x1nIrMCeioJjqQOcxTGpzU
	u6fXjTyvOmEgFCtgfVkvyyR7vwMids7MFi8WnZ/AVsfuF5zlswzG3iSUpD7esDeBOJdDdGmGlObyW
	pVu3cUPsQeietvnVOilg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1to4gR-0000000C3Zk-052J;
	Fri, 28 Feb 2025 18:01:59 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1to4ep-0000000C37t-0mFR;
	Fri, 28 Feb 2025 18:00:21 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id B39B225CD6;
	Fri, 28 Feb 2025 19:00:12 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cNSjyzCdGSLb; Fri, 28 Feb 2025 19:00:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1740765606; bh=sTnsqvuknnrk7PfyI85T2uYsvkVUA1Bx/ewBwy69kWw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=DZIk7HQsgnCdt7LmeYKxxyx0jrWWanw19QAHpdgf6BvsEtGCfLss75KAX5Kbxjfb/
	 Mr7aKa8fBVFX1IZv4ZPSWoalLZXuJk8b6jJOLba5zd0N6959C/yhYGQIiDRy7SoeKd
	 TWoQQGkjPvFawBwsRkU/5IvLO0qpVcUoGNKJM7G1KdqexI/7UK3MXkCxOxOr0L/knb
	 xdYo6piOJedRv08JolbgcJhNxB6fT1iLmo8gMJS3pCq60+JWmJ+YY6F1dZYaIgbNet
	 6/d3FiSnuRVDMLj1GKdl8xjMpoJ92E2rh9sheo2pDnEDVSRk28/53DoyXysap6u1dN
	 QXdx2qnY8B4YA==
Date: Fri, 28 Feb 2025 17:59:42 +0000
From: Yao Zi <ziyao@disroot.org>
To: "Diederik de Haas" <didi.debian@cknow.org>,
	"Rob Herring" <robh@kernel.org>,
	"Krzysztof Kozlowski" <krzk+dt@kernel.org>,
	"Conor Dooley" <conor+dt@kernel.org>,
	"Heiko Stuebner" <heiko@sntech.de>,
	"Dragan Simic" <dsimic@manjaro.org>,
	"Johan Jonker" <jbx6244@gmail.com>,
	"Wenhao Cui" <lasstp5011@gmail.com>,
	"Yuteng Zhong" <zonyitoo@gmail.com>
Cc: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-rockchip@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Remove undocumented sdmmc property
 from lubancat-1
Message-ID: <Z8H5jjE24cZb4IBQ@pie.lan>
References: <20250228163117.47318-2-ziyao@disroot.org>
 <D848JET5TDL6.2L4ZQR0YHYQU6@cknow.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <D848JET5TDL6.2L4ZQR0YHYQU6@cknow.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250228_100019_633007_275AB066 
X-CRM114-Status: GOOD (  13.98  )
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

On Fri, Feb 28, 2025 at 05:55:47PM +0100, Diederik de Haas wrote:
> On Fri Feb 28, 2025 at 5:31 PM CET, Yao Zi wrote:
> > Property "supports-cd" isn't documented anywhere and is unnecessary for
> 
> s/supports-cd/supports-sd/ ?

Oops, yes, it's a typo.

As it's a trival patch, could it be fixed on merging? Or should I send
another version?

> Cheers,
>   Diederik

Thanks,
Yao Zi

> > mainline driver to function. It seems a property used by downstream
> > kernel was brought into mainline.
> >
> > This should be reported by dtbs_check, but mmc-controller-common.yaml
> > defaults additionalProperties to true thus allows it. Remove the
> > property to clean the devicetree up and avoid possible confusion.
> >
> > Fixes: 8d94da58de53 ("arm64: dts: rockchip: Add EmbedFire LubanCat 1")
> > Signed-off-by: Yao Zi <ziyao@disroot.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
