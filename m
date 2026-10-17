Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E30DCCCA463
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Oct 2026 03:43:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Message-ID:Date:
	Mime-Version:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C8/McqJmMQMRi/ruWpsMTjL0YM7jHvAA/DSbdagon6M=; b=htPheTrLH+bIyV
	t/GP5h8rtLTjiHU1eow4sfgxN6yQk1mhTRYc+mTUQqVMBtdriztyCJrz5fZ4T+Lin84SPoCSawmBH
	Va4mnnoF1TEgyYI8JmkkFfvIBy8URH0yTPAiaU6VTMg/ofAAGhBZikeVfJrymunMfEuZCMjEFZobe
	BwrB0i0FOoSou+0kHRvaAAXvHUD9sY5RVJ515+VhX9WYJAuLXMzmR+tEsjEokpfKW/De4XvOoMwhP
	ZZt9DNXxUwEg3024xTq0kCVMhNqYYYyBq2iJJGl/Cz6tLRRP5bRS3K3WlfuT2pgwpIl1whxy5ilbi
	kIBowUIHq1GGeff8L17Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHvK5-00000004OC3-2ipg;
	Sat, 17 Oct 2026 03:43:05 +0000
Received: from out162-62-57-49.mail.qq.com ([162.62.57.49])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHvK0-00000004OBU-3YBY;
	Sat, 17 Oct 2026 03:43:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1792208576; bh=IJerTsz81r38Lu15HZf4hJIHhOGCfMms4JugNb/dsME=;
	h=From:To:Cc:Subject:Date:References:In-Reply-To;
	b=iZ1WZnvmP0UgbKX1bbGEoK0kDWP0HZlrhxOdMjhEVR04MC9vqi/sL5AAU30DGjHWh
	 6Byp6bVZs1MHaK/d7EpzZ1M5y773BPRmPFST6s4gTC5XeMiOz7l70UZfoeSwg9S/Gi
	 YNfWla7RIXeiQRA0AyKAeRwpUJJdUx7zj6sCNKTY=
X-QQ-XMRINFO: M/715EihBoGS47X28/vv4NpnfpeBLnr4Qg==
X-QQ-XMAILINFO: NSJPTvnisrLj8wYCImFMHtnbfUIUrHAx6PvluKs+g2oQLbqcVRcJSfuBcVZi8A
	 3S6K3AJ9XY2PBPtPafsNigyty01JlIh2DiQMP98xjjHKxjVA8y5pEblgtwz6GTPTZFYvn2bb8lUiN
	 g4xxRhYyddD2rWNTWI6TUACh7LGt4SGvSbku3uIx5Q1JPDwIIcBV8+L976Xz7pK0I3T996x+CVOQr
	 Bb7bBr/HVOFxxCxyTMMSOIUGHLz7Q0EtewJolS4d8Ac41C34TlZjhrhtN8bxNtNywy1ujMMkkd4JV
	 //s4b79C/ScJapoenMUcTRvmm5b6DxMZDQ/szS4Re9YHWPzB6j2OEpLTPlSqR7FglFRWIK//JF2p6
	 jml3tYO26gzphLflxNyaYTNseBMSxwtr8wbTYByithwGVxUTamUlzVIcPSagPMx5Q6QRMCFERKGEE
	 MTreGbpNuxEqUhFJMu1T+RHZwe1So6h8oAvZAPTsNWuNHdMNcTYlNXOLUMAYD9FOhQmUlwrCuJ8QB
	 G9B0e9YH0pm3IC6bwbHwOcFXpywq5vfzQHvlIa17hYK0JTCaC0W++DPbqYbLL3HNe6nuwU/tha+dQ
	 Z9dgkn19JoNSDlGi47qwHjW3xcf5lKKUntMT2sZ7zeqKbsa9XBXZFd4/JE2WYW+26Mg4UV3t8k6wv
	 aYnp6IsSbIi2ZzrBjMTRVlzFizRDP59yOMTgobaMYTSyRGKf/i09sMleXrUOZjntzRJiNN5E5F/yV
	 1ReCXSUXlFn+Ptyx9qP2+Sb2oFz/IlkXZUHGKs9v9Q8H7yursXo8+4D5UejOjKwA4vcNBC90i4pm7
	 0LG/s2fVZLNbQmhCqAPpl8hRlf2Qgizd0CMXHTbJ7pxZNL+nsuaWbbvPnD7WsV3Blt3k9lwmqZoDf
	 3JJsKqzVXNKR179r78Q65DqDmyWasLoL0Qsfg1Pkb1UWVuEksPTwsysie8uUUDZ3/iyF3u7KuefqD
	 +sJaoYck9ZBN8HddAngnVvWDcNASOlttI5O47dfhlCTNm+8XnegR6fGVxdtjL2owdG60nBoMg+2S4
	 Q90dze2izJJyTcefwhAFzVdWYlpmm3zCYh24kmnmFiEs2A/8Ik+WjecL0nrIRhGW7cK8S
