Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2250EC5B54A
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 15:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lDu6kRfa1nhk/e0nMV/bT7fyRKlgPEoVl/PLpNExjhw=; b=2yp+GGlCSTfE9q
	oimu8Afk0O76toF5EG1SvzZxys6g2iEwjkbLa+f/9+QT89LL7ydkxymRTSN4r04Psr6OeGgfXovg3
	PeNOiajF7EXsDiqx/WypF0jOy79pgDVbUGfUz/n9cud6UJ2ajymuOpEX17hdnGZBarACvEpvOzyEV
	1f4tFgDUZB88qpUCGfTaNka1M/cIx2Cys65bvnk/5DvQ3737pbPPa3+pFGN/GX0d7gBcWWX27adDE
	TemVE+bbAI6S1dAtJv4y+WWJ6X1uWx3W6t69FCRKYTJUPn7mncv+32X5AjTmlVispa9Ul54mqVuQM
	9oLN+dMwUJtMx1uMxeSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKor-0000000G1WV-3Wc7;
	Wed, 28 Aug 2024 15:42:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKNM-0000000FuxH-3v3H;
	Wed, 28 Aug 2024 15:14:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=qO+auz81JILQiPonn+3KFLDW+eIXTBATRojCXRXQL4M=; b=CBFVj1CECsX7O0hGFIEFKwKGMl
	13swb7gcTQLpSA0jxaXO4GPGvCpnHeL3VtNRDq0p+wfEjtMEVzJi4MI+ryJVJGQH8S90UNUdaOQbt
	C/xQVedAtTEhzmb/636lCSP1eMATtQMGtA/O0H9lEeKbD0LI26w8y2k1z9fw0LIEKTz5yE+w+kqg1
	yPwp55ldNbdi2gwmsJLvwt0G9Z79fVFaVUtlgoxWZfvvX2XVuzQqyr4rweOT+atfY220vDVjPb94m
	US8F5jJBuFnm90YfL4RNJuFG5LV/ozFpLoUBudOmSkNUbkizVab/73RE451Onqf5yscqPteYA4mTa
	1QDUq4iw==;
Received: from i5e8616cd.versanet.de ([94.134.22.205] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sjKNF-00065f-8O; Wed, 28 Aug 2024 17:14:17 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: disable display subsystem only for Radxa E25
Date: Wed, 28 Aug 2024 17:14:09 +0200
Message-ID: <172485421377.1511809.12375078793933979207.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240820120020.469375-1-amadeus@jmu.edu.cn>
References: <20240820120020.469375-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_081424_992798_3537952E 
X-CRM114-Status: UNSURE (   9.68  )
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

On Tue, 20 Aug 2024 20:00:20 +0800, Chukun Pan wrote:
> The SoM board has reserved HDMI output, while the Radxa E25
> is not connected. So disable the display subsystem only for
> Radxa E25.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: disable display subsystem only for Radxa E25
      commit: 5d4b29c2bf1b2b08522c48f211311404b8075bd1

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
