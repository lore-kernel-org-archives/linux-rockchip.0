Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B754C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Apr 2022 07:26:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YP/QVcACFnv3aivtjVnw9ZhiojFD67IPNKf44ukkUJo=; b=cypdb/u4rSumbp
	+mmJbJ0OymvjT7coFNZhoYYWBJDm06rqVR77NhNch3uvIRYlXoyCxOyM/TTHqa2vZx5jBuBjWJzG5
	kFqueYMBf2LkK/TAdQjEXshbrscOrCzSluh19MUCJTr41dcvEc615rqRboO2fne+GgE5zA5QQ3EQU
	aPiBNLo/ZmKGsBvWuIDHiNlHoLdTf451cnCsH33u+anueGtwDxtJevT8iPpdyJn9QU7prf+Wajl8+
	yjlEb9Fkpg6UMXJ28SbSQIgZ3n2QB3Y5vdH8xi6JOOtno+ZrPob1Jjown8dsNi0k25igqL1/WMmNS
	wH85IV7EcgTXtzt0cTEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njyXS-005Aso-E1; Thu, 28 Apr 2022 07:26:10 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njyXA-005AkG-Gu; Thu, 28 Apr 2022 07:25:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1651130723;
 bh=Kl1D0qKBLbFcGmM/inCOM/LMhQnD3kUx2fRwBIfJFbY=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=ICgj3U0KsWCdSyk+4KTl7+UbbH7ZgeuOkjZprYn96+3lI1AwcRvsBXO6wd+8qZwPn
 OoIxHHuNiq00mTWpDdxVNnQJovYajWGc5SsfcuWwvgRNldnbn6R5FYiuIV/k+QG89n
 mi1e9wXTuqQiOIvz8GUyBD6Pzj3qw9SOqaQH/XoM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.145.42] ([217.61.145.42]) by web-mail.gmx.net
 (3c-app-gmx-bs20.server.lan [172.19.170.72]) (via HTTP); Thu, 28 Apr 2022
 09:25:23 +0200
MIME-Version: 1.0
Message-ID: <trinity-fcca248f-cb76-474a-8227-5b7188140bdf-1651130723782@3c-app-gmx-bs20>
From: Frank Wunderlich <frank-w@public-files.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Frank Wunderlich <linux@fw-web.de>, linux-rockchip@lists.infradead.org,
 Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner
 <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul
 <vkoul@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, Philipp Zabel
 <p.zabel@pengutronix.de>, Johan Jonker <jbx6244@gmail.com>, Peter Geis
 <pgwipeout@gmail.com>, Michael Riesch <michael.riesch@wolfvision.net>,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Aw: Re: [RFC/RFT v2 05/11] dt-bindings: pci: add bifurcation option
 to Rockchip DesignWare binding
Date: Thu, 28 Apr 2022 09:25:23 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <ea6ccec6-81a3-b22d-46db-c31a9f1e85f3@linaro.org>
References: <20220426132139.26761-1-linux@fw-web.de>
 <20220426132139.26761-6-linux@fw-web.de>
 <ea6ccec6-81a3-b22d-46db-c31a9f1e85f3@linaro.org>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:HuS/IQbWns2B9KbVmd+JXXePQOBTI5r+4oLrCZnL6JqsyIeqTqsBN/vkAMd357JlnYgtg
 43YoCUDaepjA+gR16+vK2qsTsr2Ggk+GAdPHRIuTT25wO9OaXXFxzSpRFegBlZVrQWK5MXoEqjar
 iAZeNn9SgywJLlkDgT8y3fRThCDpGCk0BET0WAB96yokouxCOXHKnW6UZMTKzC+794JlErXjecwE
 nOvCkWakPUTT8Eb4neasYEGg6txE7h/DJplgMSgezg5PWQ445EzyGytjG9rvZ2t5gA53hlGPPTCu
 CQ=
X-UI-Out-Filterresults: notjunk:1;V03:K0:+DhlrGzejX0=:H7ejG4ksVlR2OD+2AK78pX
 NEn5mlQjnBf4smxMBlFQljTTDT4W3WRU9Ox9sJ9xtSepQmURcyZ9dmRz33TNfj4pKUQQnPHR2
 vJnr0pZHyzisgYrhozVIiPpQqDuK2Bm1g6wmUJEqNtkyvZMY1dJt50oY03g5hDHAh2Z68clXs
 DEdgI9Q/rkGwXhaXXcmeWNR/yePzdnuglPIrJEqnIHu+WgpAcGYOT33sD8fxQOTKuGAhFUqVt
 LGWzfBaGSHbQ7IAtL1cp5Os9cpbM5CWuUNUywoyNUW1mdZg6EO+tuRk8H/X0m3DgcfVfTFV5y
 cdPM7M2+up0OIiVi1YuXUDrlfvppcNs5wmn5N/G5Mfoso5J3BnSqaAqu5IqW1MIkTFmZGnKHa
 Otv3ngNV4/PnY0rspfKTYZBgtwvuFKESVSOjs/lbachHn9LL2mmrmjqiwmxlqPwDQq6W2mMFj
 2G5UtIxST1Y+5IHo0OXbSF0FwTXVwj2xMOBMDnDDUvGazu2xqLQFng8dzLnoGzVRr+m/srdOe
 VCKBW4yNmX6U7tZ6W98QE14hn0R3gL4mWd6fSv9VGrE/O3HWP7rotqrVcDnMJ77F51RbKfNqP
 JGdLo6lSN+nH7fuKzXYoDWU6JZD6FzyP72acErlUg0aLbF3UMNr+zZl7cdp/284bXNlZL5dLr
 Fv6ERQriyiaZQ3BjuTQXJE5gIAslsj3d81qC8t6yyYFfqDWY+1bGH+38N9CmUIJixJkboSc4C
 Mfqgom7Fv+w2Sh75SuR8v4crb79c6PkMGRAqpOJ8pdoZpebtchSZP90ENTVBfg3f5Enz/F/N4
 0aXBOMR
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220428_002552_893926_0F8CBA86 
X-CRM114-Status: GOOD (  14.03  )
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

Hi
> Gesendet: Donnerstag, 28. April 2022 um 08:37 Uhr
> Von: "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>
> On 26/04/2022 15:21, Frank Wunderlich wrote:
> > From: Frank Wunderlich <frank-w@public-files.de>
> >
> > Add bifurcation property for splitting PCIe lanes.
> >
> > Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> > ---
> >  Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> > index bc0a9d1db750..a992970e8b85 100644
> > --- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> > +++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> > @@ -74,6 +74,8 @@ properties:
> >    reset-names:
> >      const: pipe
> >
> > +  bifurcation: true
> > +
>
> Does not look like standard property. Is it already defined somewhere?
> All non-standard properties need vendor, type and description.

have removed vendor-prefix from v1>v2 based on suggestion this can be useful for other vendors too.

but last 3 patches of this series replacing bifurcation property (which is only bool) by the more useful lane-map (left alone for discussion, will be squashed if the right way is found).

i guess same here, description+type needed, but how to describe an array of int in yaml? do you know any examples?

regards Frank

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
