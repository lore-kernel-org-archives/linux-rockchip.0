Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C244ECAAD2
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Aug 2022 21:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bL4AZ50bo2aTeF0yagYlVOmMwQjeGUslsvinHPt6L0U=; b=1AqL6v04Lrhdt/
	cTSJqFT0zDRoDRqGbDcoYdDP/BaU4mMPEgRgCGAdx4sLFMM2DNHn6J5DTbz2iRruk6H9ZBDUgbtvI
	wHqURtGo1KYaU6ck+nMm1nwvG+7LlWQoW+ECpdDvBdrTFFOxNasua+8uxYlIklO7AumJYVuAzqixY
	XYE6VlfbIxKXnf+H/e5ObNOX6jlkX1kbf6+SjGWRj/OfVQkmU92T6vGXZi0YIbjeAD2RoltAOdO7K
	5kPxhsr0u6uf1mizswQOGjEq/05QLI88/lFUjuJ7MRubhurU3yJrx6d5ywJB+UZePoiJO5ZlhgG3z
	pIUTtCItpnATTdE+nSeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSltG-00Chgh-77; Mon, 29 Aug 2022 21:01:50 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSltE-00Chfx-6Q; Mon, 29 Aug 2022 21:01:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=iqIv4sABVpdVdVt7JtDCslnwrcUtQpposJ9/40m8aWA=; b=KGWEFsrTMtT9pxLPxIQ3RxVrn8
	YWTXOuK3Q85s/QXXCi830mRY6C/PM/I9iPvz3dv1wB5eekW+gVDp7hU2VnOEG3FB8asaO6jdIn5A9
	O7OD5KP0ZC0it0Oaa6DleVaTTDa/nTnA4mSgKhZZngwjjFTxEbes9zkg9PeUvu/f/z+j6hJpceF2U
	zublbbdaj27qWmIXVGhjJony0QP4YETSHE1byaIVBF/+NiV1J8G8mZLrriLXmGIxiC44FFXQRFO8d
	AN8KF2Yckhtfm/kkdbEBcnYF7dkJGP8BXXzqADnAFTkEIlL1GsL7krrKb3YO+8qI2VDTzp9QkLyiy
	16FtQtdg==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSlt8-003P3B-QO; Mon, 29 Aug 2022 21:01:47 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 27TL15mO030743;
	Tue, 30 Aug 2022 06:01:06 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: jagan@amarulasolutions.com
Cc: abbaraju.manojsai@amarulasolutions.com, devicetree@vger.kernel.org,
        heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
        linux-amarula@amarulasolutions.com,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, naoki@radxa.com,
        robh+dt@kernel.org, stephen@radxa.com
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: rk3399: Radxa ROCK 4C+
Date: Mon, 29 Aug 2022 21:01:03 +0000
Message-Id: <20220829210103.518467-1-naoki@radxa.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <CAMty3ZDxvaFSYpjYniXwpA6Wfyyn=c8mW5XNNUaiuqSb1niC9w@mail.gmail.com>
References: <CAMty3ZDxvaFSYpjYniXwpA6Wfyyn=c8mW5XNNUaiuqSb1niC9w@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220829_220143_349229_37B18A89 
X-CRM114-Status: UNSURE (   8.49  )
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

sorry, I noticed I sent previous email to wrong thread (v1, not v2).

> > > +&sdmmc {
> > > +     bus-width = <4>;
> > > +     cap-mmc-highspeed;
> > > +     cap-sd-highspeed;
> > > +     card-detect-delay = <800>;
> > > +     disable-wp;
> > > +     pinctrl-names = "default";
> > > +     pinctrl-0 = <&sdmmc_clk &sdmmc_cd &sdmmc_cmd &sdmmc_bus4>;
> > > +     vqmmc-supply = <&vccio_sd>;
> > > +     status = "okay";
> > > +};
> >
> > does card detect work for you? it doesn't work for me. I think it
> > needs
> 
> Yes. it is detecting for me. I've booted from SD. 2022.03.04 V1.2
> revision board.

I have same board, but I'm using eMMC as boot media. do you have any
eMMC module?

what I tried was inserting uSD card while running Linux on eMMC. it
didn't work.

Best regards,

--
FUKAUMI Naoki

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
