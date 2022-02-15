Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F001AC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Feb 2022 19:47:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y00TQL6Lns2PlmQpQebsKelOfR88qu9N4ECEhwlnDSY=; b=gl5/UffMJh/+bi
	Reg/75RKSn64BXnDrYBVfhSW8gIrWEImvEFJFV1lNhDW0ticJz+X9lzfSxgW6ww4AENhDEgF7qAT/
	XEI/eqrrOtTqtnl6ztpnMBKIkAO8385xIH7xB2XAUrXsk8WGWFmW6W6b45tHdRL9KkClWR644xBJo
	GL1I9JmY8Mc6MxYB+y59WIyk30VcDTdfg22XFmae9gkyT/XSNkGgjyIFtEy4QXuUdfOlbH7Zfabff
	JQM/NYr3sTZmBfBBbcUh3cmosrFc4dPH98NHb3L5qBT2QRMVIxV09Tit67p7N0aEXeTJioTozhmCs
	tdPQguWabJYXqj3ZoWUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nK3nS-004OYG-PY; Tue, 15 Feb 2022 19:47:34 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nK3nD-004OTD-7w; Tue, 15 Feb 2022 19:47:20 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dmitry.osipenko) with ESMTPSA id EFACD1F449B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1644954435;
 bh=+YgXqeJrHqFTrBc7nNza8mpO7pm7+pfwAsDkpv4pNz4=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=SJT/cT3z6Oe736iCsABTRHAx3R4tCsz4+nHv/JuPm2Tyam52yfDfimh7Fkbkq35o1
 gRzGvnKshiDDh/pKdrvLN65+axpJpsmLgSW5f23ssBu5fijvipN0az1xRnCPP6hebK
 WAnVn8hkJ6kHt593SC2RwsQd1U+YhkQuBxjjt2GnCkHugOQMD+viIhSwBAUR/oeb0W
 jw77yFZZCXl5DxHGa10V83rGNUb/hi9fh0/iuIMfY8C+LUDsqsrDqQpVTSz9HdXmNl
 geWqU/3Y49qoQslpA+JLGD588bIf77WSzLGRnfK9Ke6CCjFIkDPzXk70TS0vnGScF3
 QDnTJvZdpFFRA==
Message-ID: <60b8830b-4c26-3b21-9ec4-ae8998f3ccb7@collabora.com>
Date: Tue, 15 Feb 2022 22:47:12 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v5 22/23] drm: rockchip: Add VOP2 driver
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org
Cc: devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org
References: <20220209095350.2104049-1-s.hauer@pengutronix.de>
 <20220209095350.2104049-23-s.hauer@pengutronix.de>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20220209095350.2104049-23-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220215_114719_506960_D56947FE 
X-CRM114-Status: UNSURE (   5.43  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CjA5LjAyLjIwMjIgMTI6NTMsIFNhc2NoYSBIYXVlciDQv9C40YjQtdGCOgo+ICsJCW5wID0gb2Zf
Z3JhcGhfZ2V0X3JlbW90ZV9ub2RlKGRldi0+b2Zfbm9kZSwgaSwgLTEpOwo+ICsJCWlmICghbnAp
IHsKPiArCQkJcHJpbnRrKCIlczogTm8gcmVtb3RlIGZvciB2cCVkXG4iLCBfX2Z1bmNfXywgaSk7
Cgpkcm1fZGJnCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
