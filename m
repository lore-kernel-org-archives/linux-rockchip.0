Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDFDFCA0EC4
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Aug 2025 16:42:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Subject:References:Cc:
	To:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ml8ViHdnGGKUhXQkVlQIoEmcdirAuyqdO5R8Lp635HM=; b=Pj9FHufb2H+Wn2
	wz0JlSCjUMxQx3W7KJj0yuOqMHLhIWSam/bSXyXwdhCg0ifWo7UIiMmLp1MyYCrAvpjRlW+PQ81A1
	MPYpzLbmhc8BUL/xBn9TqDWUV212IY345LVakCmu9DwcukdeTuwMPzUXSiUEh/2U0nz5Pz/ggqfxi
	BbrW40sJWb7FmCdrbp/Mp7UU4Zu5KHHoq6RnBI/KmSv8O/y9UQtobokj/aazpX8+qS6o0CV+ZCg8J
	jknGAg6QpJm12L0ltThxHvrTkrBvmeIw2lYzOrcZdpUUh2WL/ipZK73hOXhJYRDUXCpxzYCSj+2NI
	/l+4MSM5QFZN4s7/flWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulVaz-00000008Rls-2g4s;
	Mon, 11 Aug 2025 16:42:01 +0000
Received: from mout.web.de ([212.227.15.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulTXX-0000000826x-306F;
	Mon, 11 Aug 2025 14:30:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1754922611; x=1755527411; i=markus.elfring@web.de;
	bh=S3ZlfFUOqraazFG4jozDKg8aCMSU0LqJMYEvzx4osOM=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:References:
	 Subject:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:
	 cc:content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=qXCmBZUiZpHKaK+YPtNtm8bDTidZfV5U5ktroQoYU2Bzel3CwgadautwMCNrCl9q
	 R2tmHW1NEUIj9eIi7w8qwIi9ptAKLnKOjgCFraX0Jmt+XO3qMPvPktgC/gJYjME9a
	 Ot8goTAL0YC0GvNLiHn1E1wEdCJHXim9TcYUSET5mgoggobBWbtppxlqzC5f7nj9g
	 YasRZE6qFu4dg4AfzEq5Ys8Z+7sWgeWF9inJYnyDPUTCGJkc8sCY0RtnnbVvU/k9H
	 CVKqLESfU4009k0a0G6qWbt0Z/ON9vx+ABiNiR5hraMPaOkrclVyUGre9fnjps/Nk
	 Af7ZnYD1d5olwnsZJA==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.29] ([94.31.69.213]) by smtp.web.de (mrweb006
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1MTvvy-1vCJmK3qZm-00KmlN; Mon, 11
 Aug 2025 16:30:10 +0200
Message-ID: <50529d2c-a0a5-4c04-a562-78e4edadabbd@web.de>
Date: Mon, 11 Aug 2025 16:30:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Detlev Casanova <detlev.casanova@collabora.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>
References: <20250811-rkvdec-redundant-pm-rebase-v2-1-90c47213fbbe@collabora.com>
Subject: Re: [PATCH v2] media: rkvdec: Remove redundant
Content-Language: en-GB, de-DE
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <20250811-rkvdec-redundant-pm-rebase-v2-1-90c47213fbbe@collabora.com>
X-Provags-ID: V03:K1:MBeF5ls0UmFpbxTc6iMeAbb1gGvRwMD3xWbHVAvJIHN5JYINNUr
 9UwZfStzjKDgLDGnfZO6eaDprq6yocz/iQDtajJj5naTbtZ5JpqX5r9atenkGkFCyWN3xgi
 mmcU9jFKTHPSL3k/t3aRvaW5fBq1f8NeNaVkt9C8xtqOeIGVyfjJUTeCfU8+LtKDVxrOIoK
 9W3cQeHKlr98Xx/LK2IzA==
UI-OutboundReport: notjunk:1;M01:P0:ew2c845iv3k=;kMQ3r4KKg/X9g/ThaHEG0O4PNJ/
 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
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_073020_125443_D2AF749E 
X-CRM114-Status: UNSURE (   4.08  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICDigKYgUmVtb3ZlIHRoZSBub3ctcmVkdW50
YW50IGV4cGxpY2l0IGNhbGwgdG8KCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICByZWR1bmRhbnQ/CgoKPiBwbV9ydW50aW1lX21hcmtfbGFzdF9idXN5KCku
CgpJcyB0aGUgc3VtbWFyeSBwaHJhc2UgaW5jb21wbGV0ZT8KClJlZ2FyZHMsCk1hcmt1cwoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
