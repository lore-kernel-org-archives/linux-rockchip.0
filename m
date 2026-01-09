Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8967D232CC
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Jan 2026 03:43:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=etKOpiKfclO+J2k0IW+qmkhsSsY4xL2uPjEag4DFZgs=; b=RCb07rWdOTg/HL
	t2aofEuLTUrcjyXzZwPOxjmlXdup/3IbLYqfp+MPFstYtDWWjFDuoxapLLDZRXFR1vLEC0RPuSGtc
	LA94rQXL2dPuVEVbl5IHYEAwGiiKex1iTnQcPWsFy9VrYCle5pWR6z41eH4D+FSPRIO+ixr14iarx
	7iUiPjNSfoFUXEyr0E8Jq2FIYq9Rw8UuoZ5wvHiLOSUPpk22DQv4ER0fsnH4Hmi/foPL9vBfANMoL
	ej12f1YhimOUR5jeTs5w8WyerMSTi4bHR5ahPJW150P2bYVr+jekz1COe2uW0khlJI9UIL9wc+4Mz
	0qUfNKvA6RDyXUvsvDfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve3Ot-00000001CNK-27gu;
	Fri, 09 Jan 2026 03:42:59 +0000
Received: from smtprelay0014.hostedemail.com ([216.40.44.14] helo=relay.hostedemail.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve3Op-00000001CLx-14qP
	for linux-rockchip@lists.infradead.org;
	Fri, 09 Jan 2026 03:42:57 +0000
Received: from omf16.hostedemail.com (a10.router.float.18 [10.200.18.1])
	by unirelay03.hostedemail.com (Postfix) with ESMTP id 21759B86AB;
	Fri,  9 Jan 2026 03:42:50 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf16.hostedemail.com (Postfix) with ESMTPA id 1CAB32000E;
	Fri,  9 Jan 2026 03:42:48 +0000 (UTC)
Date: Thu, 8 Jan 2026 22:42:46 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas
 <bhelgaas@google.com>, linux-rockchip@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-trace-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org, Masami Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH v2 1/3] PCI: trace: Add PCI controller LTSSM transition
 tracepoint
Message-ID: <20260108224246.316e3ee0@fedora>
In-Reply-To: <1767929389-143957-2-git-send-email-shawn.lin@rock-chips.com>
References: <1767929389-143957-1-git-send-email-shawn.lin@rock-chips.com>
	<1767929389-143957-2-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Queue-Id: 1CAB32000E
X-Stat-Signature: ixen3nko6phz4ok8ow8qaq99cnwj1w9q
X-Rspamd-Server: rspamout08
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX1+VwLkx5rS4QfHZ8DMusTQAIQzr8G333kA=
X-HE-Tag: 1767930168-399124
X-HE-Meta: U2FsdGVkX18Ltj9i1968eJbmgEAL+747dfB1oVBPxwLb1uXRsYerWn2Rr18GkjXPeyB0dgstmGgCc5Ftp8WbtdC9PisjKj5OIVhhd0ExdcvXyChlc7ORzNPXvrSbuKIWGxQzATADF/bkugHttN//qYQCLYVCBwA5GqUob9gXvwqzhBAUXq0DrGcWiKwY+Vxv4fXw59c7G8bAXph65pmOihRBL+3o4vjRTFWa5FKPiAa6jTyYC2lD2lA6w8CElCc4vkoFfZE4H0Knu0SriyYhugrdLDlpw0sRuzOlnGcf+XNmnzuQyrlELYrZXQwRAF7XbWx3GN85gf6BQfvLTDxj3BLjU0WP+whaVs1MGmMLXKqiuYF4WwHKiaenl3/5mVt7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_194255_879742_9B6AF6B7 
X-CRM114-Status: UNSURE (   5.72  )
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

On Fri,  9 Jan 2026 11:29:47 +0800
Shawn Lin <shawn.lin@rock-chips.com> wrote:

> +	TP_printk("dev: %s state: %s rate: %s",
> +		__get_str(dev_name), __get_str(state),
> +		__print_symbolic(__entry->rate,
> +			{ PCIE_SPEED_2_5GT,  "2.5 GT/s" },
> +			{ PCIE_SPEED_5_0GT,  "5.0 GT/s" },
> +			{ PCIE_SPEED_8_0GT,  "8.0 GT/s" },
> +			{ PCIE_SPEED_16_0GT, "16.0 GT/s" },
> +			{ PCIE_SPEED_32_0GT, "32.0 GT/s" },
> +			{ PCIE_SPEED_64_0GT, "64.0 GT/s" },
> +			{ PCI_SPEED_UNKNOWN, "Unknown" }

As these values are all enums, you may want to add in this file:

TRACE_DEFINE_ENUM(PCIE_SPEED_2_5GT);
TRACE_DEFINE_ENUM(PCIE_SPEED_5_0GT);
[..]
TRACE_DEFINE_ENUM(PCIE_SPEED_UNKNOWN);

So that this can be parsed by user space tooling such as trace-cmd and
perf.

-- Steve


> +		)
> +	)
> +);
> +

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
