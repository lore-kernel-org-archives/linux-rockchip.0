Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B665C531FA
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jul 2026 09:04:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OqMR+1smnjTAEJZ0TXHsbffcoZ2OCdFUeOwFJAjbCVQ=; b=cAEWCBMPqh/12f
	Cs++tOCvL6oyozK2n8Pt5jozcSDaXQe7s6x6BaGWvDW+OD2gwY2OutA7t/jFFXYkdZc7xi8oCAQpq
	ZBYUiUKOuJfV0SFR5QxYWwzmwNqgvz0p/Ezx8QF82FsbzdA7PvS6vFvgoJfpIG06aCxqDI1v8SlFZ
	WkziqYMJlRiDkY1xohWm+irr00CikeocvrP/lLRN5OrId77ed7oh/jGEuMFjSQN5EMB4dLdG0nHtR
	A+iIJ22WIk1DHalJ4QwF+dfZc7A6hjnmsjmgWJti3WZJpLT624hrbI1WlFo9Te7gc+d4gyTfCJxU2
	BEUrE2Zzit1AgqMJb9Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnBpJ-0000000Fu8j-0BMX;
	Fri, 24 Jul 2026 09:04:17 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnBpG-0000000Fu7P-2hN2
	for linux-rockchip@lists.infradead.org;
	Fri, 24 Jul 2026 09:04:15 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-4953e04ef16so2356485e9.2
        for <linux-rockchip@lists.infradead.org>; Fri, 24 Jul 2026 02:04:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1784883853; x=1785488653; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=VQddTTwM0k9Vodyi3BYe9DGecCKk+Ahu8ONHXQFEWIk=;
        b=iAQP6qVG94GYOeOxvDPOXFvOU47mk7BHpM8ReVPEYLvuI/4T2QTK3OG8JphbufPMXI
         LUJ9hGLQgS9K+2hJvl0Q5eNMqxOLPnxzVezHRQOh9HbvkHxaqeIgSugF82LQaqmFhDDf
         nzI1BD75lT+2ynsqTDfq7rPaItTd9C1kF/NptUaRvDlAXCOT/9zMnvd7ezNy41dtzgLu
         vAEoMVO4V9kn3YLLcJRtrIy5dOXJzYAeto+d20L1JRuIZpB5adiMZAv+RiPgH2fLRa63
         cI90dhHZ/gPVWXYTvtr4YSIy45+197UaAvonDgU2PRw31lRDpUw3scAcaivDSy7TQhvV
         wnDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784883853; x=1785488653;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=VQddTTwM0k9Vodyi3BYe9DGecCKk+Ahu8ONHXQFEWIk=;
        b=hGAOzyyT/mf0+QvBIE/Ybu6mcZs46LrPzU30+7aIAOV8LY08TrjpQM2z/ZLUouLDEM
         pDrZFsTpmOmoP9x+4RarIWPInIRQHxUD3VtQmvDT2b5WQ0K8iLsIN/OM3Ecs9HRskya1
         kqVAbAGxVkftTPdPwOutNcXaGRYVdF1xw5xQI5VS87cbK4jOSE83SxgD0JMk2nyoxcZf
         UJ6L8hYPd4JitbW4ncuHxF24/Yy0ryj3p3bMPFhyN5fV2hKPnz4Oeuv6HYRLZJf/VttA
         BO+lonLsn+jd3VIwL8pOlExaN9neZIidnUkvv8rGR0gFnr7Woy2ZSvzYAMIYIyIlsfcO
         dLLg==
X-Forwarded-Encrypted: i=1; AHgh+Rrko1JzP5uPJ2+Qe1xwNGbgsKNpiBBQYvn5Mx77m++eo+ZOcYTF3o5K7bDVl47USygMKYpG5S+fVRm0A5ntnQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyrnHkixZak3lfWcCIWun3dl8GiIP41JLlKRpHcLkEDnNvoD0H5
	RiQIM+MrB3jQux4ojYxI/3n8htasId6JNSIvYWI5PcDlbYhWRLE71QW5zZxOxPdBDRg=
X-Gm-Gg: AR+sD12BUIBz1Cx6FIdvTxC2zcMyaV6nZkfjHc0N0yZLbhTqypsqi58SqfgRZZ3ZwN1
	HGg6xIzOUcQe58xWYyGzDEoJq3BAbzt2SEdZj0irC5RVB+knWBPpmrSSs/jtnUEXrp5w20g60Pn
	eEngGnjI/i9FnMl7vkMHL86/Uk3I5BfHaaXkc1VQ8P1FU//wWbSLpZ8L+LE8TQtOSSsnaR7QrMF
	2JDzGvjeo6cfcj48WO8H1FRSkWUedZ+/9E1U8zyJnDbjV+aMTeCs+QfkD9YmOABRbH/ICXnNwoR
	BbNHCGeu+An+LdQWHWXFWo/UnpbdwMYNeHDC9UAcZGls/MUyfQVIAbqw3RAvJTPfKeUcWfnYioi
	efEmDuFsI69yi2wA9CyQNfKoi+RgxXH8Jc4CRL0HQ+nXUrpiipk0hg3/E8SD15NRGWRA/Y2roQR
	4T
