Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AE4ECA5FEC
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Oct 2026 15:25:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W3y+UmaA72c2OnBVc6x3SAYZ9aw+br6ofPgrrHp9WGQ=; b=WLgX4Ni3FF+SKV
	vGoXy4DWJPjqbPsPw1jqRMQQ0drREt0XOm/b1+Os0BfxULtjcn5MtgvSOWy9GrCOaOvNgFTVsX5Ek
	LFm2hyk09kxbrTIMo/72G4H6N6OK0Fi/5JrIStcL7jNcDfO2WurquxwvrT2TV8pTjwE67NzKUCVgr
	meYe55tKOZ6DYuLA7+VuKWx1xVx1WG3IizKH3/algn7HKiY+AeZ0f+L7rnEeU5wxdjWXA+/ICJZzm
	a3mSuc27nOlHpneDqqa6MeylRYmzcwvVbzipRKARQKCy7UvoLR5STGQdnxtUzu2g7XbHFgj+y8A/6
	9c9vqHSS9t3gB/MC0lVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xD1c6-0000000Dgan-2ZES;
	Sat, 03 Oct 2026 15:25:26 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xD1c2-0000000DgYG-3ow6;
	Sat, 03 Oct 2026 15:25:22 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id AA22C43DF5;
	Sat,  3 Oct 2026 15:25:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BED251F0089E;
	Sat,  3 Oct 2026 15:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791041122;
	bh=kyYsESqJs1RzwQhHHMRkPTPKvdniJodMlR3dH9oEz/8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=XJUp2+9Tqlk4TNP3RVNnPIwzWwolmcT3BKGH1Eoy96F2Oe9bNwPFx2R1ST/lXpOma
	 MR+TEEWlACc43BraA2FSUXEIW/6Px3Uhi129sF2N05SluWKma2Y4SgWN+gpNUCcyVm
	 oi84C8hiS669+WIDvDKM3u8AJj/boBddD6I5bCkjFkMYVf1/td00zuhycERKL1rDVo
	 pc6u4gPX2CceGauBDEdIp/PMunjwzSECLED+zFEvTFBTbx2jN9AeJVw28YBMNmxkXr
	 pb3D3ds3c6Z3wubvJ+H9W8+bsQ6Eaz9NCCOCIY60RDHmRNhTVr9btQUZ8St9cyQHVN
	 KL6dnZBPXD4gg==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Geert Uytterhoeven <geert+renesas@glider.be>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org
In-Reply-To: <cover.1787240165.git.geert+renesas@glider.be>
References: <cover.1787240165.git.geert+renesas@glider.be>
Subject: Re: [PATCH 0/2] phy: Make sure clk_init_data is fully initialized
Message-Id: <179104112038.223537.2313404929289351328.b4-ty@kernel.org>
Date: Sat, 03 Oct 2026 17:25:20 +0200
MIME-Version: 1.0
X-Mailer: b4 0.14.3
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


On Fri, 21 Aug 2026 12:08:38 +0200, Geert Uytterhoeven wrote:
> 	Hi all,
> 
> The clk_init_data structure contains several mutually-exclusive members
> for different methods to specify the possible parents of a clock,
> prompting drivers to initialize only the members they need.  However,
> not initializing all members may cause subtle issues, which are only
> exposed when CONFIG_INIT_STACK_ALL_PATTERN or CONFIG_INIT_STACK_NONE is
> enabled.
> 
> [...]

Applied, thanks!

[1/2] phy: freescale: fsl-samsung-hdmi: Make sure clk_init_data is fully initialized
      commit: fdc340bfc7ab60c4cbdb198c9972114b51d7caa3
[2/2] phy: rockchip: Make sure clk_init_data is fully initialized
      commit: 91967098fd985237ba0deff97809ab52d3e51fba

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
