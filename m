Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3579FF3C995
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Feb 2026 15:22:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:cc:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U0/vEwhMF3P2nLRbCHqH+0pUrCcnXc/uewxsQ+ph5pQ=; b=lIZq1vwyxptRDi
	K2wO06LfZCgswvVCjqco8SxZUIwqgJUu3bjHcYQm1nrCGESsgFAAyl9A7FQzTK8b15PliJn0xePK0
	23equ/xy60I8xacQPsRw1NquL7wM2p+w7d1O9/IfoWzc6iDqHbONI828V0IC8xvdnnKMRgjlKjBtI
	FZQkPHV4s8Ie0Fwnw7saKG9agMAbMtms6laD2d3ez0t5FeNac9hGRBYs8bgu22RvXpifKqsCVZtyE
	PpfJTsmqlsSd1P2LaN6VOk5Oy40XQM4XRmpQBCBguhC0sWxCrdyCPpeReuIfqB59rQC5CBAdBIC5T
	GzRMvFwXhzR42Q7J8i8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuuFK-00000002Iqr-1W2n;
	Tue, 24 Feb 2026 15:22:46 +0000
Received: from mgamail.intel.com ([198.175.65.21])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuuFH-00000002IqT-49Pj
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Feb 2026 15:22:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1771946564; x=1803482564;
  h=from:date:to:cc:subject:in-reply-to:message-id:
   references:mime-version;
  bh=9F21oVqzbvLNHIWD/OjKzGXyzUqKNTyNYw5SNri/3QY=;
  b=gbB4qA8cbbsGR7XaPCPZ1rBdCDuS/OFQaPkXRGCwUTDSjueBRgdDaebB
   hKsWGVC4JFoYCopc2+SkooN6wYtjxliXOa8XD4Sxsfig5rkyvECIhuKK1
   p/iCE8qkv3S86q0QINUGzHU/CBLfHS+o/E3KQrhjfawmig0RQPvuyI8tN
   wKyX9W7/fsOK/BaaaYFXSBYrPBKgPHZq82zQO9HKBW+liUZHsh7PgrjpS
   hq1Ryyq3GnAX1YTL2t/dChMHzixz6rRm8b+FegYBANbrc62lYJNS9+tz1
   0ODsPcSJCAxfAow2ycL94IbPmQVmIXNBuPIsLYBnoknfWNd/8DpMJgjkR
   Q==;
X-CSE-ConnectionGUID: oH8UUdiyTDC+giPRDkMOQw==
X-CSE-MsgGUID: LTQNi059RQ25QklIj5nulQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="72839088"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; 
   d="scan'208";a="72839088"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
  by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Feb 2026 07:22:42 -0800
X-CSE-ConnectionGUID: xBpYYwWcTnKhslgK8BYInQ==
X-CSE-MsgGUID: w9D/pvx7Romiu0gepzECYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; 
   d="scan'208";a="238928420"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost) ([10.245.244.133])
  by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Feb 2026 07:22:38 -0800
From: =?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Date: Tue, 24 Feb 2026 17:22:35 +0200 (EET)
To: Shawn Lin <shawn.lin@rock-chips.com>
cc: Manivannan Sadhasivam <mani@kernel.org>, 
    Bjorn Helgaas <bhelgaas@google.com>, linux-rockchip@lists.infradead.org, 
    linux-pci@vger.kernel.org, linux-trace-kernel@vger.kernel.org, 
    linux-doc@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>, 
    Masami Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH v4 1/3] PCI: trace: Add PCI controller LTSSM transition
 tracepoint
In-Reply-To: <1769047340-113287-2-git-send-email-shawn.lin@rock-chips.com>
Message-ID: <7d195f03-978a-2d0d-acdf-e583e68377f2@linux.intel.com>
References: <1769047340-113287-1-git-send-email-shawn.lin@rock-chips.com> <1769047340-113287-2-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_072244_120560_65E27DEE 
X-CRM114-Status: GOOD (  21.70  )
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

On Thu, 22 Jan 2026, Shawn Lin wrote:

