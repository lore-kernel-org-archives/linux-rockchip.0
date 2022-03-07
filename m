Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A590C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Mar 2022 12:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7EODI7VCyJVxdYTlDtaOORtHnHq19TzbWBQbE3zXrfA=; b=M7XDcm59GGkOZG
	rvvbsLWblhrO0aXHFvVBCHUvse6mweGXF7Xqwnlk9lmjiI94Oq0dsb1jGxU2kvW0RtV1x69G8sUH7
	bwUuu/z9gI4zGm1n1T+hOJOTrLXgHbmVbK22/N8d0OrAvPC9mewCKNREwR8LnNJJF8WxsboITqXpY
	Mxw/eKzgzVZYQc7l9XBK4coVJ7Ob5GMktg+iDzNI54QI3MnJDMVGCjVi6sMvaOc9GsMfguaZaWuuT
	D756Z9VHU3jdpfgQ2Ppm8re141Vi4M/TC2g5YzmSn13PMWiJ7n+uE/2zz/6x2XmQ6E4KbogIXJi5s
	InreQP9m4qywv3TVO53A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRC4k-00HPz0-Cj; Mon, 07 Mar 2022 12:02:54 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRC4X-00HPw4-Le; Mon, 07 Mar 2022 12:02:42 +0000
Received: by mail-pg1-x532.google.com with SMTP id t187so9094270pgb.1;
 Mon, 07 Mar 2022 04:02:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id;
 bh=n+d9Lxh+NheIDAOxQIfuGYj1TJDnhntgDMXeTmrg5/4=;
 b=DN/v/7UttIijMOQM5kxSoTk4ag0wCFMu0YYo1p7SHYc5pnmgTNisTRag9pMLEz/J6r
 H/uilcgT0hQkiOR0tazG+guECgx2t8dHC2g9It+CG3t+mD7SiKoFBFxqemhFsPadMZrW
 U/vOrVznUIyqR9vaLCNX7SN3IbJGWYdludIyNvivcBUno5bpx4/sYk5OhegahlN7neE1
 7z3u/EfSHU+XAPIVZS1knrLyoLIm0at8HuHzzN9RpIkuoo1Ada+iZ7UOpfBUothnqziZ
 hSsi1c5dST7M2hhRi9xz1TmaZkJJFK91jNzNLo2WrDHFf2JSV+OoXgpk4zxNjiU2nDGI
 CGsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=n+d9Lxh+NheIDAOxQIfuGYj1TJDnhntgDMXeTmrg5/4=;
 b=aBbUgO9vFwQfqJK5RWz7MYEc3SHHZMxJRNJZTbvEk8qgbs/G72SCM97pPc3h4KKEFe
 xn7oEMOu5d39VXq5Oe4wl+oVsNOS1MGBbCRfOyTEPYpUH8GI/I8oHxbuwwMvvNm02cp5
 lIaU6iNoUgZsoeSHVjE8E41UVyz3WVR6WaPdAdjpVsay0XbTcA0UE4vPJ3a4Jd9CRVWv
 R+Vsn1eKLUGdfwSN8PzlFnYznK9GSBUNM/t/+H/d178opIRmt2IHoT4TH1ArtKpbJ9gm
 2KE3sXCNdKZCw0i4hSbbXi2LWZ35N+POcXn07VmPfmSCxJDfVZmj5AvIEOr/AMNL2Kn/
 NkSg==
X-Gm-Message-State: AOAM531wN5734XHr10u2B6d8jZryFCL3QBSexeELbjlCa1BIbefewuF9
 lSCivT9IPw9T81FYZwdhUdA=
X-Google-Smtp-Source: ABdhPJxNNKbKfGTPrzvPjBpyu7ws4sfOGeZM9oyV399bYvQQJpZhZNHYPE2OhyHQHlPyYUE1/CmU9w==
X-Received: by 2002:a05:6a00:2166:b0:4f6:67fe:a336 with SMTP id
 r6-20020a056a00216600b004f667fea336mr12370831pff.17.1646654560561; 
 Mon, 07 Mar 2022 04:02:40 -0800 (PST)
Received: from localhost.localdomain ([159.226.95.43])
 by smtp.googlemail.com with ESMTPSA id
 23-20020a17090a0d5700b001bc3c650e01sm19684932pju.1.2022.03.07.04.02.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Mar 2022 04:02:40 -0800 (PST)
From: Miaoqian Lin <linmq006@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: linmq006@gmail.com
Subject: [PATCH] pinctrl/rockchip: Add missing of_node_put() in
 rockchip_pinctrl_probe
Date: Mon,  7 Mar 2022 12:02:34 +0000
Message-Id: <20220307120234.28657-1-linmq006@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220307_040241_735846_0AA51AF4 
X-CRM114-Status: GOOD (  11.90  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The device_node pointer is returned by of_parse_phandle()  with refcount
incremented. We should use of_node_put() on it when done.

Fixes: 1e747e59cc4d ("pinctrl: rockchip: base regmap supplied by a syscon")
Fixes: 14dee8677e19 ("pinctrl: rockchip: let pmu registers be supplied by a syscon")
Signed-off-by: Miaoqian Lin <linmq006@gmail.com>
---
 drivers/pinctrl/pinctrl-rockchip.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index d8dd8415fa81..a1b598b86aa9 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -2693,6 +2693,7 @@ static int rockchip_pinctrl_probe(struct platform_device *pdev)
 	node = of_parse_phandle(np, "rockchip,grf", 0);
 	if (node) {
 		info->regmap_base = syscon_node_to_regmap(node);
+		of_node_put(node);
 		if (IS_ERR(info->regmap_base))
 			return PTR_ERR(info->regmap_base);
 	} else {
@@ -2725,6 +2726,7 @@ static int rockchip_pinctrl_probe(struct platform_device *pdev)
 	node = of_parse_phandle(np, "rockchip,pmu", 0);
 	if (node) {
 		info->regmap_pmu = syscon_node_to_regmap(node);
+		of_node_put(node);
 		if (IS_ERR(info->regmap_pmu))
 			return PTR_ERR(info->regmap_pmu);
 	}
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
