Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6177CE7718B
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Dec 2024 07:40:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+wzViYtA6OQ6H9ZuBgjEMpln3o+LzUPEgG1VwOK2nm0=; b=yeBPv35M12m9Za
	wIBcRSJgSe8acgGzgdQec/Vc5joJ03FFt/D50yawpuSXtZWImqoQDAMFokBM7knqK1Cj7nZAF0Zfh
	OYUhOC+oQhBmyNx90t7OcDjjrylHoznB2wwkOfZgUZ4qBIUMQ4iuvupdYumGCZPSEdnLlqWyVDs6S
	hKvthJdchCXRsU+aIMX169rT6kZbe0sg6sbIb5alRaBbPwIlnjchUVPAefOucxXPpcEiiKbPRaGWU
	+Yt0NIHWxKfqA8msge2UyBmLqqAaTiiwxG8ZuhivtXK3vsz3r10WmletirD1oC8KsztQo2GhTUIPY
	vGWQpvmmq88s3Mm8JlTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tR4xe-0000000HHIu-1n4o;
	Fri, 27 Dec 2024 07:40:42 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tR4wS-0000000HHA1-0foa;
	Fri, 27 Dec 2024 07:39:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 86105A411F9;
	Fri, 27 Dec 2024 07:37:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3600EC4CED0;
	Fri, 27 Dec 2024 07:39:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735285167;
	bh=gQ5ebTsOQtWDt8Z7Ny+2t/5IIUKmtgwKFmqxGlnwaps=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nwiM6IUbWmgXoFS2V0a/ymMvISsGXa8l74PzDSpBGCeRvRCyo+Gf7SxqUY/vStCSG
	 wS4/4ySdSNv0Nzvh2Zi62PmXxXvVLHznqRtYNqgH3zWnHpB+cK11Ygig6P2Wr9/gyF
	 wSQVn9BR4SeAHaWhhjTH+6r74rxNFSNkLYQlcAVqay0qaBMbcSfKyucZ85xNvkQjIt
	 z27gJNeKGDj5wlUXw2Wps02PNhtUBacLkkDcAWRMhmZoF3GCg5tMFbNoZJAIMLQERA
	 B5c1Zo7M/42uvNtGgWFUik6tN7dbLULNZDK3nNvhYSLksHSrn6z/cS17P2maH4eUyj
	 /hku/0L85utHQ==
Date: Fri, 27 Dec 2024 08:39:23 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 10/17] dt-bindings: usb: dwc3: add compatible for
 rk3562
Message-ID: <nzfzitfsf2pybh2tjzctz5ady5mj7z4mooymcktozwkbeuvr67@zdshqr7ub5qx>
References: <20241224094920.3821861-1-kever.yang@rock-chips.com>
 <20241224094920.3821861-11-kever.yang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241224094920.3821861-11-kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241226_233928_273747_D2DA3580 
X-CRM114-Status: UNSURE (   7.02  )
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

On Tue, Dec 24, 2024 at 05:49:13PM +0800, Kever Yang wrote:
> Add "rockchip,rk3362-dwc3" for rk3562 SOC.

This we see from the diff. Say something not obvious. Where is the
driver change? Why devices are or are not compatible?

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
