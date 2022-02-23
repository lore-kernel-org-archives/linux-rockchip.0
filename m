Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA459C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Feb 2022 23:45:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rgPwArZwlPd8zAfe2HNzLz+HY1ZdBdyc6kSKq2M6pb4=; b=mpx8iIuy2d6QYI
	lkmyWYFtR/xnQ4Ner7rDd1a0+Apl9NvOM+QQ/casduQ+4lZkA29mQ7mzXFnjGz698swK0Z3Yob1Zy
	nx8zk8+iJJIexlIrmsKzDQkzSnxOynwP7uEOoIKPnJRJvNoeHMLhOb39Qo6ScO6j/5YEBSAiUV6AY
	JvOarDjSlZgDlakUX8no4pXoPs0BJ3tLsz1gCaBNGv27QqveFLUSo6exG9p2tqsFFwUvXtftdrIYf
	FQv/QEeXphIOeq4c3hCIuxUuiOQGZKeFgJ7+0wOWBc/SfiXBQ9aNR4HEfS8BwQIUpJ3GWDs4BNnWH
	ydP0gFCsWSUT3nkXOYWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nN1Jg-00GIXl-PP; Wed, 23 Feb 2022 23:45:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nN1Iw-00GIBo-5d; Wed, 23 Feb 2022 23:44:19 +0000
Received: from [185.156.123.69] (helo=phil.sntech)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nN1Ir-0005mN-E3; Thu, 24 Feb 2022 00:44:13 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com,
	"cgel.zte@gmail.com" <cgel.zte@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, sboyd@kernel.org,
 linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org,
 Minghao Chi <chi.minghao@zte.com.cn>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Zeal Robot <zealci@zte.com.cn>
Subject: Re: [PATCH] clk/rockchip: Use of_device_get_match_data()
Date: Thu, 24 Feb 2022 00:44:07 +0100
Message-Id: <164565984101.1356028.2147177678382522685.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220221020103.1925026-1-chi.minghao@zte.com.cn>
References: <20220221020103.1925026-1-chi.minghao@zte.com.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220223_154418_230192_CD85D7F4 
X-CRM114-Status: UNSURE (   7.83  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Mon, 21 Feb 2022 02:01:03 +0000, cgel.zte@gmail.com wrote:
> Use of_device_get_match_data() to simplify the code.

Applied, thanks!

[1/1] clk/rockchip: Use of_device_get_match_data()
      commit: 9f565399ad0739dbdeac868e40e86e80f54dc77b

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
