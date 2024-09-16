Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 115D6C3ABA2
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Sep 2024 14:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M1rItEWwCXbDThiAIBlgAUojYjQgkfM6f3UxwY+GCzo=; b=wBSpTDYqITW1/I
	I+9t3i/24BiGkAkOVsrTBmjNfpVM7+cdafcMnd7q8Yw5MwszKBzVARyXe9QtVAzt9GpvyJwGvzLoq
	hJ/231cBk1kcDzcjTA2BPcVGdG1peejUcZqGMvZ131E3nAhLOmNh+Q6xG6083A7tv2LPRF+3b8Rxh
	InAERXjbNkOKUE7TqRCVBwPl0dwoW+Z+ijy645syIbdif8dXJk+oSWMZGSZHWUigm1tYUOw9zRhah
	qeUgw0vHvylAIfYzLtb9yNhcoTfozoU8RqAUiYc/rNgbcKnUEQC3tkROYJu5M1cF7GnQR9CQ2x8wC
	yqrdGmdWoqX/g2pwHBJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqCgh-00000004D8o-295W;
	Mon, 16 Sep 2024 14:26:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqCgT-00000004D4M-0H9Z;
	Mon, 16 Sep 2024 14:26:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=DfX2+Ab8IkMho2T+sds4RcOFof34oFEmvaQShESSX7c=; b=tHWMNXDxYJsp+gQT5Npy/xJx2d
	g4ruBQrtyviheDnr/ELd6FSBHE1lBTHmrzhMXqfjjYbUT8VLyfVYxrgTjj7oP8dTFOj0VODidfNwq
	mgIyzFz5e+D1kDa5QQaGue4i3K0m1+wb+xlOVnMhOig9z3XWdKoIOxsO51wY6Cmyr8tgLmknnMnOd
	C8CL7TqRHEcnr2V6po0PCSERqLv38DAHnhTjTsJyGP7XsRdqFLoMvnqEfSKySTQ3hKAmG7KHcg1DV
	VakCJRbQYhk7fdKVs3qKeAPQ+V+WPO76Geyb8ksHgz7V0E5VSnGFzdmLSiB6cjMNN5nvAXAvTsUVZ
	F+7SwmYg==;
Received: from [83.68.141.146] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sqCgK-0001Qr-J4; Mon, 16 Sep 2024 16:26:24 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rtc@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v3 3/6] dt-bindings: rtc: microcrystal,rv3028: add #clock-cells
 property
Date: Mon, 16 Sep 2024 16:26:23 +0200
Message-ID: <2955009.e9J7NaK4W3@phil>
In-Reply-To: <202409161237568b626ad7@mail.local>
References: <20240912142451.2952633-1-karthikeyan@linumiz.com>
 <20240912142451.2952633-4-karthikeyan@linumiz.com>
 <202409161237568b626ad7@mail.local>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240916_072633_437293_231FD5AE 
X-CRM114-Status: GOOD (  10.07  )
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

Hi Alexandre,

Am Montag, 16. September 2024, 14:37:56 CEST schrieb Alexandre Belloni:
> On 12/09/2024 19:54:48+0530, Karthikeyan Krishnasamy wrote:
> > RV3028 RTC has a clock out features, the clk out can be
> > controlled using clkout register, to consume the clock out
> > from rv3028 '#clock-cells' property is added.
> > 
> > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

just for my understanding, does this mean that you expect this change
to get applied together with the others?

No preference, just making sure I understand :-)

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
