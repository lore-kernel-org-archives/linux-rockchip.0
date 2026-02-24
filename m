Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3DF4E9B269
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Feb 2026 14:08:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HQg3wKe/FsFfSEIuNm5/py0bFEwSEjC9l+OBbaakg5E=; b=qYMtBnElRx4u7P
	ySgrblsUULq2ge2aCS8kGe0ReqwGbtNR4ayQ4NMqbgD++8dbe8v2+QqXDi3usidClzjAwB4gt642Y
	oRCbnWxwsqQtYlQtyiOBljtL5bivRLiqKFQFsTHDbyYcG+Jn3ovOq7pKAkNgzQULQd6tDSlEtGPKk
	yAlmNlqjhqxae9f+Ag6IP0JeA/key/ABnu3cuHbLKo/eZ60YJDOErAMhL7Il/WbRiK+sCIdROjf82
	/hb04LgjDvZM1GhDViCdIzK6xVVPCSiazgSI6B4q1GHRiHt56JELfkwZX5vdR/CcoqWOOrMlToADL
	EeLA1adQxGBmUU4JMrTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vut5d-00000002BJT-2FvU;
	Tue, 24 Feb 2026 14:08:41 +0000
Received: from smtprelay0013.hostedemail.com ([216.40.44.13] helo=relay.hostedemail.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vut5Y-00000002BJA-3R4b
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Feb 2026 14:08:37 +0000
Received: from omf02.hostedemail.com (a10.router.float.18 [10.200.18.1])
	by unirelay03.hostedemail.com (Postfix) with ESMTP id 869DFB61BA;
	Tue, 24 Feb 2026 14:08:33 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf02.hostedemail.com (Postfix) with ESMTPA id DC3498000E;
	Tue, 24 Feb 2026 14:08:30 +0000 (UTC)
Date: Tue, 24 Feb 2026 09:08:27 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas
 <bhelgaas@google.com>, linux-rockchip@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-trace-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org, Masami Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH v4 1/3] PCI: trace: Add PCI controller LTSSM transition
 tracepoint
Message-ID: <20260224090827.59640d90@fedora>
In-Reply-To: <1769047340-113287-2-git-send-email-shawn.lin@rock-chips.com>
References: <1769047340-113287-1-git-send-email-shawn.lin@rock-chips.com>
	<1769047340-113287-2-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Stat-Signature: bk3h88dsxsjh7s8kghk3p76741uazjqo
X-Rspamd-Server: rspamout02
X-Rspamd-Queue-Id: DC3498000E
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX1/2cbOBBDRNi5M66QWEdnZNku3dvrZ6FJc=
X-HE-Tag: 1771942110-983074
X-HE-Meta: U2FsdGVkX1+d24m/3WrbBq5mUOIpQbNlH8/NumQCAlhGdg4jpoF6OyrBF/QIJjAydEeCpl/YfFZ+xKLkh+340rlBaxHqIS5FWcjsdUh9STKRsNAgQ6PMfdMNAERyxr51lWiLB6q0Jx52CzyCX8f2x+6tGfomWl0vJwXxlhYyXZqN3n6qnQ+AeSn6tNrN1g8Me2huc9xk4SMKo3dKOIO3WlR7jWRSTg2qKSLoqpgSkU4HqwRFnK6NsuNFH2YElzzqEHuczVvfpR1IpU2iOBQkSEb16SOk37PH3Cy+D2EABQGVKoM13lOXA+0o1xdUU7r0LrL39V7CB4pyVhgS/0uhgWBTcTXRNLmplWVa0V/i3R+WQj23MNk+eSsdPC0Eqale
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_060836_915773_01612BCF 
X-CRM114-Status: UNSURE (   7.04  )
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

On Thu, 22 Jan 2026 10:02:18 +0800
Shawn Lin <shawn.lin@rock-chips.com> wrote:

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

This seems totally unnecessary. Why the atomic operations? Why not just
use:

	if (trace_pcie_ltssm_state_transition_enabled()) ...

?

-- Steve

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
