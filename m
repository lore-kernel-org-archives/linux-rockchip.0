Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 126C2C5B557
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 15:43:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DxO9WYfNQeADtAuSIOl35bgXS5zR+m4/9NkQ/+T7YkI=; b=mUSqJSE7QvlMdo
	IPSCGh4q1fjmZhHk4ZWX8t+Bh9brxM0FnyzLgxOP2/5fXYRpw6ZBDGBtkJtwpVWa+jGdgsbDTZXtb
	Zq121xGQ/hrHVrPPkctV0mlR9BQzMZbGkQNu1w9ppmGv/PXhqn+C/04dWi2tI9dUn4r2SeSr+bFbW
	H6HW5A1Pktzz8n72D18c1b7XMX8xPwDnkXzsebUaNgDEhGgL2RrNkOCvFVVuUsj3yfpp7DfDcWwX6
	59m5lfCLaN7APXWegfzv2I90bv+IvalvpZLkNbbCS/ajT9ZRrKy6NC9Fvvr+68Md1wpQFGuOQWe/D
	zUucTj6p1V7v7Ey/nM8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKp9-0000000G1mT-0Z7Q;
	Wed, 28 Aug 2024 15:43:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKNj-0000000Fv6H-206u;
	Wed, 28 Aug 2024 15:14:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=CaMto9+ekOB1e7eQ23ls3XbcJMytz0kzG4RJf+yXRwg=; b=AY8RAbwZ1O5HI6LmpZdFNSlLyv
	p/dGW/au1byDBnKwHyXt65zOz/e5TolgDqp4uD6jTc6Or8WIYpgyVCczAL0hnSxBHXjZeOhl8m4pM
	JB8y2rRHD9mpkZW8nUOFZp5yTPelxoAVycXamqLUq2bjYvN7iQXweEUh3Fzl9VZ5YK84jfNe0ENb/
	j1Ob9lbz6kqBMK41odJkq9aC/2iJtTPwmfndGpjixdRST9aMPfCkZY+fBY1O+lilk5zNppq6HVY31
	0Mk0WidVJZsw0JOFjj2llR1JUS/4/Jewe4i+mS5IiA9dEdKTT6aN93UDo6GGcDWdlY1RySvbKiz2k
	Ql1nF7jw==;
Received: from i5e8616cd.versanet.de ([94.134.22.205] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sjKNF-00065f-SK; Wed, 28 Aug 2024 17:14:17 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Junhao Xie <bigfoot@classfun.cn>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-rockchip@lists.infradead.org
Subject: Re: (subset) [PATCH 0/3] Add support for LCKFB Taishan Pi RK3566
Date: Wed, 28 Aug 2024 17:14:10 +0200
Message-ID: <172485421376.1511809.9579701048070229226.b4-ty@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240826044530.726458-1-bigfoot@classfun.cn>
References: <20240826044530.726458-1-bigfoot@classfun.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_081447_532166_185577AB 
X-CRM114-Status: GOOD (  10.66  )
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

On Mon, 26 Aug 2024 12:44:10 +0800, Junhao Xie wrote:
> LCKFB Taishan Pi is a SBC based on the RK3566 SoC.
> 
> This series bring support for:
> * UART
> * RGB LED
> * AP6212 WiFi
> * AP6212 Bluetooth
> * SD Card
> * eMMC
> * HDMI
> * Mali GPU
> * USB Type-C
> * USB Type-A
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: vendor-prefixes: Add Shenzhen JLC Technology Group LCKFB
      commit: d6ec4fefbe9eac0363e9d05c05010686d6790428
[2/3] dt-bindings: arm: rockchip: Add LCKFB Taishan Pi RK3566
      commit: 4d4b28ba3a0f84f641febc9de4252ba0bad2238d

Patch 3/3 was sent as a v2 separately in
https://lore.kernel.org/linux-rockchip/20240826110300.735350-1-bigfoot@classfun.cn/T/#u

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
