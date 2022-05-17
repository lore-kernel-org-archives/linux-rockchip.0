Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D317CC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 May 2022 19:12:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iQ/Y6h9iBu3u2xjEkSu6tvE4whAkHtRVVb0VzbfgMxQ=; b=VU4ZAuEezYVWRh
	GR2fOL+NZacIsQ91gaubOmmGHlQpCiaTb56+R8bq0IsXZ6yPw4WTyRxjBUHE1tDy6WAmQ9/YxQ6ap
	MBDopSmeb03kZ9kBv707YAqlgVqSmU/CtgFFsOwWrHXXQc0NihznvKd4vzQNbGsFRFrAxVCjduNYs
	Vz5lAtQRR2/Zl/5avHYO4TsvCq7ba4T53Hq9Bba3b7mXY2HQ2Z6btwHSL4VdxsWsO/J5WrfXZ9qr2
	WGhGvBbUx6+R7SJw5Sc25nX4A4cv7yavJOC0vS38lAl4YWRaGSja92lQLZdpQcGnT6lYu2n/eMu21
	+gjA3Ytpvz3n2JfbfUSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nr2cR-00FXRn-UR; Tue, 17 May 2022 19:12:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nr2bP-00FWi2-M4; Tue, 17 May 2022 19:11:29 +0000
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160]
 helo=phil.dip.tu-dresden.de)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nr2bM-00043L-Iv; Tue, 17 May 2022 21:11:24 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: zhangqing@rock-chips.com,
	Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 krzk+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
 linux-rockchip@lists.infradead.org, sboyd@kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: clock: convert rockchip,
 rk3188-cru.txt to YAML
Date: Tue, 17 May 2022 21:11:20 +0200
Message-Id: <165281458742.3119039.1251106396664362865.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220329111323.3569-1-jbx6244@gmail.com>
References: <20220329111323.3569-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220517_121127_753358_74BE6A40 
X-CRM114-Status: GOOD (  10.20  )
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

On Tue, 29 Mar 2022 13:13:22 +0200, Johan Jonker wrote:
> Current dts files with RK3188/RK3066 'cru' nodes are manually verified.
> In order to automate this process rockchip,rk3188-cru.txt has to be
> converted to YAML.
> 
> Changed:
>   Add properties to fix notifications by clocks.yaml for example:
>     clocks
>     clock-names

Applied, thanks!

[1/2] dt-bindings: clock: convert rockchip,rk3188-cru.txt to YAML
      commit: 43434c6681daa89c4c96b6c5ab82cdf894960ee0
[2/2] ARM: dts: rockchip: add clocks property to cru node rk3066a/rk3188
      commit: 89b6d86ded950b385b4778e061f7fc8311fb007e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
