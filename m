Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55708E77197
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jan 2025 17:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gWCj757s52k6UNpPNn4ngV0C+ffEigFqUuypPPlEe38=; b=Zlber633N9jMz4
	W3BqQ1RCRYRhihEFaAqKPf5mNpLDerXrLSa2LUtljedeQ701cicX3HLKA1ejNeBLLueC7dbl7SVsE
	1Nw/1gTGUSM/JbytXgkTXD7Fa9Q+ugATQRfoXYGjSOLqBfTSp55CurK2hNs1aPaoAWcSmp3MeZ6Pm
	Www1bWN2OykbL9fNnK8k8FCj9ttniy3L8Bmw5lRMrxP/EHCKynTrOyRbpqLmtmD7CidiPQAOjCoIe
	GRHVNfJNXPGGXSxONnrr84llmElF7folePCY0ehLcF0cIXhNQw4M7WtspPlrQtGSjH0Rc0Mm2oy5n
	u2moZFBLWJXs7/BfbUOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVvvz-0000000CmLx-0Wy6;
	Thu, 09 Jan 2025 17:03:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVvp4-0000000Cl8C-1Y7L
	for linux-rockchip@bombadil.infradead.org;
	Thu, 09 Jan 2025 16:55:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=yG1bQCbW33R256XkWNU4fJepnPv28LylkVyxqX0Jz9E=; b=fT0VKITw7zhCf0pw0I+Ca6mVi4
	Mdf1H3XYPzxRvbDUnPVwDwfrNt2to2C8nsCjG0CdbzsDyuy+J2W4A/x6AFYNJDF2JniG4Iz3TaJHK
	Un736ljHNQDmlfy4oiIn26Xb075Br/1WwIl0lBtYicvA2A634UcLSLrT8rpqSgOlhn/LqYD4JvEEi
	2l9P9cnEDK+ufbrf0nzZF6eA8Q8v+DZyxqgYlmzTL1u7VXKz5/4gmlCimLC2ZpvOjBiDa0ayjX9aY
	/QfPx533gKYbB0GUVa/zPtqVKnrNxHVwwMxnGewy0QKzfGc/bedXmyiDIR+zaJ5I91bzMHOpFI0SG
	9z4vJvHw==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVvov-00000009bv0-3new
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Jan 2025 16:55:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=yG1bQCbW33R256XkWNU4fJepnPv28LylkVyxqX0Jz9E=; b=ALA+qVOYXRcMdnZ9WJcVHI/pdj
	mUuifzN0CluQdS4IaG76LIDPyrepX0z41bDX3x7oz66Ae11H3PO1ZvvDhtTyquuF4oGX4RbvdBD7s
	riGFg7rZa7Y6LWQGtTXK1FJ+GNgGPdn30pt+ms2t20lUjVq8zHIyFh7WpS5jbejJqA7pJvptC0oXR
	It8AaQNL9+bFhh9AOuir5B0Bq8gsDmYN3YRmODlHMt1IquRM8IXs4fbcfdZr2e4MQtVd7vgLgWnp8
	19v/k88JRr4F0xpzaINi1MlvgDXP95FMfGY0wlDL8VPFQmxz+pdJnRveV3OOJjcXIaNUO9Ggx0sNp
	SVJ+hQQA==;
Received: from i5e860d05.versanet.de ([94.134.13.5] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tVvoj-0003hx-RU; Thu, 09 Jan 2025 17:55:33 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-clk@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	huangtao@rock-chips.com,
	andy.yan@rock-chips.com,
	Michal Tomek <mtdev79b@gmail.com>,
	Ilya K <me@0upti.me>,
	Chad LeClair <leclair@gmail.com>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com
Subject: Re: [PATCH v12 0/5] rockchip: clk: add GATE_LINK support
Date: Thu,  9 Jan 2025 17:55:20 +0100
Message-ID: <173644170626.2899934.2363636508136913470.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241211165957.94922-1-sebastian.reichel@collabora.com>
References: <20241211165957.94922-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_165551_343731_D8B51A0E 
X-CRM114-Status: GOOD (  13.42  )
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


On Wed, 11 Dec 2024 17:58:49 +0100, Sebastian Reichel wrote:
> This implements proper GATE_LINK support following the suggestion from Stephen
> Boyd to use clk PM operations by creating MFD dynamically. This required some
> restructuring, since CLK_OF_DECLARE() is called before devices are available.
> 
> Apart from improved power consumption, this fixes the runtime errors from the
> pmdomain driver (failed to set idle on domain '%s'). Last but not least it is
> a first step towards reducing usage of CLK_OF_DECLARE_DRIVER() registered
> clocks, which should only be used for early clocks needed for the system
> timer (see this talk from LPC: https://www.youtube.com/watch?v=dofbbVuIAPk ).
> 
> [...]

Applied, thanks!

[1/5] clk: rockchip: support clocks registered late
      commit: 9e89f02da718bc912f7f253b58804d4a52efed30
[2/5] clk: rockchip: rk3588: register GATE_LINK later
      commit: 33af96244a66f855baa43d424844bb437c79c30c
[3/5] clk: rockchip: expose rockchip_clk_set_lookup
      commit: fe0fb6675fa48cade97d8bcd46226479c4a704df
[4/5] clk: rockchip: implement linked gate clock support
      commit: c62fa612cfa66ab58ab215e5afc95c43c613b513
[5/5] clk: rockchip: rk3588: drop RK3588_LINKED_CLK
      commit: e9cdd7d6cf2a5031a968dc21f4f566101b602150

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
