Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DEC5C47077
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jan 2024 08:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x0ML7m9ao6m7arPICKlJJ9j2aIKh7K9IWCDLfY8HFiI=; b=sDXrfnLs1UAsgJ
	rbNihrP439t1G12yPCdGmmxtXSNGOv4vhMSvN/Pud+YAgjG3/0jC2aO1yxszH21jivGHQUqM8eAn/
	xxSesVNxvn94Wui/ykr12VeiiF5hwVho0C7GZqmS0LL3AnY3aYJ1a0Qj9bxW3QZqwijnv33lb6n/Z
	pU0HVtcNW46O3YfR7ChCJJyCcnpjn/FsbWf7dssX/33ITVAogtpmrZV1Y0IMHQXvm+C4w69IQ4T+x
	4ICW8I0FdRp1HhbrEr4oZtIiV3Ns98/ptJ+Qifo2NtMqbED9tzE75Edu9q8tUCig13o0yO/i584Gi
	611+Uicr+IInA1dS8Ecw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPerZ-00BQPn-2m;
	Tue, 16 Jan 2024 08:32:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPerW-00BQJz-0m;
	Tue, 16 Jan 2024 08:31:59 +0000
Received: from i5e860cd7.versanet.de ([94.134.12.215] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rPerA-0000Y0-Lt; Tue, 16 Jan 2024 09:31:36 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Tim Lunn <tim@feathertop.org>, KyuHyuk Lee <lee@kyuhyuk.kr>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Chris Morgan <macromorgan@hotmail.com>,
 Tianling Shen <cnsztl@gmail.com>, Jagan Teki <jagan@edgeble.ai>,
 Ondrej Jirman <megi@xff.cz>, Andy Yan <andyshrk@163.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: rockchip: Fix Hardkernel ODROID-M1 board bindings
Date: Tue, 16 Jan 2024 09:31:35 +0100
Message-ID: <2421144.zToM8qfIzz@diego>
In-Reply-To: <3dfe868d-ff8d-44ac-a68e-066ac42a6705@linaro.org>
References: <20240115145142.6292-1-lee@kyuhyuk.kr>
 <8b31ae29-b88b-4ded-95b4-c2d9bbad24e1@feathertop.org>
 <3dfe868d-ff8d-44ac-a68e-066ac42a6705@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_003158_279499_192D263E 
X-CRM114-Status: GOOD (  25.26  )
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

Am Dienstag, 16. Januar 2024, 08:24:44 CET schrieb Krzysztof Kozlowski:
> On 16/01/2024 03:00, Tim Lunn wrote:
> > 
> > On 1/16/24 01:58, Krzysztof Kozlowski wrote:
> >> On 15/01/2024 15:51, KyuHyuk Lee wrote:
> >>> The vendor in ODROID-M1 is hardkernel, but it was incorrectly written
> >>> as rockchip. Fixed the vendor prefix correctly.
> >>>
> >>> Signed-off-by: KyuHyuk Lee <lee@kyuhyuk.kr>
> >>> ---
> >>>   Documentation/devicetree/bindings/arm/rockchip.yaml | 2 +-
> >>>   1 file changed, 1 insertion(+), 1 deletion(-)
> >> You need to start testing your patches. Your last M1 fails as well in
> >> multiple places.
> >>
> >> It does not look like you tested the DTS against bindings. Please run
> >> `make dtbs_check W=1` (see
> >> Documentation/devicetree/bindings/writing-schema.rst or
> >> https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sources-with-the-devicetree-schema/
> >> for instructions).
> >>
> >> The DTS change will break the users, so would be nice to mention this in
> >> its commit msg.
> > 
> > I notice there are a couple of other boards that incorrectly use 
> > rockchip as the vendor also:
> > 
> >            - const: rockchip,rk3399-orangepi
> >            - const: rockchip,rk3568-bpi-r2pro
> > 
> > Perhaps these should also be fixed at the same time?
> 
> What is happening with rockchip boards?

Copy-paste stuff ... boards using rockchip,boardname instead of
vendor,boardname for their compatible.

I do remember us noticing this a number of times on some boards
and requesting fixes, but looks like some slipped through.

So I guess Tim is suggesting changing the compatible, but with boards
being merged a while ago, this would break backwards compatibility.
So I guess both the Orange and Banana Pies will need to live with that.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
