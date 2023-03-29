Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69ACDC6FD18
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Mar 2023 13:05:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kU9uT+w9zRMy3KrPUHt8n8cjTDrcU4drx2KVYpuBpoE=; b=sa9p0FaprcJp+1
	ZmUmq/cozqt7P1w0lunA+OfiJajsFcxclAniRy71iZRT9Js6Y5zmoCZfLYppFnjWJY++DxlOQOcGJ
	AU3OSpWHA5mayxOtc7Fx3EEUdDLylaOXINeziLVnCmpAdwRPqnaokEdCljj+0+ifwghg6af7/Uc9/
	faMFtxEIyMaYOjruX1AdZjv44OnN/4tgOR8Ojd5urZks/Xmp7mi6fpLf3fDI4Qo98jFvdFOBILSri
	RapMgjz6hAV0W6ldqJFRv1/PZURVgndPSzLjORnhYVwOlnLf4Vw4sQqTNvh0xU6u89hZSRCUCWnA8
	3mZRFT5xRuLA9YvcbdBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phVUF-000HLS-1A;
	Wed, 29 Mar 2023 13:05:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phVUC-000HJT-0S;
	Wed, 29 Mar 2023 13:05:09 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1phVTx-00048M-Cs; Wed, 29 Mar 2023 15:04:53 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Shreeya Patel <shreeya.patel@collabora.com>,
 Guenter Roeck <linux@roeck-us.net>
Cc: wim@linux-watchdog.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, jamie@jamieiles.com,
 linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject:  Re: [PATCH 2/2] dt-bindings: watchdog: rockchip: Add rockchip,rk3588-wdt
 string
Date: Wed, 29 Mar 2023 15:04:52 +0200
Message-ID: <4256207.ejJDZkT8p0@diego>
In-Reply-To: <157937fd-0af7-4ff5-8430-2f956c7aafba@roeck-us.net>
References:  <20230328210048.195124-1-shreeya.patel@collabora.com>
 <20230328210048.195124-3-shreeya.patel@collabora.com>
 <157937fd-0af7-4ff5-8430-2f956c7aafba@roeck-us.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230329_060508_184235_6CE497A3 
X-CRM114-Status: GOOD (  10.00  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Guenter,

Am Mittwoch, 29. M=E4rz 2023, 14:47:34 CEST schrieb Guenter Roeck:
> On Wed, Mar 29, 2023 at 02:30:48AM +0530, Shreeya Patel wrote:
> > Add rockchip,rk3588-wdt compatible string.
> > =

> > Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
> =

> Reviewed-by: Guenter Roeck <linux@roeck-us.net>

just the usual question who is expected to pick up the binding patch?
Should I just take it together with the dts-patch or do we wait for
a watchdog-maintainer to pick up the binding alone?

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
