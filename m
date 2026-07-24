Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8468EC53209
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jul 2026 09:04:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0rPlQgDw4LdQJ5M0H5CYOqTZyjEiCB7I+BWA6ei9q2Y=; b=GGebAwbhcLmW3X
	GPbeWFCnHky92wY0vB2cD4tZnTkt9dppF7Fb7q7ISCpEP2xTMgPqorRtpqFcpJ25aV2gt958iCsf5
	bpyEuMQBwQDPmP+ykjN8xttBxEKwfDe2Htwp3qz3wYVyOdUlLVL0xaS5E15DflV6mDW4LzO9ovIHi
	tTjKimHDuatzGvdTTBz5wPjpSdMyhdxL+rOcRZpzzQVEjmi396Kaau36x3QE9Gbv9HtDDGKdqydET
	mnDtbiDGTYoW14PFFFTuuf4qStCer+Eomb/nKp63rClW5T2AbsI3svs2pVx+lFr1yIwz6vj2g7TG6
	jhxV3buDToCV8YHmkYaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnBpS-0000000FuHU-0kT9;
	Fri, 24 Jul 2026 09:04:26 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnBpP-0000000FuCU-1yti
	for linux-rockchip@lists.infradead.org;
	Fri, 24 Jul 2026 09:04:24 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4953de5be0aso1510265e9.0
        for <linux-rockchip@lists.infradead.org>; Fri, 24 Jul 2026 02:04:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1784883861; x=1785488661; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=MLV7Kh0UK364ekQydmUokZhdiy99pnn6pB+Tv4eP+3c=;
        b=cpjIMhkUJNs/NpvbffGCLQNr1gUy+ghowN/wsMFc3Jclp/q0eWF5+S/S8BLynHF4UW
         4/VDXI7hoGRlYSZxUf07Vj8bdiGJzroI0Uu+81Wzhm57X3fXkILZmueQ2gSIWqiw7kae
         lecaJRpkCcn1QOBv3vnDdgk4Cu8oIt1TRY9Q0jEHHkvoHaHFSzlK0txYbW3QddEbeVHq
         hgbUfDC80EOtvUB0tEN/zfm9zk6lGfd3TYobfv8hiMSfhXh9172apIhAtpQbSlIyR6qm
         75xkIICicEHg406wvO5ZjQYAy6Jr7ZgRowzxZXoliVfOaR5QCt4F599cCXYxeEhW9Cb6
         /b9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784883861; x=1785488661;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=MLV7Kh0UK364ekQydmUokZhdiy99pnn6pB+Tv4eP+3c=;
        b=RLyCjNhGIoX5Y5C6gATrYBMjHeX78SAZn7Uo+MdrltA6M46hMyYpBi7CnwrgJrs8AL
         Br7HsiLK9Hp1LDd0RXSW6kRHhxA10vx8+hE1uGfIO8/e2z6LroQdsxJh/OWRcCZNbSVD
         8+XYiAb5722ySVhM3fXw7nik8vQxWufNFiMoGy3sLNRl+NQY56w7W3mKhOq6jkqhoF4E
         V9FRT6gzWROktROJjnJhZF/aElE5pQOF8U+ogxoxNdPafdufv0hGqi8Nf9QiM8bsU5db
         RCH+JEptnJ1GdlFLlo2EgEmhF7a/dwy8Y7GC0czSiBJCguj2zY6KJnYFzws6AIKE+v+7
         zaJA==
X-Forwarded-Encrypted: i=1; AHgh+RqOsKVL//yCoBcDa/YWMkDnro+TcoSkrkR61Am9/GFRUBLHi95G+R82OFhY8xeRN2a3hPvkXcwoFNS23GLI0w==@lists.infradead.org
X-Gm-Message-State: AOJu0YyqmY1Feo0WdTCTXBIQ2mpv7QUinABGR0iYfsQHl1gIkkXzHgt+
	8rZCKBn2v1XsaJqqnHA+ch++oMS6P3R13+0PDfOZ/tbPQBSua+lrCABKWND2hIjH35Y=
X-Gm-Gg: AR+sD10b7lpa+X34ASJpWgRyL1RldXk/2C8zEnI1ajKyULrvsXB21EQrAfxGuc01BJm
	cUaPJwDIWbAgBkyQOHP/Zvl9H1Anlf5A3tJf2Y4F+yxvQa3hTvpoiY+8Y0+acYyuThU4ng9w87y
	8T3fkB0Wdityj/oARLzyklc8FuULPY4uWO9J6Y/1gw/lxL4bqLpgRW8OJKFRHG+7D2r8e/vCoxq
	IvyejnILoiVcpXtz8cN4iInR5VTQWc1HMJrkycEju1DShMKm4MuHuI9BKprbYt02H5u0CDkMLsT
	sLo+l8YJ5X4lWi/XGENgGZMWlNfmzvfSoH0khFCqZNi+AW9SvoIjpyRWH9oNqUVNUCrDjYmKBON
	odUBhKP4RuG7dGMBgVwvaddFhXn9Xsaysrow5PIUzaGmMLLhyQ/2L/LxYU66hLySE0gjs7edv5b
	oa
