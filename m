Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F980CD6E74
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jun 2026 10:03:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AM+GTQnNGbaRkGXY9khFI/5JgP+FW8tTJxUseGwLNds=; b=nZ3iC1C8beiZ/A
	0FzXCOvJNXKP+cTVnCz9x8XILcst3gp0aGM1rwp38WiItFWEOs/7jKZLnZdRv2rZg1P6V0AFz1gRU
	t7t5FEHY0wR9r52wpV6G6vLLbPlly3gkw2Nzvsz9EgjDYJpKlo+jmkeLRE+AvQgs2lnST10KNOJkn
	29HjbgnY22UR4WgN91Kq48dwlMaRLuiZ0nxQIzs6JdJP3sWL/6wYkj18TmDpyn7IX1+6hXcS38TiV
	kt6p7KykCvdZy5xDDAFePDrFSviQ7Z2uTJdnI01jFcwehu/e7DrZHJlZskWmrSYQ+hhmXZ6mSxQIc
	iXZ2jN8eoqvrql7V0AoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVROf-00000000SXp-1R0c;
	Fri, 05 Jun 2026 10:03:25 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVROd-00000000SXa-3SjH
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Jun 2026 10:03:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 22FF542CBD;
	Fri,  5 Jun 2026 10:03:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A9D31F00893;
	Fri,  5 Jun 2026 10:03:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780653803;
	bh=S7BMO8cpcnRmf/pdVAVdW2RAssH+EVoJVhCq/grmx9E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=eg8GsaXu63euOYEvi0ZAFb3GboTIFgfUUQgee2nHiYbTzEsCdsvBfif7HlHFW2ZBA
	 AInNaXOsSRkuXAlaX4doBl36un7RRwUvI7kVKqd6aMegM7zfLAsv/diHk2T6vE1OXe
	 G+JyftXGdvDsuVAt6o4rd/jUkV2Pxphfj/uP9BP++8TkJUdv/AbWCUsRViN8GlyejZ
	 +53PeGzULhrUnWKpC1AWDmMCV9P/TEFA7fmpdCEKMcR8XC6hGfyhRPeTNE4LPxhgPT
	 hIUSmaLnxQF3L27J/FqFWFXvqIhdEa3gSGM9JG51D4qci2OzOHTXCsWe4bylYzr0wK
	 h9h+/xvu1VncA==
Date: Fri, 5 Jun 2026 12:03:19 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com, 
	dlechner@baylibre.com, jic23@kernel.org, jean-baptiste.maneyrol@tdk.com, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org, 
	krzk+dt@kernel.org, robh@kernel.org, andriy.shevchenko@intel.com, 
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V10 2/9] dt-bindings: iio: imu: icm42600: Add icm42607
Message-ID: <20260605-big-auk-of-progress-c99b3a@quoll>
References: <20260604201832.60656-1-macroalpha82@gmail.com>
 <20260604201832.60656-3-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260604201832.60656-3-macroalpha82@gmail.com>
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

On Thu, Jun 04, 2026 at 03:18:24PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add the ICM42607 and ICM42607P inertial measurement unit.
> 
> This device is functionally very similar to the icm42600 series with a
> very different register layout. The driver does not require an
> interrupt for these specific chip revisions.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../bindings/iio/imu/invensense,icm42600.yaml  | 18 +++++++++++++++++-
>  1 file changed, 17 insertions(+), 1 deletion(-)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
