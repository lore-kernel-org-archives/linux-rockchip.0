Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C20A4D26D94
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Jan 2026 20:18:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=/zPjAaCvEkYDjJgBlQi7aljMUc4y2Q8Oo89Bwv5YQiE=; b=Bn0AVsljKlE51v
	u8Mp7blzL0+gWWC3KA7Q6VKzkgqUYyp5gnnQWNRIq+pOG2GoI+CoDNeSmGXBSVVpW60TGpAtzg5Wo
	FspyUdAOYTPfuYDhelRIQAUvkHbhiEbrjfftm2iPfQzQ3AIhbuz6z/BtA5ShAMU1ilN7kPttZWv32
	fqR2nUIXJm8p34MU9wLul/bc1grHJJzId9J/77LD1mAGO1eGnQy98U/eeAK/HSDDev088WMgcE7AJ
	8DBbwxWUPTPXzph175utLnmaIEF87RtGARkDSC88uxoaMiEw80f7lYTTAxqtJvThZYUK5e6D99sWn
	SwviymypYEwRrloCccjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veIwe-0000000301E-0b7r;
	Fri, 09 Jan 2026 20:18:52 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veIwb-0000000300T-30eu
	for linux-rockchip@lists.infradead.org;
	Fri, 09 Jan 2026 20:18:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id EB34943AB3;
	Fri,  9 Jan 2026 20:18:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE10EC4CEF1;
	Fri,  9 Jan 2026 20:18:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767989928;
	bh=IJvX1ytDf67uxIGz3eh6b9Td+Lu9NTcFLmsU6lIzymQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=DoVLLnHE+aJaKH0wUrFjsPtZUvY8uUnk6PzISQmstIJsaIclhuwlFqBXRyVLJVA3b
	 kqfPodxl+Cw3JnripYq8xKTQQBIM1Ats13wMcWW3vczIMRcfLRyjBkAA7rWxRp2QPT
	 JS4l9Hkgytg6jN9DZM6UfyxergTgu8rSStB6NdWuuGxJJtZ7qJuEo3QrntFMsWs/+Z
	 7fYCwib+N22UmQ3xmR6HeMPPBerZzM6V6xpyKouWJdMzi5NYd1jHQ21MRBNRbknvAQ
	 oXl3cjRvpkoJayUejC/RU3uo/96ZPcEu4Qx63J07dPMMxfxucSBb7M4JwI/gfZwTNi
	 jfocW8mmRtUXQ==
Date: Fri, 9 Jan 2026 14:18:47 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-trace-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
	Steven Rostedt <rostedt@goodmis.org>,
	Masami Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH v2 2/3] Documentation: tracing: Add PCI controller event
 documentation
Message-ID: <20260109201847.GA561061@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1767929389-143957-3-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_121849_777735_656EE7B2 
X-CRM114-Status: UNSURE (   7.08  )
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

On Fri, Jan 09, 2026 at 11:29:48AM +0800, Shawn Lin wrote:
> The available tracepoint, pcie_ltssm_state_transition, monitors the LTSSM state
> transistion for debugging purpose. Add description about it.

s/transistion/transition/

>  Documentation/trace/events-pci-conotroller.rst | 41 ++++++++++++++++++++++++++

s/events-pci-conotroller.rst/events-pci-controller.rst/

> +The PCI controller tracing system provides tracepoints to monitor controller level
> +information for debugging purpose. The events normally show up here:
> +up here:

Wrap text to fit in 80 columns (unless it's a command line or similar
that shouldn't be split).

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
