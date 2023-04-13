Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42178C77B6C
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Apr 2023 09:16:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/isLYh/1vek0Df24bKL9FHJEQAJK0r/dz5K5to9iWLc=; b=GL/nFzZw/WEPBL
	1+W6/EVJhP6wqujhHGlY0jQqPExt6/MYIreGAtMbcqBhSSrlkdTlKg/iNpLe9Dmvj28/aleP+dXj9
	spe6NfYQpFRs1XMtDmiL8y2zk9x+lr1x4J72COYlGkx9YyG+BEic7dy3fKNzoRvuqdxR8MNl8akvd
	b8qX1qoP1PD+XjmCzite1IdgZcrmBSwe2kvP83mh36oCxXDPn8RDKbS6S+AF8RXFmet820T3ophWn
	y81Oj/M7erYfe3keg7JS9g3scB8UdRYT/gHr6Cy2O+6XsoSB9JqzERLPmyYNN/pjZa+Vlmaz2VYq1
	Na/81sTCI8BTQ7aENAsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmt4E-005Z2a-2g;
	Thu, 13 Apr 2023 09:16:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmt40-005YqX-0q;
	Thu, 13 Apr 2023 09:16:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=0qX42aaRF5QaH9aVR4iN1Na2GicabzzQ+b8JxFt8zRE=; b=H2eMQqYt04c4wW8u7DufsBi+jF
	vOCDwu0iWNfKr80GPpGmrUAvTnW/Qdb14XWZbGRHA3vCrT5bx+Wj6jLHWyWCWuLpWEEfqOiiBQZZX
	yFmTXUcMdflmpeZj12mnivn5BTZRBp7ykJDCYurWVEyZakA6a7jbcCOQaKc1dEkJA3h3KxD5sRxex
	XLaF7mjtx0nGMcKEMeIHFi9Mjtkpefdh7XKmjuR0d6jyi4uzyX65357nyHVgf/gA6ZmSI2YcYaPnK
	DJl1bDBXtS06Va7Na3KHslOBhpOp7xg4KifWLX7Jn6XxR1cfFnOafr3ux3QlHh3g7yCUYf5pvmSWj
	29zlKB2Q==;
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmt3v-00Egd1-2j;
	Thu, 13 Apr 2023 09:16:18 +0000
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 0F3806603213;
	Thu, 13 Apr 2023 10:16:12 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681377373;
	bh=AXEfHAa50hQFsZ9kp0B4+Ld46KMnIp44AJm1OzVM7qY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=CGAb7Wqr8RckiqJJ7CBFkyaO2Aq4tSuL4pCcPa922OxrFIlSkbmUsj0C7vxJILYH9
	 a/D4xDkasxzWCXQmy50QTKjy7uJIBBFuxNIipffvIZdNuVyZVv8FrcA6i1ARmC94G6
	 Do2KBU/Wi7lbqmUO1LARKx/pWqcl1xyxpOAwvTMmTutUm249E+swQnVHdbGXndFX9B
	 TwoZfZYwXEBJuq4sB8w/OwoFmGd7kGDWRVyJWDH/LZW9Y4VMWPyKJi/4YLHklC9hF0
	 yE8FlD0ukInzK2gykqQdJ4y9Qe52HuxUz5pDt+gvZGImjtmXfZPmSp7RxNWGI7Mkdi
	 KqA4l7MY4NN7w==
Message-ID: <3d1db73e-2c9c-57e0-742a-34aefdad596c@collabora.com>
Date: Thu, 13 Apr 2023 11:16:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v6 02/13] media: AV1: Make sure that bit depth in
 correctly initialize
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 hverkuil-cisco@xs4all.nl, nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20230412115652.403949-1-benjamin.gaignard@collabora.com>
 <20230412115652.403949-3-benjamin.gaignard@collabora.com>
Content-Language: en-US
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230412115652.403949-3-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230413_101616_124977_F233128A 
X-CRM114-Status: UNSURE (   6.96  )
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
> Make sure that bit_depth field of V4L2_CTRL_TYPE_AV1_SEQUENCE
> is initialized correctly before using it.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