X-Received: by 2002:a05:600c:3508:b0:495:5f00:9497 with SMTP id 5b1f17b1804b1-49573cd9427mr73102445e9.18.1784883856862;
        Fri, 24 Jul 2026 02:04:16 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:e584:93af:f3aa:2c19])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4957af6b10esm57168825e9.5.2026.07.24.02.04.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jul 2026 02:04:16 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
Date: Fri, 24 Jul 2026 11:03:54 +0200
Subject: [PATCH v2 3/7] clk: renesas: clean-up simple provider misuse of
 the consumer API
MIME-Version: 1.0
Message-Id: <20260724-clk-provider-simple-clean-v2-3-56f306156d25@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1091; i=jbrunet@baylibre.com;
 h=from:subject:message-id; bh=i4qllS4+L+pREPH0T4wiXzxc5q4nTV6C2Q3lI6XF9y4=;
 b=owEBbQKS/ZANAwAKAeb8Dxw38tqFAcsmYgBqYyqAHjrBMlLbsRDUuljqrEYPOyeyYAPzg/SXk
 jNGwdlpTaaJAjMEAAEKAB0WIQT04VmuGPP1bV8btxvm/A8cN/LahQUCamMqgAAKCRDm/A8cN/La
 hSkyD/4pUoLziZUxxkpmbPY/qvTAcrEdq7SBbVU6GpskFU5ov07moRfgR+6L+QnROKwYTiacIiV
 j1Id4mbcJS4lTGYyfhQHnpCpE6g4Ty5AOA5LGOh4j4/JBxdHL+gSrPGt14RoF6Yj4XQkhA1UHUu
 PUEYCZKL0dJtmaJtG+j9xQ1n8J5fLTJ4yYwDhVGPC0gFBub2VC55exg1nLw9H/BA9QuYfH/R6jB
 1gRBMy3ki4RKKZlrSF/HE+vSq17ymWXfrS3FSS34wfEJBVX61mFRwB0GHvC4MH3rUyoibQ+VXyT
 fxhDd8LpNOnsg4bjNSbln23x9I7vCg5gIqqxj3bytRpFG6vWz/hwCe241843XOXyP8UZXor57aU
 yCUv+ewWTn7vvtq/y0V8EFxe3K77GZ5obxj3nS1lws92lwHu5LoB7SmbeRYj3c8n2Cw4DJ4BP04
 aDLst1r0KfbFdesTIeiNVRM7Pj3uVdpGPq95OarAzPWMQ84Rw9b01YxXpPr4Qt0BO8crTXNH5bT
 9maeRb1sc1HL6+ksttwt1yZ9bpD0WzEbL1UOkKEbpdhQGM+2M9RzZzmlK0wbO4TnJ12TqHh5iWx
 gOM1ryGczqr/oYKu/yudM5d+TlB4vMwCZUy579E3zBPTZJJ6qG11DkD5DCSjYDdD8Ew2ujwzSo0
 pwxjz05NaJ3Z5Uw==
X-Developer-Key: i=jbrunet@baylibre.com; a=openpgp;
 fpr=F29F26CF27BAE1A9719AE6BDC3C92AAF3E60AED9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260724_020423_527633_EBAB2DB1 
X-CRM114-Status: GOOD (  11.45  )
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
 drivers/clk/renesas/r9a06g032-clocks.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/renesas/r9a06g032-clocks.c b/drivers/clk/renesas/r9a06g032-clocks.c
index 076f587dfd39..1da25e4fb4d7 100644
--- a/drivers/clk/renesas/r9a06g032-clocks.c
+++ b/drivers/clk/renesas/r9a06g032-clocks.c
@@ -1014,7 +1014,7 @@ r9a06g032_div_determine_rate(struct clk_hw *hw, struct clk_rate_request *req)
 	if (clk->index == R9A06G032_DIV_UART ||
 	    clk->index == R9A06G032_DIV_P2_PG) {
 		pr_devel("%s div uart hack!\n", __func__);
-		req->rate = clk_get_rate(hw->clk);
+		req->rate = clk_hw_get_rate(hw);
 		return 0;
 	}
 	req->rate = DIV_ROUND_UP(req->best_parent_rate, div);

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
