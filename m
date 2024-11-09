Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20A35D5E379
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Nov 2024 18:38:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NJAt4V3ujqOodoMuYrq6R0xVFhQAPgML93AFO0f7yCI=; b=p/lLRW0nAWEtcR
	yzKcw4VKc0E7IIuDsrhIkVh9eDV6V+2Z8b14CvXq8qJIYEzp6cbf7Obve6DgcaujZFmOPckGtZ3/Y
	ufsRUbASCqGnaQ/oiKX3iaa9Iwwyk/TbbHIS65tcWCl4JyEaTRHp84kTgin9CdTrL6xM6+72Dg8s/
	Sbh+eGwAzy14Obs5rjLa7JVFRtFFhXHcUVMiu9NFO0WuifkPganFQKYclhmKp8MmOtFnOSI1dEU55
	rJEU/yuhEKzti5WDA0cUsvRItcXNHhzPWJIby347RhCYsVXVx/+XMmuxzuq8LOsfgJ0HpaWQjcLVf
	5Cgo9rYgODMWEJiitAFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9qLh-0000000Dp5q-3W3k;
	Sat, 09 Nov 2024 18:38:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9qBO-0000000Dnft-0CNP;
	Sat, 09 Nov 2024 18:27:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=FgIG6VFXhAny1bqWlSHICx+VLNUGSni3L7C8KK4UjRI=; b=AfL4v7pR1ibSLkCxVQqYpbITpf
	S6i/UZysRmfKiWFA6fW4aCKMCDlR/xgKDUT/B2Bk28lLlb2yPb2gT3OHIhAKYNL38MSGrmJInbah4
	+hH9J88yuO/6B1aJCIR5NcQEU45T6BIMilL1WgrRKUXA4RrwvMIaWd8/J8DaP7e7MyB7XBXYcfABd
	oine8eRjcX1EXKKHNbcTuNoktnUqvlIeW07PAo5NixZcnmG9XTaj96iX84B3TGQafkOnJmaIPyqSU
	5rDZ9jzqKhTzc9YF/VA9z3adRikhCke0kdzhCdLc/yJEZ8eHjEiSythbE70UOuHtwKP4d1+Z38xWQ
	EuWldHwQ==;
Received: from i53875b28.versanet.de ([83.135.91.40] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t9qBI-0007Km-VB; Sat, 09 Nov 2024 19:27:33 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Enable HDMI0 on FriendlyElec CM3588 NAS
Date: Sat,  9 Nov 2024 19:27:15 +0100
Message-ID: <173117675954.1131306.10474212584108457519.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241108171423.835496-1-jonas@kwiboo.se>
References: <20241108171423.835496-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241109_102738_107566_4CEF0621 
X-CRM114-Status: UNSURE (   9.09  )
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

On Fri, 8 Nov 2024 17:14:19 +0000, Jonas Karlman wrote:
> Add the necessary DT changes to enable HDMI0 on FriendlyElec CM3588 NAS.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable HDMI0 on FriendlyElec CM3588 NAS
      commit: 6f846fe4d07a1b16e769754c5101c2e5a039d729

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
