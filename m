Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04840C77B76
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Apr 2023 09:16:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3nJscudM+Mtek8v0f8SgwE7/SOo1g8VVcvcsJq3Z/dQ=; b=uqWfohLKCDQU62
	GO0d8P8dMktrQVRjQWUKy0kZ4iMUlgKfSAI2VoBHCbFiM7o4XcHHtM31VPJk5k8Yk31gZAwVQEj0z
	rflFxFSKFOxhfZu5oJu0r8/6R7Q5X5wL0b2xVuhyY86AKs/QkKc+e4RIONDLbRSs8Iv/IVSADqHK8
	k7iY8tFS6nlWRimaLVUyTztEYHLApBEh6Bi2Lnz3FC+TnlEws699GWOY4gt0lwRhFxAVSLEFm1PW7
	SLihI8cJAXbwQVnKhTUTzdwb1i7Z4HvPpG27TVcFwKr1LS+EBDNuTwgafKlNMrhG/lFj3U+ALMdDu
	Ke0uFCpiXwo2AJ/NqnyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmt3u-005YmJ-22;
	Thu, 13 Apr 2023 09:16:14 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmt3m-005YgP-37;
	Thu, 13 Apr 2023 09:16:08 +0000
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 686856603214;
	Thu, 13 Apr 2023 10:16:04 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681377365;
	bh=qah/T196BBIHxHtwXK40dRiVKbEiqh7RkQIU3gbUUsM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Jc1+AQBL2TvYa0Qw4gP+JH+WlYX8F85rIMRgmuIDaHiPogKRrsnjuzp+KDjghSt4W
	 6Uo5CDIsoGkLwEeYUMxOBZF4CkGPt8v7/xe2zJ9y2ALgkGAQ3TyyOvFy1Jo6QCne+r
	 FSDDWAj42ApXQq/Rfc3hlnf2Ku9ioOh1fBf/A7NznDr2EOcAXyXrHYTZ9DLU6N03mj
	 egDDO8IJDViAzItFMFbrtOt02jUrknP9r6pw5h0dxsjy3uKHjo5sdoaC7n8KED3IOa
	 zf/q3DpjWWwDVAFDRNb4FI0tPchaboIXvUFUKLYNyQCtg0S6nRX+n3Us+c0+Cvh/jt
	 2x3Y3vH8HBcPg==
Message-ID: <a4811a5e-704f-6b66-9f1c-3e40f54a462b@collabora.com>
Date: Thu, 13 Apr 2023 11:16:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v6 07/13] media: verisilicon: Check AV1 bitstreams bit
 depth
Content-Language: en-US
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 hverkuil-cisco@xs4all.nl, nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20230412115652.403949-1-benjamin.gaignard@collabora.com>
 <20230412115652.403949-8-benjamin.gaignard@collabora.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230412115652.403949-8-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230413_021607_145574_10646275 
X-CRM114-Status: UNSURE (   7.86  )
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
> The driver supports 8 and 10 bits bitstreams, make sure to discard
> other cases.
> It could happens that userland test if V4L2_CID_STATELESS_AV1_SEQUENCE
> exists without setting bit_depth field in this case use
> HANTRO_DEFAULT_BIT_DEPTH value.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
