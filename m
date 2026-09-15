Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33192C88E7F
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Sep 2026 10:43:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qtFwzAbd6TMdwGg+4myXQXXGn41vU8eKlan7sAEothk=; b=jHdCIkOPYOGqpm
	TX4v+fjl+113IsYxruwK+O7X4MQP+XL4yVeOmkc7CcC2I4M2fb1pg0CS6yNNH4NwnR/tCoguL6mzT
	Wycn4gUsqy4ePvjyayWXROVAce4rQ0pZyYOlbDznT3m7GMlxJ3MeWBkyPExlHI6shLoLKkBr21wj9
	Gx/9w7o/XM2JkAimh1aHOaTTyvec8ZxacooQ2lDiC17NCA3sHMM2XjmpWq+BoxSu4Q015d9HZLS08
	9RH1AjAvNk0eLzIBdP1n/WIDHlq/g01rKWxIUxa5xDduXLY2hcb1jSlBsVgnZhHD08nk/oP6iSH7u
	KvU1a1w8toaDl7tz8HHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6Qdc-00000005xc7-08YT;
	Tue, 15 Sep 2026 10:43:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6QdU-00000005xUA-22yM
	for linux-rockchip@bombadil.infradead.org;
	Tue, 15 Sep 2026 10:43:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=+CV6Egn+bDTw43XKQWvuzHo2bqHGWcQG7Sgy8YDAY5U=; b=coNuxEOhEG5WlWR54ID+FB2yG6
	vOqiH/ai/h1Z0s8S6Gjhnn0H8KsjWEQV9QKmLSBLYI6JRiNnYASbi8X++yRV8DrIywWXFZH2Z//RZ
	Cbg08CigJg7leovf8eMnTsERExxuXtlFQLyVxjPR15sStERCYCtoLgvHKMwL0jNq37jZQseIXs2Mx
	EUOnyXw7VszkcsMklPeiBoXWaaTd7fPLzYt2viu/6+Sw/Vsn6F+zzIebst29/cZSG0yrbm86z7Jy0
	eB2ezxnrlrCJ8zpq3JQ8vCA7dsNQ00vegAltT8E5cmH4ZQvVwRc3wSMayQSMJRK1iIVUUltkkEVNE
	4Y2t/jyQ==;
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x6QdP-00000006ZhI-47oP
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Sep 2026 10:43:35 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49b912d3920so832385e9.1
        for <linux-rockchip@lists.infradead.org>; Tue, 15 Sep 2026 03:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789469011; x=1790073811; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=+CV6Egn+bDTw43XKQWvuzHo2bqHGWcQG7Sgy8YDAY5U=;
        b=h8Zi4RixYEw38nyHmWUJFZKa4GaSCP6SMLV7Fnr1NxTbNbDQFiJBx0BkEdDDArk/wx
         SzgVEfh4Dt61P4yjXpA9darHSdF5v8G0t7B/Z6oDUS4wM/9NZM6ie+eWhsfKN2O3SfPb
         m5TGk1HOTwacDdfO7Ov/vb+GBQFrp3jaCQM7hPlNnRCauDLULeRhHDUDxCs1rESUd40r
         WW2nJogRAhTUgHGx5NIitkXbIlvv+Z4JwKNS573Ak7DunuVgfulkhyCF0+Rw5nZF6G3x
         zaE9dglf/BpeCWXAWpjh663zUBwQ6gMPjblUDNF6foDtg/tgInSQUttS6almGNHJFAs+
         +Z6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789469011; x=1790073811;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=+CV6Egn+bDTw43XKQWvuzHo2bqHGWcQG7Sgy8YDAY5U=;
        b=bs1ozetVWDmjQwQqnZFzsVvQLyI1+Ar4KEFWe4W1iEmWm72vVEY9sk9R4BmDUlZRnV
         QBZm1lMjx8KVG1PkaI/RA2Dojyl0ETiQiscM7Qs4nA48aovBzAYqJYnijqjdSvT8HMkr
         e1NCbGAQDWWZTAHkzcZ380/bwx3LUBa5fUM0BnzpvaF8iH4tSMiK2De+YFgQHRoseDUH
         MHaL7Dc3twXkdS3mTrLCo9So+Atm8tHHvaFTplapLZBLrP9D1sCJA4znPlzmTQ0ltG63
         W7L/juidTzMiI0ZsQyTM18uLciIkJg9cWM4zXZkE1eTBMtLCHGxJR7BBntfc/gqSIPjw
         FvpA==
X-Forwarded-Encrypted: i=1; AKwUvBzU0qmfVNEbBPZf8XuA4/ZlwEa94XBQBlctGn/CBxMegKVp4U6TCEizhtO5rUtt0Q3zTb2m3+ZZcJaYURI3Eg==@lists.infradead.org
X-Gm-Message-State: AFuF++mTLYBBQdtWkswYYDonpsoCRuRTBrd1NL/KJ8Ujoi2yhZDwCJKl
	KEHZ9IIpQxAyulxDen9fPOwDAuuPan1Zvykjg+Tp79yZi+++zg8f2vnE
