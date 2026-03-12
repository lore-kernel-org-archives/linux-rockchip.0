Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51A74106ACE3
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Mar 2026 20:01:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=meVXU3HJtjVVePP0vxbxkMs3EB0oq2RYymji2FwORb8=; b=Rucxaj9zZeyZFk
	6Vdyr0uxdrv69399mrA9XDt/7QWU2NliEBWxk8QciQYSKcGS8Hz8civX1lUedtXWEgGeDwu6PpZqG
	YAcYmAFjC4vjfZI31GnfZ6MWYipMLA/ecXincxi+n42jpvMk5wXjQ69vEMwOoNAAKF6AkqsCFhekp
	WYQahQ4wu8Hqc4raWQHWI0gfyEjJ3ImQa31c3FFoLAbqyp+W7XK9KrwTY5PCmD6DIinkbd8DzkLFj
	tuMLR4bI8Msr6U+IpOo8UtNS909laCBPuKso61+NwnGHByVnUBFIOiVQh5gxzWSYXUWoG6Aqtn6oi
	h3d/K9m41oNo7t0tIBHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0mEC-0000000FCRW-3Mxd;
	Thu, 12 Mar 2026 20:01:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0mE9-0000000FCQL-3d4K;
	Thu, 12 Mar 2026 20:01:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=qgyqOHCPScAfR4PRcc+4ddmSV9FhJ0HZJ8pbHHXAdu8=; b=SkgWdm7RdLobc009NpMp0Wmyr2
	iBA+7oe4KL9k/yQ3Y9C42IDxyK/u03CLbpB9tNrJcxSyNIq+6S5JnjP2yzzUdRCCpY7brm5rpMWr+
	iOdFCqyiLoqX77ioib2rVNovayg7Ar6cpUOuvRDSpZ0QTPc6GJS43FJb+q1FUxu+LwUeiXx2se892
	a7l8zqRbkMCsam365uDYQAwQe/naWgBO2n2oKMs4qfrqFhSTufR/Lb8/0kbDaEJVFZvMPTKPn0Wnq
	o4uCDJxwpjb5Vr+AbFpi+i1WZM0YPCV+N5lQc3tgs1+nnNQasuwXQ8h7YvSYDKSnNSawHD3+m2Zh8
	p7OZuFnw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexey Charkov <alchark@flipper.net>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add analog audio switches to RK3576 EVB1
Date: Thu, 12 Mar 2026 21:00:56 +0100
Message-ID: <177334565370.2520391.4310192190507174351.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260311-evb1-audio-switches-v1-1-0e0199e56c80@flipper.net>
References: <20260311-evb1-audio-switches-v1-1-0e0199e56c80@flipper.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_130149_963519_AC0D7C9E 
X-CRM114-Status: UNSURE (   9.13  )
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


On Wed, 11 Mar 2026 20:25:02 +0400, Alexey Charkov wrote:
> These allow selective muting/unmuting of inputs and outputs, as well as
> setting mutually-exclusive rules in ALSA UCM.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Add analog audio switches to RK3576 EVB1
      commit: 9d28af133ef2de00239dc8a8b7878aa4f1b3ecb1

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
