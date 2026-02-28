Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93655FEE4ED
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Feb 2026 12:04:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pcnbcjX1c0Gcog1N72Z0QV939FVsr1ikEIKR3oAxmqw=; b=znTOAyNCAcefnj
	QfCRYyHycub4dzhn3JVK2xK1wOdKdIDznnKzrRdI/drJKKMh2oPbexk8uylqJONC5VPnhZTSUmpcJ
	xat1qIak2OWEWRCvs4IVWg11qJQX14y3I6XWSuhzUc4Rgaksn33o4ioD3MFXn3AgCBB7zHMRStgLo
	72hPVXqplJ40UXdn1daIq44OBgqtj6z7HBUHN/Q4AA2olq4Jw+pXiIBP/mK2yP1bVkTn1p8J/4jGi
	5eFuTrr6+lgz7woeawxtOOs11w42NZFFeWD/BzM86mGb3G8Dp7rCqw5cSnBf1FXfBofJ9Rswb7pwR
	520rKhYr/p249U5+czog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwJ3P-00000009oR2-006g;
	Sat, 28 Feb 2026 12:04:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwJ3N-00000009oQp-28Py;
	Sat, 28 Feb 2026 12:04:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=JdN2s79i3ifvPHFkRof15X6OWKPE6JLNcjWGTuMMrns=; b=SshYzgVwoWcAxLb+w3t0v50Znr
	Hpg4k6eYW5A7vg1vbZ9obooLo37S/UzLv3KBFbwwanP/34k5z0Wt5t0gy0gTQidm1B6IAotLZEysV
	3ee/FA02mcyqqkHnYX7bbBP6MUUdB6hgxJELhvijVIn8EBrw9PlRiVA4xn4XEAwkxe6oseAqdx4Xi
	m78i7P8tsSuuJuUecVA8LE92yoWXizrH4I5LfwhZxFI57ZJAHAxlvhgVVtVBrKNIoh+fJLifAoG2b
	Gv+8/cCHI6/oJwiLwYD8+ApS/TgdBhBkq+cI03zsSWvlDkRtaSWrdrTmo0OoTs3iZMXx5YSsxzu6z
	B0DcIFGQ==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwJ3K-0000000EY8C-1ifg;
	Sat, 28 Feb 2026 12:04:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=JdN2s79i3ifvPHFkRof15X6OWKPE6JLNcjWGTuMMrns=; b=AuRSjze0Jo37Np2PrzQvaVwhbJ
	l6VJV0by/ttwspIwjKnSQsuOO7F6delYcpwF0mhON+A7SJTHV0UW1Dvl7YCVghDO/BBYpz8kMLWjL
	oidjivO5DBtkQnOcyNzA+LiKAPTeObPhZSS50NYiIVDGp4J9XAiVUEoIewRXwHs/kJmIPjkrasMPP
	4Wd3a195gKqM2EWZtgq188YVvu4sVtC27yqByGGPhxWzCja2gTeZYO0048rCgD9WF2XGQ9kuRBge6
	I65Pljq1PFBq0WY7JXDfl4MvdwgXLAOyPCfQfb/7tjcUYW39pvwr9exb+wrQFllR2f9NCu1Hbu6Ve
	yqVhOxNA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Fabio Estevam <festevam@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH 1/2] ARM: dts: rockchip: rk3036: Move PHY reset to ethernet-phy node
Date: Sat, 28 Feb 2026 13:04:00 +0100
Message-ID: <177228022478.407079.13274912571171700882.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260228013257.256973-1-festevam@gmail.com>
References: <20260228013257.256973-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260228_120410_544750_9969DF76 
X-CRM114-Status: GOOD (  10.07  )
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


On Fri, 27 Feb 2026 22:32:56 -0300, Fabio Estevam wrote:
> According to rockchip,emac.yaml, 'phy-reset-duration' and 'phy-reset-gpios'
> are not valid properties.
> 
> Use the valid 'reset-gpios' and 'reset-assert-us' properties under
> the etherne-phy node.
> 
> This fixes the following dt-schema warning:
> 
> [...]

Applied, thanks!

[2/2] ARM: dts: rockchip: rk3288: Remove rockchip,grf from tsadc
      commit: e2919e4299f132823712ecd44c08c8e8fd0a2e3c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
