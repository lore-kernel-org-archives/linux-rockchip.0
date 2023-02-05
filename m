Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53912C636CC
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 Feb 2023 14:13:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WhRHHjc0D8KSIkVQRNG7TJgrvI6gryaHB8M+xW2YIMA=; b=12geu7C4nPGaW9
	Iz/eL8mbPldBKjf3qwwHRKgouaEaqv0pIn1wnU5oN+YK8BkpoDajhlXHclKadXmyszgK2UcD0pf04
	ty3UtY7BCSQh7wWb/hfD4u9UzKzfRj6hyhyC+YNkViQaGnnEQcZzlqcOMNGYk5HxpjTkCOASCSG/k
	/3TeHyHRCURqi7IjfeD9XvCzF2yX1pJHnuIb1rsf+rJc8BLLsM9m3/jvhTszuhmwRZOuaXE8FBnGL
	DueaaJG4DS8K+ULXa048Uh6BeTDxrx9KAIK3B6/aewyp1AeS9TMIQPxQMXAR1Vma2TZtyXYx00ocK
	T9d8Nn6KbJVFYYDGNwpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOflH-006Ofp-4A; Sun, 05 Feb 2023 14:12:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOfl6-006Odh-O7; Sun, 05 Feb 2023 14:12:46 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pOfks-00077L-Ly; Sun, 05 Feb 2023 15:12:30 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Johan Jonker <jbx6244@gmail.com>
Cc: hjc@rock-chips.com, krzysztof.kozlowski+dt@linaro.org,
 gregkh@linuxfoundation.org, airlied@gmail.com, daniel@ffwll.ch,
 andrzej.hajda@intel.com, neil.armstrong@linaro.org, robert.foss@linaro.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com,
 philippe.cornu@foss.st.com, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-usb@vger.kernel.org, linus.walleij@linaro.org, inki.dae@samsung.com,
 sw0312.kim@samsung.com, kyungmin.park@samsung.com, alim.akhtar@samsung.com,
 linux-samsung-soc@vger.kernel.org
Subject:  Re: [PATCH v6 01/17] dt-bindings: display: rockchip: convert
 rockchip-lvds.txt to YAML
Date: Sun, 05 Feb 2023 15:12:29 +0100
Message-ID: <5647788.DvuYhMxLoT@diego>
In-Reply-To: <87f5097d-1cd0-e09f-e759-8592a9165ea6@gmail.com>
References:  <67771143-fd83-383d-41b2-68e8707134e8@gmail.com>
 <20230203182119.GA615242-robh@kernel.org>
 <87f5097d-1cd0-e09f-e759-8592a9165ea6@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230205_061244_814719_C6A41C67 
X-CRM114-Status: GOOD (  22.27  )
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

Am Freitag, 3. Februar 2023, 20:02:54 CET schrieb Johan Jonker:
> 
> On 2/3/23 19:21, Rob Herring wrote:
> > On Thu, Dec 22, 2022 at 03:22:14PM +0100, Johan Jonker wrote:
> >> Convert rockchip-lvds.txt to YAML.
> >>
> >> Changed:
> >>   Add power-domains property.
> >>   Requirements between PX30 and RK3288
> >>
> >> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> >> Reviewed-by: Rob Herring <robh@kernel.org>
> >> ---
> >>
> >> Changed V3:
> >>   Filename matching compatible style
> >>   Drop "Regulator phandle for "
> >>   Specify properties and requirements per SoC
> >>   Sort order and restyle
> >>
> >> Changed V2:
> >>   Fix title
> >> ---
> >>  .../display/rockchip/rockchip,lvds.yaml       | 170 ++++++++++++++++++
> >>  .../display/rockchip/rockchip-lvds.txt        |  92 ----------
> >>  2 files changed, 170 insertions(+), 92 deletions(-)
> >>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip,lvds.yaml
> >>  delete mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
> > 
> 
> > What's the plan for these patches? Don't see them in linux-next still. 
> > Do you want me to take patches 1-8?
> 
> Hi,
> 
> The display patches normally go through the DRM git.
> Patch 2 must merge with grf.yaml.
> Heiko has merged now 3 PHY related patches to grf.yaml first.
> 
> [PATCH v6 02/17] dt-bindings: soc: rockchip: grf: add rockchip,lvds.yaml
> 
> See current
> https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/log/?h=for-next&qt=grep&q=jonker
> 
> Not sure what Heiko's plans are.
> Patch 2 replaces  only a description text and some accolades removal, so not "too" important.
> 
> I urgent then you could merge without conflict:
> 1, 3-8

So I've applied patches 1-7 to the drm-tree now.

For the GRF-patch, I've dropped the quotes changes, as they are somewhat
unrelated to the lvds inclusion and so prevented any conflicts when applying
the rest to the DRM tree.

@Rob, if you could pick the fusb302 patch (number8), that would be great

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
