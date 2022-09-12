Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2AC4CECAAD5
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Sep 2022 09:48:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KgtVLPo45XZPZnLvh8mccyd2ZOEpb/ZQdZaYk8/jAEk=; b=NeSk9OTyHoBdv5
	G6ssyYjfmVGEzuIP0r6DzmDmQ1uk+80s7km5lHj2S9Me9t1bwJzD2cd/gCv8Wic4Gs/uJN4jyVnX0
	PBTCksJ3JEGVqn4wqxLu5cb/FCviz/8V5Cbzj9WSOfTo7+v+XOXDMBp1bZyL29DKtoJW+VrPBhxS/
	eos82UegP7iz6YPKtQbHhcvS8p15gyU1U8BwiJm0NFpk2SYjcyHbwDdzNA+dI59PrBnquwgLj9N96
	dDh+LYQidigA0QATJyR6ul/Xyg5VjbHeJcn4G3Ee2VftVJpofrrUPoksqKEW+Blkv4ZPUyiRESHIi
	ghRMJFtmuGAbyt/BxvSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXg2c-008OLc-GF; Mon, 12 Sep 2022 09:47:46 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXg25-008O2G-FU; Mon, 12 Sep 2022 09:47:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id E1953B80CB1;
	Mon, 12 Sep 2022 09:47:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01499C43470;
	Mon, 12 Sep 2022 09:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662976029;
	bh=73e6jktn30rL4M3qmP6vMz0NvkYREdBKcFnFfXbAHg8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=FlQXOwlXlyOmcKvqWfSFzV1aZ+1zJum6NXi/2kzzCXzF4M4OIiL+JQ8lKv/cgXKDj
	 Tcyy54yozwXLjySkswm1hxndZAuZJxAl+LOBS4k9Bdg1cS1Qi2v6MCT1Hd4eTxs2/J
	 ZgrTHc/x4kZuC9LpemlxeMIs4LsKGVU6jM5VTvT2zSmeKEszInJ85JDtdYdplVGp6h
	 q46h6MWexga2prb4OePzhPbVQZtO74zvHthCUMmL2AdaEYsJ+t/7o8RvPC/zdMTH+7
	 3Yxj3iJxVi/LlB9nefdfWvHuGp96bZJPaV8UM+u4bhQkaxwj5jPq12ViKO0Gt7ahzj
	 WviYHg8xWMXkQ==
From: Mark Brown <broonie@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: linux-spi@vger.kernel.org, devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
 linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, heiko@sntech.de
In-Reply-To: <12af4fe6-4d35-cb4a-f5f6-06e3aba990cb@gmail.com>
References: <12af4fe6-4d35-cb4a-f5f6-06e3aba990cb@gmail.com>
Subject: Re: [PATCH v2] dt-bindings: spi: rockchip: add power-domains property
Message-Id: <166297602779.48440.1398773429375792864.b4-ty@kernel.org>
Date: Mon, 12 Sep 2022 10:47:07 +0100
MIME-Version: 1.0
X-Mailer: b4 0.10.0-dev-65ba7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_024713_725450_59FBD5A0 
X-CRM114-Status: GOOD (  12.14  )
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

On Sun, 11 Sep 2022 19:58:39 +0200, Johan Jonker wrote:
> The Rockchip rk3399 TRM mentions that pd_sdioaudio includes
> sdio, spi, i2s and spdif. Add a power-domains property to
> to match reality with spi-rockchip.yaml.
> 
> 

Applied to

   broonie/spi.git for-next

Thanks!

[1/1] dt-bindings: spi: rockchip: add power-domains property
      commit: 83e5335bf58b090b1fc0b30cb1a1fedf07f0c217

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
