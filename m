Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D75BBC7618A
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Mar 2023 23:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oD0WxIMM80Qgy5l23mTERFXeDf1v4C6gKGAbLdZmP+A=; b=OjIa/EocXEBASh
	3we4vcojqcKLOQHQgRmiEeMELV/aeUwwmxiBidBGdb/qJkHb0AxXanu0YJLLyz737sqFgi382y43U
	0itMm7ay8+HyiEfVolaS/Iv2r30qraHQx07tywjEKAz5TksBdkE+u05BR1CZoodn+88V8nRkinMLA
	iJbQm1gaEAb+ahpZ88998nVQS3SzEsFObkz0EUXyc6xo0ypqKL9P8+jwqSumundRggQUx7qtuajMa
	pcEDb+xy/Uu4liRaHVKV5v1O7UlUpbmQtKxRJbDZie7r293w42+utFDf/6LwW6IRjW4gRo43R0n6h
	aRp1nTkZQT5ITYmiAmCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pdfy2-005Ypt-0U;
	Sat, 18 Mar 2023 23:28:06 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pdfxy-005YoO-12;
	Sat, 18 Mar 2023 23:28:03 +0000
Received: from [192.168.2.157] (109-252-120-116.nat.spd-mgts.ru [109.252.120.116])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 4B6C86602FCA;
	Sat, 18 Mar 2023 23:27:58 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1679182079;
	bh=QDpYTfP5Nl+tyhNy705vCQcvMrV8hZy9oCjs9iAWG4g=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=AJSq8BJo0bfS84aE/ePOKY3WPloP1KpgI3DbNp4npS9TUBvG2yWswcOh+hx6tHnL0
	 NUU4d0ttF4Yquqabn8OuN6QFk9HL6axhJJm41ddatXql8y9/y/rV//GWSGWR+29GV2
	 KsDLOBR6w02KAr8/kumgm0j4tUuHgKntyQrLFVBkKzvpC+lV6KwTfo+IfCAXGE3jvY
	 XBJT1e40dzVMq2AWZI2QJu6FVOuOdpxiJCMzAIm3zbrBOiLRoLA9qDyGS/E7ivfynH
	 TBDP8mqDDiYcFReX7PYZ1vqbtAbfvpcJwSAq545RBCaxNwSBqG2znYgLxPxcyHh5D5
	 GgUFkyb56Oobg==
Message-ID: <efd18d9b-172a-8978-bb9a-18bb0edda4ee@collabora.com>
Date: Sun, 19 Mar 2023 02:27:55 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [RFC 2/2] media: rkvdec: Add VP8 encoder
Content-Language: en-US
To: Daniel Almeida <daniel.almeida@collabora.com>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>, linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>,
 kernel@collabora.com
References: <20230309125651.23911-1-andrzej.p@collabora.com>
 <20230309125651.23911-3-andrzej.p@collabora.com>
 <a142c30ab49a8ff65c59bdc9bc0e4552c48bac68.camel@collabora.com>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <a142c30ab49a8ff65c59bdc9bc0e4552c48bac68.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230318_162802_507985_06436630 
X-CRM114-Status: UNSURE (   9.05  )
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

On 3/19/23 02:23, Daniel Almeida wrote:
> Hi Andrzej, one thing I noticed while looking at this:
> 
>> +struct hantro_vp8_entropy {
>> +	/* TODO: int32_t? */
>> +	int32_t coeff_prob[4][8][3][11];
>> +	int32_t coeff_prob_old[4][8][3][11];
>> +	int32_t mv_prob[2][19];
>> +	int32_t mv_prob_old[2][19];
>> +	int32_t y_mode_prob[4];
>> +	int32_t uv_mode_prob[3];
>> +};
>>
> 
> 
> In VP9, probabilities are coded in the 0..255 range, so if you want to
> save space here, you can go with uint8_t.

BTW, there is a mix of int32_t and s32 in the code, the s32 is a correct
choice. Similar for u8. Checkpatch --strict should warn about it all.

-- 
Best regards,
Dmitry


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
