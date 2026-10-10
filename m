Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 493DFCA9EC0
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Oct 2026 19:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=webLg6caE300Cp0yVPLTkaRYOrt838qyZg4InMLerTo=; b=ewKWp5RmHyZPpG
	15gIqcZI/FcJBsldLlcSiSqx/fOwu1c1os7KbVZ6rVJ1Z0h1RyBQPHi/kefxsM06jCgVBf6mkdU9i
	iTF4Z4iah4DK4CEAfgM/kNdDY6aFmzz1CXxeWngRJdOVWZz/HUDXKWbrwo4L3Z+f11wAA4P+woOHt
	nNIY+3i4MtYfHZAqAlbfSDyicawJ0xV2se9thkNiPwaFhmEKANDzTn3Tr60Q0/qxKHO41orFm7VJC
	tm5DjbT/WCKOf+qknmWsGdeJeTPXqIFHED9Vk337xCgRWGfcxblB/tSl7tu29iW/xqqJVQvQAoF+D
	yTd04kg+IJ8agGcIw/Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFcj2-00000008P1Z-0gCY;
	Sat, 10 Oct 2026 19:27:20 +0000
Received: from mx.nabladev.com ([178.251.229.89])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFciz-00000008P0I-0enI
	for linux-rockchip@lists.infradead.org;
	Sat, 10 Oct 2026 19:27:19 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 764831086F7;
	Sat, 10 Oct 2026 21:26:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1791660420;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=2jg4Zg9CY3g2Liw7gGHp2KJ5maqfxequAZ88NAf4gZk=;
	b=W5xvqxGbc02BTI2TJnYlayEy/DAsWqTJ83UtPEWeM5UYLxqihTQXn2iEpPG2zhGWgMAV3H
	IQdkN20j5Dszlmpobk8g0huambde8vfpGuKuxGLQqCctVs3uV39iFX6IPROcaDtVaeYTH0
	CN3rjvR9gCJrcY6Mv+VR2N33LdP2XqzAgeC/6ZeFte5cl+pZVA/zp9UURgXRsrvK/kMb7S
	DbncncUXHRD/bex88cm4WDnBLAhq8/uRigLUIMidtADtcDG8hI1VFHRNnU0ZTegU5I0mfd
	0gNHpIl49zFj6UZefWVXm7HLu35flLcnNVboVE5r2iS6O0DbgU1EYhJBU0F5hQ==
From: "Fabio Estevam" <festevam@nabladev.com>
In-Reply-To: <1791641839-74584-3-git-send-email-shawn.lin@rock-chips.com>
References: <1791641839-74584-1-git-send-email-shawn.lin@rock-chips.com> <1791641839-74584-3-git-send-email-shawn.lin@rock-chips.com>
Date: Sat, 10 Oct 2026 21:26:58 +0200
Cc: "Stephen Boyd" <sboyd@kernel.org>, heiko@sntech.de, "Brian Masney" <bmasney+clk@redhat.com>, "Jerome Brunet" <jbrunet+clk@baylibre.com>, linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org
To: "Shawn Lin" <shawn.lin@rock-chips.com>
MIME-Version: 1.0
Message-ID: <a44bfaca-9c4e-dc0c-6f83-364a7953bb44@nabladev.com>
Subject: =?utf-8?q?Re=3A?= [PATCH 2/2] =?utf-8?q?clk=3A?==?utf-8?q?_rockchip=3A?= 
 fix wrong PMU CLKSEL register on rv1103b
User-Agent: SOGoMail 5.12.11
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261010_122717_726488_71BB6FFF 
X-CRM114-Status: UNSURE (   5.51  )
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

Hi Shawn,

On Saturday, October 10, 2026 11:17 -03, Shawn Lin <shawn.lin@rock-chips.com> wrote:

> clk_32k and dbclk_pmu_gpio0 use RK3568_PMU_CLKSEL_CON(0), which is the
> wrong SoC macro and resolves to 0x100 in the PERICRU region instead of
> the RV1103B PMUCRU register at 0x70300. Reading or setting these clocks
> would access an unrelated register.
> 
> Use RV1103B_PMUCLKSEL_CON(0), as already done for the XIN_RC_SRC clock
> in the same file.
> 
> Fixes: 3e65e426d457 ("clk: rockchip: Add clock controller for the RV1103B")
> Cc: Fabio Estevam <festevam@nabladev.com>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

Thanks for the fix.

Reviewed-by: Fabio Estevam <festevam@gmail.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
