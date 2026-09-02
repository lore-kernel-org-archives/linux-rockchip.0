Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76328C624D4
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2026 22:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GUxjsigYO27MITQN9Sc16YFnc37bivx1/3ufkN0hrkM=; b=g6QGWNkV3ixzPA
	imwdPXK/tCLI8uPpMSapakWfmnSvbHm/W9RsbIdWisTIl1+r8Xuai7chCxYrNPRBhk/dtEtaDNuNY
	rAU/mu0+YUmh1gaudkpGikDl6hUd+Zg5Tvllp5uwgpTN9GPuZG+xZtBkh7LU+dO+iCd/cv0l14MKc
	XtK2GTIiX9JotiXzQeC7j6eBlYhOTJs5IawbyJUSFiql2yN1AS3RCrio7SPeUCYtH2+lALwJ5MDBA
	PQgd6N5cdHErfhnfXQ+mLZRjMUCtUbl6aknquy5qb+KITk+PlV9YLOpqcgR2w6QpRN9+cMwXN1ami
	3o4qlwXW8Mqtc98dOB8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1tNA-0000000Fzpb-1VfT;
	Wed, 02 Sep 2026 22:24:00 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1tN6-0000000FzoW-0TMd;
	Wed, 02 Sep 2026 22:23:58 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id A2C411A1968;
	Wed,  2 Sep 2026 22:23:53 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 682F45FF79;
	Wed,  2 Sep 2026 22:23:53 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id C898611C795A7;
	Thu,  3 Sep 2026 00:23:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1788387828; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=WYk4FNP1vreOpbsIcYyMXKlgV124hwvOajDLIuuzHrM=;
	b=Hsl907RxhvM5OKbp5zT4sP1a5g1yLrMhcO+HShZown8lOdBH+BnT0SyRlBMlk8hUOY1krb
	JIqR4LmjtpWkXVSS1VqEP5Gp0ZCx8h/jn3O9ntVTZ8pPUTQahIY1/MZRNht9hm74AA/gSk
	Bi6Vchv25i8u2PZqgqny+GrTEzPf+XkuMTuLRx1xWl/meYF+lhgG3ETQoJRh5r0Ci15Gjq
	AueIB5XXKGt0H4MoWuOyCH3FPDvM8XpSPa4m30H5b1DWFRV65ZVHYy587IJobAMW0yjkae
	oDKR0TFuC8yYm26+U/DJwCRXXS3pT7mst8eLn2+qQLzABqCqO3ULLB+Lhu8LIw==
Message-ID: <50fdfff1-1597-48bb-b164-116d5ca4e865@bootlin.com>
Date: Thu, 3 Sep 2026 00:23:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v3 01/10] net: stmmac: move XPCS lifetime
 management to platform drivers
To: Coia Prant <coiaprant@gmail.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Vinod Koul <vkoul@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Romain Gantois <romain.gantois@bootlin.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
 Russell King <linux@armlinux.org.uk>, Shawn Lin <shawn.lin@rock-chips.com>,
 David Heidelberg <david@ixit.cz>, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-renesas-soc@vger.kernel.org
References: <20260901150111.141037-1-coiaprant@gmail.com>
 <20260901150111.141037-2-coiaprant@gmail.com>
Content-Language: en-US
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
In-Reply-To: <20260901150111.141037-2-coiaprant@gmail.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_152356_285964_C843968B 
X-CRM114-Status: UNSURE (   9.14  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On 9/1/26 17:01, Coia Prant wrote:
> The current XPCS creation logic in stmmac_pcs_setup() is problematic
> for several reasons.

[...]

> 
> Existing platform drivers (intel, rzn1, socfpga) are updated to use
> the new callbacks by moving their XPCS creation and cleanup logic into
> pcs_init() and pcs_exit(). In their pcs_exit() implementations, the
> pointer to the destroyed PCS is explicitly set to NULL to avoid
> dangling pointer references.

Hopefully this covers all the glues out there, fingers crossed for
the qualcomm one. On Socfpga at least, no breakage reported :)

Romain may be able to run some tests on rzn1 at some point, but I
suspect this is fine as well.

Reviewed-by: Maxime Chevallier <maxime.chevallier@bootlin.com>

Maxime


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
