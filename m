Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2ECA9C77B76
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Apr 2023 09:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RfkGbQXX7J5B9rm19W0VL2p+BuKHRNp/uiKzS0VHt4s=; b=byYZJeK07y6kph
	ywlGcf6k3g0IXhpe6M4s/fcbpfOwrDXJ6mTBA5qbQ7XBCce5D2Gm5hENBdiXYdjONaBd4w1Lnqpw7
	gw2jpoWt8Wiyc8mJvsuJqWxPCmAw4TgVQdKyh5iSNYcnW3ojmQupBXWj1oJ/izCJiHe7SJ+REs+GL
	YV8D3tjxFQbN62AwXuNnkNuuWXOtsdwJQ/WEor5f9EwZB/55XANvccX5dlNkcO+ITu31Ao+doWxQA
	NnAyEtLYHkXNFg2x8BsXJpyCXxsAd+8slBURXJ+CuGIRgzqIwMsYiHqqxhjoSYrU5Zj6bpRDm+kFg
	KSY1hPMmrK2+PQ6OnZwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmt3z-005Yqm-2A;
	Thu, 13 Apr 2023 09:16:19 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmt3r-005Yhg-0m;
	Thu, 13 Apr 2023 09:16:13 +0000
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 38488660324E;
	Thu, 13 Apr 2023 10:16:08 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681377369;
	bh=a2I5H+WB1TxkrH1dm3ImGJqhxgziFp5hG0P83Gvt+Uc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Q18crtWI1odfN366x9o53ws3e+MnEQT6FIvedD5i+VWR2vewrdGKlf43dVcGqw04t
	 XznBqqroiZ8YTSeaDFxRrXyyeKj2l/H4y36pduD2W1FtgBxd+W7/CO8aVoEYShCyRm
	 BvOvsQUIiL9KiE+GhwtlXWBrWaSQSGQt7KCxERrPJ7XEwbDa5fOl3PSxo5vay2ETCX
	 u0Trze7n+HKY78/tDkgeuG6wK8PdVACZnnzR2aha9NYcNJP7rQ+Vl1ullBDWQAFngZ
	 Cp/EHk9Xzbgb59oXGVEYYucZK3NLHMLOzA7A0z6OQus8PnSYkQbIeomblE+hRBL3+B
	 t3Rp8qUJKpBaw==
Message-ID: <c0ed53c9-0a52-f4e9-eb37-e4ebfda6e4ed@collabora.com>
Date: Thu, 13 Apr 2023 11:16:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v6 05/13] media: verisilicon: Get bit depth for
 V4L2_PIX_FMT_NV15_4L4
Content-Language: en-US
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 hverkuil-cisco@xs4all.nl, nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20230412115652.403949-1-benjamin.gaignard@collabora.com>
 <20230412115652.403949-6-benjamin.gaignard@collabora.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230412115652.403949-6-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230413_021611_411706_2F6F09F3 
X-CRM114-Status: UNSURE (   6.65  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Il 12/04/23 13:56, Benjamin Gaignard ha scritto:
> Let's the driver knows that V4L2_PIX_FMT_NV15_4L4 is a 10bits
> pixel format.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
