Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE576C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 May 2022 11:51:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MpHW1C6psM1p5D57MayYvLmshVAQTcbdhMAQY29Meuo=; b=Smfqv3ImplVTaF
	lxIzdHrfQPV5EDXx4TgbapDWkr19FH19DKRpW+FRUQX9SDytu4TnRGW5m9cEW8VY3A66MXX9cALzi
	3zfbti8dn2TBxZ1G4Zb0paThXCDNEIAJIROgNKOOZ2BSMdwxGlCTGenvKkWOzOKn2g31Xs2Nn8Ci6
	yobr3Vc6tjyAUoVVUbvvHbz5cY1fBwHADPNHAHJ+fLHKG2zb7GXqtiyhSRS29PIaTG2ZP8NBIg3F9
	JLoq73x2tkiquPN2uZpSykSOnbmPcYflJ6yDbhWi2+9xwDL7nx+X4w2qtGBZ4NviNjzJlN5RqVgfz
	eAL0K/4Jpy8M2t+eTl0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ns1A2-00CAPZ-Ow; Fri, 20 May 2022 11:51:14 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ns19p-00CAJl-P4; Fri, 20 May 2022 11:51:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1653047440;
 bh=k4fKVQvURjqEQ8MtrJ2m1VCLQBvog7lyn9M2Wt/lV0Q=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=MKjD+jclEwCeFylv0hyyBS+WvHTmuPewzMPlTAPq4SzQ7HIxWMHCty6ASa4JQwjts
 i4zZ0vYjycUJIHJPXmCz4RSB5WtmU7htC0/jVaXw49EzRSz0Oe593S1T5DNGJ3Bj8A
 duJ+9EBhv28L9SHCZLW8pavMUMEJSrR/3AitmwCI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.152.153] ([217.61.152.153]) by web-mail.gmx.net
 (3c-app-gmx-bap67.server.lan [172.19.172.67]) (via HTTP); Fri, 20 May 2022
 13:50:39 +0200
MIME-Version: 1.0
Message-ID: <trinity-940b8fcf-17e7-4445-8aeb-e17f36b41b4b-1653047439840@3c-app-gmx-bap67>
From: Frank Wunderlich <frank-w@public-files.de>
To: Rob Herring <robh@kernel.org>
Cc: Frank Wunderlich <linux@fw-web.de>, Michael Riesch
 <michael.riesch@wolfvision.net>, Vinod Koul <vkoul@kernel.org>, Johan
 Jonker <jbx6244@gmail.com>, linux-rockchip@lists.infradead.org,
 linux-pci@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, Bjorn Helgaas
 <bhelgaas@google.com>, Philipp Zabel <p.zabel@pengutronix.de>, Lorenzo
 Pieralisi <lorenzo.pieralisi@arm.com>, Peter Geis <pgwipeout@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?=
 <kw@linux.com>
Subject: Aw: Re: Re: [RFC v3 1/5] dt-bindings: phy: rockchip: add PCIe v3 phy
Date: Fri, 20 May 2022 13:50:39 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220518155551.GB3302100-robh@kernel.org>
References: <20220514115946.8858-1-linux@fw-web.de>
 <20220514115946.8858-2-linux@fw-web.de>
 <1652570081.002742.3276245.nullmailer@robh.at.kernel.org>
 <trinity-02ad648c-f6f8-4383-b389-a0578d5a02d2-1652615387162@3c-app-gmx-bap15>
 <20220516173537.GA2942634-robh@kernel.org>
 <9496CAFB-6CB6-4BDA-A539-3A6E1B562299@public-files.de>
 <20220518155551.GB3302100-robh@kernel.org>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:SD3Edrf+NaJ//x8ye3V+dsdMGeWh8sRcrH6vyLezIFMvvRfi2kD/w+du5767L1pt7TB3A
 9diq3JRpFJSmaDntiITaiJm2eZhpyfFCpjcf93y/5BMa+mMkKuIkHOmuN6fjAMElAvyjrbt9h18s
 Amtj5SSaEGyHSUtMkNjocxpSMH1INw1kDjl/7AAAPbCPR0mgoLp+E63LMkBfCG09Z4O0eh1HeXkl
 47XVC40CdkXePpbMILRd5yP3FSHED6RQrQaoKM95aJmTccxHuQRmMjL4SS33OZ+NxgGLSUqzUKr4
 KE=
X-UI-Out-Filterresults: notjunk:1;V03:K0:ldW5S2z+XIU=:UXxS08Sj+aFSCv9KzQQTl2
 1XnLZLY0FknaXahW1slqvCuFzb2THKkDUdph5QOpPyccApSaQNyeQNhYPecZryHHRWDOx8uga
 QIgdI3TCF3BNeFm047mDBshfAQ8psCtAMxAKCxojFBNNP9lLT9+nbg6LjUdWukSQCPPDbYpjD
 hot81cTZ7C3snYY/gUT9GE7zCEPV+M7OZMLBjktjReL4t32VaHwn/du6LM9G22CigWHx27jAq
 6L16V9eeFWFRy8/rAxw3p+Wa8jCMFdcRuUPGSrEZgML3oRmkOK2KFrREdnOvg4I+knqORYl1k
 pxjxw+AKFkrZiSgX+2pGV3bwCi9iudf70ZU+lpIsPDPX3pYezIyfYHlzxLKmf2v1kiyfM1hiC
 a3EtG1Y0sIPo1sTnWDWBkmcby0riINfmxzTAqZytZ6RUIlHpmxebFsyxFxXskq+GGz63GDjmz
 ZLHoeoRMb5EwAJCf1W1/o7GCSSi8HGqkOEFoFvxY4RDU3Gj9jILxOJfxNiF3A1cuukwBfhum6
 C6wWfevuyyn7z3AgZdiIed+IgAVCYQRdPkz3JJ9zu/n6l+KFbhzebzwbcoLoOqW5twRWa4vw8
 BXsNil/j02qVXJm5RaYlhMsjbHBAvnU8X7LnCCuv9FS4C5NaXy4zKI+FA/gAWXMn4bLErlz69
 RtPNKV8cf+qA4/tQYbR2TZ+gI34nUo2dSlpvDbaIYN08WxG+AGf+qkZAqRS2wJGZPCL6zcgxy
 GI5EFSSu3thLB62bHwpa/wmuTpY5N8hblFje+N0jkUQL7fexaX5FgO8DamSspHAIWKCAESzvO
 jMNrQLd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220520_045102_331459_78A279D5 
X-CRM114-Status: UNSURE (   5.57  )
X-CRM114-Notice: Please train this message.
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

fixed reg-error by using 32bit-address in example, in my test output is clean.

+++ b/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
@@ -68,7 +68,7 @@ examples:
     #include <dt-bindings/clock/rk3568-cru.h>
     pcie30phy: phy@fe8c0000 {
       compatible = "rockchip,rk3568-pcie3-phy";
-      reg = <0x0 0xfe8c0000 0x0 0x20000>;
+      reg = <0xfe8c0000 0x20000>;


i hope yours is clean too


regarding data-lanes instead of own lane-map, Peter and me only find this in special
bindings outside the phy-"namespace" like this.

https://elixir.bootlin.com/linux/v5.18-rc7/source/Documentation/devicetree/bindings/media/video-interfaces.yaml#L157

do you mean converting this binding and add it there and base out binding on it?

https://elixir.bootlin.com/linux/v5.18-rc7/source/Documentation/devicetree/bindings/phy/phy-bindings.txt

regards Frank

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
