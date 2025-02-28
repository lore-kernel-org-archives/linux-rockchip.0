Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03AA0C282C5
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Feb 2025 20:44:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z7nxzU1J+69k39NHew5xzt5VqpldT2TAOjBsvadWtkg=; b=sZAzZoRrS0gB6a
	4ydGBZloHTs6Fdqti3xcedA0urEZ4x7E3uQVZZ913+Pj9oAENPAcBL0rd5XMlR1oGkIIWYQdD+x30
	/VRL4f35RkDIcFZ5UGUcYf++r0zt4F1rtq1KUqZIdEcMF696pk3TKYq3mc9ZFyN9hCdh7eQAFg3Y0
	83oM4jKwt+NpgJTC/JS54tU+FwTYZTeZnttHtqwekN0WCugtAjaVElY9GK9qGmzeeSlUybN703eXa
	5tuhwddXWki2Oxd4Rxj11E6JA74HGUxLmOrGna499put2/uf2YGGk6M6B3uYF1FG9XAs2YUkGLRlK
	J52BV9psKa8IIrttgl0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1to7Dz-0000000Ce1w-1gl3;
	Fri, 28 Feb 2025 20:44:47 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1to6n2-0000000CYaV-2fZp
	for linux-rockchip@lists.infradead.org;
	Fri, 28 Feb 2025 20:16:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 602D26127F;
	Fri, 28 Feb 2025 20:16:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55366C4CED6;
	Fri, 28 Feb 2025 20:16:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740773815;
	bh=8TFtmmo8Cj/1mL9CXXBf+fIuueDZSkXfv+2WvtbbpDo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dEKk3fjwrOLQ2ZdEJn6sLVv2phon3voA3UhAbVtZ0MzIS79r0ke/YsbpLpEr+Lunw
	 a56B0uXYVEtxmwwB3CqG7XPJPAYJ0AoQL5fUGVMUoGwrISCk1dO81Mr1Eah8RwsN8N
	 p0VGImGK3qlmR5ohnOhO3zUKv0fiBvwg07mUlSrao97lLbGnx3d/7L8+arvyRTlJxg
	 MYcc1ZQeyFxi7ZDvM1CIma2iy/Lt6Gv8YRSDyax5DOa7TQqM/v4czDzbSXDo3sHjgn
	 9wBVeNPdHwNQEncrPoUig4EUSNgRDfAV+qI0iNiYFFkapQd0auNrxBTCKLv99Wkz1T
	 wHT8S78eQTqXA==
Date: Fri, 28 Feb 2025 14:16:53 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: Conor Dooley <conor+dt@kernel.org>, linux-rockchip@lists.infradead.org,
	Simona Vetter <simona@ffwll.ch>, David Airlie <airlied@gmail.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, heiko@sntech.de,
	Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH v3 05/15] dt-bindings: gpu: Add rockchip,rk3562-mali
 compatible
Message-ID: <174077381343.3590059.11657408912105758197.robh@kernel.org>
References: <20250227111913.2344207-1-kever.yang@rock-chips.com>
 <20250227111913.2344207-6-kever.yang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250227111913.2344207-6-kever.yang@rock-chips.com>
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


On Thu, 27 Feb 2025 19:19:03 +0800, Kever Yang wrote:
> The Rockchip RK3562 GPU is ARM Mali-G52, use the same driver with
> "arm,mali-bifrost". Extend the binding accordingly to allow
> 
> 	compatible = "rockchip,rk3562-mali", "arm,mali-bifrost";
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> ---
> 
> Changes in v3:
> - Update the commit message,
> - remove the change for clock maxItems
> 
> Changes in v2: None
> 
>  Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
