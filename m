Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10F80C77B6C
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Apr 2023 09:16:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6s8IaY45j5XoFmS7aZ01fP0xp2X85QGTCWtS7I9aY1I=; b=FfOD3GmryL/13i
	MKK98NtgmF3kjeft/NomSwOzZQlL6zIMlutgn2MoDFRbMLHQG26wY7HPWciIBJKKkBZRpqmkVFchC
	auwvcviR/QnUCcjYK0CZnzO5rza7hO6bE6WU9sTwT6NtFWlWswHTao2nZf08zbstlEcMoRpNxUXSh
	iJogCG/Bn71LAWXqfiEZN2TBtRRF7/lYhpQILMWybJzyuljYPiO2t3lD5Zwcc9ozoUadi7+JQTq73
	Yd0XlvZEs7UR5OJpekET7d/XAvN6o8OoEmB/5Aaiv2Ni7V0OCRn2NPGKx5XLdnFao2hdzsBEUJ7vS
	BMQoNzKySbPJnqvj366g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmt3r-005Yjm-2Y;
	Thu, 13 Apr 2023 09:16:11 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmt3k-005Yf5-12;
	Thu, 13 Apr 2023 09:16:05 +0000
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 4D6D8660320A;
	Thu, 13 Apr 2023 10:16:02 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681377363;
	bh=LAwn6GIPy68/Ks2VLtbvBxgBI4vsmBbr8RULkvs3h1k=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=a6ARSCDTK9AkZ2qRFLUBtbmCFuXGC/MNrRw5saYrulqSkZQBEZSs2FNh98heBoRIW
	 jMkSD0ZyGU4Mm8tQgLdvhoMj/icqAm4H8hXEjIilP7v/QB5i6kt+sah+eMTNjWWSN1
	 YLkU9HT8Ct1dXXjBUJ8Nzdqx77yhEVC7M4KpGXzT/jtJJytOTvpLI1eVmuirDqkV41
	 Oef9+ZtbUD0eyS6yt6fDXOPe4Cd7n39BxEGIDMMA56jF6lgf6yKPKBLOrhwAg+PjEc
	 1CxvExeA9g7lcxHNHnt2UNdi6GVcwE6L5IufxwYUWMI/zwYZTRm/iTBkWWKtiGOVOf
	 xB9oqmFtN2KwQ==
Message-ID: <0a98a45d-5c5e-c438-2fb9-bd52782b56f1@collabora.com>
Date: Thu, 13 Apr 2023 11:15:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v6 09/13] media: verisilicon: Add AV1 entropy helpers
Content-Language: en-US
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 hverkuil-cisco@xs4all.nl, nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20230412115652.403949-1-benjamin.gaignard@collabora.com>
 <20230412115652.403949-10-benjamin.gaignard@collabora.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230412115652.403949-10-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230413_021604_489529_8B5EFE57 
X-CRM114-Status: UNSURE (   7.35  )
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
> AV1 hardware decoder needs entropy parameters to decode frames.
> They are computed from various arrays defined in AV1 section
> "9.4. Default CDF tables".
> 
> Add helpers functions to init, store and get these parameters.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
