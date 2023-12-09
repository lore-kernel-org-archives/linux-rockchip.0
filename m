Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E0C1C4167B
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Dec 2023 14:05:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aqHWQBeUmWyishxWziyNA29tEYX5tb1jCYtUic/3YxA=; b=TbI4QuT9p8zee9
	RVEns0jTaaAf8cl5NVaYoTewNKV5RKwiG9QnG/K04AksIoqwAECaHURl7sQitYkqO74uD1YlSmqMR
	UC+1ub52mrz42z+MeVysy2vhA3DoLLRBnYupjq1uv1UpKM4cfBdta5t4TmpcMorVkPT/8km60WO4b
	9arDjAUcJfGOlsL/zGgMqljyUVXamaZIn8dd4L47teec4vU+YyWqOPP4swQTpqtFZVvSichFDYER9
	e/HXROU0q3OUNoihzRKonYrWGXJuzh0C/udvkQZz747YLnhsCfN0v6DnYBJaL/RYXVBNwHRL3QMuI
	C7MbvFRJpUno/iundgsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBxx0-000B4J-0n;
	Sat, 09 Dec 2023 14:05:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBxwx-000B3g-2o
	for linux-rockchip@lists.infradead.org;
	Sat, 09 Dec 2023 14:05:01 +0000
Received: from i5e860d1d.versanet.de ([94.134.13.29] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rBxws-0003yF-PB; Sat, 09 Dec 2023 15:04:54 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>, Andy Yan <andy.yan@rock-chips.com>
Cc: hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 kever.yang@rock-chips.com, chris.obbard@collabora.com
Subject: Re: [PATCH v4 15/17] dt-bindings: iommu: rockchip: Add Rockchip RK3588
Date: Sat, 09 Dec 2023 15:04:53 +0100
Message-ID: <2860437.jE0xQCEvom@diego>
In-Reply-To: <bbf4d7a5-a6f5-447a-9f3e-1cd6f2acc7c9@rock-chips.com>
References: <20231207075906.651771-1-andyshrk@163.com> <4012684.R56niFO833@diego>
 <bbf4d7a5-a6f5-447a-9f3e-1cd6f2acc7c9@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231209_060459_910542_22D5998A 
X-CRM114-Status: GOOD (  17.84  )
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

Hi Andy,

Am Samstag, 9. Dezember 2023, 02:26:25 CET schrieb Andy Yan:
> Hi Heiko:
> =

> On 12/9/23 00:29, Heiko St=FCbner wrote:
> > Am Donnerstag, 7. Dezember 2023, 09:02:35 CET schrieb Andy Yan:
> >> From: Andy Yan <andy.yan@rock-chips.com>
> >>
> >> Add a Rockchip RK3588 compatible
> >>
> >> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> > =

> > Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> > =

> > In the next iteration, please split this out into a separate patch and =
send
> > it to the iommu+dt maintainers.
> > =

> > Supporting the iommus on rk3588 can be realized separately and the
> > patch needs to go through a separate tree anyway.
> =

> Okay, I will split this patch out of this vop2 series, does this mean that
> I also need to split out the iommu dt node as a separate patch from curre=
nt
> PATCH16 ?

no :-) .

The vop-iommu can stay together with the vop core node.
As adding the actual vop iommu is very much tied to the vop node.

For the iommu-compatible it was different. The compatible just declares
that the iommu acts similar to the one on rk3568, so is related to the iommu
driver itself and should go through the iommu tree.

So all is good here.

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
