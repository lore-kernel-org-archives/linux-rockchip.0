Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76EF2C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 May 2022 15:34:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n+XiMi5JwZOCWwbVCWGzcFANbMugI4bfKcgLPohBcSk=; b=OnLkxl+11vHgje
	cRTP1LFO0QNOp3ERQZp+sde35jkbJqpIJTLbWQn+P1bupoNSttoeylayUB2ug27v5Xg8LfNmTn4Vo
	CKyQO/hjxILwTKXD+5v2bIyIi0Gej8Tgi1VzK4y3NzzgRbYEiV2hJYzkzEK5V8fjhZ1itaKVFUs7C
	EJOoEfHnwyDsXL5VuSe3bO4edAg4CvgrRalWoLPfLU+x9tDvxQMx6oc2v3+pHFBJWIJwTWCgN5iT6
	L01MnfjqlKTDC/zP5rpcuMEMZoyrYC4bA+l8rZB7wOG7q89Au3IKYyctL1Td1YFTW46+W0PbDnwHb
	kkkzV2lbxVqtidG6I2GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmH1A-00BSyx-9W; Wed, 04 May 2022 15:34:20 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmH0y-00BSup-DV; Wed, 04 May 2022 15:34:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1651678400;
 bh=t1jWW/NNdc3oVoqZFIz/KOKySSaJeOvL+LAywcKQZmQ=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=LwIsFhN1rjdEiVlyxnaS7ncjk6PZYnKBBl+tr9+KXUDe/qxPl2d/Bp5Z/dr3lyxmy
 7DwxEtcOY31Hgr+5tLUBLoMC49c3EW7j2QhtbVJ9/ByKvCiueH7IJ71DX1E3k13qTc
 TVszvdU0DjJsXiHCxas+BflNR/I82iWUBbh1vdHQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.245.79.168] ([80.245.79.168]) by web-mail.gmx.net
 (3c-app-gmx-bs42.server.lan [172.19.170.94]) (via HTTP); Wed, 4 May 2022
 17:33:20 +0200
MIME-Version: 1.0
Message-ID: <trinity-9f557027-8e00-4a4a-bc19-bc576e163f7b-1651678399970@3c-app-gmx-bs42>
From: Frank Wunderlich <frank-w@public-files.de>
To: Vladimir Oltean <olteanv@gmail.com>
Cc: Frank Wunderlich <linux@fw-web.de>, linux-mediatek@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner
 <heiko@sntech.de>, Sean Wang <sean.wang@mediatek.com>, Landen Chao
 <Landen.Chao@mediatek.com>, DENG Qingfang <dqfext@gmail.com>, Andrew Lunn
 <andrew@lunn.ch>, Vivien Didelot <vivien.didelot@gmail.com>, Florian
 Fainelli <f.fainelli@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Matthias
 Brugger <matthias.bgg@gmail.com>, Peter Geis <pgwipeout@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Subject: Aw: Re: [RFC v2 4/4] arm64: dts: rockchip: Add mt7531 dsa node to
 BPI-R2-Pro board
Date: Wed, 4 May 2022 17:33:20 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220504152450.cs2afa4hwkqp5b5m@skbuf>
References: <20220430130347.15190-1-linux@fw-web.de>
 <20220430130347.15190-5-linux@fw-web.de>
 <20220504152450.cs2afa4hwkqp5b5m@skbuf>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:jAByejol9CawH+bkRnuUTdbn5p4GE4zCHqo1YE3b+FDnUygKKnzA8wTqRLGS/CA/q7yLa
 sO8q+B5k6HDcTCTJzrvS+jYJeORboT9v2Hv5lKBTQWaanYNLdOPekeTa4+OFf+/s6Gnr5nNoSL//
 bSpaRibkotbH7leM710FyDgJHSBCkARi3FH29lSP+EMi9AYj623JdU/CHqex+fGr/TKclxKMa0L2
 IJkayqswiYtOoAUB+O7ClpSqhMz22rEgGHxD1565g2SzCoKFhMZU+TQWmU3WXt+0K1LR3C61Qy7I
 y4=
