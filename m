Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCF5DE9B26B
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Feb 2026 14:11:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UPybJyY+Rr1DXZsouhb2Vt8RJ81YXmWiKulkLujXuf8=; b=Vo6QXhKZG4t0/+
	UNgJmrJbZBkYxpqT5nsrdcosA9ErYz3XW4fDLCxr9xocMtLJyvZQrPvhbpW4R9kLTeEX1jLad5NI/
	RvyInTCXZsk9FFv1ZySsK5tb5F9seCqwkUm7aUOAy7bqZGL/xLy7GaAsGGmG8hSDz7Q5cfzfoFjnx
	Q+sLwhCHQFsYjkYcIwzndWerJUrNQ3ZCEkLn/6oDrbd+81xJqd4v+6J64sxI0nT12U/uDqFP0f+uZ
	iwudOofg38uimuwFxZfEDWZ70f8pIgdtrQIAAhH48Hs45B2V/DgMzefDiYldwvv4ZzeNDgJKQ7z8z
	l8aZ6H3BjwDJF1Jjbe+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vut8I-00000002BRk-2M2e;
	Tue, 24 Feb 2026 14:11:26 +0000
Received: from smtprelay0015.hostedemail.com ([216.40.44.15] helo=relay.hostedemail.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vut8F-00000002BQL-25xG
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Feb 2026 14:11:25 +0000
Received: from omf03.hostedemail.com (a10.router.float.18 [10.200.18.1])
	by unirelay01.hostedemail.com (Postfix) with ESMTP id C8A0D1BFB1;
	Tue, 24 Feb 2026 14:11:20 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf03.hostedemail.com (Postfix) with ESMTPA id 430B06000E;
	Tue, 24 Feb 2026 14:11:18 +0000 (UTC)
Date: Tue, 24 Feb 2026 09:11:15 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas
 <bhelgaas@google.com>, linux-rockchip@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-trace-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org, Masami Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH v4 3/3] PCI: dw-rockchip: Add
 pcie_ltssm_state_transition trace support
Message-ID: <20260224091115.6e32c38e@fedora>
In-Reply-To: <1769047340-113287-4-git-send-email-shawn.lin@rock-chips.com>
References: <1769047340-113287-1-git-send-email-shawn.lin@rock-chips.com>
	<1769047340-113287-4-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Server: rspamout06
X-Rspamd-Queue-Id: 430B06000E
X-Stat-Signature: w4cqx668oktykqkgirndr9eowzyxdk1q
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX182SeYdg6Tx8AgrBTA2LQlb9aZE1SWoF7Y=
X-HE-Tag: 1771942278-860096
X-HE-Meta: U2FsdGVkX18RouBZTNPw275TdrlnjDLoEKFIEy1VVX6qZmnopnMN2/WgQn58aa9iFccxl9No5PfQCNJPk2SvpI4x4ROfhywudED9q3Qhsu1f7Q84oHXQteXlPthLQQxcZj3Trv62gVer8REjZ3T38yCGaBRpjFlmS7i3MFhjsd7CMRYLMSNnZAsDefNFFp7PwxpsvmEK8KkKHhKv9aHg3rrtU406ShGGOCfkmnZ7xREqwK1J33uMFi4vIYy/wfnU5x2aLebgXrWEi3/8uJ+6dbQd6EPb15TxeQ+zTDqntmsnfzzb4Uy829ilim0xRpQtQjlTD/kHq5Gv/0jhOP2eizDGaHNoERsArjJt/gE97x7h5VJof0Ddnd8aOup7B6kDKIKlaoBS7Sws8FP6tBlY16yMIsIiUKje
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_061123_601252_6790AA2D 
X-CRM114-Status: GOOD (  19.94  )
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

On Thu, 22 Jan 2026 10:02:20 +0800
Shawn Lin <shawn.lin@rock-chips.com> wrote:

