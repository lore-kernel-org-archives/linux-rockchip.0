Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0122EC83F22
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jul 2025 11:08:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M+6l6wWQuJecfz/QIUFxeA7CwedMOoVlCRr9xeRUrNc=; b=aAZsD3hzVpvArm
	aOtgCqIaK/KVIrw9TZIlVwf7eZs3idehWxapgE4zYN4k4zmbM8FsU00T3JxKxeFU+Kl/bl7KIULYW
	7vWzeAPs4LG9mBOhiuPAaAE61Hl1p6kp5PSDIMUZfTZX1qRSQSyNuRupgxFWRb5jfys93L579xCBv
	/5sjcMVmeBIY00RWR8fIQegnuYAoKAAUKehopN+HjYz3ZflxpQdRRMbFLyQDoc2HTl4H7SKfhiR6n
	lJbzFBk1bhXkS6ZrPh60twY11f0UIlW9PR3T3CdopPOpHDqljjT++16fpggNj0MkusYXYsOCAZu4A
	D6XgdIdvHQ3e79XLnOUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZp8j-0000000BaOr-2hDO;
	Thu, 10 Jul 2025 11:08:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZnYs-0000000BLB7-2OaY;
	Thu, 10 Jul 2025 09:27:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=IhhcCDU+2ooKNbUhegC94na+OdnsS3UuZ3bz8FOZEF8=; b=snosT+UKyAII2Wc7nTc8MNpVF+
	mIqgSSwuyse452MxgLHuEYo6EpYzZGUCDYNwtOstxDYEL+JeBarSYsVxIJ9IVtWJE72YotLOfmcTU
	lnZUNSkLnYQfKdkQzjibOFgi6kfAXkaABJbjicp4dgEAwinOduDwRW8ABOWolxutbuNz0diiD+2Oo
	SugXN+6RGtNe9l8c+A47FfTIgVvcmjYtcoBeX8qIv6NbGz2bXmJaxuOEdluOk6F5fCEUZVr7gQtkP
	MTCHC3kTVeTTDKBljl9wqeW0dpANWmvklpV6Q/HkZOT7U5WaImyhB5q+35uhjYPDbkYvBgnAq7CMB
	81Elml5A==;
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uZnYo-0003fo-Q8; Thu, 10 Jul 2025 11:27:22 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Enable HDMI receiver on RK3588 EVB1
Date: Thu, 10 Jul 2025 11:27:17 +0200
Message-ID: <175213962000.1887379.8818372315895664398.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250704-rk3588-evb1-hdmi-rx-v1-1-248315c36ccd@kernel.org>
References: <20250704-rk3588-evb1-hdmi-rx-v1-1-248315c36ccd@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_022726_627536_91E0F7B8 
X-CRM114-Status: UNSURE (   9.98  )
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


On Fri, 04 Jul 2025 19:14:14 +0200, Sebastian Reichel wrote:
> Enable HDMI input port of the RK3588 EVB1.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable HDMI receiver on RK3588 EVB1
      commit: e2fe8ad8f1e62c424b8b73cc89d1bc53d19c41b2

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
