Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94B82CD6E56
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jun 2026 10:20:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dy4nD9EDtpQDNWyk9I4hIfiqVK9zxI0WmNgIaQUKBp4=; b=4w2K3q3qfXfgvG
	587ZNdS4p0l2B6UnFARgesNPIN/awXodAP+n+kICDAqzY6K1iVsCMCwJVaayITq7AYJrkclC+xInq
	x6NcyDFSVBvGNEfHsws+MCz1SRFch2ch6UOb/kabKAJYMGoYHg9QjmjVaAUb2x2j4I9TjTuMzOrIi
	r3wdysK+C4G6i/v979mToUueMsuJ2AK8KUq9r/luHjsk5OVmdKxvxNsPWZngNHmTZMl7gU/Q0mnwZ
	ITSIyr+joC2BGXHHfeKfmtwawP6pzmYsRkPJqJoWR1Bg6QBFbFE9EBL2hlxEzC/hI7SYrUYJgmk9w
	kz2HUYw9g7x8T5dwJNLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTzkl-0000000AbCm-0xXS;
	Mon, 01 Jun 2026 10:20:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTzkj-0000000AbBO-1KQp
	for linux-rockchip@lists.infradead.org;
	Mon, 01 Jun 2026 10:20:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Ymdp0u8WnwkjibvzQW9yDlLGcMsLPc+DPfNnEXlgKh0=; b=mMluCEb/t9fJDBmNSQDID2jhCw
	jDc5idq8o1U4CCPA0AD8cpbe73O/uq9yXuOzBCvOZTawrYjXx5CQ2GlO+CsKo/smYVB87ELdo1VXx
	ux8yuWRx7NK5PzjfBxGzQnTTfewtyzk7NtU2EX0citzDgC7RoL+hPWrBBWf9B5z877LO69IB7X4Hj
	5LfIUq8fmhlrHuE7yNbZFoR8+9ApnSpRZp0IGyRI5K4A7v2iRHSv4ZX/w9IosT9czx3lFyofKBEKD
	nY86gGfDCkYQUrciodadbGhjKazGooqMQyNedrYE5cAfWu1+M9FavssAp31IQ2AqWSz1l6jfQGF9u
	jOk1JFcw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Chen-Yu Tsai <wens@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: rk3399-nanopi-r4s-enterprise: Fix EEPROM compatible
Date: Mon,  1 Jun 2026 12:20:03 +0200
Message-ID: <178030918399.239725.16965452923012750982.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260505165244.1902-1-wens@kernel.org>
References: <20260505165244.1902-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_032013_382582_0345414E 
X-CRM114-Status: GOOD (  11.84  )
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


On Wed, 06 May 2026 00:52:43 +0800, Chen-Yu Tsai wrote:
> The EEPROM used on the R4S (enterprise) is the 24AA025E48T-I/OT from
> MicroChip. This is a 2-Kbit EEPROM with 16-byte page size. The latter
> half of the EEPROM is read-only, and the last 48 bits contain a globally
> unique MAC address. That is to say this is not an ordinary EEPROM.
> 
> The compatible for this type of EEPROM was introduced later that the
> board. Switch over to the correct compatible now that it is available.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: rk3399-nanopi-r4s-enterprise: Fix EEPROM compatible
      commit: ab1375e25ea3fef62a4a5a93abf5d03d67aaf99c

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
