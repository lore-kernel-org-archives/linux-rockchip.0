Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0B6FECAAD5
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Aug 2022 05:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dhiowJHbCelUal4x/qTp2cSfyY3VOSy37XxFsU6Nxlk=; b=r+BDZXX8G6VkUx
	nMAX3avE1szW0dfQAYRY9vvEMe3VmOPLSmmYyFXkca01oBiRAcUWeebD8k+zEx+b939cixYsHvg80
	D5KVcOSxxHEXT6Lhpz8rpO7Z13y8tZP8NX9+RZBOQgyabz6oOFVUvheVH9O7hPhqf7uW/7PvX2/46
	XYAqdogPhRagHrqZrMZQrie8dab0c10Rw/y5YGQkGZtbmiZuiTgoPyfrLA6G61QjrTegRi9CkJvHS
	+xLAdLuTKJ3NN7UkhaNhsfR9L5uw1+foYViXoVWvA7b7nORUH/zvecWwH2j7OJrvdL3TvKKOJNifO
	C7VPTxslS/ciGqKoVu5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oStvn-00ECmQ-Ri; Tue, 30 Aug 2022 05:36:59 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oStvm-00ECm4-Nz; Tue, 30 Aug 2022 05:36:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=UD5+GTz82e2tHT6UEC5Kjx7cgBXeMUEPFDkAxTj1KzU=; b=E/OuyWX5MSnf2rCuFwjmtN5+rq
	Opa6+0PYTjUgfn70FHepYCHDO9JknWASWbxED3tYzPhRPruH545t/yP0ETs4wvAU/5AV861m5674g
	1cvqA+akKcDeJkCKINmRJ0veUMyrApaiAKaZJ1RdRaJQzUiUTbheU6z5EZMmvpO4+zB2zsZgmroC0
	dXGDiNyK4c9pY0GzWH7dJVo/Wu2aH/gdpPdO2xuNM0MsfS/UTI6rCWoYBCl0UaLHQ7P1ZW9EI5Hwp
	9sn2LJbyK17QrWe+Npxk0mTd7yEU3KZIXCn+ERhM4T1p88MgxMUhGkh8Ybw3cbBZI4PF8O2KTtkTV
	+7K/ah1A==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oStvi-003k0w-89; Tue, 30 Aug 2022 05:36:58 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 27U5a9Ob032167;
	Tue, 30 Aug 2022 14:36:09 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: jagan@amarulasolutions.com
Cc: abbaraju.manojsai@amarulasolutions.com, devicetree@vger.kernel.org,
        heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
        linux-amarula@amarulasolutions.com,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, naoki@radxa.com,
        robh+dt@kernel.org, stephen@radxa.com
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: rk3399: Radxa ROCK 4C+
Date: Tue, 30 Aug 2022 05:35:39 +0000
Message-Id: <20220830053539.181707-1-naoki@radxa.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <CAMty3ZAEetiD4kTLeRVved2wb_uK-MqZ3h3TQByQa-0j9TQqRg@mail.gmail.com>
References: <CAMty3ZAEetiD4kTLeRVved2wb_uK-MqZ3h3TQByQa-0j9TQqRg@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_063654_786237_9AC320EE 
X-CRM114-Status: UNSURE (   7.04  )
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

> > > +     aliases {
> > > +             mmc0 = &sdmmc;
> >
> > please add
> >
> >                 mmc1 = &sdhci;
> >
> > as like as other ROCK (Pi) 4 series.
> 
> are you sure? other use the same.
> 
> mmc0 = &sdmmc;
> mmc1 = &sdhci;

well... I asked "please do the same", i.e.

mmc0 = &sdmmc;
mmc1 = &sdhci;

is there any problem?

Best regards,

--
FUKAUMI Naoki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