> Some platforms may provide LTSSM trace functionality, recording historical
> LTSSM state transition information. This is very useful for debugging, such
> as when certain devices cannot be recognized or link broken during test.
> Implement the pci controller tracepoint for recording LTSSM and rate.
> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---
> 
> Changes in v4:
> - use TRACE_EVENT_FN to notify when to start and stop the tracepoint,
>   and export pci_ltssm_tp_enabled() for host drivers to use
> 
> Changes in v3:
> - add TRACE_DEFINE_ENUM for all enums(Steven Rostedt)
> 
> Changes in v2: None
> 
>  drivers/pci/trace.c                   | 20 ++++++++++++
>  include/linux/pci.h                   |  4 +++
>  include/trace/events/pci_controller.h | 57 +++++++++++++++++++++++++++++++++++
>  3 files changed, 81 insertions(+)
>  create mode 100644 include/trace/events/pci_controller.h
> 
> diff --git a/drivers/pci/trace.c b/drivers/pci/trace.c
> index cf11abc..d351a51 100644
> --- a/drivers/pci/trace.c
> +++ b/drivers/pci/trace.c
> @@ -9,3 +9,23 @@
>  
>  #define CREATE_TRACE_POINTS
>  #include <trace/events/pci.h>
> +#include <trace/events/pci_controller.h>
> +
> +static atomic_t pcie_ltssm_tp_enabled = ATOMIC_INIT(0);
> +
> +bool pci_ltssm_tp_enabled(void)
> +{
> +	return atomic_read(&pcie_ltssm_tp_enabled) > 0;
> +}
> +EXPORT_SYMBOL(pci_ltssm_tp_enabled);
> +
> +int pci_ltssm_tp_reg(void)
> +{
> +	atomic_inc(&pcie_ltssm_tp_enabled);
> +	return 0;
> +}
> +
> +void pci_ltssm_tp_unreg(void)
> +{
> +	atomic_dec(&pcie_ltssm_tp_enabled);
> +}
> diff --git a/include/linux/pci.h b/include/linux/pci.h
> index e7cb527..ac25a3e 100644
> --- a/include/linux/pci.h
> +++ b/include/linux/pci.h
> @@ -2770,6 +2770,10 @@ static inline struct eeh_dev *pci_dev_to_eeh_dev(struct pci_dev *pdev)
>  }
>  #endif
>  
> +#ifdef CONFIG_TRACING
> +bool pci_ltssm_tp_enabled(void);
> +#endif
> +
>  void pci_add_dma_alias(struct pci_dev *dev, u8 devfn_from, unsigned nr_devfns);
>  bool pci_devs_are_dma_aliases(struct pci_dev *dev1, struct pci_dev *dev2);
>  int pci_for_each_dma_alias(struct pci_dev *pdev,
> diff --git a/include/trace/events/pci_controller.h b/include/trace/events/pci_controller.h
> new file mode 100644
> index 0000000..db4a960
> --- /dev/null
> +++ b/include/trace/events/pci_controller.h
> @@ -0,0 +1,57 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#undef TRACE_SYSTEM
> +#define TRACE_SYSTEM pci_controller

I find putting this into "pci_controller" little odd as LTSSM is related 
to PCIe links/ports. To me looks something that belongs to the existing 
include/trace/events/pci.h.

> +#if !defined(_TRACE_HW_EVENT_PCI_CONTROLLER_H) || defined(TRACE_HEADER_MULTI_READ)
> +#define _TRACE_HW_EVENT_PCI_CONTROLLER_H
> +
> +#include <uapi/linux/pci_regs.h>
> +#include <linux/tracepoint.h>
> +
> +TRACE_DEFINE_ENUM(PCIE_SPEED_2_5GT);
> +TRACE_DEFINE_ENUM(PCIE_SPEED_5_0GT);
> +TRACE_DEFINE_ENUM(PCIE_SPEED_8_0GT);
> +TRACE_DEFINE_ENUM(PCIE_SPEED_16_0GT);
> +TRACE_DEFINE_ENUM(PCIE_SPEED_32_0GT);
> +TRACE_DEFINE_ENUM(PCIE_SPEED_64_0GT);
> +TRACE_DEFINE_ENUM(PCI_SPEED_UNKNOWN);
> +
> +extern int pci_ltssm_tp_reg(void);
> +extern void pci_ltssm_tp_unreg(void);
> +
> +TRACE_EVENT_FN(pcie_ltssm_state_transition,
> +	TP_PROTO(const char *dev_name, const char *state, u32 rate),
> +	TP_ARGS(dev_name, state, rate),
> +
> +	TP_STRUCT__entry(
> +		__string(dev_name, dev_name)
> +		__string(state, state)
> +		__field(u32, rate)
> +	),
> +
> +	TP_fast_assign(
> +		__assign_str(dev_name);
> +		__assign_str(state);
> +		__entry->rate = rate;
> +	),
> +
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

Why are these done inline instead of using EM/EMe()? Or simply with
pci_speed_string()?


Unrelated to this, sadly I failed to notice Shuai's version of 
pcie_link_event() did not translate link speeds (my own version used 
pci_speed_string()).

> +		)
> +	),
> +
> +	pci_ltssm_tp_reg, pci_ltssm_tp_unreg
> +);
> +
> +#endif /* _TRACE_HW_EVENT_PCI_CONTROLLER_H */
> +
> +/* This part must be outside protection */
> +#include <trace/define_trace.h>
> 

-- 
 i.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
