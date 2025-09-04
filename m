Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55F61CA1013
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Sep 2025 19:52:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kbgquu6ABnYQ3Qbxw4tpkzZFNnG2j69ymMo92FU/bj0=; b=qTVIrBMf4Fihh2
	mAQ1uPXRk9EmeVbpvG12y9wHPgaWGQfypZQrUHJsD1aN0U+sgTD22qkZFbi9QB6pnVLtWk1rcAEBd
	DM4Z+PNIvgBa8xCEV35jJkQtGEcSyfiZfsOQdRCD4oZdadIj6m488NR8Cz33tWaMLYWd26bJHQb21
	s0LpjlN1KA6+Rv1XY0dW3yLT15TCWWK2Q6OeArriAnZ+us0bgivGqBieG8xATQBGi5D3p4csmM86B
	bXLsU/TM9EhrE/clxQkKLtWjLDA/+HLT+ichyk3rjfXg7kh+4+2g4dwKH3njFP79AZq1omf8lSjZd
	hstd1QlJsEnme90qUczA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuFzu-0000000E1vk-0Wt0;
	Thu, 04 Sep 2025 19:51:54 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuB3t-0000000CFg5-1bNz;
	Thu, 04 Sep 2025 14:35:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id C64C160210;
	Thu,  4 Sep 2025 14:35:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4991CC4CEF0;
	Thu,  4 Sep 2025 14:35:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756996540;
	bh=zI6dlT7OfZMIFDyCs2yOrFWg2VXfUlEcp0qJeItApO0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=W+BqF3zyMBbLODFjNyiAuAEyCtRns/mqv+H9HndxC3iKNf3z/4J/jCuKNAl5evtkt
	 HaHHknaPNaPM8UHHc4aYtWQ2maQXO+lXKmffFqsB32SQjtzkd7C0QHzyW+ZHWCeNA1
	 5Zk6XmzwlEjXUsZ9YSHfWb++3W2n7kiIY57bi/TYPL+SBmR4URCuAgy+UjTkym491x
	 GWndwGJKIXbcWxY5CxfzrU/Gs8/l7coFDPlqOceCwf5hv4Ys5iN2NRlunCjpaBBJi/
	 au2wEFxhFBKTVZ5z1oNsGC9jMHqj7TRtgHL3FQatPNn3P5MB42z22fB04/7qyu3rRA
	 //A/W+hLISu7g==
From: Bjorn Andersson <andersson@kernel.org>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Vladimir Zapolskiy <vz@mleia.com>,
	Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Michal Simek <michal.simek@amd.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Andrea della Porta <andrea.porta@suse.com>,
	Maxime Ripard <mripard@kernel.org>,
	Brian Masney <bmasney@redhat.com>
Cc: linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	sophgo@lists.linux.dev,
	linux-arm-msm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: (subset) [PATCH 0/8] clk: convert drivers from deprecated round_rate() to determine_rate()
Date: Thu,  4 Sep 2025 09:35:32 -0500
Message-ID: <175699653023.2182903.15754546225268713483.b4-ty@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250828-clk-round-rate-v2-v1-0-b97ec8ba6cc4@redhat.com>
References: <20250828-clk-round-rate-v2-v1-0-b97ec8ba6cc4@redhat.com>
MIME-Version: 1.0
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


On Thu, 28 Aug 2025 20:38:19 -0400, Brian Masney wrote:
> Here's a minor v2 to my larger 114 patch series at
> https://lore.kernel.org/linux-clk/20250811-clk-for-stephen-round-rate-v1-0-b3bf97b038dc@redhat.com/
> that only includes 8 patches where a v2 was needed. To reduce the noise
> in everyone's mailboxes I'm not including the other 106 patches that are
> still valid. I will supply a 'b4 am --cherry-pick xxx' command on the
> other cover letter to exclude the patches in this series.
> 
> [...]

Applied, thanks!

[2/8] clk: qcom: alpha-pll: convert from round_rate() to determine_rate()
      commit: 0e56e3369b60506ac030546c8a63a1aef153d486

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
