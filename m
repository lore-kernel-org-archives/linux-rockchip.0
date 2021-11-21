Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 815FCC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Nov 2021 02:21:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EmyovtlM/RWaqrxEBmWMaKAjljN9uIWbbMj7MP8Tb/4=; b=f+MIeyGoFc2jEK
	9D+4uz9GinOGnf8DK0w42vaDbYntzPwFXz+QwV9frSDT6JWSA+C2Lzh3cN3TMsu7Ejx/PzkYq/8ll
	GiKvl2jb9BbXNWXJRR8zhEWojcMBKuhTpYWhpphNI4b0sB4Ar9yhaaNdazEsh903P73YICHe8fGsh
	RnWHOyc7RTniiTjnfFyt4MU4jPG56MER4mvFpYse7cTJQ2bxaqiesgSbZZmeUNSobHwgAbepDeZF8
	KGhdCdVHKri2+RJOV3b7zqR4ydTEDUZ0LX4SrCh26BwUz4br0+CBKr7OEjVhmtLRLIplMvvRPPRVN
	3+q5V/asrIYeURU7CdVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mocTn-00DAnJ-Ti; Sun, 21 Nov 2021 02:21:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mocTb-00DAly-99; Sun, 21 Nov 2021 02:21:08 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 69B466008E;
 Sun, 21 Nov 2021 02:21:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637461266;
 bh=UCzrbM2fD+0HR8OTJ7bvKM6jrnWGIk1QV2RUx+6+AcA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FfnIEeglJ9iE1+Wx5hFdSxZpOkvthyDqWEDkBw4C1Vd6ZtaZf+8fR4cr43d08z7dA
 qcRRdvOY8CW8F17K4HbW6cJjr16Txh7jeyBnYADlO1yuTRhW0R/weewwrnJ68hFKG7
 jPeEveZVC6QAPjyRgxVmvfgUyx1q35NqXxgHciXYmvpu9L06qqEQ+XoDO8oJihks9W
 +8rtWRYyyz7ni5kVSl8g1CbBxxaN8lGlCMnJaZ+z3kikfg30k036wL3o35OFuP6WK0
 /65KBwUqpvJcx5cC5FCxVyLAhw3OHPbBdaFRj+Gn+30cLlYG2Ln2ElZ3A8vAAvechV
 IWP+EDosvx0XA==
Date: Sun, 21 Nov 2021 10:20:57 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Arnaud Ferraris <arnaud.ferraris@collabora.com>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-sunxi@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Martin Kepplinger <martink@posteo.de>, Heiko Stuebner <heiko@sntech.de>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andy Gross <agross@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Lucas Stach <dev@lynxeye.de>, Angus Ainslie <angus@akkea.ca>,
 Guido Gunther <agx@sigxcpu.org>, Tomasz Figa <tfiga@chromium.org>,
 Johan Jonker <jbx6244@gmail.com>, Eddie Cai <eddie.cai.linux@gmail.com>,
 Shunqian Zheng <zhengsq@rock-chips.com>,
 Brian Norris <briannorris@chromium.org>, Dan Johansen <strit@manjaro.org>,
 Simon South <simon@simonsouth.net>, Matthias Brugger <mbrugger@suse.com>
Subject: Re: [PATCH 2/4] arm64: dts: freescale: add 'chassis-type' property
Message-ID: <20211121022056.GD31998@dragon>
References: <20211016102025.23346-1-arnaud.ferraris@collabora.com>
 <20211016102025.23346-3-arnaud.ferraris@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211016102025.23346-3-arnaud.ferraris@collabora.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211120_182107_357127_ABA507CB 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Sat, Oct 16, 2021 at 12:20:23PM +0200, Arnaud Ferraris wrote:
> A new 'chassis-type' root node property has recently been approved for
> the device-tree specification, in order to provide a simple way for
> userspace to detect the device form factor and adjust their behavior
> accordingly.
> 
> This patch fills in this property for end-user devices (such as laptops,
> smartphones and tablets) based on NXP ARM64 processors.
> 
> Signed-off-by: Arnaud Ferraris <arnaud.ferraris@collabora.com>

Applied, thanks.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
