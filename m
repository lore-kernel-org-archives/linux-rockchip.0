Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FD47E95A67
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Oct 2023 22:46:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vj9L5IzvculGDhjpesUxEkBvfeJGWDdTSxgrlcY4zF0=; b=W9aaSgq3SuenHa
	Djd658h9OSKBo/0Y2agCaFAf0sPExmZiF04K0O2Kx8NZh4CmEox0LbqpSJFo8A/v4mr8uv1q+lO7G
	7hYtPWkIqar1h2PA440Qo6fJRM6WF0XVAZK4kQGsDgAHQ6F5LZaP+9ILZlBtntlV+nVVT0R/6GKgc
	4VZxGnTJVeD+8v8uVJTO2HMkFO9sAYMQwdq59wFjv4xSKUdi6r+zdAkMoo6VtBGpMrq3yuBafyvYx
	C0LGLeOgHo4zApTQ6O9hPOvmMCiWBn53fSyJb4JecfFbk8q1J5mKLCV19BIld8UQ5d5lZJZCddPhb
	GeiiX0O9wuVlWpoFH/mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpcXG-009Q4I-1K;
	Sun, 08 Oct 2023 22:46:06 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpcXD-009Q3k-17;
	Sun, 08 Oct 2023 22:46:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 74AD2CE0B08;
	Sun,  8 Oct 2023 22:46:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71A95C433C7;
	Sun,  8 Oct 2023 22:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696805160;
	bh=kotJJ9gsZkQcnHWqrlxm2deUqRwlycTaO/tg2RqNNko=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=n2k3nv66A7YBlXrB+jn/PMmf6Kbwu1QoO5H+tphBlky4GMOjW4R7XqmXs/eNXcmr1
	 hk4vuH7fVWuNoawxFa3MyQCO871yng630/NymD5hLqsIbrp6D6U5byi4+F97ZINg2V
	 6rwvVDTbqifL2wF/faMWkaLEFQvPfkqhB7m77IVtYb2pBeU0Npu3q40mrz5lvuaYRr
	 ciqDwM3eNE/Z38lx+7CXnXA1RETJDcJ/4mJyLEVgCupZjXLLslt/Q8DNTQqzPn6s0q
	 YSCaeMuriz9y7ylXS8teEJ8gv2AsaNeXUzW2Q63zlLa7mMVD3MahYpIz2qXMGaxGzh
	 lVqAk/rR2bYFQ==
Message-ID: <729f0d44-7db9-46d2-bdee-9a58022d9229@kernel.org>
Date: Mon, 9 Oct 2023 07:45:55 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] clk: Use device_get_match_data()
To: Rob Herring <robh@kernel.org>,
 Charles Keepax <ckeepax@opensource.cirrus.com>,
 Richard Fitzgerald <rf@opensource.cirrus.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, David Lechner <david@lechnology.com>,
 Sekhar Nori <nsekhar@ti.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Tomasz Figa <tomasz.figa@gmail.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 Alim Akhtar <alim.akhtar@samsung.com>, Tero Kristo <kristo@kernel.org>
Cc: patches@opensource.cirrus.com, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-omap@vger.kernel.org
References: <20231006213959.334439-1-robh@kernel.org>
From: Chanwoo Choi <chanwoo@kernel.org>
Content-Language: en-US
In-Reply-To: <20231006213959.334439-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231008_154603_589276_D54FA338 
X-CRM114-Status: UNSURE (   8.33  )
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

On 23. 10. 7. 06:39, Rob Herring wrote:
> Use preferred device_get_match_data() instead of of_match_device() to
> get the driver match data. With this, adjust the includes to explicitly
> include the correct headers.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  drivers/clk/clk-lochnagar.c             |  9 ++-------
>  drivers/clk/davinci/da8xx-cfgchip.c     |  8 +++-----
>  drivers/clk/davinci/pll.c               | 10 +++-------
>  drivers/clk/davinci/psc.c               | 10 +++-------
>  drivers/clk/qcom/gcc-msm8960.c          | 13 +++++--------
>  drivers/clk/qcom/gcc-msm8974.c          | 10 +++-------
>  drivers/clk/qcom/kpss-xcc.c             |  9 ++-------
>  drivers/clk/qcom/krait-cc.c             | 14 +++++---------
>  drivers/clk/qcom/mmcc-msm8960.c         | 16 +++++-----------
>  drivers/clk/qcom/mmcc-sdm660.c          |  8 ++------
>  drivers/clk/rockchip/clk-rk3399.c       |  9 ++-------
>  drivers/clk/samsung/clk-exynos-clkout.c |  8 +++-----
>  drivers/clk/ti/adpll.c                  | 14 ++++----------
>  13 files changed, 42 insertions(+), 96 deletions(-)
> 

For samsung exynos,
Acked-by: Chanwoo Choi <cw00.choi@samsung.com>

-- 
Best Regards,
Samsung Electronics
Chanwoo Choi


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
