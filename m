Return-Path: <SRS0=E6vg=EH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4CDFCC2D0A3
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2020 15:34:05 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C1C5822246
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2020 15:34:04 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="xB+nuhqV"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C1C5822246
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FeHJuBLwXz7wLPeIMWjwMvWNMRJ9Y3AKV1pund88qzo=; b=xB+nuhqVotQmiA/bG5ngKAezx
	fdk2og9+FFPxibLSbKyZ0+dkpUud4Tg0Vo64OePyN72UJ7LvXK3SavBAbGRbayXRf4du9F6jYCkv5
	LPkKQFXsOsU/CJ/OKg/ygZAgp1qQko70IWLcy8V5mcFCGjXprq7QlDEqEzeeyp6+VflrPb6GEgl78
	07KWfVQoHnFmnHPdFoYQmCmkNCvNcuYG9U2LbxjPzz2k159mKXJadBjUIQXIO/RKocWm32PdGasX0
	04loHxCSQbK40p+V+wUIzhMdGlq3uxz7oeWQfZp+Mjvd/b0JIpeG6K3J4tE5kZHz5lDAz5KldB9Q6
	2CAJrrbiQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kZFMo-0003gV-KM; Sun, 01 Nov 2020 15:34:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZFMi-0003dX-P8; Sun, 01 Nov 2020 15:33:57 +0000
Received: from p57b773f8.dip0.t-ipconnect.de ([87.183.115.248]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kZFMY-0003rS-Uf; Sun, 01 Nov 2020 16:33:47 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Alexandru Stan <amstan@chromium.org>, Lee Jones <lee.jones@linaro.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Jingoo Han <jingoohan1@gmail.com>, Andy Gross <agross@kernel.org>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Subject: Re: [PATCH v3 0/3] PWM backlight interpolation adjustments
Date: Sun,  1 Nov 2020 16:33:41 +0100
Message-Id: <160424139256.1224767.4744407641354846090.b4-ty@sntech.de>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201022050445.930403-1-amstan@chromium.org>
References: <20201022050445.930403-1-amstan@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201101_103356_862469_7B9F9137 
X-CRM114-Status: GOOD (  16.50  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-pwm@vger.kernel.org, linux-fbdev@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Matthias Kaehlcke <mka@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, 21 Oct 2020 22:04:42 -0700, Alexandru Stan wrote:
> I was trying to adjust the brightness-levels for the trogdor boards:
> https://chromium-review.googlesource.com/c/chromiumos/third_party/kernel/+/2291209
> Like on a lot of panels, trogdor's low end needs to be cropped,
> and now that we have the interpolation stuff I wanted to make use of it
> and bake in even the curve that's customary to have on chromebooks.
> 
> I found the current behavior of the pwm_bl driver a little unintuitive
> and non-linear. See patch 1 for a suggested fix for this.
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: rockchip: Remove 0 point from brightness-levels on rk3288-veyron
      commit: 225c59b9235a421cdb219be5fbc13126a49714a6

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