X-Received: by 2002:a05:600c:e549:20b0:493:f7c8:eae2 with SMTP id 5b1f17b1804b1-49573cd3b43mr48859445e9.15.1784883852904;
        Fri, 24 Jul 2026 02:04:12 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:e584:93af:f3aa:2c19])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4957bfe07e1sm35606965e9.3.2026.07.24.02.04.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jul 2026 02:04:12 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
Date: Fri, 24 Jul 2026 11:03:52 +0200
Subject: [PATCH v2 1/7] clk: mvebu: clean-up simple provider misuse of the
 consumer API
MIME-Version: 1.0
Message-Id: <20260724-clk-provider-simple-clean-v2-1-56f306156d25@baylibre.com>
References: <20260724-clk-provider-simple-clean-v2-0-56f306156d25@baylibre.com>
In-Reply-To: <20260724-clk-provider-simple-clean-v2-0-56f306156d25@baylibre.com>
To: Andrew Lunn <andrew@lunn.ch>, 
 Gregory Clement <gregory.clement@bootlin.com>, 
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Heiko Stuebner <heiko@sntech.de>, Prashant Gaikwad <pgaikwad@nvidia.com>, 
 Thierry Reding <thierry.reding@kernel.org>, 
 Jonathan Hunter <jonathanh@nvidia.com>, Tero Kristo <kristo@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-tegra@vger.kernel.org, linux-omap@vger.kernel.org, 
 Jerome Brunet <jbrunet@baylibre.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1050; i=jbrunet@baylibre.com;
 h=from:subject:message-id; bh=hQqUrEC2ohspZ0Q9n+8GFiTuvpJJRj9wwBmEqNtW61Y=;
 b=owEBbQKS/ZANAwAKAeb8Dxw38tqFAcsmYgBqYyp+rKhEixzWUn4GUS3MJXwAOFpteD1zvevAe
 vX+e+PbuPOJAjMEAAEKAB0WIQT04VmuGPP1bV8btxvm/A8cN/LahQUCamMqfgAKCRDm/A8cN/La
 haeCD/0dnjAZeXY2CBNgE4BaUBWX5Y85pENGGuWJTOPLlhZwKkcYkteVXrm5WQpjWWk2HLratFs
 N/arQoP5iOIbdrCL5vpNiL0tKLKbZg6NceVOx6srjc60YNG4QAdLsmMg79jtvQKSecZ9158QZxC
 fr8w+NEDgmnPFMCMgbVj2SvzOyZ1Cb40NKO6vxdwjIrp38SyhPTZ7+ADTI2igbjGF+W4wCNvxUW
 gO0zR3raB3g3p2hn0vnBPkP4QNE0TCARKcdoIm3IBfaPKubO5D8gdpYgh2P4A7wJBeFcnI41jbN
 rWUfUcRonDj6ae0rBIbKn0c13thuoE9DS5Sgdt1FCJ19LHFfYfYwAqBpZ3d7dOytru1/VmOWXj3
 sibrRsKv5DG1OEavYxvU9198kc2EbOyPd8dxBbuO5iTxuS28A/+CHc3xb30thhMowe0FeCB3f3s
 lDTgGxrXx5MrvCwOQL468XgKyTtifJ0vDuB4HyXkW2kQZYxSLf+m51vvKKEHnu+ObnjX5K0ZB/X
 NhFwei8QjV715D5MQjr0e+zn/WDksHg9wWQh0CNelYdqpxeAcML14ERh1MLxnokOvweTmnivysM
 5pLs7XFWLWGCvva7QHRFdHuLxdWFHhtFZ/a5aEy6XHta5USqzKuuwlOLm/aMUbAnsq0gENcoqVx
 8Mzt8HjQPHjqRCw==
X-Developer-Key: i=jbrunet@baylibre.com; a=openpgp;
 fpr=F29F26CF27BAE1A9719AE6BDC3C92AAF3E60AED9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260724_020414_712964_BADFE5DB 
X-CRM114-Status: GOOD (  11.81  )
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

Clock provider should not be using the consumer interface.
In other words, a provider should not be dealing with struct clk.

This change targets occurrences for which the provider uses the
consumer interface and corresponding clk_hw interface exist.

Reviewed-by: Brian Masney <bmasney@redhat.com>
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 drivers/clk/mvebu/clk-cpu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/mvebu/clk-cpu.c b/drivers/clk/mvebu/clk-cpu.c
index 26d52ecaac50..24196e288fe2 100644
--- a/drivers/clk/mvebu/clk-cpu.c
+++ b/drivers/clk/mvebu/clk-cpu.c
@@ -153,7 +153,7 @@ static int clk_cpu_on_set_rate(struct clk_hw *hwclk, unsigned long rate,
 static int clk_cpu_set_rate(struct clk_hw *hwclk, unsigned long rate,
 			    unsigned long parent_rate)
 {
-	if (__clk_is_enabled(hwclk->clk))
+	if (clk_hw_is_enabled(hwclk))
 		return clk_cpu_on_set_rate(hwclk, rate, parent_rate);
 	else
 		return clk_cpu_off_set_rate(hwclk, rate, parent_rate);

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
