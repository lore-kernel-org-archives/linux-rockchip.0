Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4BE1CF9C69
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Sep 2024 21:07:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H+53qOspVjsmJwgcLwvYH5y2vl1xrkLAxRgD4P90OnE=; b=EV4xCaLmbXF3yJ
	dCEdn0z0CKXw+l9UpeRTko+9yZ1XyldQDU79aJLNHEiYoj6zFGHrOeGJur3frCudJtALHo0JQERH1
	wHT18q7NyBXqH+FdA0JvWLVdZNrX++73avzvq3zu4AjdAqBw2m+Kzz9LLFUWw+19w5CYfvLQmIfDy
	XCUxnmMpR8J1s50PWX0gulHikCf+oivu4XE+Y4/vzvcE/6YO/HhN2mpEetZ11OcWne9eClgWagviA
	fpATUh1GN84zKC+crlxAAWHGH4h3dQfrScDfqnwN2a4YUjLx/u6hwyDSnE+z5xDP2RR3rGzj9Uw+j
	Ao7a2cT4enTHsn6OpliA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ssTo8-0000000FmGM-1wGS;
	Sun, 22 Sep 2024 21:07:52 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ssTmB-0000000Flx0-0ldY;
	Sun, 22 Sep 2024 21:05:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 67BDEA41177;
	Sun, 22 Sep 2024 21:05:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01B43C4CEC4;
	Sun, 22 Sep 2024 21:05:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727039150;
	bh=aBAPLqLjEzVqTPoaZP+3I2Os2qBCGy/KC+3yMQvfbp4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lZtHQMIo+VxF9Va1Wqn8JBC2KEOy4MaCv1BosGHT6kk58QqdWb0f3DH/G5VBcfk16
	 D9ExWXyhTFIjm/QBfWAICa2rUd56NuQBLkubUAOUOJ/5oBEVnzzIcDzu6dvXnDVMGp
	 YtltRShzJEWMjI6uezinpPHDnoZ+oHyoOrQ/eJfWwI+xqMFpIDg279Klst5TQWgDke
	 7Yc4arcYpsJw1QkY8tOsg+M42JeX43f+U4pHg8Une+qZumCFmvvXD+oVgc/Ou2VTke
	 a1a5QyAlR03EIrDdJUeTe2R9LAesjiNksJvEiqTpjbdz/c02LJpffyltjNw/4ey8YH
	 XeAVHh+5tl1gA==
Date: Sun, 22 Sep 2024 23:05:45 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, krzk+dt@kernel.org, 
	robh@kernel.org, conor+dt@kernel.org, s.hauer@pengutronix.de, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	derek.foreman@collabora.com, minhuadotchen@gmail.com, detlev.casanova@collabora.com, 
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v3 14/15] dt-bindings: display: vop2: Add rk3576 support
Message-ID: <vv3fxx4gqcd3oju2v75dinwdajmfkre4c6wvcm2cpit2wgcsqa@7ykznmou5t4t>
References: <20240920081626.6433-1-andyshrk@163.com>
 <20240920082306.6982-1-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240920082306.6982-1-andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240922_140551_307459_C5324DB7 
X-CRM114-Status: UNSURE (   7.59  )
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

On Fri, Sep 20, 2024 at 04:23:02PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> Add vop found on rk3576, the main difference between rk3576 and the
> previous vop is that each VP has its own interrupt line.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> 
> ---

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
