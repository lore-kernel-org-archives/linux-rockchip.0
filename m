Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52D6BCA5FF0
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Oct 2026 21:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rteT02aY3JBZ3bLnAb+Re330GwHYHE8ZjsWrdHqD9fY=; b=0b6JEOeIx7hYyg
	T6D1mVxpRLUVzZ0eDs9MD7MlLuT9Gmir5YzVmda0mIneshzDGPn0AgOt07OlCZOJwoMjIxNSrJOiy
	wHA56j/Twb38J2XCTT9aP/JxKWg8e3wI+bBXwfGU5VgR0Zio29pV7yah2/bLAxxQ79UEds6eqwlHF
	0BuXHF7iGrHuqQtLfBOxbwtD5Pq8BLaTtmlVXkdIeNUT5sbxcYUyZHVsTDt4QVIV/TKbvZ8v6hhBc
	q+nmhRTalqC0aGQIzttNrr7iEWkFZB1cKryr1IBGxCgPPIyCZqMOBd30mRN15DY3BzADarIUedVjw
	nzzGMG9eesSHwNtHuE5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDTaQ-0000000FL6A-0chv;
	Sun, 04 Oct 2026 21:17:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDTaN-0000000FL1d-0RX1;
	Sun, 04 Oct 2026 21:17:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=yOs3JdADmAyNGWFJhNPdC8IGwM8wLmZFBDUB6QhP4zk=; b=bAhYDCCZXn/8QocPw0WyD9YPuU
	4OGcH5rL0iU/nL8UamucbU1xRB3tt5nuXgokGbfpv4OAm1Ou9bZDHlS3GUySBd0IFa2QX2vEZlNr0
	rEeNw22DJrEtcb+AhMw2CkHVzbYzvrIbJWhVzFfFXDFAfNo8txsIV2kICl8w3trG7PtC9k4lPwL8y
	p4V9wPP1f4QKTHi3uCT5uku6+nwTg7jLc0AK9o0/HBhLHaU6E0UcERR2yh3BXBt8qLGdxfVp3l1pY
	aH/pOFARIiH+asg+1MHoibsEhsw2M8YAqDYY82F4hX8QA6JWNW/9GUtiG+kJqJGW2SMS139sXTjva
	E+Su2EuQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Igor Velkov <iav@iav.lv>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add buttons to Kobol Helios64
Date: Sun,  4 Oct 2026 23:17:23 +0200
Message-ID: <179114864095.3283966.16002793742772296547.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260930-helios64-buttons-v1-1-d76249064003@iav.lv>
References: <20260930-helios64-buttons-v1-1-d76249064003@iav.lv>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261004_141731_212489_A68032D1 
X-CRM114-Status: GOOD (  11.12  )
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


On Wed, 30 Sep 2026 05:52:03 +0300, Igor Velkov wrote:
> The Helios64 front panel has Power and Recovery buttons. Power is
> wired to GPIO0_A5 and Recovery to SARADC channel 1. The board also
> routes a User1 button signal to GPIO0_A3 on front panel header P3.
> 
> Describe Power and User1 as gpio-keys and Recovery as adc-keys.
> The SARADC reference is the 1V8_S3 rail from RK808 LDO_REG3, so add
> that regulator.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Add buttons to Kobol Helios64
      commit: 1e0a0365c73177d55365cdde3a1a179b4897a77b

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
