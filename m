Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D771C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Mar 2022 10:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FdBCcZaz0PingwngXLojC/gTzZ2e4wGxxAUdpjxVtwo=; b=nRAhIR7sjYecHd
	te4yxkwMND1s5fyG9c6NbhW4GL/nvbjaZBqGvF3ukKsTreCYSoQGj2dl5QtxIA+V4AvBdqDzy2Nj1
	FuTCrkBPzBSptuzrqiEiBM21sTe0WrGbhjw98zvyQHAxJGwmElDHGM9q/UfEXCKQ5/QUkTwnlXHta
	VjWzyR7E8cp3bpkw2xdsOfixfBxC/LBeG+OxjgNrNAZ+OZWW12smfAIdp4hyng0bBxlNo5AxWw6JN
	HyK95NjHZq+bYWGnW7ZXFexQXTrnE804CAqj+Dp15xs2rm79CznUTmVUmpd0DLJKsLGvufYd+tTyI
	tSTI8a9p6+xgelde3QmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQRW7-00D7bN-30; Sat, 05 Mar 2022 10:20:03 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQRVu-00D7Z9-GZ; Sat, 05 Mar 2022 10:19:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1646475565;
 bh=hyzDOtV7xvM79xMsBY7kHpNVdMXTGXVQSg16UMzGcDo=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=GYh0sjdwB7nmeHw57MWmGFYU7SbECk06LHZd14Y+5JB6Pz/W42ThKlPE9T0+uDPZH
 mMasXQdOwWOTtG8bszQMMpX6WIZ2Jiza6hxbUjbU57X1LJo9Ooi4Pd+G4BjrH34gjz
 puvhARUzf8JYUhuPjrUk5C9lXMa2IuWj+HJlOHlQ=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [80.245.79.220] ([80.245.79.220]) by web-mail.gmx.net
 (3c-app-gmx-bap19.server.lan [172.19.172.89]) (via HTTP); Sat, 5 Mar 2022
 11:19:25 +0100
MIME-Version: 1.0
Message-ID: <trinity-f8b1d1cb-0521-42b2-934d-9f822c86b623-1646475565023@3c-app-gmx-bap19>
From: Frank Wunderlich <frank-w@public-files.de>
To: Frank Wunderlich <frank-w@public-files.de>, Rob Herring
 <robh+dt@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Frank Wunderlich <linux@fw-web.de>,
 devicetree@vger.kernel.org, Damien Le Moal
 <damien.lemoal@opensource.wdc.com>, Krzysztof Kozlowski
 <krzysztof.kozlowski@canonical.com>, Hans de Goede <hdegoede@redhat.com>,
 Jens Axboe <axboe@kernel.dk>, "open list:LIBATA SUBSYSTEM (Serial and
 Parallel ATA drivers)" <linux-ide@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Heiko
 Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>, Michael
 Riesch <michael.riesch@wolfvision.net>, linux-arm-kernel
 <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..."
 <linux-rockchip@lists.infradead.org>, Ray Jui <rjui@broadcom.com>, Scott
 Branden <sbranden@broadcom.com>, "maintainer:BROADCOM BCM7XXX ARM
 ARCHITECTURE" <bcm-kernel-feedback-list@broadcom.com>
Subject: Aw: Re: Re: [PATCH v4 1/5] dt-bindings: Convert ahci-platform DT
 bindings to yaml
Date: Sat, 5 Mar 2022 11:19:25 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <trinity-68e1ed73-5a31-42d1-838e-0a837e686c4a-1646474868401@3c-app-gmx-bap19>
References: <20220301152421.57281-1-linux@fw-web.de>
 <20220301152421.57281-2-linux@fw-web.de>
 <Yh+0B+iKx1gJXXCk@robh.at.kernel.org>
 <trinity-1ca1f3fd-1eeb-4c8d-a7e2-65851eb8002b-1646291055736@3c-app-gmx-bs69>
 <CAL_JsqJMZ1mZ91SYZR03rMkK-ZqFd-tCwV6zOrNu5NmP6V+duA@mail.gmail.com>
 <trinity-68e1ed73-5a31-42d1-838e-0a837e686c4a-1646474868401@3c-app-gmx-bap19>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:+onrTpI7SK3F02AVIuUdj/i5gRLg5dijgmk6GNPu7j/ZIY+jH4jG068TuUEFfT54eBhg1
 hC7stUOUeNw2OYtiQmq98Indy7b5pHwERnor55k3iBDXYPfCgXSBz3d/wkD/BARsUQHrRNLaaAkQ
 o4qXqauAm4DHKy9WWFDmlCoJSM61WRl27GYayl22X3760Uae/RBrsGizW1WJWNbmz4aA1GxSNmlg
 0E7fZ7IHgpMg/OZvnq+DpGbJjzfix4NnEzXQnsS/2w/AXgpwacgen1ouN/Q/ejM7xKva0mDpy8QI
 Xk=
