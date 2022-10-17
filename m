Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90883C43217
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Oct 2022 12:35:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FqE/RnRdkkaWrqmOLCMWIbzTK8hZGTQWw6oBkkFgKU8=; b=0WAh+1bJaLf5DU
	ah1nHEfoRBqvpy9/H7IL7jRFPjE7diPKVlyV6r5KJbIkG+MR46trVaJ4wM+mszl+TAnEUwKaW4faw
	Wc/X0chhYpehYxSZGF5DR0irS9CfPHZMrvd+BFtNSEFtc01IJL8gv4w+f3AO2tMdUgUL+dCAv253+
	Ps5Fum5G/KO2KO7p88ZW0azqCLwwqwbhrnzDNn990IfvqG1m1zznA9WxWUv7qLgPUuqE851xvmrWc
	1+0rEcFBoq/SHP7Z5BM0GYPtQCdgw6VQ5H534TLTCUVdwwNMWxzkNcikeAQpJ8RB+y+B1mRWAPJ3t
	O/gz49T6gMH6NL+aQJxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okPKU-00BZKo-Ue; Mon, 17 Oct 2022 12:34:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okPKR-00BZIT-41
	for linux-rockchip@lists.infradead.org; Mon, 17 Oct 2022 12:34:49 +0000
Received: from p508fc122.dip0.t-ipconnect.de ([80.143.193.34] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1okPKN-00087p-IN; Mon, 17 Oct 2022 14:34:43 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Furkan Kardame <f.kardame@manjaro.org>,
	pgwipeout@gmail.com
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 0/3] Fixes for rk3566-roc-pc
Date: Mon, 17 Oct 2022 14:34:36 +0200
Message-Id: <166601006783.173248.5194174310242394931.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221010190142.18340-1-f.kardame@manjaro.org>
References: <20221010190142.18340-1-f.kardame@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_053447_182667_87F4390B 
X-CRM114-Status: UNSURE (   8.53  )
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

On Mon, 10 Oct 2022 22:01:39 +0300, Furkan Kardame wrote:
> The following series fixes some of the mistake
> on rk3566-roc-pc dts
> 
> Patch 1 fixes gmac failure when using rgmii-id.
> Patch 2 fixes i2c3 wrongly connected to i2c3m1.
> Patch 3 removes i2c5 as it is owned by hdmi port.
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: Fix gmac failure of rgmii-id
      commit: adbab347ec8861aa80d850693df3cd005ec65a99
[2/3] arm64: dts: rockchip: Fix i2c3 pinctrl
      commit: 2440ad0d851e404adcd1b9ad758f28bd59365bae
[3/3] arm64: dts: rockchip: remove i2c5
      commit: b44bc59d0d279fa4f3dc11b895f2c8f77719885d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
