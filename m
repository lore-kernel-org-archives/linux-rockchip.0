Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31F10C43334
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jun 2022 14:52:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eEYyJ8vbKIQQbUHK8CHTRjMdjlQgM/F1GP4sasUvY9E=; b=ZmTh2YcURKQykL
	RVJ0mj+ok2zDZnMLp4gmFz8qYoPLHp143BrI/nmFUXZBsBB5r71UBD5uxis2eSR5xsXFEw1BOr5hp
	ig9ncGLf2cXoLJJn1xxOHnN2OsJFrSdWO4qOCZ2sTaD5W1oWLj61b40F6zLYNlWlfyhW/P6tkeoHz
	OxICxul5MDeo3CvyV9+MSd0NVS9BXTIK+attshXC1Zl5ftCs3zMND1G7iqp9NonsVQwblAt9XuU/O
	EXbskfBnkrhRN1BpAyiypUto9wSW210gSqvVEF0K1cA0svBx8Mqmnfzv5X3JXFs3h8IZYHSISESxC
	n5MWMDJ0wrpTIUkc94YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyE56-001bQp-5e; Mon, 06 Jun 2022 14:51:48 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyE4t-001bOG-6V; Mon, 06 Jun 2022 14:51:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 364D11480;
	Mon,  6 Jun 2022 07:51:31 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 8D0063F73B;
	Mon,  6 Jun 2022 07:51:29 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Sudeep Holla <sudeep.holla@arm.com>,
	Jeffy Chen <jeffy.chen@rock-chips.com>,
	Etienne Carriere <etienne.carriere@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Liang Chen <cl@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH] firmware: arm_scmi: Relax BASE protocol sanity checks on protocol list
Date: Mon,  6 Jun 2022 15:51:06 +0100
Message-Id: <165452690983.3957918.16899232286285510282.b4-ty@arm.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220523171559.472112-1-cristian.marussi@arm.com>
References: <20220523171559.472112-1-cristian.marussi@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220606_075135_322595_63B14ADF 
X-CRM114-Status: UNSURE (   5.85  )
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

On Mon, 23 May 2022 18:15:59 +0100, Cristian Marussi wrote:
> Even though malformed replies from firmware must be treated carefully to
> avoid memory corruption Kernel side, some out-of-spec SCMI replies can
> be tolerated to avoid breaking existing deployed system, as long as they
> won't cause memory issues.
>

Applied to sudeep.holla/linux (for-next/scmi), thanks!

[1/1] firmware: arm_scmi: Relax BASE protocol sanity checks on protocol list
      https://git.kernel.org/sudeep.holla/c/122839b58a

--
Regards,
Sudeep


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