X-Gm-Gg: AYBFou3++Xi8jgFt92CnN0CMSOQ8EjtWYAc/xF1wyhF9ZhVYOKJZew0yVFCI1fHoKh+
	A13qjzjMNVystu1EGRZ2vTPxG5+rjUDCswfBMtfOrdgCsqFu0ctrk1FtF1By0xwe6QLBudaZImA
	V+W2oktRQSlishnXS5yPaOtwo205ZfzryJzGrChZwdr2AWp1ZEPIgJrMPxS8w4c5VO7eFYzwMqF
	QWuPBlut9L9czxSj66eONsAqGgGRnuOQ/tE1b9Fl/c3yKtOcisxn2+EUSCoU8MTjc9zyatA/4hz
	ohzDB0fxBCnk8Nn3/ewvKJQQ44nfx+fYP3OSIyCtZYanT7LQGXiDAbZl5xAe+PZq/M6GPJIIMIH
	gPhcDmtBto9IHe1FO9mzAvD3UfQfHaabK7VpnwPOcSWjDHb/No7GHymVEOxeyLTjFUgNzNLjzEa
	uvWZFPZeSUh/3aNPJ60u48+8LeFeB5c0PAxdU+Nwic9YAwtfiVzJI97hWnSfg/gV3CiRZgx5iT5
	WEfuzZQkwe3ObP2fVw37Bb+paDr5iFq1pxBHX7KMlS+Nunyk6HE0JxKo6oyX+58MUJ5MxpZEgXU
	5g==
X-Received: by 2002:a05:600c:3516:b0:49b:d45:703e with SMTP id 5b1f17b1804b1-49e82210b64mr9351345e9.8.1789469010714;
        Tue, 15 Sep 2026 03:43:30 -0700 (PDT)
Received: from [127.0.1.1] (2a01cb0007c59900d73f8285c1e647ab.ipv6.abo.wanadoo.fr. [2a01:cb00:7c5:9900:d73f:8285:c1e6:47ab])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49e7d2a94b9sm58001325e9.3.2026.09.15.03.43.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2026 03:43:30 -0700 (PDT)
From: Amin Gattout <amin.gattout@gmail.com>
Date: Tue, 15 Sep 2026 12:42:48 +0200
Subject: [PATCH v2 3/4] phy: rockchip: phy-rockchip-inno-csidphy: add
 support for rk3576 variant
MIME-Version: 1.0
Message-Id: <20260915-rk3576-dphy-v2-3-b56e68b54b8c@gmail.com>
References: <20260915-rk3576-dphy-v2-0-b56e68b54b8c@gmail.com>
In-Reply-To: <20260915-rk3576-dphy-v2-0-b56e68b54b8c@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: Michael Riesch <michael.riesch@collabora.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Amin Gattout <amin.gattout@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789469006; l=1842;
 i=amin.gattout@gmail.com; s=20260818; h=from:subject:message-id;
 bh=T7svtQCEZR4NbRSxQOr575LmZrX+L5qTFSBrf8JfOqc=;
 b=eQvDxheF72tsvAJS32ZkaFvXX6NNWm28Bsw7F/w1Zy5QmGsgwEi4egtVnZZRjBKNhf4WjFbAW
 h0O3gsraYFIAa6PT+HoD2V4W8Tz+gYMZVjRPi9SOtZsJl8Lzfm0kax8
X-Developer-Key: i=amin.gattout@gmail.com; a=ed25519;
 pk=MSIqDPkCOkwtyP8Fns1m+KFU9SgqoDl2mpLe18vL+hQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_114332_240550_C70DDCF2 
X-CRM114-Status: GOOD (  10.59  )
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

The two RK3576 MIPI CSI-2 DPHYs can be supported using the existing
phy-rockchip-inno-csidphy driver, but they need their own driver data:
as on RK3588 the GRF control bits live in a dedicated CSI-DPHY GRF at
offset 0x0, while each PHY instance only has an APB reset line, as on
RK3568.

Signed-off-by: Amin Gattout <amin.gattout@gmail.com>
---
 drivers/phy/rockchip/phy-rockchip-inno-csidphy.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-csidphy.c b/drivers/phy/rockchip/phy-rockchip-inno-csidphy.c
index c79fb53d8ee5..177beb685f70 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-csidphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-csidphy.c
@@ -403,6 +403,17 @@ static const struct dphy_drv_data rk3568_mipidphy_drv_data = {
 	.resets_num = ARRAY_SIZE(rk3368_reset_names),
 };
 
+static const struct dphy_drv_data rk3576_mipidphy_drv_data = {
+	.pwrctl_offset = -1,
+	.ths_settle_offset = RK3568_CSIDPHY_CLK_WR_THS_SETTLE,
+	.calib_offset = RK3568_CSIDPHY_CLK_CALIB_EN,
+	.hsfreq_ranges = rk1808_mipidphy_hsfreq_ranges,
+	.num_hsfreq_ranges = ARRAY_SIZE(rk1808_mipidphy_hsfreq_ranges),
+	.grf_regs = rk3588_grf_dphy_regs,
+	.resets = rk3368_reset_names,
+	.resets_num = ARRAY_SIZE(rk3368_reset_names),
+};
+
 static const struct dphy_drv_data rk3588_mipidphy_drv_data = {
 	.pwrctl_offset = -1,
 	.ths_settle_offset = RK3568_CSIDPHY_CLK_WR_THS_SETTLE,
@@ -435,6 +446,10 @@ static const struct of_device_id rockchip_inno_csidphy_match_id[] = {
 		.compatible = "rockchip,rk3568-csi-dphy",
 		.data = &rk3568_mipidphy_drv_data,
 	},
+	{
+		.compatible = "rockchip,rk3576-csi-dphy",
+		.data = &rk3576_mipidphy_drv_data,
+	},
 	{
 		.compatible = "rockchip,rk3588-csi-dphy",
 		.data = &rk3588_mipidphy_drv_data,

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
