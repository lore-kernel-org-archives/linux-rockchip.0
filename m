Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57E13C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Feb 2022 13:19:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U9zDymsLr1TRes6lPpCrPHoQ0gqorkwP4JRP3xKGj7s=; b=wGHgqTgExMTe/d
	btAnH2V6tgQsZ3h62O5f0l7MNhyWeNxSIGCVGiYEQ8sSxjgcJWeUVlMtdNQAjmjUMNmMDLVVE78LT
	vwOwGaVj9DjXR02nol38ZnXqFLnJ4qFUaygbn1aaJDgZ4VbFRikE3ngWJMlY/bejSk/fro/tPnWWz
	MvtJFugKr4t5Mq92rwF232b5NJJLG/yjRxctD2mHbxjU27nzhwQ3WR9a7W2YqM5BU/ADEOmJbRmUz
	trVUy9NskffxCNLD5E36GdusSOrbj+c4f80FcXwSPl8LX8Laxha7LsAw6SsVQg3xWBfuJ4Y2DSnoN
	oOsiJ5LE+Im8g54Dji4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nKggb-00AaTB-10; Thu, 17 Feb 2022 13:19:05 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nKggL-00AaMi-Je; Thu, 17 Feb 2022 13:18:51 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dmitry.osipenko) with ESMTPSA id 48BA71F45BBB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1645103926;
 bh=wxrjZyYHBBx6bMd1iTzODLfhd7VNtutE1D1YpDU9LAo=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=fiwU6yQ2mwVDRQi6CN3nOx5Xnty57YwZ9f5Wugus5Zij9pb3SBxWVXBHRW+hdg7no
 fq6MIvMEA4fyi9LoEpDu8N825SRVVdZ/kFKxup3Wv1FfgkeTdTwahfY+MqOm3vTV0F
 hj7kqZeBHPvED6abRYlDo2uuTQ9zRlfKcYKq1J0GYXQB/9ctEH1uvPYnOvH+5043bN
 1OhGBUDGFTLt8Nx+x6zleeD/Oa9mtXmEnyN5ffxCNm/Y/Q0gRwN+f0tqowH2UCfCVU
 h7IluhCJZkwUEh1d43ZWjFP4mCyJ+7B8i46RkppGMITwrxUMS5pnrjalwC/bHsQf/Y
 G6EwcCVR+fVLA==
Message-ID: <f63f7616-9fea-48fd-4e5d-97751640b5ad@collabora.com>
Date: Thu, 17 Feb 2022 16:18:42 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v6 07/23] drm/rockchip: dw_hdmi: add regulator support
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org
Cc: devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org
References: <20220217082954.2967889-1-s.hauer@pengutronix.de>
 <20220217082954.2967889-8-s.hauer@pengutronix.de>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20220217082954.2967889-8-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220217_051849_875375_CE57215D 
X-CRM114-Status: UNSURE (   9.81  )
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

CjE3LjAyLjIwMjIgMTE6MjksIFNhc2NoYSBIYXVlciDQv9C40YjQtdGCOgo+IFRoZSBSSzM1Njgg
aGFzIEhETUlfVFhfQVZERDBWOSBhbmQgSERNSV9UWF9BVkREXzFWOCBzdXBwbHkgaW5wdXRzIG5l
ZWRlZAo+IGZvciB0aGUgSERNSSBwb3J0LiBhZGQgc3VwcG9ydCBmb3IgdGhlc2UgdG8gdGhlIGRy
aXZlciBmb3IgYm9hcmRzIHdoaWNoCj4gaGF2ZSB0aGVtIHN1cHBsaWVkIGJ5IHN3aXRjaGFibGUg
cmVndWxhdG9ycy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVu
Z3V0cm9uaXguZGU+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kd19oZG1pLXJv
Y2tjaGlwLmMgfCA0MSArKysrKysrKysrKysrKysrKysrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDM4
IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpSZXZpZXdlZC1ieTogRG1pdHJ5IE9zaXBl
bmtvIDxkbWl0cnkub3NpcGVua29AY29sbGFib3JhLmNvbT4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
