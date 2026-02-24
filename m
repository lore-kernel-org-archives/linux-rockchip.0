Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91D21E9B268
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Feb 2026 14:16:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AgCdaRFaShvVdt3mtCWFh7wIcFY1POvBuDl2UyXCh+8=; b=IuEZNpX6chyOR1
	ZdRpJeatcIZK9f0k4qENcW1xZl48R7BFEppp2C1xZ1TV0P0dMtLwNACpy2NAy+G0NHOXMA0xfITGm
	WSPM5EatTJLD20dkJ2iOlW+Jqj7RCCnYQAlO6b+bP3854s7CgvX5wjgMdcIPrRTv1zuKO/jZT+V4g
	MOPMS0Wk4PJ2tuYy0omJh0AOcp6Q+C3phYCL3SwZwdc7GK53x2FrQkE9ARqDcKbJnbYfKcVLUH9g3
	Hk3ZkrN4IxnOGBSHrvNruNA25994dNtCnN2vNFkPJMUTlRt2MOtqWnXVh7wQKVO/WDdEeE53FXB8z
	qe8L8MhYNwSHrbzgGWOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vutCt-00000002Be1-0b6T;
	Tue, 24 Feb 2026 14:16:11 +0000
Received: from smtprelay0012.hostedemail.com ([216.40.44.12] helo=relay.hostedemail.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vutCr-00000002Bdg-1ksx
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Feb 2026 14:16:10 +0000
Received: from omf05.hostedemail.com (a10.router.float.18 [10.200.18.1])
	by unirelay03.hostedemail.com (Postfix) with ESMTP id 8EBBCB6531;
	Tue, 24 Feb 2026 14:16:07 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf05.hostedemail.com (Postfix) with ESMTPA id 6D6442000E;
	Tue, 24 Feb 2026 14:16:04 +0000 (UTC)
Date: Tue, 24 Feb 2026 09:16:01 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas
 <bhelgaas@google.com>, linux-rockchip@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-trace-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org, Masami Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH v4 3/3] PCI: dw-rockchip: Add
 pcie_ltssm_state_transition trace support
Message-ID: <20260224091601.48a7b3c0@fedora>
In-Reply-To: <20260224091115.6e32c38e@fedora>
References: <1769047340-113287-1-git-send-email-shawn.lin@rock-chips.com>
	<1769047340-113287-4-git-send-email-shawn.lin@rock-chips.com>
	<20260224091115.6e32c38e@fedora>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Queue-Id: 6D6442000E
X-Stat-Signature: cc5i4wxriye491rn8zriqqfuxc8gtdqc
X-Rspamd-Server: rspamout08
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX18AB8ACkvte6gVFtUx8GaJ9v/c3lZVdLqM=
X-HE-Tag: 1771942564-529778
X-HE-Meta: U2FsdGVkX190E3yiyW8l9UUe2SAMJZEOLI06WlmLAik1NFA66P2vOv8OedoL3lBFc9fwc5gFrcDb+qgru7EClOj0yCS7Ve91dl+cxpxcnhv3wDgr4QQJPduntak+FBeIR5NmZfMoKlIDpe2p+W/chneL6zC3+e+qfb5CrPiIXNvcbfVBV+PTIByjNlQi0AcdOYOnC45c5JSdU6jhJXttA+4p/przb6flOvky/rhpOpZVoIQFx60+vxHHgr+g7QSdG7FJgUlA6UQ3Z4i2HmOgqtI6Vl4urc5Tkxb0mAA0Kmf85s2glhhH23ct87AY7n9TwUWVmhuEZSYkJRbZ35MV1Vkdoke9kdRYCnOfvtnJc/pbvMdUb7UMNG4G3yjpfce2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_061609_542684_D23F5F6D 
X-CRM114-Status: GOOD (  21.66  )
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

On Tue, 24 Feb 2026 09:11:15 -0500
Steven Rostedt <rostedt@goodmis.org> wrote:

> > +#ifdef CONFIG_TRACING
> > +static void rockchip_pcie_ltssm_trace_work(struct work_struct *work)
> > +{
> > +	struct rockchip_pcie *rockchip = container_of(work,
> > +						struct rockchip_pcie,
> > +						trace_work.work);
> > +	struct dw_pcie *pci = &rockchip->pci;
> > +	enum dw_pcie_ltssm state;
> > +	u32 i, l1ss, prev_val = DW_PCIE_LTSSM_UNKNOWN, rate, val;
> > +
> > +	if (!pci_ltssm_tp_enabled())
> > +		goto skip_trace;  
> 
> You can use:
> 
> 	if (!trace_pcie_ltssm_state_transition_enabled())
> 		goto skip_trace;
> 
> The above is a static branch. That means when tracing is disabled, it is
> basically:
> 
> 	goto skip_trace;
> 
> and when tracing is enabled it is a nop.
> 
> -- Steve
> 
> 
> > +
> > +	for (i = 0; i < PCIE_DBG_LTSSM_HISTORY_CNT; i++) {
> > +		val = rockchip_pcie_readl_apb(rockchip,
> > +				PCIE_CLIENT_DBG_FIFO_STATUS);
> > +		rate = FIELD_GET(PCIE_DBG_FIFO_RATE_MASK, val);
> > +		l1ss = FIELD_GET(PCIE_DBG_FIFO_L1SUB_MASK, val);
> > +		val = FIELD_GET(PCIE_LTSSM_STATUS_MASK, val);
> > +
> > +		/*
> > +		 * Hardware Mechanism: The ring FIFO employs two tracking
> > +		 * counters:
> > +		 * - 'last-read-point': maintains the user's last read position
> > +		 * - 'last-valid-point': tracks the HW's last state update
> > +		 *
> > +		 * Software Handling: When two consecutive LTSSM states are
> > +		 * identical, it indicates invalid subsequent data in the FIFO.
> > +		 * In this case, we skip the remaining entries. The dual counter
> > +		 * design ensures that on the next state transition, reading can
> > +		 * resume from the last user position.
> > +		 */
> > +		if ((i > 0 && val == prev_val) || val > DW_PCIE_LTSSM_RCVRY_EQ3)
> > +			break;
> > +
> > +		state = prev_val = val;
> > +		if (val == DW_PCIE_LTSSM_L1_IDLE) {
> > +			if (l1ss == 2)
> > +				state = DW_PCIE_LTSSM_L1_2;
> > +			else if (l1ss == 1)
> > +				state = DW_PCIE_LTSSM_L1_1;
> > +		}
> > +
> > +		trace_pcie_ltssm_state_transition(dev_name(pci->dev),
> > +				dw_pcie_ltssm_status_string(state),
> > +				((rate + 1) > pci->max_link_speed) ?
> > +				PCI_SPEED_UNKNOWN : PCIE_SPEED_2_5GT + rate);
> > +	}
> > +
> > +skip_trace:
> > +	schedule_delayed_work(&rockchip->trace_work, msecs_to_jiffies(5000));
> > +}
> > +

Hmm, so basically you only want to call the work when tracing is
enabled? That's what I was thinking should be enabled by the reg and
unreg functions. That is, the reg should enabled the delayed work, and
the unreg should disable it from being called.

This looks like it calls the work regardless of if tracing is enabled
or not. Why waste the cycles when tracing is disabled?

-- Steve

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
