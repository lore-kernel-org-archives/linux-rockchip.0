Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 846E5D26D9C
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Jan 2026 20:03:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uD7e3QQAumqa0fecQV4Zjzrzg/Jn79jP2SxSKc7Qce0=; b=oAxzLzIMwhfhyY
	BH6rgZdvPwKs78TIBP5fDbjElNJ0DnJWJFEHHjV32Nju+GRPAQ19czeWuS1U0LXbl37UbVLWbEBKA
	PRNfgc6zIiiyeVVo68/xC95QXE1rnX6UANcixQ3sApJuvBilMdZWELZresNQ8gS0zV51wDkbz6M/p
	Q1XPwkPlGm2DyBoICiwi31ZpTj6pdVkGbk86+oAEmKahi+Z0dZMccSiU1jQSX0saDSk92jpJ28Fzr
	wfREQTX0WOQ4f+ovNzJyRbX4W653/vjRLPxtsgKjBlHHKuqZvqsPNg5qJqQWXr+sANpV0jQ3ll+iw
	O9TePJfd+CIKak0T6Fqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veIhP-00000002yaD-3fj8;
	Fri, 09 Jan 2026 20:03:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veIhN-00000002yZj-03rA;
	Fri, 09 Jan 2026 20:03:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=QIt8py9lcxC79AmMPcNOsD+iHnc6c89XW5lXglpgyC4=; b=hA97cqZ5zaXi80g11ILgwcHQc1
	Qrb9lT40y4ssfXMj9mKhU8n3PMHYUiHcQ51oMJiXOj4aGFqFvs7C8Mp0xK8tB2SgZvgE5sgeWCRGk
	OSsGWU1YF+YVBPko6w3IOGjM5dNRrr+Cp6cVw7071+PFizcZacNKZdurdHggyZMyckswdNcJG3+af
	zu4iUGlugiRfG4Ks6r1Eas9M+Gz0O0hNEvLHiID8kSWB7rA0+xkVzDAuY3f9T2npiK1sKpCKP32cH
	DTzlMhja1A/+fq2I+8WpOtc7PiW5zEoloPm6/89vRPxZE7ufgDOt9drMh40P0ysfz75aaPVyW2BrD
	ZG8GqbLA==;
Received: from [192.76.154.230] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1veIh1-001fy0-13; Fri, 09 Jan 2026 21:02:43 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-kernel@vger.kernel.org,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: Re: [PATCH v3 0/2] arm64: dts: rockchip: Add vdpu 381 and 383 nodes
Date: Fri,  9 Jan 2026 21:02:40 +0100
Message-ID: <176798895637.3449720.6051032825613833368.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251020212009.8852-1-detlev.casanova@collabora.com>
References: <20251020212009.8852-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_120305_111057_0C0A5C12 
X-CRM114-Status: GOOD (  13.23  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>, Kever Yang <kever.yang@rock-chips.com>, Chukun Pan <amadeus@jmu.edu.cn>, Alexander Shiyan <eagle.alexander923@gmail.com>, kernel@collabora.com, Dragan Simic <dsimic@manjaro.org>, Rob Herring <robh@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Damon Ding <damon.ding@rock-chips.com>, Chris Morgan <macromorgan@hotmail.com>, linux-arm-kernel@lists.infradead.org, Patrick Wildt <patrick@blueri.se>, Alexey Charkov <alchark@gmail.com>, Diederik de Haas <didi.debian@cknow.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Tomeu Vizoso <tomeu@tomeuvizoso.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Mon, 20 Oct 2025 17:20:07 -0400, Detlev Casanova wrote:
> Add the nodes for vdpu 381 and 383, respectively RK3588 and RK3576.
> To keep compatibility with older variants, the reg ranges order is not
> in register order so that the function reg range is kept first.
> 
> Also adds the corresponding iommu nodes.
> 
> Note that on RK3588, both cores are added as it represents the hardware,
> but the driver, later will only register the first one.
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: Add the vdpu381 Video Decoders on RK3588
      commit: f61731bd60627b129b688c2d7b2071a5fe7f01d7
[2/2] arm64: dts: rockchip: Add the vdpu383 Video Decoder on rk3576
      commit: da0de806d8b46238ac3891a894806da4d1c26cdf

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