X-UI-Out-Filterresults: notjunk:1;V03:K0:dslsHgA9X8Y=:AIi6owLu7xaqkaZe7a9jI5
 Yvmry07cI2MyAwGQxbQFhcMiHuSypPwM+wfhSOXTDuycYVNyio2qEq00XiHaSniiepuq6ZSYz
 vtHcyrAvNULbNi/BsNkafYaEPuexpRxrtzjLXHKLm8G1dQ1vqG+uOB/5tFhqSm7rbhNyVg2IH
 E0DUNLndPzsEToX2zs/PuTcOyOI2SYmSBajqyftFBYRBkWXJIKQciHD6kdD3IG06mZ1ajX4Xj
 MDeCOgiIeSd0wf2snQD+79HsviSOQrNnfSeGxCky/zMunuQbJLqpvRVDq1ROegNjQc6wFbvSz
 Shhid+1+MO0Pv3dURxu1QfXMq4lctoCETYirb1f7+In6juJinrgE0CC8LITfyqSVcfeHqWfAC
 lFLmOlRld1y36OAgqX6qeuG0/4qH1nVSWyjgQeezbOBIJMTC4d5qdL+IdJ95L1N3/vhp8d8+c
 DsBccexmldhA8spRIJze0DNtWrgoFMQbHpMPyEJkmDLd8LhuIAwT5U9oSsyeKktKcxEz8YSvd
 enXvnjevbxZ0Sx9OgnZ2ZWHSD1v1qqU8nBnR7BpyE3KfeTzGwyCJ59OgeD1UO3HBlFiTrLO8z
 +E2k8EjwbCVoYGqYCoXwYxCeqaKKYTJIjB94/syugwhUSy4r6BExABIKjwKOxbB7DqSw+IM4i
 xbl6sLk5Vew0dE+5u3niEcw1QmJI7LscrGGuiDDnBrAvRd/qI0tMG9w2YP+e7ugh1oDisMxCG
 8adlgWsC3SrreyzEsiblf3gn0B/YgGFOig2GXsjsNCIAcRWfDN0/sg4M65I/zpMh2EjJAK/NX
 mW7SsPE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220504_083408_949895_FC460B13 
X-CRM114-Status: GOOD (  10.22  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi,

thanks for review

> Gesendet: Mittwoch, 04. Mai 2022 um 17:24 Uhr
> Von: "Vladimir Oltean" <olteanv@gmail.com>

> > +&mdio0 {
> > +	#address-cells = <1>;
> > +	#size-cells = <0>;
> > +
> > +	switch@0 {
>
> I think the preferable names are the newer "ethernet-switch@0",
> "ethernet-ports", "ethernet-port@0".
>
> Otherwise
>
> Reviewed-by: Vladimir Oltean <olteanv@gmail.com>

current device-tree nodes using "switch" and "ports"

see discussioon here about make it fixed to "ports" property instead of PatternProperties including optional "ethernet-"

https://patchwork.kernel.org/project/linux-mediatek/patch/20220502153238.85090-1-linux@fw-web.de/#24843155

>
> > +		compatible = "mediatek,mt7531";
> > +		reg = <0>;
> > +
> > +		ports {
> > +			#address-cells = <1>;
> > +			#size-cells = <0>;
> > +
> > +			port@1 {
> > +				reg = <1>;
> > +				label = "lan0";
> > +			};
> > +
> > +			port@2 {
> > +				reg = <2>;
> > +				label = "lan1";
> > +			};
> > +
> > +			port@3 {
> > +				reg = <3>;
> > +				label = "lan2";
> > +			};
> > +
> > +			port@4 {
> > +				reg = <4>;
> > +				label = "lan3";
> > +			};
> > +
> > +			port@5 {
> > +				reg = <5>;
> > +				label = "cpu";
> > +				ethernet = <&gmac0>;
> > +				phy-mode = "rgmii";
> > +
> > +				fixed-link {
> > +					speed = <1000>;
> > +					full-duplex;
> > +					pause;
> > +				};
> > +			};
> > +		};
> > +	};


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
