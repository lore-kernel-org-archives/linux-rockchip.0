Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAB98C47258
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jan 2024 19:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9efIfHPoZDEsqvTx3U/8d2iwYZJ9MC7d02Mbabuz44w=; b=kmQaWLzr+wyjKE
	Xh4gmDBgr0x0xKRqOSFAOTPW8RZzZwGI5xSyGzZn3PoSL24LQsFw1Y2j8AorWrBm9VJob5K01KTZX
	IJuU9fGXZwl9MPORfTpm74zok+Eke+MAMYkXBp6ZRwJkeLc8EvJOIg7Ss1TJIsVokWO5duaskjlFE
	BhvRJxhn3BSqdeJMjWYS5OcaYwKyLFJavCpk1jt3OfiX3qxqdLxaUInlFYi+xJlIxWDHQ5LM4l5iI
	p0GOiZUEGF4gove5HYQFUr/W1KUD7FifTMPPwSAiFkdvs92XOp8U0vKEmGh7iKSkNdXYLTiUrVyur
	JuA9iEDhs33VNIN/rSXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPpUU-00DFqj-22;
	Tue, 16 Jan 2024 19:52:54 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPpUR-00DFni-2b;
	Tue, 16 Jan 2024 19:52:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id F080FCE1B31;
	Tue, 16 Jan 2024 19:52:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B710BC433F1;
	Tue, 16 Jan 2024 19:52:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705434768;
	bh=igwQ8TV2mQvIAUVH8VnNjV0M7RH3HutkarYq2gKU5qo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MPrQ4RJ5J3UtRJ48Jr1q16AF0yP925Y0IOjaQDX7IC1z6m7nXyVK+1Bncqfb6PKgY
	 RVvuGVlSqX5qGdSEebmpT9GSaVLmLxJuigP6LKThPGulhMtrtQ9oYGgvUZ4kz/IhiH
	 PETQ8FViaMkNgAr3SzPSICSgX+EPqNJPgoQ7ilMDn+wQxJZ9hdBhJE4YY5Den9R+y7
	 D/EJFq9NyxzcoI7GVRVk9McUaBBgxuo3aDK9yVufb8TigJuzwWtm4TS8gHeWvoXE/h
	 /6o/WlCV6nE7pzb4wFMRANxe2qApDud+AX0DYFj7HJ7iRtEeDS8TRKRGJ9XpMwsH8Y
	 rzduDhxOwNJIg==
Date: Tue, 16 Jan 2024 13:52:46 -0600
From: Rob Herring <robh@kernel.org>
To: Tim Lunn <tim@feathertop.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Chris Zhong <zyw@rock-chips.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lee Jones <lee@kernel.org>, Zhang Qing <zhangqing@rock-chips.com>,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/3] dt-bindings: rockchip: Add support for rk809
 audio codec
Message-ID: <20240116195246.GA306579-robh@kernel.org>
References: <20240116132102.3272682-1-tim@feathertop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240116132102.3272682-1-tim@feathertop.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_115252_027590_1408B6C5 
X-CRM114-Status: GOOD (  11.99  )
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

On Wed, Jan 17, 2024 at 12:20:59AM +1100, Tim Lunn wrote:
> Rockchip RK809 shares the same audio codec as the rk817 mfd, it is also
> using the same rk817_codec driver. However it is missing from the
> bindings.
> 
> This series documents the audio codec properties in rockchip,rk809.yaml
> bindings and updates example.
> 
> Changes in v2:
> - Fix vcc-supply warning detected by dt_binding bot
> - Fix missing include and pinctrl for codec example

I just reviewed v1. Please apply those comments. And wait a bit between 
sending new versions.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
