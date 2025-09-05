Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC3B9CA0FED
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Sep 2025 00:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Idx38iJ8JKCDSpPFpEj72K7lXJT4ZoT5SgaUoIUIWo8=; b=Ci5aHZM20XCCWv
	ZcWevJBS8mlXmcGWC2aprGhy+yJchsM+VGQYiamSlPqxJjdCcGXYWj9Pa3lU5N6U0lc0TMBDF75IW
	sv9xiTs+ZKke8Tb46Ehd4GIRlES93wD5S2ylSk+kCIGZ0JWIJLpXqBMCybseL/jYF2k01hNXRlM4s
	3mbfuob9wyvCv4b2r7fgJo0nm4DNlUnmNcDxPblOB1lVMoGakXKNKLlSLPUPNqhfaJYkVHuEVMduM
	qgFgA0JzdPQYv7L1TIYVSnGrMWretyzgR/T3+xHMcqaAbHUbDR+tTAhdvnkuD4zb8VEGyTwgY9zLa
	wA9E32yhQN9NWlmENizA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uugYO-00000005Wv6-25Qy;
	Sat, 06 Sep 2025 00:13:16 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uudIw-00000004WdP-0tHG;
	Fri, 05 Sep 2025 20:45:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 92489601AE;
	Fri,  5 Sep 2025 20:45:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 125DCC4CEF1;
	Fri,  5 Sep 2025 20:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757105105;
	bh=4ZLCyJt/jgAVLSyrVPrxlIa5FRBvIVjWg3S+LiVVSqU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=K5kWqd+GaUtF8PvSlPDq6g7W/bImMKVo7Znc7Omtj6NReEt9sFqffksrb8/6ON8/A
	 OohPm2WgU0IIIjVt3nKGRu5y8bZ5CzchNRmBvJRsyehZYVY2oGnOD0Flnsrp8gpeTk
	 H8NohGs6+j4Sh7rxGV0/vLelcCR4+wCIpdi40R0hRtINYRYzLbfsPBlKADWwEGQCnM
	 u9DI7uzOluK2UR6C7RQVadjopsK+N3XzzPeU0JCAf4Z1nmb01G8dbcbB/XM+ZkJNYq
	 VNsrKlfn2CE0pRqA6vH75ghtEbeGH24rNVOlQCNXm21iEG30wexijhTfSFX5YU/syp
	 8UQ2UueKpz1Tw==
Date: Fri, 5 Sep 2025 15:45:04 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: WeiHao Li <cn.liweihao@gmail.com>
Cc: andy.yan@rock-chips.com, conor+dt@kernel.org, heiko@sntech.de,
	krzk+dt@kernel.org, hjc@rock-chips.com,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: Re: [PATCH v2 8/8] dt-bindings: display: rockchip,dw-mipi-dsi:
 Document RK3368 DSI
Message-ID: <175710510342.1351910.7954617435326405550.robh@kernel.org>
References: <20250905025632.222422-1-cn.liweihao@gmail.com>
 <20250905025632.222422-9-cn.liweihao@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250905025632.222422-9-cn.liweihao@gmail.com>
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


On Fri, 05 Sep 2025 10:56:32 +0800, WeiHao Li wrote:
> Document the MIPI DSI controller for Rockchip RK3368.
> 
> Signed-off-by: WeiHao Li <cn.liweihao@gmail.com>
> ---
>  .../bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml         | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