From: "=?utf-8?B?Q3VuaGFvIEx1?=" <1579567540@qq.com>
To: "=?utf-8?B?bmV0ZGV2LWJvdCtzYXNoaWtv?=" <netdev-bot+sashiko@kernel.org>
Cc: "=?utf-8?B?bWts?=" <mkl@pengutronix.de>, "=?utf-8?B?bWFpbGhvbA==?=" <mailhol@kernel.org>, "=?utf-8?B?aGVpa28=?=" <heiko@sntech.de>, "=?utf-8?B?ZGF2ZW0=?=" <davem@davemloft.net>, "=?utf-8?B?d2c=?=" <wg@grandegger.com>, "=?utf-8?B?c29ja2V0Y2Fu?=" <socketcan@hartkopp.net>, "=?utf-8?B?a2VybmVs?=" <kernel@pengutronix.de>, "=?utf-8?B?bGludXgtY2Fu?=" <linux-can@vger.kernel.org>, "=?utf-8?B?bGludXgta2VybmVs?=" <linux-kernel@vger.kernel.org>, "=?utf-8?B?bGludXgtYXJtLWtlcm5lbA==?=" <linux-arm-kernel@lists.infradead.org>, "=?utf-8?B?bGludXgtcm9ja2NoaXA=?=" <linux-rockchip@lists.infradead.org>, "=?utf-8?B?c3RhYmxl?=" <stable@vger.kernel.org>, "=?utf-8?B?a3ViYQ==?=" <kuba@kernel.org>
Subject: Re: [PATCH net v5 2/6] can: dev: add close_candev_cancel_restart_sync()
Mime-Version: 1.0
Date: Sat, 17 Oct 2026 11:42:53 +0800
X-Priority: 3
Message-ID: <tencent_BCC00222B29F6013030D8F0C6C02DEC84E06@qq.com>
X-QQ-MIME: TCMime 1.0 by Tencent
X-Mailer: QQMail 2.x
X-QQ-Mailer: QQMail 2.x
References: <20261015-rockchip-canfd-restart-close-v5-2-ae77327037c9@qq.com>
	<179219884300.1406898.17794218418731765550@kernel.org>
In-Reply-To: <179219884300.1406898.17794218418731765550@kernel.org>
X-QQ-mid: xmsezb41-0t1792208573tmm7xzz68
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_204301_448182_A980DB83 
X-CRM114-Status: GOOD (  15.89  )
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

Hi,

> [Severity: Low]
> This isn't a bug, but could the commit message say why this is going to
> stable?
>
> On its own, the patch is a no-op refactor of close_candev() plus a new
> helper. It has no Fixes: tag and no "# prerequisite for ..." annotation.

This patch is a prerequisite for the next patch, "can: rockchip_canfd:
cancel bus-off restart before closing the device".

> [Severity: Low]
> In this patch, the only caller of close_candev_cancel_restart_sync() is
> close_candev() in drivers/net/can/dev/dev.c, and that conversion keeps
> the old behaviour. As a result, no driver's ndo_stop gets the early
> cancellation that the commit message describes.
> ...
> Could the commit message mention that user, so the helper doesn't look
> unused when this patch is reviewed alone?

Yes. The following Rockchip patch is the intended user. The current
commit message explains why drivers need the helper, but does not
explicitly name that user. The conversion of close_candev() intentionally
preserves its existing behaviour.

If v6 is needed, I will update the commit message to clarify this.

Regards,
Cunhao Lu
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
