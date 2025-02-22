Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50228C021B2
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Feb 2025 23:51:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cylD7LfCl9MXO3OqFXaqglQ8/siVO1OaMbJoOtHWFVw=; b=ImVLXRlPooop4h
	jc524f7sJ6ey8ri1+KajqBXRA8Rrhc+7cbWDIkV982hW7YGRnGXUBdDEJP0cDB7SduSI/NNR7tQiE
	LgW5ut0TEl9KIa48OJDg7E1j7SC3SN0hjKxM769nFXhZxIfCIRwZmY93SicBmtuXtqIoHp0ljsx8k
	bL0+YeL5Yx4yh35mcfYwGMlqmI1Jg4wBFKH4E0jdc5nLNx8oTk+Wga77+7csS+F4iJ3bMlok4gY1x
	B3sU+IbkcE7wR0FC1UN/OT/M1Zw/xVl5BEUX7YOZIAwf3TkAUQuLFnGQDx6kNoYxZeABx2EOA4q3h
	oLYsIG6I8c6ZkCY/VMBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlzHO-00000009Jhz-1va4;
	Sat, 22 Feb 2025 23:51:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlzER-00000009InD-2NKC;
	Sat, 22 Feb 2025 23:48:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=WTZIz+bjsAte8JJ9M5T1Q+oMG2EjP+1wiuG1Z9WAeZU=; b=YMDFzjDCtPNHKPfjD/cNfEf636
	84W1kMpOZOP5nbWjlevNiBa8085bYYJ0Z2+VJEFe81xxNVGXFHXAjlGG52Sthrj5l/cAIa1c6URSn
	jhWkclGst0ohgIrQ52Vv71oXayU+++0EEucHfyf81XQ8fCWy/LEz8byruA4qHqM0PkVOrMpRG59Sf
	eqyp3s095mH87oglfc2XYkPTwwcpRN4dckhK9s8keUCYnZOHuvsHwhXjhjW89kFXzhfpqKWnzB1Xs
	Dg8B1xtx3MnWVN25ZUbI67O/8CwJhWE6lL2grxA5LYpAuFCNh8lCLO849tDsx6aIIXiqjEzyQfe4c
	85Z08TnA==;
Received: from i53875a10.versanet.de ([83.135.90.16] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tlzEP-0004TL-AM; Sun, 23 Feb 2025 00:48:25 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: srinivas.kandagatla@linaro.org,
	Heiko Stuebner <heiko@sntech.de>
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	detlev.casanova@collabora.com,
	sebastian.reichel@collabora.com
Subject: Re: (subset) [PATCH RESEND v2 0/6] RK3576 OTP support
Date: Sun, 23 Feb 2025 00:48:19 +0100
Message-ID: <174026756675.3008209.3013516959407224193.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250210224510.1194963-1-heiko@sntech.de>
References: <20250210224510.1194963-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250222_154827_623213_083677A9 
X-CRM114-Status: GOOD (  11.62  )
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


On Mon, 10 Feb 2025 23:45:04 +0100, Heiko Stuebner wrote:
> This enables OTP support in the nvmem driver for rk3576.
> 
> I expect to pick the clock patch (patch1) and the arm64-dts patch (patch6)
> myself, after the nvmem-driver and -binding patches have been applied
> (patches 2-5).
> 
> But kept them together for people wanting to try this series.
> 
> [...]

Applied, thanks!

[6/6] arm64: dts: rockchip: add rk3576 otp node

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
