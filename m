Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0C4DC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 May 2022 22:24:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0BqKIIz+p/vsDJ0aR1WZdvPS6SKcJ3bd3NFFUthqTgo=; b=abDQkS3UIGu8qm
	K0PmcFSDxsnC6anQha5TaGhQC/vRYRVQTogI7Cti/PqdFzv/5tqokDm0yK1a3A2ZX4BT0UPahUjG0
	C383uUNGwAsisfuSqmTEM21hRycduaxXwTUYmt4pdpdEBnOEFd8sPdfHhyK0ctOLScgr7Yk/RJrGj
	PAxgoR0mI6ICKGW2YIrp+ps2wCqOrY2BZW8t+ddAzzh/1u+4OG676ZMgD38d4VoKlWdid763CID3z
	tMMCAJvl2Zo0Vq5y1Ni7z6+rFkuMuIDaQTrctb5lEjnlB6Bw6UnWTLv4bB184xPeDPNtwz0TZQgAs
	+YzMakrFItMGluUwwN0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nleSs-002uAp-0l; Mon, 02 May 2022 22:24:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nleSo-002u8m-OZ; Mon, 02 May 2022 22:24:20 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nleSf-0005bu-N0; Tue, 03 May 2022 00:24:09 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wenst@chromium.org>, Sandy Huang <hjc@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] drm/rockchip: Support YUV formats with U/V swapped
Date: Tue,  3 May 2022 00:24:05 +0200
Message-Id: <165153020899.255051.8265541516247012144.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220114074038.2633848-1-wenst@chromium.org>
References: <20220114074038.2633848-1-wenst@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220502_152418_832107_DB4A4BC4 
X-CRM114-Status: GOOD (  11.05  )
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

On Fri, 14 Jan 2022 15:40:38 +0800, Chen-Yu Tsai wrote:
> The VOP in Rockchip SoCs that support YUV planes also support swapping
> of the U and V elements. Supporting the swapped variants, especially
> NV21, would be beneficial for multimedia applications, as the hardware
> video decoders only output NV21, and supporting this pixel format in
> the display pipeline would allow the decoded video frames to be output
> directly.
> 
> [...]

Applied, thanks!

[1/1] drm/rockchip: Support YUV formats with U/V swapped
      commit: 3fa50896c35982afb59ad5bcbe04ec2e91bb54a5

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
