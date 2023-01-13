Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A0B1C54EBD
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Jan 2023 08:39:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZDpsiARF8LBdv+ZP+Z0fLxh+eoxfLFo2Q9y+fLQ2DcA=; b=upvqGRlsJ6DpQq
	t9SGfnCRO+TkFK/bRTZsFTRws+iYTpxDKsduSIxBMCmggJIdTGVg+/dTjKwgX1AGQ0x6jIJ97moAf
	76wmhvIefdQM2xQG2pffCDrKvno1gix05hHY5+CHdotglfaTAkWrmZWz0coV2/zsMM9HQEWOUoim1
	nG+tHRg2IPu3On4oCjrlv8zNZBkjHaFAxv7eSoQf8nh7KOrM8b0UBW6IJq6LiiMct5h7dKuhSsnBC
	SicZ5KY6Y5c0T9ZeNOqCp2gVw9Tglizx90oJqTJBdibvk0i8mOin450u3CizBdIqiZylqxWjx1jUe
	6jW4XWcA6ZAWxdiloDMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGFbC-001HFE-A3; Fri, 13 Jan 2023 08:39:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGFb0-001HAc-VE; Fri, 13 Jan 2023 08:39:32 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pGFaj-0005x6-QV; Fri, 13 Jan 2023 09:39:13 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Anand Moon <anand@edgeble.ai>, Jakub Kicinski <kuba@kernel.org>
Cc: "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, David Wu <david.wu@rock-chips.com>, Jagan Teki <jagan@edgeble.ai>, Johan Jonker <jbx6244@gmail.com>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, netdev@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 linux-next 1/4] dt-bindings: net: rockchip-dwmac: fix rv1126 compatible warning
Date: Fri, 13 Jan 2023 09:39:12 +0100
Message-ID: <4085845.mvXUDI8C0e@diego>
In-Reply-To: <20230112214712.0a32189d@kernel.org>
References: <20230111172437.5295-1-anand@edgeble.ai> <20230112214712.0a32189d@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_003931_053765_19958DBA 
X-CRM114-Status: GOOD (  17.03  )
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

Hi Jakub,

Am Freitag, 13. Januar 2023, 06:47:12 CET schrieb Jakub Kicinski:
> On Wed, 11 Jan 2023 17:24:31 +0000 Anand Moon wrote:
> > Fix compatible string for RV1126 gmac, and constrain it to
> > be compatible with Synopsys dwmac 4.20a.
> > 
> > fix below warning
> > $ make CHECK_DTBS=y rv1126-edgeble-neu2-io.dtb
> > arch/arm/boot/dts/rv1126-edgeble-neu2-io.dtb: ethernet@ffc40000:
> > 		 compatible: 'oneOf' conditional failed, one must be fixed:
> >         ['rockchip,rv1126-gmac', 'snps,dwmac-4.20a'] is too long
> >         'rockchip,rv1126-gmac' is not one of ['rockchip,rk3568-gmac', 'rockchip,rk3588-gmac']
> > 
> > Fixes: b36fe2f43662 ("dt-bindings: net: rockchip-dwmac: add rv1126 compatible")
> > Reviewed-by: Jagan Teki <jagan@edgeble.ai>
> > Acked-by: Rob Herring <robh@kernel.org>
> > Signed-off-by: Anand Moon <anand@edgeble.ai>
> 
> I think this patch should go via net-next?
> Please let us know when it's ready to be applied, 
> 'cause we're not CCed on the entire series..

Correct, this patch should go via net-next, while I would pick up the
dts patches (2-4).

And this patch is ready to be applied.

Thanks
Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
