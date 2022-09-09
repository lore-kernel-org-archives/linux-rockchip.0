Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6B24ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Sep 2022 23:11:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=99Jc3l6GUhp1b1ummmFg+bIvHJC3BIoQhDGSLmqq8kc=; b=rl6vsZ8H6OI3Bf
	3C5T6TwDBB+rrebyxiOwNOB6DlN1AaUfOIIzHJSV/qWPM5QIERRqTlhJJ1nHSQ0TSq1HQyBhDiU8z
	mSU8foqW0u9Pr9KCnkMykUHwbo5uRG0mzCJY5tR18FXuhUYLLWVBcvyE8R9JEPEGdN8fp/8wmqoAh
	eZZFj5IEwbWUO7LEReeH8g0zAKk2fsqN8YoyM4Rb+TC06CNH48Y/Hp4A7mui33G8H6Rlp6xRH7AV4
	CjWthVZ0dfzrUWmutQOQ1KTPSj0VM5GXJo7hRHTj+G4x1kWngHQZzeu7azgZPeuPDSDlHbkP5248O
	CZyZVRkSLwkAJDMheEKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWn9t-003iPm-BS; Fri, 09 Sep 2022 23:11:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWn9X-003iGz-5b; Fri, 09 Sep 2022 23:11:16 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oWn9K-0000Qa-1p; Sat, 10 Sep 2022 01:11:02 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	netdev@vger.kernel.org,
	pabeni@redhat.com,
	kuba@kernel.org,
	davem@davemloft.net,
	linux-rockchip@lists.infradead.org,
	edumazet@google.com,
	linux-arm-kernel@lists.infradead.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org
Subject: Re: (subset) [PATCH v2 1/3] dt-bindings: net: convert emac_rockchip.txt to YAML
Date: Sat, 10 Sep 2022 01:10:56 +0200
Message-Id: <166276502653.27767.6801437957827321608.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220603163539.537-1-jbx6244@gmail.com>
References: <20220603163539.537-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_161115_229786_D29425B2 
X-CRM114-Status: UNSURE (   8.49  )
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

On Fri, 3 Jun 2022 18:35:37 +0200, Johan Jonker wrote:
> Convert emac_rockchip.txt to YAML.
> 
> Changes against original bindings:
>   Add mdio sub node.
>   Add extra clock for rk3036

Applied, thanks!

[2/3] ARM: dts: rockchip: fix rk3036 emac node compatible string
      commit: d28b680a34948d7634b824b1fc7546e9dc8422fb
[3/3] ARM: dts: rockchip: restyle emac nodes
      commit: 1dabb74971b38d966ecef566bafddc4a34f4db9d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
