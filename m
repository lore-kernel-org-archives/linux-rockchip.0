Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86CA0C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Apr 2022 17:28:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3O0oeT+zIm/sZOp0Q9xGGoieQgpTcjziexbnfg+w71s=; b=i7L76zP5lk/Wp1
	+l1rE3ckU8RrvV3DmKFjrTIr8kfyJOPuGVtJonaROU0Mh52lsFckAIEmVCd4tive956GO9IVilyNI
	LjmT4GVRYBRTJEwoqZx+CTNDvFo2e4yTfmeQQeAR+b3XCvD6LI19pxNOVP769mUecDJ6Tq0ctdYRG
	l3fT2stSmBTjevX6J1gDkaEfExCQsMTDMoGaV8tolWLKvgfVJ2UCohuwT98Lomz794V2eqXla2Knc
	QBnUy37K3fTzES98WNYeZIHNNXM/bPrgsB8fwDOP8NVhqVutZaTM6bkH2/p9l+O61mfI8z4S3yzhs
	n+vA8XqGKUkKuDc7Xohg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njOyq-00FWAw-Gk; Tue, 26 Apr 2022 17:28:04 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njOyn-00FW9T-P3; Tue, 26 Apr 2022 17:28:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1650994054;
 bh=Ji+YlFlgCJoaZr9s7YJfnFKefy+/b9Uqn2Dl6qplgqs=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=PvlYceu8Uw36m7FLf8OmUfJ0plYzd9gG4Vk1xj7VhqKa7DiQ6hYZaAaT9vt1Ac4jQ
 MkAhYUu6CK2oXBB2uAW/jFJZW+IFXkCdTm1RqzMwWKUw+Ib4cdGWeAhk3h2lU/oQkK
 mc4+eIpkQbEQXmNYd/H6M0lEEq5Fshz0mt1/ucnc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.245.77.37] ([80.245.77.37]) by web-mail.gmx.net
 (3c-app-gmx-bs69.server.lan [172.19.170.214]) (via HTTP); Tue, 26 Apr 2022
 19:27:34 +0200
MIME-Version: 1.0
Message-ID: <trinity-645b0d5b-4366-492c-9cdb-71d9e8664d31-1650994054170@3c-app-gmx-bs69>
From: Frank Wunderlich <frank-w@public-files.de>
To: Bjorn Helgaas <helgaas@kernel.org>
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
Subject: Aw: Re: [RFC/RFT v2 09/11] dt-bindings: pci: add lane-map to
 rockchip PCIe binding
Date: Tue, 26 Apr 2022 19:27:34 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <20220426160409.GA1731042@bhelgaas>
References: <20220426132139.26761-10-linux@fw-web.de>
 <20220426160409.GA1731042@bhelgaas>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:1rhhhhwJUPynO1hGrbADbceOZiAPFPYXAkcyO4s521P1UX6wtPdRfIHJy4WiMKxdAl9Ga
 GZ036BRlqUZgnEmkKqpDYX10GXbjs7L7gj77aheAhHIJ4WhJQAEKJqna8qKGVMGnDu9UDoumdOQT
 jjis+uJsD/gDlM3RfgRLoo6M+sFc8wmx0Gvy2QV84L4tYdvHno4qokH1GLC1vMM0XIJka0HR8wlS
 7+fTOSkAPhiU4QTyr4LuIZmXLg0SIlDvdIe5iqorZl41D5rOBZTYkdzBbAAWoSSyOFfjDiqtaMwq
 jY=
X-UI-Out-Filterresults: notjunk:1;V03:K0:ojw4Vv6ZXVk=:EcxcpbnZ5B5Qr+pY1IynEG
 HH4mjHal3oseLf72R3WAZEcL/SuJ/yx8lZpb86KWRYFS9a5rxZVjLU6LKBqVGv5ox2CIn1f01
 zdpazMYqLhnAWqlezZj9eyhc2THUi1xpIZ3UNgg8tIlSGA8WVYjfzTyq6FbElu5nDhN+OQR2T
 lNoCp4oy5jb7QKDtcjL4b2RKbHkzw0di4mzCalljbLq41w3xuANAd9s+bjd4mXsjCRYywZKke
 ZXdQ2MAbfdRZubwuqVgBCE+gIeTMZZmFGZhVHuZtorufufPF1mOjsVCpYuBvezvy9eEUR1z5r
 gDJofj9bBKvlK9VKZCDgYyZwBQ3Q14wdEF4SLcl6kxZIpNtQN/ZlCgqqlwhxN+94HtB8X3QyN
 ZQKTVn3FxCGyKY7tt8AY2PSvtNxL0FWSOY7z9INBhnaTIy3Ul0o2F0YgH+dxhcpAnLr8qEmET
 rnp1BV762m7kZJhzPyJl35gWC+bmHTEZhOE83O2a30DBmt64E/RS9dUbg/9QE4VJxbXEBVi9q
 Be1w1LHwPJwJgKGxYsaLQRQt1J8zz84p0IuGU0vzkLcINXeytxDsA1cmQXeBahH/CdosgylEw
 OLia6Xzw52zK+uwGm4Ri3/3Lbt5N4s8w6b5h0mm902JHSj1F6jrTUfdK3wQZrCno/H2AyP2R4
 //pXv6VwHSLc0Nr0h8n3OscVtmrTC+wrCx/jffY5fv+b/DMRB/3BQ7o4zawD2qlTAAqKrONLh
 sgACckEnTD4Mcjdn+2UoLcdYbC+S8aoaHUtbjJL11j5Sh5L5g1VK/yNdez9R9F7sT34Kz+STn
 KI/Arl9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_102802_151274_0E174EF1 
X-CRM114-Status: GOOD (  10.42  )
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

> Gesendet: Dienstag, 26. April 2022 um 18:04 Uhr
> Von: "Bjorn Helgaas" <helgaas@kernel.org>

> > -  bifurcation: true
> > -
>
> Why are you adding "bifurcation" earlier in the series, then
> immediately removing it?  Why not just add "lane-map" directly and
> never mention "bifurcation" in the DT at all?

The original driver used the bifurcation property with vendor prefix which i have dropped.

In v1 there was an Idea to replace this bifurcation setting by something more
generic supporting more that just true/false. So i added lane-map to start
discussion if this is the right way or if i should leave the bifurcation property.

if the lane-map is right, i squash the commits before the commits should land in linux...
this is one cause i tagged the series as RFC.

regards Frank

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