X-UI-Out-Filterresults: notjunk:1;V03:K0:8v+5/R1XTUI=:9ppDbdAF8VlTCYdVSoceIz
 aHWpNLOnNS/qVbe7xTr8nI1EKM7S0RafcMZ2IesaJ2a5dZGAFw40OozY+CSCU4VbXkPImOp+l
 Ou8AasaCIk8iqiUp2u7OGSVAWyN58k9vij6U5JP+Pa79+vczR/2Eu0bEyh9g5Jv5OFUDWfniX
 /dh3OiECds1g1HFS9A1+MOxTIRCLh8iNANOkkj9FI4luiLljXhmFKSEGE/dKnuMqtHGSzPC3i
 G7LA1iaq23+DTnhnCwoQ8UvLZePW3IZu+IWZvVjol7/SvP2Qf1C7pfYg3SpEdXQ1awnL8ZzKB
 cqmrAwwyWA6Td3DcGugxdDdzZvCSts3jga5xKL+9bPsShv3skY2p8Xv6mSuiMEq/wiPku/sej
 pNc+m2HDlgh7+zn8tw8DBPZOrgu8zKWKsbyD36P3PLTbY+2hQjiSycGXBnqQbvV7rsAc6LV73
 b1+cLWPgOSTjJVRBKMakXp14L+Gc8CfLayDFUKdTXpsdg2jHjyihfouL63OgKuuJtVjFNrZDE
 dcIOWduudV+u10eubkLh1KAtmbWKJYQ/aJqjwZ7GtWvPpb03eVcztEc8vSRe3qJjylIiKc3kZ
 4OVM7sId5BgEvOayF67vwJmSdaY1Sun/RSsh64Vm4IOgbagOYPuIxNYsdIOfFS2BujfVP0bi0
 FOUEzJerDykSSiOqIBZbbfzH/PzL13D8yFoMVBJEePCmVCC2hWaZrrtFPOeLKWQATkUJ6+A9T
 fhIOJKgJHG7H1R0aue/9BpanHCOniFu/tu/X0cd+YtkGaZhDg+IjsAG4Gmc0X9TlCUQ6PtIhR
 VG8eV9+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220305_021950_896180_A1562199 
X-CRM114-Status: UNSURE (   8.74  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

VGFrZSBhIGxvb2sgYWdhaW4gb2YgdGhlIG1lbnRpb25lZCBjYWx4ZWRhLi4uCgppdCBsb29rcyBs
aWtlIGl0IG9ubHkgdXNlcyB0aGUgY29tcGF0aWJsZSAiY2FseGVkYSxoYi1haGNpIiBoYW5kbGVk
IGJ5CmRyaXZlcnMvYXRhL3NhdGFfaGlnaGJhbmsuYyBhbmQgc2VlbXMgbm90IHVzaW5nIHRoZSBh
aGNpLXBsYXRmb3JtLmMKCm9iai0kKENPTkZJR19TQVRBX0hJR0hCQU5LKQkrPSBzYXRhX2hpZ2hi
YW5rLm8gbGliYWhjaS5vCgpzbyBpbWhvIHRoZSBtYXhpbXVtIDB4MSBzdGlsbCBzaG91bGQgYmUg
cmlnaHQKCnJlZ2FyZHMgRnJhbmsKCgo+ID4gR2VzZW5kZXQ6IFNhbXN0YWcsIDA1LiBNw6RyeiAy
MDIyIHVtIDAwOjM3IFVocgo+ID4gVm9uOiAiUm9iIEhlcnJpbmciIDxyb2JoQGtlcm5lbC5vcmc+
Cj4gCj4gPiBUaGVyZSdzIGEgc3BlYyBmb3IgaXQsIHNvIG5vIG5lZWQgdG8gbG9vayBhdCB3aGF0
J3MgdXNlZC4gQ2FseGVkYSBBSENJCj4gPiBoYWQgNSBwb3J0cyBJSVJDLgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
