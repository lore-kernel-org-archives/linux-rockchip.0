Return-Path: <SRS0=01nr=MR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18A4CC4338F
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Jul 2021 07:18:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B8B0460F11
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Jul 2021 07:18:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B8B0460F11
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U1BY+HQdUDjrtbzipllXsRSZ1QxnBNJQnZJZtGZ3vVg=; b=dcHnVUY8MtOtuK
	N+Z5QJtv8X3USs8IkcmKl9b+AupfOLOBqD1Jex3Oqz/znD6Q0lyIgn0Hr3gApq4zhF5CqNLDsEOHu
	Bg2QVwLpjqi5sZKHEpn4ptYO+wuaLQuBZ/ZQyj+s9aD9hfT0/Wsa9z8DtAJo5KpWUAbcndWlYJMMk
	qXRaDKuw2VTSfVitQJv71Kbw48FOWGwqKbAs1wpvCJcAMe7Gm6hGt66JqiMrOqYH8MIogqxrXJBQR
	LPj6QJqV6hY82fHUgeI0BuANXrOGAcBdlzijZ6mNU8itow3loZRQZ3spC9tjllJf3bofTKiuOjoLB
	PKlU2DYd2ASwS3hqcjjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m7YOq-008Kg6-UZ; Sun, 25 Jul 2021 07:18:12 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m7YOn-008KfK-Ot; Sun, 25 Jul 2021 07:18:11 +0000
Received: by mail-ed1-x534.google.com with SMTP id x14so2370756edr.12;
 Sun, 25 Jul 2021 00:18:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=u/kv+qiWF03A7w7M6dF1ZmKxWsFD09boQ1cuGR0P9Tw=;
 b=IJ0jakbLPBa6zHAcGvf7woKndogt6phHRl9SQRxUZRuBuDScZXtcvf3DqfS8IqEZq/
 2HOkVxd6YKuTC+7hRAaonCv3L6h9SbZlPk8WyXLW7t3lpieKqFSTBfrURe7TuOXMyU/A
 4wrmtsB6D50hB1lkbbUKOoIQomgjMs1P1AAzn57332uKM853f0fGDKpJRllIidSNjfl8
 xDQSMT0qaMzBFq8WwsVJloqPBHAWWyh3NqMV0Y88MH1/06P0GNcxaTT5tSRwRMMjBKIN
 vqeONvEneuLolCL/bJP87bM1Q+WNCVHPQw+rgIkqg1ae9WVs9fxcPgmTsmYY+8C9tv6A
 fRAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=u/kv+qiWF03A7w7M6dF1ZmKxWsFD09boQ1cuGR0P9Tw=;
 b=G04C9voA5GhhPbgg3RcSTJTlDbtCj5W1srOExicOshcH28TclQvjl+88LRUMwVXJcC
 G82cR88gKAElvzJy+kZSbq7JFPpU/mwglhY2JNvZ3apxVLnoZdq4dFOQQzdlUYwBWP+H
 kksdQlOshyIHlnbkeEu67mzKoYly2yfenzmvRyZojdMcn2WCPot2sspAO+AfRvxdm2sW
 tVHx9TCvWuENac/6HX+tClVJw92ZkdvE3eQsZyXHqJThguAFgfQmi4QNIojz+TbaIO+6
 u2DwXLGEVtQndyKcPQv1gqeHTBbgUsMtzPfNeyMc61hTmlehtlC2O/D2B2JM/zLuiWyR
 XwGA==
X-Gm-Message-State: AOAM533g1w7o54HoyzJQwgjxqp8h3j2sOFAwhPjBDzLjlWb5XVrS2+P8
 /+O/IgcnOC4Jb/h1wnjroMA=
X-Google-Smtp-Source: ABdhPJw3Na5dUkmVYn4w0+i5JarsE3BXeCTQt7OFRukWTxiF3T7/aECyfnd/lu3p+R8DRy9EnqEjaA==
X-Received: by 2002:aa7:ccc1:: with SMTP id y1mr14734881edt.321.1627197488366; 
 Sun, 25 Jul 2021 00:18:08 -0700 (PDT)
Received: from kista.localnet (cpe-86-58-46-198.static.triera.net.
 [86.58.46.198])
 by smtp.gmail.com with ESMTPSA id q8sm13746271edv.95.2021.07.25.00.18.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 25 Jul 2021 00:18:07 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: hverkuil@xs4all.nl, ezequiel@collabora.com, p.zabel@pengutronix.de,
 mchehab@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 emil.l.velikov@gmail.com, andrzej.p@collabora.com, jc@kynesim.co.uk,
 nicolas@ndufresne.ca, cphealy@gmail.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v1 1/2] media: hevc: Add scaling matrix control
Date: Sun, 25 Jul 2021 09:18:06 +0200
Message-ID: <2286473.lRjZ1T8nZx@kista>
In-Reply-To: <20210715151223.656453-2-benjamin.gaignard@collabora.com>
References: <20210715151223.656453-1-benjamin.gaignard@collabora.com>
 <20210715151223.656453-2-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210725_001809_871231_52985033 
X-CRM114-Status: UNSURE (   9.20  )
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

RG5lIMSNZXRydGVrLCAxNS4ganVsaWogMjAyMSBvYiAxNzoxMjoyMiBDRVNUIGplIEJlbmphbWlu
IEdhaWduYXJkIG5hcGlzYWwoYSk6Cj4gSEVWQyBzY2FsaW5nIGxpc3RzIGFyZSB1c2VkIGZvciB0
aGUgc2NhbGluZyBwcm9jZXNzIGZvciB0cmFuc2Zvcm0KPiBjb2VmZmljaWVudHMuCj4gVjRMMl9I
RVZDX1NQU19GTEFHX1NDQUxJTkdfTElTVF9FTkFCTEVEIGhhcyB0byBzZXQgd2hlbiB0aGV5IGFy
ZQo+IGVuY29kZWQgaW4gdGhlIGJpdHN0cmVhbS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1p
biBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KPiAtLS0KPiAgLi4u
L21lZGlhL3Y0bC9leHQtY3RybHMtY29kZWMucnN0ICAgICAgICAgICAgIHwgNTcgKysrKysrKysr
KysrKysrKysrKwo+ICAuLi4vbWVkaWEvdjRsL3ZpZGlvYy1xdWVyeWN0cmwucnN0ICAgICAgICAg
ICAgfCAgNiArKwo+ICBkcml2ZXJzL21lZGlhL3Y0bDItY29yZS92NGwyLWN0cmxzLWNvcmUuYyAg
ICAgfCAgNiArKwo+ICBkcml2ZXJzL21lZGlhL3Y0bDItY29yZS92NGwyLWN0cmxzLWRlZnMuYyAg
ICAgfCAgNCArKwo+ICBpbmNsdWRlL21lZGlhL2hldmMtY3RybHMuaCAgICAgICAgICAgICAgICAg
ICAgfCAxMSArKysrCj4gIDUgZmlsZXMgY2hhbmdlZCwgODQgaW5zZXJ0aW9ucygrKQoKTEdUTSwg
dGhpcyBpcyBkZXBlbmRlbmN5IGZvciBDZWRydXMgcGF0Y2hlcyBJIHNlbnQgc29tZSB0aW1lIGFn
by4KClJldmlld2VkLWJ5OiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAZ21haWwuY29t
PgoKQmVzdCByZWdhcmRzLApKZXJuZWoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
