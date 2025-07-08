Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCCD1C8303C
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Jul 2025 20:32:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IgiRLSOBxzqUllADX+iQRjXxyhPVGFHgLWFfiP+CeAE=; b=X4TUiKIegwNu5c
	obouBE+b6hw95nhIcen4+HGjuweYL77l3crjTo+d0uqPdIWA12jQik2coLpap2cjzbQncrWaj7G/E
	Ikr5Dq8Xn48OqUdl3nsGLpbO/fZw0aVkH2yLF4OlvDj9q7NPtn4KZFqPM6dIECDXb8/IggkaOp5Hg
	6SYaCpvTSBUzS3yqRsFMmdgMBqQyuN9DfLjUu+2yMXjdh2sBvutFSfaGa80eaHqo/f2IvMghiZSLh
	7lzZebsx2hiXSYLr1CWLilfSxHS7Z0HgZuSbvIjRIrmDNTlS/w9g8rRk6le9M3NpFkrxyQoaVaPth
	pCsDxKYcNS6uNRiRxLHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZEz3-00000006WMk-46PB;
	Tue, 08 Jul 2025 20:32:09 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZEYi-00000006SRc-0wFH;
	Tue, 08 Jul 2025 20:04:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9951D5C63F0;
	Tue,  8 Jul 2025 20:04:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C11CC4CEED;
	Tue,  8 Jul 2025 20:04:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752005095;
	bh=UAxdp1DGkpWzNRjNigWBfUd83bXcPNzljSWxeW6F6ys=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tNSjpre9hQm11qlU7fwO/m5yuK6s++nUu913KGSodJ1VVbBXIqeDLnEui01mJtsLw
	 rpEL7rAhofOjBlC2nqbcCvhI7CEpbr09N/gy9P8T/h9b2qyXVLc++06Ao7a5lv2yoY
	 BVyJN9oN4tUu9wegJuCgyEqaxWaGjka3IiYOVh0kwM9BO0f/3ezO4lVPK4tg/luqyb
	 ZN+UBhGPaLnWpDAfWKTDr8qH33FTfMtUwcx8zRB7UE0CdqWhmguyr04jIRB4bUhItN
	 FJseQLrpgyIyHW1aPKEvTIbsHFg6W05WkaFkxbRlFVK79+vS2KB6SQSkNy0xeFUMgN
	 si8FA1sqFv9/Q==
Date: Tue, 8 Jul 2025 15:04:53 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 05/13] dt-bindings: display: ili9881c: Add Bestar
 BSD1218-A101KL68 LCD panel
Message-ID: <175200509348.879110.17260989179996281641.robh@kernel.org>
References: <20250707164906.1445288-1-heiko@sntech.de>
 <20250707164906.1445288-6-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250707164906.1445288-6-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250708_130456_299913_9DC0C5ED 
X-CRM114-Status: UNSURE (   8.66  )
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
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, andyshrk@163.com, maarten.lankhorst@linux.intel.com, hjc@rock-chips.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, mripard@kernel.org, tzimmermann@suse.de, andy.yan@rock-chips.com, quic_jesszhan@quicinc.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Mon, 07 Jul 2025 18:48:58 +0200, Heiko Stuebner wrote:
> Document the compatible value for Bestar BSD1218-A101KL68 LCD panels
> that are based around the ili9881c controller.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  .../devicetree/bindings/display/panel/ilitek,ili9881c.yaml       | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
