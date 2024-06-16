Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E3B9C27C6E
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Jun 2024 07:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TqXZhbXPYKzY17ZV2K91y2S5YATqDG9QP8i/BHA7mIQ=; b=2MzMJ/QxDqYN6T
	uYZaGiZCz6a8Mf58JX6O3ci5jgTzoMt+GbUswAUETAypBQWCCTZEljojkzurZaTmQQ466QI+e6snD
	nEXLJyMaNwLkKASLNEX2Mrg5rvic2gYmyBB/esR530fa2PerukRbsyvrDPC2PR09HN1RBH07KqUVt
	DO/BCsqJkZvcjgV0/0s1ANnMuTaE0OBUBUD98H3qJ7YMTUbKXPBChvJYFSI0DoY0UuSwr98oKg1j7
	kONWxqJt9xVwkL38MQICc6j5R75mq4qmWjLuSQJjt+4PINNTMCUq+RIaw1VPuxq2MqH3UhTYg3sQO
	uPhXPsV7v7heB2crfBgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIkFN-000000070ln-3VKb;
	Sun, 16 Jun 2024 07:24:17 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIkFK-000000070ki-2O6i
	for linux-rockchip@lists.infradead.org;
	Sun, 16 Jun 2024 07:24:16 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-a6f0c3d0792so401199566b.3
        for <linux-rockchip@lists.infradead.org>; Sun, 16 Jun 2024 00:24:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718522651; x=1719127451; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p3+k9sB6bIvCFm1HjBgH8dCg7qh1UZx1fKQ1LomFQ5M=;
        b=E+1gMmRVgdHl5rXTJQ/OMEP8EE8MJoew4NaDsn0UFxXgnc7uQ/xfpchONBiHglqwWf
         7nKFekk17eqfvfTb84zGx9WpsXkrJjcEhO+iBUCPE6a8SI7PwGjybr9JYpb19qKtj8Fd
         qpyt+avsprZQsd0L/8cuXBQUAubPld0U6c+GxrPualqCUwg/kq3tYRTRKztNG1FlnDI9
         GE5Z2ilCKnUoJlLIehmL/bXLVh3YUMCD1pvB0a4+6pvuhdtraK2a4/Mk3KAPTlNejJfr
         7J4I18gElC9Tx2VVnHBCMJBiuY7ifIlcPwZdwGhfpUC4G2G2UevkbofQUV3p5ZnPNqZh
         UjHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718522651; x=1719127451;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p3+k9sB6bIvCFm1HjBgH8dCg7qh1UZx1fKQ1LomFQ5M=;
        b=CRhXyT5UDktTXbIShp9TfMIbfcUJeyMNJZzKzB4hOcgYKlUABUF0M2vWN7v/wro03j
         Ozd3UlSzlgKS8+5Eiz6P/Ba/VCNkWQfsZFnM+4nBOT4Bj8uLF5PbcjgTjzjq4XWwEK3V
         bX6vmhWMMzjkW4tCK/zz/aoZFThRckNB24FoBcNON8s3yeXC87KleAavUL3RqGdzdZ5B
         JXxC3LSojH3OsSw5K5u6p6IPE1Xeu9fEtPgc/tvrVV2GyBnhArsUCLaNmNm+dUALRTh4
         rVmqouyw5mQes9rRkUgnWtHXkkIMaeH/dq7MN+42nNFWlMrcRL7UB7y+5LeGC+Z/AbNw
         HhEw==
X-Forwarded-Encrypted: i=1; AJvYcCXVpgvA9xrmHwoq86uF0+dzISnC2D/SKqiMXEaZ0RhxKRaGkUJB6plHDIw0eiqDPzTkUmWUnJ355QE7KWwf7BQ1Kpc/gHGDBrT+AZ2VRQaDfdDa
X-Gm-Message-State: AOJu0YzhTWK+pgbSxjS/uMBJ6Of4wvvMhHIyHXjj4EVpvmxFL7XviE7a
	8fsXtwOX3WUdNH8ZJZ0yeUMgYV97TM9kd4lrPCttwqG4i0JjxpszePHGJLVLZBxQqRt/7HrVtoF
	+
X-Google-Smtp-Source: AGHT+IG6FwqrVyI5Y84CmiJBAmC7qtLBsb1k75sJ/5JFgxqCs97InBwD6RcdfDPdrerJqC+hG8FgeA==
X-Received: by 2002:a17:906:25d5:b0:a6f:586b:6c1 with SMTP id a640c23a62f3a-a6f60dc56f0mr429149466b.56.1718522650779;
        Sun, 16 Jun 2024 00:24:10 -0700 (PDT)
Received: from [127.0.1.1] ([78.10.207.147])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f5f8f6eb3sm320840066b.143.2024.06.16.00.24.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Jun 2024 00:24:10 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Sam Protsenko <semen.protsenko@linaro.org>, linux-clk@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
In-Reply-To: <20240606161028.2986587-4-andriy.shevchenko@linux.intel.com>
References: <20240606161028.2986587-1-andriy.shevchenko@linux.intel.com>
 <20240606161028.2986587-4-andriy.shevchenko@linux.intel.com>
Subject: Re: (subset) [PATCH v1 3/4] clk: samsung: Switch to use
 kmemdup_array()
Message-Id: <171852264936.6236.3386941184729055865.b4-ty@linaro.org>
Date: Sun, 16 Jun 2024 09:24:09 +0200
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240616_002414_765092_D4D92C1B 
X-CRM114-Status: UNSURE (   5.91  )
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


On Thu, 06 Jun 2024 19:09:33 +0300, Andy Shevchenko wrote:
> Let the kememdup_array() take care about multiplication and possible
> overflows.
> 
> 

Applied, thanks!

[3/4] clk: samsung: Switch to use kmemdup_array()
      https://git.kernel.org/krzk/linux/c/7666718892f2a8582127f584fdbf5dada59af2d8

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
