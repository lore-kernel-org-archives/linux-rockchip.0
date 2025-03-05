Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18247C282D9
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Mar 2025 10:38:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MfuDdIPXGeMzuXSrq1ApqE7ygP31TWLg0H4M9hASNoE=; b=IHL8A0cdSLJ1S3
	uCntgC12LaB/ldAZv8fFIlISgOboHz3I14AsSUT/VSic0JvLmBY/ctCb1OvqkCOkCo3dR4w0QPWYI
	+C1Svn3iMulBSvqy306hU4hazcv65CIWg/X/QlLtWbe6FjGwuJejGZovxXtyBo/wyGGd6DL0g91GO
	r0AUk03LYYblutS2GHjZ9ITlTjqKEbpBpQxFHku5Dc45M42jd+YOJFdc7snTNdYnp6MzqGPjNGF7f
	gq45PIcNrvJ/ySQjqzUTTswuTcqLqZegkSbjQLvgaAILl8Sv9K4ZMKRKxi1Cjy+Qf3eM2+Ds/VUfh
	4nIlGPkutSSLgb2gcksw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpm9H-00000007iQ6-33wQ;
	Wed, 05 Mar 2025 10:38:47 +0000
Received: from mail-m49197.qiye.163.com ([45.254.49.197])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tplcx-00000007c3q-2ZbZ;
	Wed, 05 Mar 2025 10:05:25 +0000
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c02:1dd0:9019:911e:6b73:1fea])
	by smtp.qiye.163.com (Hmail) with ESMTP id d05d5703;
	Wed, 5 Mar 2025 18:00:17 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: ziyao@disroot.org
Subject: Re: [PATCH 6/8] clk: rockchip: rk3528: Add SD/SDIO tuning clocks in GRF region
Date: Wed,  5 Mar 2025 18:00:15 +0800
Message-Id: <20250305100015.1353849-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250301104724.36399-1-ziyao@disroot.org>
References: <20250301104724.36399-1-ziyao@disroot.org>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDQk9OVkhKGk5KHUtDSRoZQ1YeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlJT0seQUgZSEFJGEtJQUofH0tBQktKQkFCSkoeQU0ZTEhBSh0eGllXWRYaDx
	IVHRRZQVlPS0hVSktISk5MTlVKS0tVSkJLS1kG
X-HM-Tid: 0a9565bfb64d03a2kunmd05d5703
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MBg6Pyo4FTIBFDg2NC4pMhIS
	SxAaCR1VSlVKTE9KSk1DQ0pDTE1KVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS0lBSh8fS0FCS0pCQUJKSh5BTRlMSEFKHR4aWVdZCAFZQUxNTzcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_020523_816339_AA2F29CD 
X-CRM114-Status: UNSURE (   5.13  )
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
Cc: detlev.casanova@collabora.com, conor+dt@kernel.org, heiko@sntech.de, jonas@kwiboo.se, linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Chukun Pan <amadeus@jmu.edu.cn>, krzk+dt@kernel.org, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

> +	nr_clks = rockchip_clk_find_max_clk_id(rk3528_clk_branches,
> +					       nr_branches) + 1;
> +
> +	vo_grf = syscon_regmap_lookup_by_compatible("rockchip,rk3528-vo-grf");
> +	if (!IS_ERR(vo_grf))
> +		nr_clks = MAX(rockchip_clk_find_max_clk_id(rk3528_vo_clk_branches,
> +							   nr_vo_branches) + 1,

drivers/clk/rockchip/clk-rk3528.c: In function 'clk_rk3528_probe':
drivers/clk/rockchip/clk-rk3528.c:1105:27: error: implicit declaration of function 'MAX'; did you mean 'MUX'?
 1105 |                 nr_clks = MAX(rockchip_clk_find_max_clk_id(rk3528_vo_clk_branches,
      |                           ^~~
      |                           MUX

It seems that missing definition with older kernels.

Thanks,
Chukun

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
