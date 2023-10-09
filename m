Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF5F2E95A91
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Oct 2023 14:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yh03iLIXVY5BFIV7aCeNXjbkzior8lKXundJYcz/zcQ=; b=wYj+PQa2cg/DQ5
	u+IgwkCiFbsJzNkWvoesjS5GTiORVNlR8CDdevFHxBuL9XUUbTdVzwB5257f2u/hE5W5/h9tC1T67
	18gSFIsC0Odskr4Ao+tWGk3lwq3JBM7Fh1rwVGZ+Cx3o/jLe+QZ7GFQtfVwFhFgrU6Y+atarPGiI1
	HZSYPTbIF9+nZxhdaOTND9RZtFJYy9mVE/EBtdSQlnH99FETsrfyJDAJFsnobnXD1xjrkvxOiqfl7
	m9Sw7qbRALzXASQXUZZE2VyL9vEgo0ym4RpB+EQM7MoBYLwPiP56n4Soee5lrCyxTVkUwHb/Y7mCk
	BylR8Nzj6zqej3jEO0YA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpra6-00AyWB-2y;
	Mon, 09 Oct 2023 14:50:02 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpra3-00AyUF-2h;
	Mon, 09 Oct 2023 14:50:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id CE0DBB81247;
	Mon,  9 Oct 2023 14:49:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96DDAC433C7;
	Mon,  9 Oct 2023 14:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696862997;
	bh=0dalE74v4lnBvJvSmP3JrLr6kKKhrnt8ulY17ktBunY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lkGL2QNf3tO/XWzRQ2GvFSyjzaIkfLIPk2DhuXpcQ9zcbaDBMqb4f579lSVRwSVh9
	 Ll0pN5BNa22w/Nabvbi9iv6T27Ll6UefSZJKdaq2qneI7BvLY4WkmYRB8/tqGxJIx2
	 prUmCl18aPQ223X1EfOGyNwcSYqy8MSQSApg3LOGzM4b2cIi0IjaVkIYyHkuFtc0UJ
	 eEFrtOFp6aGo3mc+28cyhI4CsE3WNxFlB2U5wPJCSe6mhSLlaoDHFkUC8yxTuL4d8J
	 bLnHzdKhMxLngJIBl72IbwCt2ktlXA9Uck1Rd1pJXPMgwqjlW/6vuzVWYxaQyANx8O
	 s/TKH4QpRe1/g==
Date: Mon, 9 Oct 2023 07:53:53 -0700
From: Bjorn Andersson <andersson@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Charles Keepax <ckeepax@opensource.cirrus.com>, 
	Richard Fitzgerald <rf@opensource.cirrus.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, David Lechner <david@lechnology.com>, 
	Sekhar Nori <nsekhar@ti.com>, Andy Gross <agross@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Tomasz Figa <tomasz.figa@gmail.com>, Chanwoo Choi <cw00.choi@samsung.com>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Tero Kristo <kristo@kernel.org>, patches@opensource.cirrus.com, 
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-omap@vger.kernel.org
Subject: Re: [PATCH] clk: Use device_get_match_data()
Message-ID: <4dvxssedquxbq4hl6pnkju73n2iilzhaeuak5jgmamms7r33yw@eof45x7mt6co>
References: <20231006213959.334439-1-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231006213959.334439-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_075000_044163_313DDB00 
X-CRM114-Status: UNSURE (   8.68  )
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

On Fri, Oct 06, 2023 at 04:39:58PM -0500, Rob Herring wrote:
> Use preferred device_get_match_data() instead of of_match_device() to
> get the driver match data. With this, adjust the includes to explicitly
> include the correct headers.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>

Nice, thanks for cleaning this up.

Reviewed-by: Bjorn Andersson <andersson@kernel.org>

Regards,
Bjorn

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
