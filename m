Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 935E4FD45F1
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Feb 2026 00:14:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UhP0Ss3zSkFSD32Vynk5RPnMjSu3OUjCZV5I0of08hQ=; b=uHaQJIa7xOieo9
	67FHPpTutRgYylcKxWHqRTHRvsGU+f7LU0Ot76DBD6sTfxJ7/ZSqr5nDWpWAB3h1wXRwFfsf+d78P
	Kq6viQYMLZd8LhZWnDwe2rUrRkEAZbS+TecScvgiT25uJDn9pj1juZ9fpv7t5pzExwYXj3S2RW8Dd
	E/52iUDg/x2B6dpneQh0AHfRBc47cTFTFjWvSsH5ZLUDGYv3JAcy2xZY/Eh7bsc2+5idWatNXuuk2
	OCBrzJLef/Q+Od+YImweZSEOCn/rq6gQrLKBT5Y/r8IwX8M7rNIWPegi45a14P3TGIh+xFKdajlEM
	VXKaqx3lLfdaeOg/uSyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvP1W-000000057gt-04QI;
	Thu, 26 Feb 2026 00:14:34 +0000
Received: from smtprelay0017.hostedemail.com ([216.40.44.17] helo=relay.hostedemail.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvP1T-000000057g9-1awo
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Feb 2026 00:14:32 +0000
Received: from omf15.hostedemail.com (a10.router.float.18 [10.200.18.1])
	by unirelay01.hostedemail.com (Postfix) with ESMTP id EEF7D1C395;
	Thu, 26 Feb 2026 00:14:26 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf15.hostedemail.com (Postfix) with ESMTPA id 111131C;
	Thu, 26 Feb 2026 00:14:24 +0000 (UTC)
Date: Wed, 25 Feb 2026 19:13:42 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>, Bjorn Helgaas
 <bhelgaas@google.com>, linux-rockchip@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-trace-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org, Masami Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH v4 3/3] PCI: dw-rockchip: Add
 pcie_ltssm_state_transition trace support
Message-ID: <20260225191342.6025c3b0@fedora>
In-Reply-To: <6177ba1f-c89e-486a-fdb5-9344c6551d72@rock-chips.com>
References: <1769047340-113287-1-git-send-email-shawn.lin@rock-chips.com>
	<1769047340-113287-4-git-send-email-shawn.lin@rock-chips.com>
	<20260224091115.6e32c38e@fedora>
	<20260224091601.48a7b3c0@fedora>
	<6177ba1f-c89e-486a-fdb5-9344c6551d72@rock-chips.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Server: rspamout07
X-Rspamd-Queue-Id: 111131C
X-Stat-Signature: t841fxjk1mky8pmyyp9by8w3fubijr6i
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX19/dSNO991F9MDut7wN2qrCWlhj3EPOQT0=
X-HE-Tag: 1772064864-882250
X-HE-Meta: U2FsdGVkX1/HiYaZRW248n0xpLIre8UsQzpzQlA3Z8SuRsYMaqAOxcVzwJvTJ3A6lKPdhHrnHSQ7KFLJQTanN2tli/FRfY9H2UMvQuAc+qxEXXOtEfBHJ1OvMf/ZNpmzpqudM78kX4pPbU725KfKF5vxDNZMD2SahAo0vEofsKa+i0GboLDrsP3aZocfw2ryXHJQzIDPwBjs6KPVBtGWke+SUV6EUatV/wMP9KdfancbVedZ+1MtoxTy9o8hJNgXgxWT06yOdsrrSeH3BuHG4E9BWq8yg5/w8HysLsR9GBff+GNlps/5uf1yP9k21O/1N9u30p4wDn0Fq6q1g0QAgY4nxw3DuJ/xAdYiYQQE48uQpPhnr5dGAMlB0he5ty41
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_161431_501492_BE28F9EB 
X-CRM114-Status: UNSURE (   9.43  )
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

On Wed, 25 Feb 2026 09:25:16 +0800
Shawn Lin <shawn.lin@rock-chips.com> wrote:

> I must admit I borrow it from arch/powerpc/include/asm/trace.h and
> include/trace/events/i2c.h for reference, where the reg and unreg
> just increase and decrease the ref count to indicate if the tp
> should be continued. Sure, the static branch could be used instead,
> even without reg and unreg implementation.

The i2c.h looks like it should be switched over to the
trace_<tracepoint>_enabled(), but the powerpc enables a static branch
in assembly, so that one does make sense to do it the way it did it.

-- Steve

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