>  
> +#ifdef CONFIG_TRACING
> +static void rockchip_pcie_ltssm_trace_work(struct work_struct *work)
> +{
> +	struct rockchip_pcie *rockchip = container_of(work,
> +						struct rockchip_pcie,
> +						trace_work.work);
> +	struct dw_pcie *pci = &rockchip->pci;
> +	enum dw_pcie_ltssm state;
> +	u32 i, l1ss, prev_val = DW_PCIE_LTSSM_UNKNOWN, rate, val;
> +
> +	if (!pci_ltssm_tp_enabled())
> +		goto skip_trace;

You can use:

	if (!trace_pcie_ltssm_state_transition_enabled())
		goto skip_trace;

The above is a static branch. That means when tracing is disabled, it is
basically:

	goto skip_trace;

and when tracing is enabled it is a nop.

-- Steve


> +
> +	for (i = 0; i < PCIE_DBG_LTSSM_HISTORY_CNT; i++) {
> +		val = rockchip_pcie_readl_apb(rockchip,
> +				PCIE_CLIENT_DBG_FIFO_STATUS);
> +		rate = FIELD_GET(PCIE_DBG_FIFO_RATE_MASK, val);
> +		l1ss = FIELD_GET(PCIE_DBG_FIFO_L1SUB_MASK, val);
> +		val = FIELD_GET(PCIE_LTSSM_STATUS_MASK, val);
> +
> +		/*
> +		 * Hardware Mechanism: The ring FIFO employs two tracking
> +		 * counters:
> +		 * - 'last-read-point': maintains the user's last read position
> +		 * - 'last-valid-point': tracks the HW's last state update
> +		 *
> +		 * Software Handling: When two consecutive LTSSM states are
> +		 * identical, it indicates invalid subsequent data in the FIFO.
> +		 * In this case, we skip the remaining entries. The dual counter
> +		 * design ensures that on the next state transition, reading can
> +		 * resume from the last user position.
> +		 */
> +		if ((i > 0 && val == prev_val) || val > DW_PCIE_LTSSM_RCVRY_EQ3)
> +			break;
> +
> +		state = prev_val = val;
> +		if (val == DW_PCIE_LTSSM_L1_IDLE) {
> +			if (l1ss == 2)
> +				state = DW_PCIE_LTSSM_L1_2;
> +			else if (l1ss == 1)
> +				state = DW_PCIE_LTSSM_L1_1;
> +		}
> +
> +		trace_pcie_ltssm_state_transition(dev_name(pci->dev),
> +				dw_pcie_ltssm_status_string(state),
> +				((rate + 1) > pci->max_link_speed) ?
> +				PCI_SPEED_UNKNOWN : PCIE_SPEED_2_5GT + rate);
> +	}
> +
> +skip_trace:
> +	schedule_delayed_work(&rockchip->trace_work, msecs_to_jiffies(5000));
> +}
> +
> +static void rockchip_pcie_ltssm_trace(struct rockchip_pcie *rockchip,
> +				      bool enable)
> +{
> +	if (enable) {
> +		rockchip_pcie_writel_apb(rockchip,
> +					 PCIE_CLIENT_DBG_TRANSITION_DATA,
> +					 PCIE_CLIENT_DBG_FIFO_PTN_HIT_D0);
> +		rockchip_pcie_writel_apb(rockchip,
> +					 PCIE_CLIENT_DBG_TRANSITION_DATA,
> +					 PCIE_CLIENT_DBG_FIFO_PTN_HIT_D1);
> +		rockchip_pcie_writel_apb(rockchip,
> +					 PCIE_CLIENT_DBG_TRANSITION_DATA,
> +					 PCIE_CLIENT_DBG_FIFO_TRN_HIT_D0);
> +		rockchip_pcie_writel_apb(rockchip,
> +					 PCIE_CLIENT_DBG_TRANSITION_DATA,
> +					 PCIE_CLIENT_DBG_FIFO_TRN_HIT_D1);
> +		rockchip_pcie_writel_apb(rockchip,
> +					 PCIE_CLIENT_DBG_EN,
> +					 PCIE_CLIENT_DBG_FIFO_MODE_CON);
> +
> +		INIT_DELAYED_WORK(&rockchip->trace_work,
> +				  rockchip_pcie_ltssm_trace_work);
> +		schedule_delayed_work(&rockchip->trace_work, 0);
> +	} else {
> +		rockchip_pcie_writel_apb(rockchip,
> +					 PCIE_CLIENT_DBG_DIS,
> +					 PCIE_CLIENT_DBG_FIFO_MODE_CON);
> +		cancel_delayed_work_sync(&rockchip->trace_work);
> +	}
> +}
> +#else
> +static void rockchip_pcie_ltssm_trace(struct rockchip_pcie *rockchip,
> +				      bool enable)
> +{
> +}
> +#endif
> +
>  static void rockchip_pcie_enable_ltssm(struct rockchip_pcie *rockchip)
>  {
>  	rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_ENABLE_LTSSM,
> @@ -291,6 +398,9 @@ static int rockchip_pcie_start_link(struct dw_pcie *pci)
>  	 * 100us as we don't know how long should the device need to reset.
>  	 */
>  	msleep(PCIE_T_PVPERL_MS);
> +
> +	rockchip_pcie_ltssm_trace(rockchip, true);
> +
>  	gpiod_set_value_cansleep(rockchip->rst_gpio, 1);
>  
>  	return 0;
> @@ -301,6 +411,7 @@ static void rockchip_pcie_stop_link(struct dw_pcie *pci)
>  	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
>  
>  	rockchip_pcie_disable_ltssm(rockchip);
> +	rockchip_pcie_ltssm_trace(rockchip, false);
>  }
>  
>  static int rockchip_pcie_host_init(struct dw_pcie_rp *pp)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
