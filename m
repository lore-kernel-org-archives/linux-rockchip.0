Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C77FC7618A
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Mar 2023 23:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7otgeS9vuuhmiqwwL9FzdhUmxi2NxTrA4+Z0KUsGD5I=; b=tILhWLw+zcNnBn
	ON/Jws7j3AEDHk0lyCE7Psa/6/+u+b7DTIxsZNiEiXIRNurhnaCJW6uVnlkmM8eeH73UvYggusDkb
	3sw++el1OSTiwT+yd1tggxcmWIKMMBh6Ge5LCEwPI7UK2ZfP5Wx8gLEr5G36N5burwqDVt98aKrEx
	vAllg6fBPcbMOWsNqSIMY9mVEZ1FKqkOjLZJtInXr7FzXBicvNQZCDwtGVbUocs1XTiB93hHKnlsK
	do75l9+E9M/3Ds8cNnCoT12Q6S+UM3B1DsS4SZrtECP4c2BYRvkwQfnVii9q1LOX5A7ooNUW6wEEt
	NuAZtpX54AjGB2eNOxIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pdftg-005YDe-0l;
	Sat, 18 Mar 2023 23:23:36 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pdftc-005YC0-0R;
	Sat, 18 Mar 2023 23:23:33 +0000
Received: from [IPv6:2804:14d:72b4:8284:32a8:8167:f815:2895] (unknown [IPv6:2804:14d:72b4:8284:32a8:8167:f815:2895])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dwlsalmeida)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E49636602FCA;
	Sat, 18 Mar 2023 23:23:22 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1679181805;
	bh=VwHxqnhyWqaflg+RDOb+rYLrVsfzP0nYKo4q6gwx1pw=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=OgzjSt14BFDmjoEnIZSqPA0bevArtFYqvDbyaRUOgjT5iq0SA/udJSqNlhAe9amRn
	 Igds+7c3vMbvrkS4xe4ZMUtMnUJQxDSgkqaXUuFJ+0AkwSUTqcuuQeUtQ3J70LpegN
	 RefwEiW17JkZN3wimTWfXLOmEUJ2g4NJJgD0avVJ+JmBUvTa1JLtkUBSiVl0Q4kO+N
	 xB3EZSAw0i13sTdLay+EoNrmlITbFxSGE7NcOLpE3y6/E41QuZ8H0gVBrfB/yH72L8
	 yMtbOHUkjCM8isOFDA1Nt0b7E/kb3u6uehngCviS6vrZ944X5ZfHbXx3WrBvJI/hdT
	 CLf1z7n6S3LCg==
Message-ID: <a142c30ab49a8ff65c59bdc9bc0e4552c48bac68.camel@collabora.com>
Subject: Re: [RFC 2/2] media: rkvdec: Add VP8 encoder
From: Daniel Almeida <daniel.almeida@collabora.com>
To: Andrzej Pietrasiewicz <andrzej.p@collabora.com>, 
	linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,  Mauro Carvalho Chehab
 <mchehab@kernel.org>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>,
 kernel@collabora.com
Date: Sat, 18 Mar 2023 20:23:10 -0300
In-Reply-To: <20230309125651.23911-3-andrzej.p@collabora.com>
References: <20230309125651.23911-1-andrzej.p@collabora.com>
	 <20230309125651.23911-3-andrzej.p@collabora.com>
User-Agent: Evolution 3.46.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230318_162332_324233_3AC4F48B 
X-CRM114-Status: UNSURE (   5.57  )
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

Hi Andrzej, one thing I noticed while looking at this:

> +struct hantro_vp8_entropy {
> +	/* TODO: int32_t? */
> +	int32_t coeff_prob[4][8][3][11];
> +	int32_t coeff_prob_old[4][8][3][11];
> +	int32_t mv_prob[2][19];
> +	int32_t mv_prob_old[2][19];
> +	int32_t y_mode_prob[4];
> +	int32_t uv_mode_prob[3];
> +};
> 


In VP9, probabilities are coded in the 0..255 range, so if you want to
save space here, you can go with uint8_t.

-- Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
