Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D625C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Feb 2022 19:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rPOiNW2ErV9YEV7ly+bldbVzqcmm3TEavaTU5l1nXJ8=; b=leb8Uwg3FegXnN
	01eRpYe8lE6iHBAsPSt5EwBIi8ieOl3bngBDOYo08kKX+03sdvUHozFPKfFaBohzaG64WtCJ4dQ9A
	is8Vt4Hb4M7U2m2sI6M5avtXzKR+I6Rpt+KKkJiEr8+HCSuNy83kAjSB6SxIKaupCq7ZE1bAhhWm5
	CJ9SDdS+4daMj49ckmQLNIvKpfSH29/TfQ+gWbNAP3tmubsRtPNXtecKnUrQxtFB0rqeIAX+kfQJ0
	pEQNd/5HtB7/moooDmKRWQfnbVtwmBf7aQ5TOnAoj9gUIB4uVPBtJVM10dJffqdkSCIpwNCw+Mnrx
	hvoOnHUZQ96sumyeItKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nK3oL-004Oz7-7f; Tue, 15 Feb 2022 19:48:29 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nK3nl-004Og4-4C; Tue, 15 Feb 2022 19:47:54 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dmitry.osipenko) with ESMTPSA id 2C4B91F413B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1644954471;
 bh=BCTFBXRXvRz6slrOppBSCzuCpNgtXgHw8VTvEi/F91c=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=jd/M6U2Sj9jRmq/fvlQsMiylkbMa9eLtc8Kszpl55iTbO2tXfEASLtBXx2oDKnWU4
 R/YXNWjLIzS5CBeOKxoT7rjJHsadCfb+r0I40csrAijVEtZUix5P10CuVrK68iAdbt
 8IGfd3ZFJZac67E6St0NYmZ35Gm4osSaQxEDrcH7jGkBRs131Ht80zpRv4bOQBAi2p
 mFrBKbYunk6hzOPo91qLTUr7mVHM1bdoEv/PsH3RQWoD9DyYKlg+pwFn1xsha8e+7N
 wbxE3ihAj+J6oQ0VWUFdgeZmmsyBMxmlkygvGyYr6MJEpISZ4CsKlps1AJZQj3/SUN
 kSfGMEclwF4ew==
Message-ID: <f0d9ae21-1cce-8ce2-c81d-595a639ac490@collabora.com>
Date: Tue, 15 Feb 2022 22:47:49 +0300
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
X-CRM114-CacheID: sfid-20220215_114753_357125_9A35719B 
X-CRM114-Status: UNSURE (   6.68  )
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

MDkuMDIuMjAyMiAxMjo1MywgU2FzY2hhIEhhdWVyINC/0LjRiNC10YI6Cj4gQEAgLTMxLDYgKzMx
LDkgQEAgc3RydWN0IHJvY2tjaGlwX2NydGNfc3RhdGUgewo+ICAJaW50IG91dHB1dF9icGM7Cj4g
IAlpbnQgb3V0cHV0X2ZsYWdzOwo+ICAJYm9vbCBlbmFibGVfYWZiYzsKPiArCXVpbnQzMl90IGJ1
c19mb3JtYXQ7Cj4gKwl1MzIgYnVzX2ZsYWdzOwo+ICsJaW50IGNvbG9yX3NwYWNlOwoKVGhlIHZh
cmlhYmxlIHR5cGVzIGNvdWxkIGJlIGNsZWFuZWQgdXAgbGlrZSBzL3VpbnQzMl90L3UzMi8gYWxs
IG92ZXIKdGhpcyBwYXRjaC4KCkknZCBhbHNvIHJlbW92ZSBzaWduZXMgZnJvbSBhbGwgdmFyaWFi
bGVzIHRoYXQgc2hvdWxkIGJlIHVuc2lnbmVkLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
